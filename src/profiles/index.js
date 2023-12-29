const express = require("express");
const findAll = require("./profilesService");
const auth = require("../middlewares");

const router = express.Router();

router.get("/profiles", auth, async (req, res) => {
  const page = req.query.page;
  const users = await findAll(+page);
  res.json(users);
});

module.exports = router;
