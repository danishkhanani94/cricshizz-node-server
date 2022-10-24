const express = require("express");
const Router = express.Router();

const connection = require("../connection");

Router.get("/", (req, res) => {
  const data = connection.query(
    "SELECT * FROM `blogs` ORDER By id desc",
    (err, rows, fileds) => {
      if (err) {
        return res.json([
          {
            mess: "Error While Fetching Records",
            Data: err,
            success: false,
          },
        ]);
      }
      return res.json([
        {
          mess: "All Blogs",
          Data: rows,
          success: true,
        },
      ]);
    }
  );
});

Router.get("/:id", (req, res) => {
  const { id } = req.params;
  connection.query(
    "SELECT * FROM `blogs` WHERE id = " + id,
    (err, rows, fileds) => {
      if (err) {
        return res.json([
          {
            mess: "Error While Fetching Records",
            Data: err,
            success: false,
          },
        ]);
      }
      return res.json([
        {
          mess: "Single Blog",
          Data: rows,
          success: true,
        },
      ]);
    }
  );
});

Router.post("/add-blog", async (req, res) => {
  const {
    title,
    short_title,
    description,
    longdescription,
    uploaded_by,
    logo,
    mainbanner,
    innerbanner,
  } = req.body;
  if (
    (!title || !short_title,
    !innerbanner,
    !description,
    !longdescription,
    !uploaded_by,
    !mainbanner,
    !logo)
  ) {
    return res.json([
      {
        success: false,
        mess: "All Field's Are Required",
        Data: [req.body],
      },
    ]);
  }

  const SQL =
    `` +
    "INSERT into blogs (`title`, `short_title`, `logo`, `banner_inner`,`banner_main`, `description`,`uploaded_by`,`longdescription`) VALUES ('" +
    title +
    "','" +
    short_title +
    "','" +
    logo +
    "','" +
    innerbanner +
    "','" +
    mainbanner +
    "','" +
    description +
    "','" +
    uploaded_by +
    "','" +
    longdescription +
    "')" +
    ``;
  connection.query(SQL, (err, rows, fileds) => {
    if (err) {
      return res.json([
        {
          mess: "Error While Adding Record",
          Data: err,
          success: false,
        },
      ]);
    }
    return res.json([
      {
        mess: "Successfully Added",
        Data: rows,
        success: true,
      },
    ]);
  });
});

Router.delete("/:id", (req, res) => {
  const { id } = req.params;

  if (!id) {
    return res.json([
      {
        success: false,
        mess: "ID is Required",
        Data: [req.body],
      },
    ]);
  }

  const SQL = "DELETE FROM blogs WHERE id = '" + id + "'";
  console.log(SQL);
  const data = connection.query(SQL, (err, rows, fileds) => {
    if (err) {
      return res.json([
        {
          mess: "Error While Deleting Record",
          Data: err,
          success: false,
        },
      ]);
    }
    return res.json([
      {
        mess: "Successfully Deleted",
        Data: rows,
        success: true,
      },
    ]);
  });
});

module.exports = Router;
