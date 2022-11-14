const jwt = require("jsonwebtoken");

module.exports = function authenticateToken(req, res, next) {
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
};
