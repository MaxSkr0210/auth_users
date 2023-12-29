const db = require("./db");
const User = require("./models/User");
const { findUser, register, login } = require("./dbService");

module.exports = { db, findUser, register, login, User };
