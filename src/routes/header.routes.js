import { Router } from "express";
import { upload } from "../middleware/multer.middleware.js";
import { getAllCelebs, getAllMovies } from "../controller/header.controller.js";

const router = Router()


router.get("/",async(req,res) => {
    let allMovies = await getAllMovies(req,res)
    let allCelebs = await getAllCelebs(req,res)
    return res.json({allMovies,allCelebs})
})












export default router