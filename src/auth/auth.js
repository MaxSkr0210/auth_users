const express = require("express");
const { register, login } = require("../db");

const router = express.Router();

router.use(express.json());

router.post("/user/register", async (req, res) => {
  const accesToken = await register(req.body);
  res.json(accesToken);
});

router.post("/user/login", async (req, res) => {
  const accesToken = await login(req.body);
  res.json(accesToken);
});

module.exports = router;
