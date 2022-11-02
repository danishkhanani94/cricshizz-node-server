const db = require("../connection");

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
        "%'  ORDER BY b.id DESC " +
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
      mainbanner,
    } = req.body;
    if (
      (!album_name,
      !innerimages,
      !team_a,
      !team_b,
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

module.exports = { getAll, getByID, add, deleteGallery };
