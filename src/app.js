import express from "express"
import cookieParser from "cookie-parser";
import session from "express-session"
import bodyParser from "body-parser"
import { fileURLToPath } from 'url';
import { dirname } from 'path';
import path from 'path';


const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);





const app = express();
app.use(express.json())
app.use(express.urlencoded())
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

// setting ejs template view engine
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname , 'views'));

// gives 'public' folder the static access.
app.use(express.static(path.join(__dirname,'..','public')));


// Creating session for user.
app.use(session({
  secret: process.env.SESSION_KEY,              // Used to sign the session ID cookie
  resave: false,                      // Don't save session if unmodified
  saveUninitialized: false,           // Don't create session until something stored
  cookie: {
    maxAge: 1000 * 60 * 60 * 24,       // 1 day (in milliseconds)
    // sameSite: "lax"
  }
}));


/*<<<<<---------------------------------------------------------------------------------------------------------------------------------->>>>>*/
// imports router from routes.
import userRouter from "./routes/user.routes.js"
import homeRouter from "./routes/home.routes.js"
import adminRouter from "./routes/admin.routes.js"
import movieRouter from "./routes/movie.routes.js"

// Sends to appropriate router.
app.use("/",userRouter)
app.use("/home",homeRouter)
app.use("/admin",adminRouter)
app.use("/movie",movieRouter)

/*<<<<<---------------------------------------------------------------------------------------------------------------------------------->>>>>*/





export {app}