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




const getMovieInfo = (async (req,res) => {
    let movieID = req.query.ID
    let sql = `SELECT * FROM MYMOVIES.MOVIE
                WHERE MYMOVIES.MOVIE.ID = ${movieID}`
    let movieInfo = SQLexecuter(sql)
    return movieInfo
})


const getMovieGenreInfo = (async (req,res) => {
    let movieID = req.query.ID
    let sql = `SELECT *
                FROM MYMOVIES.MOVIE_GENRE M JOIN MYMOVIES.GENRE G ON M.GENREID = G.ID
                WHERE M.MOVIEID = ${movieID}`
    let movieGenreInfo = SQLexecuter(sql)
    return movieGenreInfo
})


const getMovieAwardInfo = (async(req,res) => {
    let movieID = req.query.ID
    let sql = `SELECT *
                FROM MYMOVIES.MOVIE_AWARD M JOIN MYMOVIES.AWARD A ON M.AWARDID = A.ID
                WHERE M.MOVIEID = ${movieID}`
    let movieAwardInfo = await SQLexecuter(sql)
    return movieAwardInfo
})


const getCastInfo = (async(req,res) => {
    let movieID = req.query.ID
    let sql = `SELECT C.ID,C.AVATAR,C.NAME
                FROM MYMOVIES.CELEB C JOIN MYMOVIES.MOVIE_CELEB M ON C.ID = M.CELEBID
                WHERE M.MOVIEID = ${movieID} AND 
                M.CELEBTYPE = 'Actor'`
    let castInfo = await SQLexecuter(sql)
    return castInfo
    
})



const getDirectorInfo = (async(req,res) => {
    let movieID = req.query.ID
    let sql = `SELECT C.ID,C.AVATAR,C.NAME
                FROM MYMOVIES.CELEB C JOIN MYMOVIES.MOVIE_CELEB M ON C.ID = M.CELEBID
                WHERE M.MOVIEID = ${movieID} AND 
                M.CELEBTYPE = 'Director'`
    let directorInfo = await SQLexecuter(sql)
    return directorInfo
})




const addReview = (async(req,res) => {
    let {userName,movieID,rating,heading,content} = req.body
    let sql = `SELECT ID FROM MYMOVIES.USERS
                WHERE MYMOVIES.USERS.USERNAME = '${userName}'`
    let userID = await SQLexecuter(sql)
    userID = userID.rows[0].ID

    heading = heading.replace(/'/g, "''")
    content = content.replace(/'/g, "''")

    // Validating the inputs.
    if (rating == "") {
        console.log(345)
        return res.json({ redirectURL: "/home" })
    }
    if (heading == "") {
        heading = " "
    }
    if (content == "") {
        content = " "
    }

    // check if user already reviewed this movie.
    let sql1 = `SELECT * FROM MYMOVIES.USER_REVIEW
                WHERE MYMOVIES.USER_REVIEW.MOVIEID = ${movieID} AND
                MYMOVIES.USER_REVIEW.USERID = ${userID}`
    let checkExistReview = await SQLexecuter(sql1)
    if (checkExistReview.rows.length == 1) {
        let sql2 = `UPDATE MYMOVIES.USER_REVIEW
                    SET HEADING = '${heading}', CONTENT = '${content}', RATING = ${rating}, ADDEDDATE = SYSDATE
                    WHERE MYMOVIES.USER_REVIEW.MOVIEID = ${movieID} AND
                    MYMOVIES.USER_REVIEW.USERID = ${userID}`
        let updateReview = await SQLexecuter(sql2)
    }
    else{
        // now we add the review to the database.
        let sql3 = `INSERT INTO MYMOVIES.USER_REVIEW
                    VALUES(${movieID},${userID},'${heading}','${content}',${rating},DEFAULT)`
        let addedReview = await SQLexecuter(sql3)
    }


    return res.json({ redirectURL: "/home" })
})




export{getMovieInfo,getMovieGenreInfo,getMovieAwardInfo,getCastInfo,getDirectorInfo,addReview}