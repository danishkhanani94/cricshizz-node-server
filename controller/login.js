const db = require("../connection");
const jwt = require("jsonwebtoken");

const Login = async (req, res) => {
  try {
    const { user_name, password } = req.body;
    
        console.log("r")
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
        console.log("r")
      await jwt.sign(
        { id: 786 },
        process.env.JWT_SECRET,
        { expiresIn: "24h" },
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
  } catch (err) {
    return res.json([
      {
        mess: "Error " + err,
        Data: [],
        success: false,
      },
    ]);
  }
};

module.exports = { Login };
