import { Router } from "express";
import { upload } from "../middleware/multer.middleware.js";
import { getAllGenres,addCelebs,getAllCastInfo, addMovies, getAllCastAwards, getAllMovies, getMovieCastInfo, getMovieInfo, getMovieDirectorInfo, getALLCastInfo, getAllMoviesAwards, getAllDirectorAwards, updateMovie, getMovieGenreInfo, getMovieAwardInfo, deleteMovie } from "../controller/admin.controller.js";

const router = Router()

router.get("/",(req,res) => {
  if (req.session.isAdminAuth) {
    res.render('admin')
  }
  else{
    res.redirect("/login_page")
  }
})

router.get('/addMoviesPage', async(req,res) =>{
  if (req.session.isAdminAuth) {
    const allGenre = await getAllGenres();
    const error = req.session.error
    delete req.session.error
    res.render('addMoviesPage',{allGenre:allGenre,error})
  }
  else{
    res.redirect("/login_page")
  }
})



router.get('/addCelebsPage', async(req,res) =>{
  if (req.session.isAdminAuth) {
    const error = req.session.error
    const msg = req.session.success_msg
    delete req.session.error
    delete req.session.success_msg
    res.render('addCelebsPage',{error,msg})
  }
  else{
    res.redirect("/login_page")
  }
})




router.get('/updateMoviesHomePage', async(req,res) =>{
  if (req.session.isAdminAuth) {
    const allMovies = await getAllMovies()
    const error = req.session.error
    const msg = req.session.success_msg
    delete req.session.error
    delete req.session.success_msg
    res.render('updateMoviesHomePage',{error,msg,allMovies})
  }
  else{
    res.redirect("/login_page")
  }
})



router.get('/updateMoviesPage', async(req,res) =>{
  if (req.session.isAdminAuth) {
    const movieInfo = await getMovieInfo(req,res)
    const movieCastInfo = await getMovieCastInfo(req,res)
    const movieDirectorInfo = await getMovieDirectorInfo(req,res)
    const allCastInfo = await getALLCastInfo(req,res)
    const movieAwards = await getAllMoviesAwards()
    const castAwards = await getAllCastAwards(req,res)
    const directorAwards = await getAllDirectorAwards(req,res)
    const allGenreInfo = await getAllGenres(req,res)
    const movieGenreInfo = await getMovieGenreInfo(req,res)
    const movieAwardInfo = await getMovieAwardInfo(req,res)
    // console.log(movieAwardInfo)
    // console.log(allGenreInfo)
    // console.log(movieGenreInfo)
    // console.log(movieAwards.rows)
    // console.log(castAwards.rows)
    // console.log(directorAwards.rows)
    // console.log(movieInfo)
    // console.log(movieCastInfo)
    res.render('updateMoviesPage',{movieInfo,movieCastInfo,movieDirectorInfo,movieGenreInfo,allGenreInfo,allCastInfo,movieAwards,castAwards,directorAwards,movieAwardInfo})
  }
  else{
    res.redirect("/login_page")
  }
})



router.post('/addCelebs',
  upload.fields([
        {
            name: "avatar",
            maxCount: 1
        }
    ]), 
  addCelebs)



router.post('/getCastInfo',getAllCastInfo)




router.post('/addMovies',
  upload.fields([
        {
            name: "poster",
            maxCount: 1
        },
        {
            name: "coverPhoto",
            maxCount: 1
        }
    ]), 
  addMovies)



router.post('/updateMovie',
  upload.fields([
        {
            name: "poster",
            maxCount: 1
        },
        {
            name: "coverPhoto",
            maxCount: 1
        }
    ]), 
  updateMovie)



router.post('/deleteMovie',deleteMovie)





export default router