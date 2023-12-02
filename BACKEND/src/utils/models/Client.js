import { model, Schema, InferSchemaType } from "mongoose";


const clientDetailsSchema=new Schema(
    {
        areasOfInterest: {
            type: [String],
            default: [],
        },
        interestedIn: {
            type: [String],
            default: [],
        },
        organizationName: {
            type: String,
            required: true,
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

},
{ timestamps: true }
)


const Client=model("Client",clientDetailsSchema);

export default Client;