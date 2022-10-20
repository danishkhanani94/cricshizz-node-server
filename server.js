const args = process.argv;
const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const app = express();
var multer = require('multer');
var upload = multer();

const corsOptions = {
  origin: "*",
  optionsSuccessStatus: 200,
};
const BlogRoutes = require("./routes/blog");

app.use(cors(corsOptions));

app.use(bodyParser.json());
app.use(bodyParser.json({ limit: "5000mb" }));
app.use(bodyParser.urlencoded({ extended: true }));

// for parsing multipart/form-data
app.use(upload.any());

app.use("/blogs", BlogRoutes);


const PORT = process.env.PORT || args[2] || 5000;
const server = app.listen(PORT, "0.0.0.0", () => {
  console.log(`Server running on port "${PORT}"`);
});

process.on("unhandledRejection", (err, promise) => {
  console.log("Error: ", err.message);
  server.close(() => process.exit(1));
});
