const express = require("express");
const app = express();
const authRouter = require("./routes/auth");
const mongoose = require("mongoose");

const PORT = 3000;

const DB =
    "mongodb+srv://chavdavarsha860:test%40123@cluster0.ix03con.mongodb.net/?retryWrites=true&w=majority";

//middleware
app.use(express.json());
app.use(authRouter);

//connection
mongoose
    .connect(DB,{
   useNewUrlParser: true,     
    })
    .then(() => {
        console.log("Connection");
    })
    .catch((e) => {
        console.log(e);
    });

app.listen(PORT, "0.0.0.0", (req, res) => {
    console.log(`connected at port ${PORT}`);
});
