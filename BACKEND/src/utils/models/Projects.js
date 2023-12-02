import { model, Schema, Document, Types } from 'mongoose';



const projectSchema = new Schema(
    {
        title: {
            type: String,
            required: true,
            minLength: 5,
            maxLength: 50,
        },
        companyName: {
            type: String,
            required: true,
            minLength: 2,
            maxLength: 50,
        },
        companyId: {
            type: Schema.Types.ObjectId,
            ref: 'User',
            required: true,
        },
        projectDescription: {
            type: String,
            required: true,
            minLength: 7,
            maxLength: 320,
        },
        projectType: {
            type: String,
            required: true,
            enum: ['Learning', 'Paid'],
            default: 'Paid',
        },
        areaRelated: {
            type: [String],
            required: true,
            minLength: 2,
            maxLength: 50,
        },
        lastDateOfApplication: {
            type: Date,
            required: true,
        },
        amount: {
            type: Number,
            required: true,
            minLength: 1,
            maxLength: 50,
        },
        submittedDate: {
            type: Number,
            required: true,
        },
        talents: {
            type: [
                {
                    type: Schema.Types.ObjectId,
                    ref: 'User',
                },
            ],
            default: [],
        },
    },
    { timestamps: true }
);

const Project = model('Project', projectSchema);

export default Project;