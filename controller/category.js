const db = require("../connection");

const getAll = async (req, res) => {
  try {
    const data = await db.select("category_names", ["*"], "ORDER BY id DESC");
    return res.json([
      {
        mess: "All Category Names",
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

const addCategory = async (req, res) => {
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
    const id = await db.insert("category_names", {
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

module.exports = { getAll, addCategory };
