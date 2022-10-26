const express = require("express");
const Router = express.Router();

const db = require("../connection");

Router.get("/", async (req, res) => {
  const NumOfBlogs = await db.count("blogs");
  return res.json([
    {
      success: true,
      Data: {
        blogs: NumOfBlogs,
      },
      mess: "All Data Counts",
    },
  ]);
});

module.exports = Router;
