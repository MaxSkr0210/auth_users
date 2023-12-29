const sequelize = require("../db");
const { DataTypes, Model } = require("sequelize");

class User extends Model {}

User.init(
  {
    first_name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    last_name: {
      type: DataTypes.STRING,
      allowNull: false,
      defaultValue: "",
    },
    email: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
      validate: {
        isEmail: true,
      },
    },
    password: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    sex: {
      type: DataTypes.STRING,
      allowNull: false,
      defaultValue: "Мужской",
      validate: {
        isIn: [["Мужской", "Женский"]],
      },
    },
    photo: {
      type: DataTypes.STRING,
      allowNull: false,
      defaultValue: "user.png",
    },
  },
  {
    sequelize,
    modelName: "User",
    updatedAt: false,
    createdAt: "created_at",
  }
);

User.sync();

module.exports = User;
