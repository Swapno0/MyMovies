import { Router } from "express";
import { upload } from "../middleware/multer.middleware.js";
import { getAllGenres } from "../controller/admin.controller.js";

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
    res.render('addMoviesPage',{allGenre:allGenre})
  }
  else{
    res.redirect("/login_page")
  }
})

router.get('/addCelebsPage', async(req,res) =>{
  if (req.session.isAdminAuth) {
    res.render('addCelebsPage')
  }
  else{
    res.redirect("/login_page")
  }
})





export default router