import  express  from "express";
import { getAllProjects,issuedProject,appliedProject } from "../controllers/getDetails";

const router=express.Router();

router.get("getAllProjects",getAllProjects);

router.get("issuedProject",issuedProject);

router.get("appliedProject",appliedProject);

export default router;