const mongoose = require('mongoose');

const UserSchema = new mongoose.Schema(
    {
        name: {
            type: String,
            required: true,
            minLength: 3,
            maxLength: 50,
        },
        username: {
            type: String,
            required: true,
            minLength: 3,
            maxLength: 50,
            unique: true,
        },
        email: {
            type: String,
            required: true,
            maxLength: 50,
            unique: true,
        },
        password: {
            type: String,
            required: true,
            minLength: 8,
            select: false,
        },
        isVerified: {
            type: Boolean,
            default: false,
        },
        role: {
            type: String,
            enum: ["talent", "client"],
            required: true,
            default: "talent",
        },
        roleId: {
            type: mongoose.Schema.Types.ObjectId,
            default: null,
        },
    },
    { timestamps: true }
);

const User=mongoose.model('User',UserSchema);

module.exports=User;