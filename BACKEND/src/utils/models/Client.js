const mongoose = require("mongoose");

const clientDetailsSchema = new mongoose.Schema(
  {
    areasOfInterest: {
      type: [String],
      default: [],
    },
    interestedIn: {
      type: [String],
      default: [],
    },
    organizationName: {
      type: String,
      required: true,
    },
    "email id": {
      type: String,
      required: true,
      maxLength: 50,
      unique: true,
    },
    password: {
      type: String,
      required: true,
      minLength: 8,
      select: false,
    },
  },
  { timestamps: true }
);

const Client = mongoose.model("Client", clientDetailsSchema);

module.exports = Client;
