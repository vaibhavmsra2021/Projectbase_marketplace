const Users = require("../models/User");
const { KEY } = require("../getEnv");
const saltRounds = 10;
const JWT = require("jsonwebtoken");
const bcrypt = require("bcrypt");
const signup = async (req, resp) => {
  try {
    // req.body.Varification = 0;
    const User = new Users(req.body);
    const result = await User.save();
    resp.send(result);
  } catch (error) {
    console.error(error);
    resp.status(500).send({ success: false, message: "Internal Server Error" });
  }
};

function sign_token(req, resp, next) {
  try {
    const password = req.body.password;
    JWT.sign({ password }, KEY, { expiresIn: "200h" }, (err, Token) => {
      req.body.auth = Token;
      if (err) {
        console.log(err);
        resp.send(err);
      }
      next();
    });
  } catch (err) {
    console.log(err);
    next(err);
  }
}

function passwordHash(req, resp, next) {
  try {
    const salt = bcrypt.genSaltSync(saltRounds);
    const hashedPassword = bcrypt.hashSync(req.body.password, salt);
    req.body.password = hashedPassword;

    next();
  } catch (error) {
    next(error);
  }
}
module.exports = { signup, passwordHash, sign_token };
