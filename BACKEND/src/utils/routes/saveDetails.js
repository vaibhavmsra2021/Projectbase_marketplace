const express  =require( "express");

const {saveProject,Welcome}=require("../controllers/saveDetails");



const router=express.Router();

router.post('/',Welcome);




router.post("/saveProject",saveProject);

module.exports=router;