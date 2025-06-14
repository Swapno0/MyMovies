import { Router } from "express";
import { upload } from "../middleware/multer.middleware.js";
import { getUserInfo, getWatchHistory, getWatchList } from "../controller/profile.controller.js";

const router = Router()

router.get("/", async(req,res) => {
  if (req.session.isAuth) {
    const userInfo = await getUserInfo(req,res)
    const watchHistory = await getWatchHistory(req,res)
    const watchList = await getWatchList(req,res)
    res.render('profilePage',{userInfo,watchHistory,watchList})
  }
  else{
    res.redirect("/")
  }

})















export default router