const db = require("../connection");
const jwt = require("jsonwebtoken");

const login = async (req, res) => {
  try {
    const { user_name, password } = req.body;
    if (!user_name || !password) {
      return res.json([
        {
          success: false,
          mess: "Username Or Password Required .",
          Data: [req.body],
        },
      ]);
    }
    if (
      user_name === process.env.USER_NAME &&
      password === process.env.PASSWORD
    ) {
      jwt.sign(
        { id: 786 },
        process.env.JWT_SECRET,
        { expiresIn: "1m" },
        (err, token) => {
          if (err) {
            return res.status(401).json([
              {
                mess: err,
                success: false,
              },
            ]);
          }
          return res.status(200).json([
            {
              mess: "Login Successfully",
              Data: {
                name: "Danish",
                token: token,
              },
              success: true,
            },
          ]);
        }
      );
    } else {
      return res.json([
        {
          mess: "Wrong Credentials",
          success: false,
        },
      ]);
    }
  } catch (error) {
    return res.json([
      {
        mess: "Error " + error,
        Data: [],
        success: false,
      },
    ]);
  }
};

module.exports = { login };
