const express = require("express");
const Router = express.Router();

const { Login } = require("../controller/login");

Router.post("/login", Login);

module.exports = Router;
