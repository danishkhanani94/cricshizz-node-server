var mysql = require("like-mysql");
var con;
async function connect() {
  con = mysql("127.0.0.1:3306", "root", "", "cricshizz");
  await con.ready();
  console.log("Connected");
}
connect();
module.exports = con;
