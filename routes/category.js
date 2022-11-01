const express = require("express");
const Router = express.Router();
const { getAll, addCategory } = require("../controller/category");

Router.get("/", getAll);

Router.post("/add-name", addCategory);

module.exports = Router;
