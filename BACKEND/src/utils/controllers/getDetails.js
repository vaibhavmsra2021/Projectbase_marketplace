const User = require("../models/User");
const Project = require("../models/Projects");
const axios = require('axios');



const getAllProjects = async (req, res) => {
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

const issuedProject = async (req, res) => {
    try {
        const user = await User.findById(req?.user?.id);
        if (!user) {
            return res.status(400).json({ message: "Invaild User" });
        }
        else {
            const issuedProjectList = await Project.find({
                companyId: user?._id,
            })

            return res.status(200).json(issuedProjectList);
        }

    } catch (err) {
        res.status(500).json({ message: (err).message });
    }
}

const appliedProject = async (req, res) => {
    try {
        const user = await User.findById(req?.user?.id);
        if (!user) {
            return res.status(400).json({ message: "Invalid User" });
        }
        else {
            const appliedProjectList = await Project.find({
                talents: user?._id,
            })
            return res.status(200).json(appliedProjectList);
        }

    } catch (err) {
        res.status(500).json({ message: (err).message });
    }
}

const getRecomendedProjects = async (req, res) => {
    try {
        const user = await User.findById(req?.user?.id);
        if(!user){
            res.status(404).json({message:"Invalid User"});

        }
        else{
        try {
            const qurl = 'http://127.0.0.1:5000/get?msg=' + req.body.skills;
            const pythonApiResponse = await axios.get(qurl);

            res.json(pythonApiResponse.data);
        } catch (error) {
            console.error(error);
            res.status(500).send('Internal Server Error');
        }
    }

    } catch (err) {
        res.status(500).json({ message: (err).message })
    }
}

const Welcome = (req, res) => {
    res.send('Welcome! You are in the secret  get details route in controllers.');
}

module.exports = {
    getRecomendedProjects,
    appliedProject,
    issuedProject,
    getAllProjects,
    Welcome
};
