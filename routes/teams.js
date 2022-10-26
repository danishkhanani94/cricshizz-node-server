const express = require("express");
const Router = express.Router();

const db = require("../connection");

Router.get("/", async (req, res) => {
  const data = await db.select("team_names", ["*"], "ORDER BY id DESC");
  return res.json([
    {
      mess: "All Team Names",
      Data: data,
      success: true,
    },
  ]);
});

Router.post("/add-name", async (req, res) => {
  const { name } = req.body;
  if (!name) {
    return res.json([
      {
        success: false,
        mess: "Name Is Required",
        Data: [req.body],
      },
    ]);
  }
  const id = await db.insert("team_names", {
    name,
  });

  return res.json([
    {
      mess: "Successfully Added",
      Data: id,
      success: true,
    },
  ]);
});

module.exports = Router;
