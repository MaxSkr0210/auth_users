const User = require("../db/models/User");

const getFileType = (mimeType) => {
  if (mimeType.includes("/jpg")) return "jpg";
  if (mimeType.includes("/png")) return "png";
  return "unknown";
};

const updateUser = async (id, data) => {
  const update = await User.update(data, {
    where: {
      id,
    },
    fields: ["first_name", "last_name", "email", "sex", "photo"],
  });

  return update[0];
};

module.exports = { getFileType, updateUser };
