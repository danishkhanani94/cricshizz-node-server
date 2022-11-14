const express = require("express");
const Router = express.Router();
const { getAll, getByID, addBlog, deleteBlog } = require("../controller/blog");
const authenticateToken = require("../middleware/auth");

Router.get("/all/:limitstart?/:limitend?/:search?", getAll);

Router.get("/getByID/:id", getByID);

Router.post("/add-blog", authenticateToken, addBlog);

Router.delete("/:id", authenticateToken, deleteBlog);

module.exports = Router;
