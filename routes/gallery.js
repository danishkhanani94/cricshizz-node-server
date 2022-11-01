const express = require("express");
const Router = express.Router();

const {
  getAll,
  getByID,
  add,
  deleteGallery,
} = require("../controller/gallery");

Router.get("/all/:limitstart?/:limitend?/:search?", getAll);

Router.get("/getByID/:id", getByID);

Router.post("/add", add);

Router.delete("/:id", deleteGallery);

module.exports = Router;
