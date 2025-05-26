import { Router } from "express";
import {loginUser, logoutUser, registerUser} from "../controller/user.controller.js"
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
    // console.log(req.session.userid)
    // console.log(req.session.isAuth)
    // console.log(req.session.loggedInUser)
    // console.log(req.session.loggedInUser.rows)
    res.redirect('/home')
  }
  else{
    res.render("index")
  }
})
router.get('/login_page',(req,res) =>{
  console.log(1)
  const error = req.session.error
  delete req.session.error
  res.render("login_page",{error})
})
router.get('/signup_page',(req,res) =>{
  const error = req.session.error
  delete req.session.error
  res.render("signup_page",{error})
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
  if (req.session.isAuth) {
    res.render('home',req.session.loggedInUser)
  }
  else{
    res.redirect("/")
  }
})

router.get('/logout',logoutUser)





export default router;