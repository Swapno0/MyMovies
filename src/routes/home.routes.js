import { Router } from "express";
import { upload } from "../middleware/multer.middleware.js";
import { addToWatchHistory, addToWatchList, getMostPopularCelebrities, getNewlyAddedMovies, getTopPicksMovies, getTopRatedMovies, getWatchHistory, getWatchList, removeFromWatchList } from "../controller/home.controller.js";

const router = Router()



// When I land on the /home page
router.get("/",async (req,res) => {
  if (req.session.isAuth) {
    let {loggedInUser} = req.session.loggedInUser
    let newlyAddedMovies = await getNewlyAddedMovies()
    let topRatedMovies = await getTopRatedMovies()
    let mostPopularCelebrities = await getMostPopularCelebrities()
    let topPicksMovies = await getTopPicksMovies()
    let watchHistory = await getWatchHistory(req,res)
    // console.log(watchHistory)

    res.render('home',{loggedInUser,newlyAddedMovies,topRatedMovies,mostPopularCelebrities,topPicksMovies,watchHistory})
  }
  else{
    res.redirect("/")
  }
})


router.post("/getWatchList", async(req,res) => {
  let watchList = await getWatchList(req,res)
  res.send(watchList)
})



router.post("/addToWatchHistory",addToWatchHistory)

router.post("/addToWatchList",addToWatchList)

router.post("/removeFromWatchList",removeFromWatchList)


router.get("/movie", async(req,res) => {
  if (req.session.isAuth) {
    let movieInfo = await getMovieInfo(req,res)
    // console.log(movieInfo.rows)
    res.render('movie',{movieInfo})
  }
  else{
    res.redirect("/")
  }
})











export default router;