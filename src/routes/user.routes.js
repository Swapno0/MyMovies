import { Router } from "express";
import {loginUser, registerUser} from "../controller/user.controller.js"
import { upload } from "../middleware/multer.middleware.js";

const router = Router()

// import { fileURLToPath } from 'url';
// import { dirname } from 'path';
// import path from 'path';
// const __filename = fileURLToPath(import.meta.url);
// const __dirname = dirname(__filename);
// router.route('/').get((req,res)=>{
//     res.sendFile(path.join(__dirname,"../views","home.html"))
// })

router.get('/',(req,res) =>{
  if (req.session.isAuth == true) {
    console.log(req.session.userid)
    console.log(req.session.isAuth)
    console.log(req.session.loggedInUser)
    console.log(req.session.loggedInUser.rows)
    res.redirect('/home')
  }
  else{
    res.render("index")
  }
})
router.get('/login_page',(req,res) =>{
  res.render("login_page")
})
router.get('/signup_page',(req,res) =>{
  res.render("signup_page")
})

router.route("/register").post(
    upload.fields([
        {
            name: "avatar",
            maxCount: 1
        },
        {
            name: "coverImage"
        }
    ]),
    registerUser);


router.post('/login',loginUser);

router.get('/home',(req,res) => {
    res.render('home',req.session.loggedInUser)
})





export default router;