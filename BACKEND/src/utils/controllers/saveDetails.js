const User= require( "../models/User");
const Project = require("../models/Projects");
const { mod } = require("@tensorflow/tfjs");

const saveProject = async (req, res) => {
    try {
        const {
            title,
            companyName,
            projectDescription,
            projectType,
            areaRelated,
            lastDateOfApplication,
            amount,
            submittedDate,

        } = req.body;
        const user = await User.findById(req?.user?.id);
        if (!user) {
            return res.status(400).json({ message: "Invalid User" });
        }
        else {
            const project = new Project({
                title,
                companyName,
                companyId: user?._id,
                projectDescription,
                projectType,
                areaRelated,
                lastDateOfApplication: new Date(lastDateOfApplication),
                amount,
                submittedDate: new Date(submittedDate),

            })
            await project.save()
            return res.status(200).json({ message: "projects details saved succesfully" });

        }

    } catch (err) {
        res.status(500).json({ message: (err).message });
    }
}

const Welcome=(req,res)=>{
    res.send('Welcome! You are in the secret  save details route in controllers.');
}

module.exports={saveProject
,Welcome};