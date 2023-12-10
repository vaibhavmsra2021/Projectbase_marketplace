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
  signin,
} = require("../controllers/UsersDetails");

const router = express.Router();

router.get("/", Welcome);

router.post("/RecomendedProjects", getRecomendedProjects);

router.get("/getAllProjects", getAllProjects);

router.get("/issuedProject", issuedProject);

router.get("/appliedProject", appliedProject);
router.post("/signup", passwordHash, sign_token, signup);
router.get("/signin", signin);

module.exports = router;
