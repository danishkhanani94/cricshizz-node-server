const db = require("../connection");

const getAll = async (req, res) => {
  try {
    const data = await db.select("team_names", ["*"], "ORDER BY id DESC");
    return res.json([
      {
        mess: "All Team Names",
        Data: data,
        success: true,
      },
    ]);
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

const addTeam = async (req, res) => {
  try {
    const { name } = req.body;
    if (!name) {
      return res.json([
        {
          success: false,
          mess: "Name Is Required",
          Data: [req.body],
        },
      ]);
    }
    const id = await db.insert("team_names", {
      name,
    });

    return res.json([
      {
        mess: "Successfully Added",
        Data: id,
        success: true,
      },
    ]);
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

module.exports = { getAll, addTeam };
