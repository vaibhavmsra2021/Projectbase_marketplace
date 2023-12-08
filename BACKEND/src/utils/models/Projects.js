const mongoose = require('mongoose');


const projectSchema = new mongoose.Schema(
    {
        title:{
            type: String,
            required: true,
            minLength: 5,
            maxLength: 50,
        },
        companyName:{
            type: String,
            required: true,
            minLength: 2,
            maxLength: 50,
        },
        companyId:{
            type: mongoose.Schema.Types.ObjectId,
            ref: 'User',
            required: true,
        },
        projectDescription:{
            type: String,
            required: true,
            minLength: 7,
            maxLength: 320,
        },
        projectType:{
            type: String,
            required: true,
            enum: ['Learning', 'Paid'],
            default: 'Paid',
        },
        areaRelated:{
            type: [String],
            required: true,
            minLength: 2,
            maxLength: 50,
        },
        lastDateOfApplication:{
            type: Date,
            required: true,
        },
        amount:{
            type: Number,
            required: true,
            minLength: 1,
            maxLength: 50,
        },
        submittedDate:{
            type: Number,
            required: true,
        },
        talents:{
            type: [
                {
                    type: mongoose.Schema.Types.ObjectId,
                    ref: 'User',
                },
            ],
            default: [],
        },
    },
    { timestamps: true }
);

const Project = mongoose.model('Project', projectSchema);

module.exports=Project;