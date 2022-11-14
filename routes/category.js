const express = require("express");
const Router = express.Router();
const { getAll, addCategory } = require("../controller/category");
const authenticateToken = require("../middleware/auth");

Router.get("/", getAll);

Router.post("/add-name", authenticateToken, addCategory);

module.exports = Router;
