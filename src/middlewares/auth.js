const jwt = require("jsonwebtoken");

module.exports = auth = (req, res, next) => {
  try {
    const token = req.headers.authorization.split(" ")[1];
    if (!token) {
      return res.status(403).json({ message: "Пользователь не авторизован" });
    }
    const decodedData = jwt.verify(token, process.env.SECRET_KEY || "secret");
    req.user = decodedData;
    next();
  } catch (err) {
    console.log(err);
    return res
      .status(403)
      .json({ code: 403, message: "Пользователь не авторизован" });
  }
};
