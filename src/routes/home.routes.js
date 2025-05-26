import { Router } from "express";
import { upload } from "../middleware/multer.middleware.js";

const router = Router()



// When I land on the /home page
router.get("/",(req,res) => {
  console.log(2)
  if (req.session.isAuth) {
    res.render('home',req.session.loggedInUser)
  }
  else{
    console.log(1)
    res.redirect("/")
  }
})

export default router;