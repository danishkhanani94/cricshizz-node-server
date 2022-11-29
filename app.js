const args = process.argv;
const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const enforce = require('express-sslify');
const app = express();
var fs = require("fs");
var http = require('https');
var multer = require("multer");
var upload = multer();

const corsOptions = {
  origin: ['*','http://localhost:3000','http://localhost:3001','http://localhost:3002', 'https://dashboard.cricshizz.com.pk' , 'https://cricshizz.com.pk'],
  optionsSuccessStatus: 200,
  methods: ['GET','POST','DELETE','UPDATE','PUT','PATCH']

};


const BlogRoutes = require("./routes/blog");
const TeamRoutes = require("./routes/teams");
const CategoryRoutes = require("./routes/category");
const CountRouter = require("./routes/count");
const GalleryRoutes = require("./routes/gallery");
const LoginRoutes = require("./routes/login");

require("dotenv").config();
app.use(cors(corsOptions));

app.use(bodyParser.json());
app.use(bodyParser.json({ limit: "5000mb" }));
app.use(bodyParser.urlencoded({ extended: true }));
// for parsing multipart/form-data
app.use(upload.any());

app.use(enforce.HTTPS());


app.use("/counts", CountRouter);
app.use("/blogs", BlogRoutes);
app.use("/teams", TeamRoutes);
app.use("/category", CategoryRoutes);
app.use("/gallery", GalleryRoutes);
app.use("/auth", LoginRoutes);


const PORT = process.env.PORT || args[2] || 5001;

http.createServer({
      key: fs.readFileSync("key.pem"),
      cert: fs.readFileSync("cert.pem"),
    },app).listen(PORT, function() {
    console.log('Express server listening on port ' + PORT);
});

// const server = app.listen(PORT, "0.0.0.0", () => {
//   console.log(`Server running on port "${PORT}"`);
// });

process.on("unhandledRejection", (err, promise) => {
  console.log("Error UnHandled: ", err.message);
  // server.close(() => process.exit(1));
});
