require("dotenv").config();
const express = require("express");

const port = process.env.PORT || 3000;
const app = express();

app.use("/", require("./auth/auth.js"));
app.use("/", require("./profiles"));
app.use("/", require("./profile"));

app.listen(port, () => {
  console.log(`listening on ${port}`);
});
