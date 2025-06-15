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




// Getting all the user info.
const getUserInfo = (async(req,res) => {
    let userName = req.session.userid
    let sql = `SELECT  U.ID,U.USERNAME,U.BIO,U.AVATAR,TO_CHAR(U.CREATIONDATE,'MON-YYYY-DAY') AS CREATIONDATE
                FROM MYMOVIES.USERS U
                WHERE USERNAME = '${userName}'`
    let userInfo = await SQLexecuter(sql)
    return userInfo
})


// get the watch history.
const getWatchHistory = (async (req, res) => {
    let sql = `SELECT M.POSTER,M.ID,M.TITLE,M.AVGRATING,U.USERNAME
                FROM MYMOVIES.WATCHHISTORY W JOIN MYMOVIES.MOVIE M ON W.MOVIEID = M.ID
                JOIN MYMOVIES.USERS U ON W.USERID = U.ID
                WHERE U.USERNAME  = '${req.session.userid}'
                ORDER BY W.ADDEDDATE DESC
                FETCH FIRST 15 ROWS ONLY`
    let watchHistory = SQLexecuter(sql)
    return watchHistory 
})



// get the watchList.
const getWatchList = (async(req,res) => {
    let userName = req.session.userid
    let sql = `SELECT ID FROM MYMOVIES.USERS
                WHERE MYMOVIES.USERS.USERNAME = '${userName}'`
    let userID = await SQLexecuter(sql)
    userID = userID.rows[0].ID

    let sql1 = `SELECT * 
                FROM MYMOVIES.WATCHLIST W JOIN MYMOVIES.MOVIE M ON W.MOVIEID = M.ID
                WHERE W.USERID = ${userID}
                ORDER BY W.ADDEDDATE DESC`
    let watchList = await SQLexecuter(sql1)
    return watchList
})


const getUserReviews = (async(req,res) => {
    let userName = req.session.userid
    let sql = `SELECT ID FROM MYMOVIES.USERS
                WHERE MYMOVIES.USERS.USERNAME = '${userName}'`
    let userID = await SQLexecuter(sql)
    userID = userID.rows[0].ID

    let sql1 = `SELECT * 
                FROM MYMOVIES.USER_REVIEW UR JOIN MYMOVIES.MOVIE M ON UR.MOVIEID = M.ID
                WHERE UR.USERID = ${userID}`
    let userReviews = await SQLexecuter(sql1)
    return userReviews
})





export {getUserInfo,getWatchHistory,getWatchList,getUserReviews}