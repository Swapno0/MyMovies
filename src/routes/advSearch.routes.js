import { Router } from "express";
import { upload } from "../middleware/multer.middleware.js";
import { filter, getAllGenres, getAllLanguage, getAllMovies } from "../controller/advSearch.controller.js";

const router = Router()

router.get("/", async(req,res) => {
  if (req.session.isAuth) {
    let {loggedInUser} = req.session.loggedInUser
    let allMovies = await getAllMovies(req,res)
    let allGenre = await getAllGenres(req,res)
    let allLanguage = await getAllLanguage(req,res)
    // console.log(allMovies.rows)
    res.render('advancedSearchPage',{allMovies,loggedInUser, allGenre,allLanguage})
  }
  else{
    res.redirect("/login_page")
  }
})


router.post("/filter",upload.fields([]), filter)



export default router;