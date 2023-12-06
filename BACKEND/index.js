const express = require("express");
const mongoose = require("mongoose");
const { MONGO_URL } = require("./src/utils/getEnv");
const { PORT } = require("./src/utils/getEnv");
const bodyParser = require("body-parser");
const cors = require("cors");

const useRouterGetDetails = require("./src/utils/routes/getDetails");

const useRouterSaveDetails = require("./src/utils/routes/saveDetails");

const app = express();
app.use(express.json());
app.use(cors());
app.use(bodyParser.json({ limit: "30mb" }));
app.use(bodyParser.urlencoded({ limit: "30mb", extended: true }));
//mongoose connection

mongoose.connection.on("connecting", () => {
  console.log("connecting to the databse....");
});

mongoose.connection.on("connected", () => {
  console.log("connected to database ....");
});

mongoose.connection.on("disconnectred", () => {
  console.log("disconnected form the database...");
});

mongoose.connection.on("error", (error) => {
  console.log(error);
});

app.use(useRouterGetDetails);
app.use(useRouterSaveDetails);

mongoose
  .connect(
    "mongodb+srv://prateek:ARub4LN122y0sxmC@cluster0.hg316ou.mongodb.net/INTER-IIT-TRUMIO?retryWrites=true&w=majority"
  )
  .then(() => {
    app.listen(PORT, () => {
      console.log(`Server Runing on the port :${PORT}`);
    });
  })
  .catch((error) => console.log(`Did not connect : ${error}`));
