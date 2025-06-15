import { Router } from "express";
import { upload } from "../middleware/multer.middleware.js";
import { getCelebAwardInfo, getCelebInfo, getCelebMovieInfo, getCelebTypeInfo } from "../controller/celeb.controller.js";

const router = Router()

router.get("/", async(req,res) => {
  if (req.session.isAuth) {
    let {loggedInUser} = req.session.loggedInUser
    let celebInfo = await getCelebInfo(req,res)
    let celebMovieInfo = await getCelebMovieInfo(req,res)
    let celebTypeInfo = await getCelebTypeInfo(req,res)
    let celebAwardInfo = await getCelebAwardInfo(req,res)
    res.render('celeb',{loggedInUser,celebInfo,celebMovieInfo,celebTypeInfo,celebAwardInfo})
  }
  else{
    res.redirect("/")
  }
})






export default router






