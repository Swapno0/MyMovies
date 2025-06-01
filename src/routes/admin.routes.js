import { Router } from "express";
import { upload } from "../middleware/multer.middleware.js";
import { getAllGenres,addCelebs,getCastInfo, addMovies } from "../controller/admin.controller.js";

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




router.post('/addCelebs',
  upload.fields([
        {
            name: "avatar",
            maxCount: 1
        }
    ]), 
  addCelebs)



router.post('/getCastInfo',getCastInfo)




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



export default router