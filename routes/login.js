const express = require("express");
const Router = express.Router();

const { login } = require("../controller/login");

Router.post("/login", login);

module.exports = Router;
