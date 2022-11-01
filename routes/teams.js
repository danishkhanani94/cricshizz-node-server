const express = require("express");
const Router = express.Router();

const { getAll, addTeam } = require("../controller/teams");

Router.get("/", getAll);

Router.post("/add-name", addTeam);

module.exports = Router;
