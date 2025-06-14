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



const getCelebInfo = (async(req,res) => {
    let celebID = req.query.ID
    let sql = `SELECT * FROM MYMOVIES.CELEB
                WHERE CELEB.ID = ${celebID}`
    let celebInfo = await SQLexecuter(sql)
    return celebInfo
})


const getCelebMovieInfo = (async(req,res) => {
    let celebID = req.query.ID
    let sql = `SELECT * 
                FROM MYMOVIES.MOVIE_CELEB MC JOIN MYMOVIES.MOVIE M ON MC.MOVIEID = M.ID
                WHERE MC.CELEBID = ${celebID}
                `
    let celebMovieInfo = await SQLexecuter(sql)
    return celebMovieInfo
})



const getCelebTypeInfo = (async(req,res) => {
    let celebID = req.query.ID
    let sql = `SELECT C.ID,MC.CELEBTYPE
                FROM CELEB C LEFT JOIN MOVIE_CELEB MC ON C.ID = MC.CELEBID
                GROUP BY C.ID,MC.CELEBTYPE
                HAVING C.ID = ${celebID}`
    let celebTypeInfo = await SQLexecuter(sql)
    return celebTypeInfo
})



const getCelebAwardInfo = (async(req,res) => {
    let celebID = req.query.ID
    let sql = `SELECT (A.TITLE || ' for ' || A.AWARDDESCRIPTION) AS AWARD_NAME,A.ID,C.RECIEVEDATE,C.MOVIEID, M.TITLE
                FROM MYMOVIES.CELEB_AWARD C JOIN MYMOVIES.AWARD A ON C.AWARDID = A.ID JOIN MYMOVIES.MOVIE M ON C.MOVIEID = M.ID
                WHERE
                C.CELEBID = ${celebID}`
    const celebAwardInfo = await SQLexecuter(sql)
    return celebAwardInfo
})



export {getCelebInfo,getCelebMovieInfo,getCelebTypeInfo,getCelebAwardInfo}