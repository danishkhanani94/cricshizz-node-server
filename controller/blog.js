const db = require("../connection");

const getAll = async (req, res) => {
  var { limitstart, limitend, search } = req.params;
  search = search == null ? "" : search;
  limitstart = limitstart == undefined ? 0 : limitstart;
  const Limit = limitend == undefined ? "" : `LIMIT ${limitstart},${limitend}`;
  const [rows, cols] = await db.execute(
    "SELECT b.* , (SELECT te.name FROM `team_names` te WHERE te.id =  b.team_a ) as team_a , (SELECT t.name FROM `team_names` t WHERE t.id = b.team_b) as team_b , (SELECT c.name FROM `category_names` c WHERE c.id = b.match_category) as match_category FROM `blogs` b WHERE b.title LIKE '%" +
      search +
      "%' ORDER BY b.id DESC " +
      Limit
  );
  return res.json([
    {
      mess: "All Blogs",
      Data: rows,
      success: true,
    },
  ]);
};

const getByID = async (req, res) => {
  const { id } = req.params;
  const [rows, cols] = await db.execute(
    "SELECT b.* , (SELECT te.name FROM `team_names` te WHERE te.id =  b.team_a ) as team_a , (SELECT t.name FROM `team_names` t WHERE t.id = b.team_b) as team_b , (SELECT c.name FROM `category_names` c WHERE c.id = b.match_category) as match_category FROM `blogs` b WHERE b.id = " +
      id
  );
  return res.json([
    {
      mess: "Single Blog",
      Data: rows,
      success: true,
    },
  ]);
};

const addBlog = async (req, res) => {
  const {
    title,
    description,
    longdescription,
    uploaded_by,
    mainbanner,
    innerbanner,
    match_category,
    team_a,
    gallery,
    team_b,
  } = req.body;
  if (
    (!title || !innerbanner,
    !description,
    !longdescription,
    !uploaded_by,
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
  var tmp_gallery = gallery === null ? 0 : gallery;

  console.log(tmp_gallery);
  const id = await db.insert("blogs", {
    title,
    banner_inner: innerbanner,
    description,
    longdescription,
    uploaded_by,
    banner_main: mainbanner,
    gallery: parseInt(tmp_gallery),
    match_category,
    team_a,
    team_b,
  });

  return res.json([
    {
      mess: "Successfully Added",
      Data: id,
      success: true,
    },
  ]);
};

const deleteBlog = async (req, res) => {
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
  const Deletedid = await db.delete("blogs", "id = ? LIMIT 1", id);

  return res.json([
    {
      mess: "Successfully Deleted",
      Data: Deletedid,
      success: true,
    },
  ]);
};

module.exports = { getAll, getByID, addBlog, deleteBlog };
