import { fileURLToPath } from 'url';
import { dirname } from 'path';
import path from 'path';
import { ApiError } from "../utils/ApiError.js"
import { uploader } from "../utils/cloudinary.js"
import { ApiResponse } from '../utils/ApiResponse.js';
import { SQLexecuter } from '../DB/database.js';
import bcrypt from "bcrypt"

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);


const getAllGenres = (async (req,res) => {
    let sql = `SELECT * FROM MYMOVIES.GENRE`
    const allGenre = await SQLexecuter(sql)
    return allGenre;
})

































export {getAllGenres}