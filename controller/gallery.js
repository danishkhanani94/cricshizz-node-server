const db = require("../connection");
const fetchUrl = require("fetch").fetchUrl;
const fs = require("fs");
const JSZip = require("jszip");

const getAll = async (req, res) => {
  try {
    var { limitstart, limitend, search } = req.params;
    search = search == null ? "" : search;
    limitstart = limitstart == undefined ? 0 : limitstart;
    const Limit =
      limitend == undefined ? "" : `LIMIT ${limitstart},${limitend}`;
    const [rows, cols] = await db.execute(
      "SELECT b.* , (SELECT te.name FROM `team_names` te WHERE te.id =  b.team_a ) as team_a , (SELECT t.name FROM `team_names` t WHERE t.id = b.team_b) as team_b , (SELECT c.name FROM `category_names` c WHERE c.id = b.match_category) as match_category FROM `gallery` b  WHERE b.album_name LIKE '%" +
        search +
        "%'  ORDER BY b.event_date DESC " +
        Limit
    );
    return res.json([
      {
        mess: "All Galleries",
        Data: rows,
        success: true,
      },
    ]);
  } catch (error) {
    return res.json([
      {
        mess: "Error " + error,
        Data: [],
        success: false,
      },
    ]);
  }
};

const getByID = async (req, res) => {
  try {
    const { id } = req.params;
    const [rows, cols] = await db.execute(
      "SELECT b.* , (SELECT te.name FROM `team_names` te WHERE te.id =  b.team_a ) as team_a , (SELECT t.name FROM `team_names` t WHERE t.id = b.team_b) as team_b , (SELECT c.name FROM `category_names` c WHERE c.id = b.match_category) as match_category FROM `gallery` b WHERE b.id = " +
        id
    );
    for (let i = 0; i < rows.length; i++) {
      const element = rows[i];
      rows[i].innerimages = JSON.parse(element.innerimages);
    }
    return res.json([
      {
        mess: "Single Gallery",
        Data: rows,
        success: true,
      },
    ]);
  } catch (error) {
    return res.json([
      {
        mess: "Error " + error,
        Data: [],
        success: false,
      },
    ]);
  }
};

const add = async (req, res) => {
  try {
    const {
      album_name,
      innerimages,
      team_a,
      team_b,
      match_category,
      event_date,
      mainbanner,
    } = req.body;
    if (
      (!album_name,
      !innerimages,
      !team_a,
      !team_b,
      !event_date,
      !match_category,
      !mainbanner)
    ) {
      return res.json([
        {
          success: false,
          mess: "All Field's Are Required",
          Data: [req.body],
        },
      ]);
    }
    const id = await db.insert("gallery", {
      album_name,
      innerimages,
      team_a,
      event_date,
      team_b,
      match_category,
      mainbanner,
    });

    return res.json([
      {
        mess: "Successfully Added",
        Data: id,
        success: true,
      },
    ]);
  } catch (error) {
    return res.json([
      {
        mess: "Error " + error,
        Data: [],
        success: false,
      },
    ]);
  }
};

const deleteGallery = async (req, res) => {
  try {
    const { id } = req.params;

    if (!id) {
      return res.json([
        {
          success: false,
          mess: "ID is Required",
          Data: [req.body],
        },
      ]);
    }
    const Deletedid = await db.delete("gallery", "id = ? LIMIT 1", id);

    return res.json([
      {
        mess: "Successfully Deleted",
        Data: Deletedid,
        success: true,
      },
    ]);
  } catch (error) {
    return res.json([
      {
        mess: "Error " + error,
        Data: [],
        success: false,
      },
    ]);
  }
};
 
const downloadAll = async (req, res) => {
  const { id } = req.params;
  if (!id) {
    return res.json([
      {
        success: false,
        mess: "ID is Required",
        Data: [req.body],
      },
    ]);
  }
  const [rows, cols] = await db.execute(
    "SELECT *  FROM `gallery` WHERE id = " + id
  );
  console.log("Before For Each Loop");
  var files = [];
  for (let i = 0; i < rows.length; i++) {
    const element = rows[i];
    files = JSON.parse(element.innerimages);
  }
  const FileWithName = [];
  files.forEach((e, i) => {
    FileWithName.push({
      file: e,
      url: process.env.BUCKET_URL + e,
    });
  });
  var zip = new JSZip();
  const getPromise = (data) => {
    return new Promise(async (resolve, reject) => {
      await fetchUrl(data.url, {}, (e, r, buffer) => {
        zip.file(data.file, buffer);
        resolve(`Promise resolved`);
      });
      console.log("Doen");
    });
  };
  for (const data of FileWithName) {
    await getPromise(data);
  }

  console.log("After For Each Loop");
  res.setHeader("Content-Disposition", 'attachment; filename="pictures.zip"');
  res.setHeader("Content-type", "application/zip");
  try {
    zip
      .generateNodeStream({ type: "nodebuffer", streamFiles: true })
      .pipe(fs.createWriteStream("out.zip"))
      .on("finish", function () {
        console.log("out.zip done.");
        fs.createReadStream("out.zip").pipe(res);
      })
      .on("error", function () {
        console.log("out.zip error.");
      })
      .on("open", function () {
        console.log("out.zip start.");
      });
  } catch (error) {
    console.log(error);
  }
};

module.exports = { getAll, getByID, add, deleteGallery, downloadAll };
