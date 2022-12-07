const express = require("express");
const Router = express.Router();
const authenticateToken = require("../middleware/auth");

const {
  getAll,
  getByID,
  add,
  deleteGallery,
  downloadAll,
} = require("../controller/gallery");

Router.get("/all/:limitstart?/:limitend?/:search?", getAll);

Router.get("/getByID/:id", getByID);

Router.post("/add", authenticateToken, add);
Router.get("/downloadall/:id", downloadAll);

Router.delete("/:id", authenticateToken, deleteGallery);

module.exports = Router;
