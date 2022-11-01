const express = require("express");
const Router = express.Router();
const { getAll, getByID, addBlog, deleteBlog } = require("../controller/blog");

Router.get("/all/:limitstart?/:limitend?/:search?", getAll);

Router.get("/getByID/:id", getByID);

Router.post("/add-blog", addBlog);

Router.delete("/:id", deleteBlog);

module.exports = Router;
