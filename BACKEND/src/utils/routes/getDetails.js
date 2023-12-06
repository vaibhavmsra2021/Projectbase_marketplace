const express = require("express");
const {
  getRecomendedProjects,
  getAllProjects,
  issuedProject,
  appliedProject,
  Welcome,
} = require("../controllers/getDetails");
const {
  signup,
  passwordHash,
  sign_token,
} = require("../controllers/UsersDetails");

const router = express.Router();

router.get("/", Welcome);

router.get("/RecomendedProjects", getRecomendedProjects);

router.get("/getAllProjects", getAllProjects);

router.get("/issuedProject", issuedProject);

router.get("/appliedProject", appliedProject);
router.post("/signup", passwordHash, sign_token, signup);

module.exports = router;
