import { Router } from "express";
import { upload } from "../middleware/multer.middleware.js";
import { getUserInfo, getUserReviews, getWatchHistory, getWatchList } from "../controller/profile.controller.js";

const router = Router()

router.get("/", async(req,res) => {
  if (req.session.isAuth) {
    const userInfo = await getUserInfo(req,res)
    const watchHistory = await getWatchHistory(req,res)
    const watchList = await getWatchList(req,res)
    const userReviews = await getUserReviews(req,res)
    res.render('profilePage',{userInfo,watchHistory,watchList,userReviews})
  }
  else{
    res.redirect("/")
  }

})















export default router