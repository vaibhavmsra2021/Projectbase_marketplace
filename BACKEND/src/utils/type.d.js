const { ObjectId } = require("mongoose");

module.exports = {
  id: ObjectId,
  role: String,
  iat: Number,
};

// Declare the global namespace in Express
global.Express = global.Express || {};
global.Express.Request = global.Express.Request || {};
global.Express.Response = global.Express.Response || {};

// Extend the Request and Response interfaces
global.Express.Request.user = {
  id: ObjectId,
  role: String,
  iat: Number,
};

global.Express.Response.user = {
  id: ObjectId,
  role: String,
  iat: Number,
};
