const express = require("express");

const { saveProject, Welcome } = require("../controllers/saveDetails");
const { update } = require("../controllers/UsersDetails");

const router = express.Router();

router.post("/", Welcome);

router.post("/saveProject", saveProject);
router.put("/update", update);
module.exports = router;
