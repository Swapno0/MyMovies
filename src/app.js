import express from "express"
import cookieParser from "cookie-parser";
import session from "express-session"
import bodyParser from "body-parser"





const app = express();
app.use(express.json())
app.use(express.urlencoded())
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

// gives 'public' folder the static access.
app.use(express.static("../public"));

// Creating session for user.
app.use(session({
  secret: process.env.SESSION_KEY,              // Used to sign the session ID cookie
  resave: false,                      // Don't save session if unmodified
  saveUninitialized: false,           // Don't create session until something stored
  cookie: {
    maxAge: 1000 * 60 * 60 * 24       // 1 day (in milliseconds)
  }
}));


/*<<<<<---------------------------------------------------------------------------------------------------------------------------------->>>>>*/
// imports router from routes.
import userRouter from "./routes/user.routes.js"

// Sends to appropriate router.
app.use("/user",userRouter)

/*<<<<<---------------------------------------------------------------------------------------------------------------------------------->>>>>*/






export {app}