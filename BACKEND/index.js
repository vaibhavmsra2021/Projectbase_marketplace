const express=require("express");
const mongoose =require("mongoose");
const { MONGO_URL } = require("./src/utils/getEnv");
const { PORT } = require("./src/utils/getEnv");

const app=express();

//mongoose connection

mongoose.connection.on("connecting",()=>{
    console.log("connecting to the databse....");
})

mongoose.connection.on("connected",()=>{
    console.log("connected to database ....");
})

mongoose.connection.on("disconnectred",()=>{
    console.log("disconnected form the database...");
})

mongoose.connection.on("error",(error)=>{
    console.log(error);
})

mongoose
    .connect("mongodb+srv://prateek:ARub4LN122y0sxmC@cluster0.hg316ou.mongodb.net/INTER-IIT-TRUMIO?retryWrites=true&w=majority")
    .then(()=>{
        app.listen(()=>{
            console.log(`server runing on the port:${PORT}`)
        })
    })
    .catch((erorr)=>console.log(`Did not connect : ${error}`));