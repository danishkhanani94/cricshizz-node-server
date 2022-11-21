var mysql = require("like-mysql");

var con;
async function connect() {
con = mysql("127.0.0.1:3306", "cricshizz_cricshizzz", "~8Go.nJ6=B4s", "cricshizz_main");
  await con.ready();
  console.log("Connected");
}
connect();
module.exports = con;
