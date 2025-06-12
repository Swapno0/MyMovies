import { Router } from "express";
import { upload } from "../middleware/multer.middleware.js";
import { addReview, getCastInfo, getDirectorInfo, getMovieAwardInfo, getMovieGenreInfo, getMovieInfo, getReviews } from "../controller/movie.controller.js";
import {getWatchHistory} from"../controller/home.controller.js"; 

const router = Router()


router.get("/", async(req,res) => {
  if (req.session.isAuth) {
    let movieInfo = await getMovieInfo(req,res)
    let movieGenreInfo = await getMovieGenreInfo(req,res)
    let movieAwardInfo = await getMovieAwardInfo(req,res)
    let castInfo = await getCastInfo(req,res)
    let directorInfo = await getDirectorInfo(req,res)
    let watchHistory = await getWatchHistory(req,res)
    let reviews = await getReviews(req,res)
    

    res.render('movie',{movieInfo,movieGenreInfo,movieAwardInfo,castInfo,directorInfo,watchHistory,reviews})
  }
  else{
    res.redirect("/")
  }

})



router.get("/addReviewPage", async(req,res) => {
  if (req.session.isAuth) {
    let movieID = req.query.ID
    let userName = req.session.userid
    res.render('addReviewPage',{movieID,userName})
  }
  else{
    res.redirect("/")
  }
})


router.post("/addReview",addReview)




export default router