var jwt = require("jsonwebtoken");
const bcrypt = require("bcrypt");
const User = require("./models/User");

const hash = 10;
const secret = process.env.SECRET_KEY || "secret";

const findUser = async (data) => {
  return await User.findOne({
    where: data,
  });
};

const register = async (user) => {
  const newPass = bcrypt.hashSync(user.password, hash);
  user.password = newPass;

  const newUser = await User.create({
    first_name: user.first_name,
    email: user.email,
    password: user.password,
  });

  const payload = {
    id: newUser.id,
    firstName: newUser.firstName,
  };

  return jwt.sign(payload, secret, { expiresIn: "24h" });
};

const login = async (data) => {
  const user = await findUser({ email: data.email });
  if (user === null) return null;

  const isMatch = await bcrypt.compare(data.password, user.password);

  if (isMatch) {
    const payload = {
      id: user.id,
      firstName: user.firstName,
    };

    return jwt.sign(payload, secret, { expiresIn: "24h" });
  }
  return null;
};

module.exports = {
  findUser,
  register,
  login,
};
