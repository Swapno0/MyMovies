import { fileURLToPath } from 'url';
import { dirname } from 'path';
import path from 'path';
import { ApiError } from "../utils/ApiError.js"
import { uploader } from "../utils/cloudinary.js"
import { ApiResponse } from '../utils/ApiResponse.js';
import { SQLexecuter } from '../DB/database.js';
import bcrypt from "bcrypt"
import { json } from 'stream/consumers';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);



const getAllMovies = (async(req,res) => {
    let sql = `SELECT * FROM MYMOVIES.MOVIE`
    let allMovies = await SQLexecuter(sql)
    return allMovies
})


const getAllCelebs = (async(req,res) => {
    let sql = `SELECT * FROM MYMOVIES.CELEB`
    let allCelebs = await SQLexecuter(sql)
    return allCelebs
})



export {getAllCelebs,getAllMovies}