import  express  from "express";

import { saveProject } from "../controllers/saveDetails";

const router=express.router();

router.post("saveProject",saveProject);

export default router;