const User = require("../db/models/User");

module.exports = findAll = async (page) => {
  const take = 10;

  const users = await User.findAll({
    limit: take,
    offset: (page - 1) * take,
    order: [["created_at", "DESC"]],
  });

  return users;
};
