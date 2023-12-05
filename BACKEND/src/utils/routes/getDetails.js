const express = require("express");
const { getRecomendedProjects, getAllProjects, issuedProject, appliedProject, Welcome } = require("../controllers/getDetails");


const router = express.Router();

router.get('/', Welcome);


router.get('/RecomendedProjects', getRecomendedProjects);

router.get("/getAllProjects", getAllProjects);

router.get("/issuedProject", issuedProject);

router.get("/appliedProject", appliedProject);


module.exports = router;