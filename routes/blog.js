const express = require("express");
const Router = express.Router();

const db = require("../connection");

Router.get("/", async (req, res) => {
  const data = await db.select("blogs", ["*"]);
  return res.json([
    {
      mess: "All Blogs",
      Data: data,
      success: true,
    },
  ]);
});

Router.get("/:id", async (req, res) => {
  const { id } = req.params;
  const data = await db.select("blogs", ["*"], "id = ?", id);
  return res.json([
    {
      mess: "Single Blog",
      Data: data,
      success: true,
    },
  ]);
});

Router.post("/add-blog", async (req, res) => {
  const {
    title,
    description,
    longdescription,
    uploaded_by,
    mainbanner,
    innerbanner,
    match_category,
    team_a,
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
  const id = await db.insert("blogs", {
    title,
    banner_inner: innerbanner,
    description,
    longdescription,
    uploaded_by,
    banner_main: mainbanner,
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
});

Router.delete("/:id", async (req, res) => {
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
});

module.exports = Router;
