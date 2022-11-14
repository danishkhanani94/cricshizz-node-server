const args = process.argv;
const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const app = express();
var multer = require("multer");
var upload = multer();
const corsOptions = {
  origin: "*",
  optionsSuccessStatus: 200,
};
const BlogRoutes = require("./routes/blog");
const TeamRoutes = require("./routes/teams");
const CategoryRoutes = require("./routes/category");
const CountRouter = require("./routes/count");
const GalleryRoutes = require("./routes/gallery");
const LoginRoutes = require("./routes/login");
require("dotenv").config();
const jwt = require("jsonwebtoken");

app.use(cors(corsOptions));

app.use(bodyParser.json());
app.use(bodyParser.json({ limit: "5000mb" }));
app.use(bodyParser.urlencoded({ extended: true }));

function authenticateToken(req, res, next) {
  const authHeader = req.headers["authorization"];
  const token = authHeader && authHeader.split(" ")[1];

  if (token == null) {
    return res.json([
      {
        mess: "Token Is Required",
        success: false,
      },
    ]);
  }

  jwt.verify(token, process.env.JWT_SECRET, (err, user) => {
    if (err) {
      return res.json([
        {
          mess: "" + err,
          success: false,
        },
      ]);
    }
    next();
  });
}

// for parsing multipart/form-data
app.use(upload.any());

app.use("/counts", authenticateToken, CountRouter);
app.use("/blogs", authenticateToken, BlogRoutes);
app.use("/teams", authenticateToken, TeamRoutes);
app.use("/category", authenticateToken, CategoryRoutes);
app.use("/gallery", authenticateToken, GalleryRoutes);
app.use("/auth", LoginRoutes);

const PORT = process.env.PORT || args[2] || 5000;
const server = app.listen(PORT, "0.0.0.0", () => {
  console.log(`Server running on port "${PORT}"`);
});

process.on("unhandledRejection", (err, promise) => {
  console.log("Error UnHandled: ", err.message);
  // server.close(() => process.exit(1));
});
