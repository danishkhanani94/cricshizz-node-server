const express = require("express");
const Router = express.Router();

const { getAll, addTeam } = require("../controller/teams");
const authenticateToken = require("../middleware/auth");

Router.get("/", getAll);

Router.post("/add-name", authenticateToken, addTeam);

module.exports = Router;
