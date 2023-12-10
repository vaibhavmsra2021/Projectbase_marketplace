const mongoose = require("mongoose");

const UserSchema = new mongoose.Schema(
  {
    "email id": {
      type: String,
      required: true,
      unique: true,
    },
    password: {
      type: String,
      required: true,
      minLength: 8,
      select: true,
    },
    "first name": {
      type: String,
      required: true,
    },
    "last name": {
      type: String,
      required: false,
    },
    "mobile no": {
      type: Number,
      required: false,
      select: false,
    },
    "proffessional intro": {
      type: String,
      required: false,
    },
    "organization name": {
      type: String,
      required: false,
    },
    "organization title": {
      type: String,
      required: false,
    },
    "street address": {
      type: String,
      required: false,
    },
    "house no": {
      type: String,
      required: false,
    },
    "zip code": {
      type: String,
      required: false,
    },
    "city index": {
      type: String,
      required: false,
    },
    "state index": {
      type: String,
      required: false,
    },
    "country index": {
      type: String,
      required: false,
    },
    "university name": {
      type: String,
      required: false,
    },
    degree: {
      type: String,
      required: false,
    },
    skill1: {
      type: String,
      required: true,
    },
    skill2: {
      type: String,
      required: true,
    },
    skill3: {
      type: String,
      required: true,
    },
    skill4: {
      type: String,
      required: true,
    },
    skill5: {
      type: String,
      required: true,
    },
    "linkedin url": {
      type: String,
      required: false,
    },
    "twitter url": {
      type: String,
      required: false,
    },
    "github url": {
      type: String,
      required: false,
    },
    isVerified: {
      type: Boolean,
      default: false,
    },
    role: {
      type: String,
      enum: ["talent", "client"],
      required: true,
      default: "talent",
    },
    roleId: {
      type: mongoose.Schema.Types.ObjectId,
      default: null,
    },
    auth: {
      type: String,
      required: true,
    },
  },
  { timestamps: true }
);

const User = mongoose.model("User", UserSchema);

module.exports = User;
