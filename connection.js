var mysql = require("mysql");

const con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "cricshizz",
});
con.connect(function (err) {
  if (err) {
    console.log("Db Connection Failed : ", err);
    return;
  }
  console.log("Connected!");
});

module.exports = con;
