import { Router } from "express";
import { upload } from "../middleware/multer.middleware.js";

const router = Router()



// When I land on the /home page
router.get("/",(req,res) => {
  if (req.session.isAuth) {
    res.render('home',req.session.loggedInUser)
  }
  else{
    res.redirect("/")
  }
})