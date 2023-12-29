const fileUpload = require("express-fileupload");
const express = require("express");
const fs = require("fs");
const { findUser } = require("../db");
const auth = require("../middlewares");
const { getFileType, updateUser } = require("./profileService");

const router = express.Router();

router.use(express.json());
router.use(
  fileUpload({
    limits: {
      fileSize: 10 * 1024 * 1024,
    },
    limitHandler: function (req, res, next) {
      res.json({ code: 205, message: "Файл не должен превышать 10 мб" });
    },
    abortOnLimit: true,
  })
);

router.get("/profile/:id", auth, async (req, res) => {
  const id = req.params.id;
  const user = await findUser({ id: +id });
  res.json(user);
});

router.put("/profile/:id", auth, async (req, res) => {
  const id = req.params.id;
  const data = req.body;
  const photo = req.files?.photo;

  if (
    photo &&
    (getFileType(photo.mimetype) === "jpg" ||
      getFileType(photo.mimetype) === "png")
  ) {
    fs.appendFileSync("static/" + req.files.photo.name, req.files.photo.data);
    data.photo = req.files.photo.name;
  }

  const user = await updateUser(id, data);
  res.json(user);
});

module.exports = router;
