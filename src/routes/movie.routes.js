import { Router } from "express";
import { upload } from "../middleware/multer.middleware.js";
import { addReview, getCastInfo, getWatchList, addToWatchList, removeFromWatchList, getDirectorInfo, getMovieAwardInfo, getMovieGenreInfo, getMovieInfo, getReviews } from "../controller/movie.controller.js";

const router = Router()


router.get("/", async(req,res) => {
  if (req.session.isAuth) {
    let {loggedInUser} = req.session.loggedInUser
    let movieInfo = await getMovieInfo(req,res)
    let movieGenreInfo = await getMovieGenreInfo(req,res)
    let movieAwardInfo = await getMovieAwardInfo(req,res)
    let castInfo = await getCastInfo(req,res)
    let directorInfo = await getDirectorInfo(req,res)
    let watchList = await getWatchList(req,res)
    let reviews = await getReviews(req,res)
    

    res.render('movie',{loggedInUser,movieInfo,movieGenreInfo,movieAwardInfo,castInfo,directorInfo,watchList,reviews})
  }
  else{
    res.redirect("/")
  }
})

router.get("/getWatchList", async(req,res) => {
  if (req.session.isAuth) {
    const watchList = await getWatchList(req,res)
    res.send(watchList)
  }
  else{
    res.redirect("/")
  }
})

router.post("/addToWatchList",addToWatchList)

router.post("/removeFromWatchList",removeFromWatchList)



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