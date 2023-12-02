import { Request, Response } from "express";
import User from "../models/User";
import Project from "../models/Projects";


export const getAllProjects = async (req, res) => {
    try {
        const user = await User.findById(req?.user?.id);
        if (!user) {
            res.status(400).json({ message: "Invalid User" });
            return;
        }
        else {
            const allProjectsList = await Project.find();
            return res.status(200).json(allProjectsList);
        }

    } catch (err) {
        res.status(500).json({ message: (err).message });

    }
}

export const issuedProject=async(req,res)=>{
    try{
        const user=await User.findById(req?.user?.id);
        if(!user){
            return res.status(400).json({message:"Invaild User"});
        }
        else{
            const issuedProjectList=await Project.find({
                companyId:user?._id,
            })

            return res.status(200).json(issuedProjectList);
        }

    }catch(err){
        res.status(500).json({message:(err).message});
    }
}

export const appliedProject=async(req,res)=>{
    try{
        const user=await User.findById(req?.user?.id);
        if(!user){
            return res.status(400).json({message:"Invalid User"});
        }
        else{
            const appliedProjectList=await Project.find({
                talents:user?._id,
            })
            return res.status(200).json(appliedProjectList);
        }

    }catch(err){
        res.status(500).json({message:(err).message});
    }
}