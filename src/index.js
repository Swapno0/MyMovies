import {connectDB,SQLexecuter} from "./DB/database.js";
import {app} from "./app.js"
import dotenv from "dotenv"
dotenv.config({
    path: './.env'
})


// Connecting with Database.
console.log("🚀 Running updated server at", new Date().toLocaleTimeString());

const Port = process.env.PORT || 8000;
await connectDB()
.then(()=>{
    app.listen(Port, () =>{
        console.log(`Server is running at port : ${Port}`)
    })
})
.catch((err) =>{
    console.log(err);
})




