const express = require("express");
const Router = express.Router();

const db = require("../connection");

Router.get("/", async (req, res) => {
  const NumOfBlogs = await db.count("blogs");
  const NumOfGalleries = await db.count("gallery");
  return res.json([
    {
      success: true,
      Data: {
        blogs: NumOfBlogs,
        gallery: NumOfGalleries,
      },
      mess: "All Data Counts",
    },
  ]);
});

module.exports = Router;
