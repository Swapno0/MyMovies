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




const getNewlyAddedMovies = (async (req, res) => {
    let sql = `SELECT * FROM MYMOVIES.MOVIE
                ORDER BY MYMOVIES.MOVIE.RELEASEDATE DESC
                FETCH FIRST 15 ROWS ONLY`
    const newlyAddedMovies = await SQLexecuter(sql)
    return newlyAddedMovies
})


const getTopRatedMovies = (async (req, res) => {
    let sql = `SELECT * FROM MYMOVIES.MOVIE
                ORDER BY MYMOVIES.MOVIE.AVGRATING DESC
                FETCH FIRST 15 ROWS ONLY`
    const topRatedMovies = await SQLexecuter(sql)
    return topRatedMovies
})


const getMostPopularCelebrities = (async (req, res) => {
    let sql = `SELECT C.ID,C.NAME,C.AVATAR, COUNT(A.AWARDID) AS AWARDCOUNT
                FROM MYMOVIES.CELEB C LEFT JOIN MYMOVIES.CELEB_AWARD A ON C.ID = A.CELEBID
                GROUP BY C.ID,C.NAME,C.AVATAR
                ORDER BY AWARDCOUNT DESC
                FETCH FIRST 20 ROWS ONLY`
    const mostPopularCelebrities = await SQLexecuter(sql)
    return mostPopularCelebrities
})

const getTopPicksMovies = (async (req, res) => {
    let sql = `SELECT M.ID,M.TITLE,M.POSTER,M.AVGRATING, COUNT(A.AWARDID) AS AWARDCOUNT
                FROM MYMOVIES.MOVIE M LEFT JOIN MYMOVIES.MOVIE_AWARD A ON M.ID = A.MOVIEID
                GROUP BY M.ID,M.TITLE,M.POSTER,M.AVGRATING
                ORDER BY AWARDCOUNT DESC
                FETCH FIRST 15 ROWS ONLY`
    let topPicksMovies = SQLexecuter(sql)
    return topPicksMovies
})


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


const addToWatchHistory = (async (req, res) => {
    let { userName, movieID } = req.body
    let sql = `SELECT ID FROM MYMOVIES.USERS
                WHERE MYMOVIES.USERS.USERNAME = '${userName}'`
    let userID = await SQLexecuter(sql)
    userID = userID.rows[0].ID

    // At first check if the movie already was in the watchHistory or not.
    let sql1 = `SELECT * 
                FROM MYMOVIES.WATCHHISTORY W JOIN MYMOVIES.USERS U ON W.USERID = U.ID
                WHERE W.MOVIEID = ${movieID} AND
                U.USERNAME = '${userName}' `
    let checkExistMovie = await SQLexecuter(sql1)


    // if exists, just update the addedDate for that movie.
    if (checkExistMovie.rows.length == 1) {
        let sql2 = `UPDATE MYMOVIES.WATCHHISTORY
                    SET MYMOVIES.WATCHHISTORY.ADDEDDATE = SYSDATE
                    WHERE MYMOVIES.WATCHHISTORY.USERID = ${userID} AND
                    MYMOVIES.WATCHHISTORY.MOVIEID = ${movieID}`
        let existMovieUpdate = await SQLexecuter(sql2)
    }
    // if doesnt exists, add the movie to watchhistory
    else {
        let sql3 = `INSERT INTO MYMOVIES.WATCHHISTORY
                    VALUES(${movieID},${userID},DEFAULT)`
        let newMovieAdded = await SQLexecuter(sql3)
    }

    return res.json({})
})


const getWatchList = (async(req,res) => {
    let {userName} = req.body
    let sql = `SELECT ID FROM MYMOVIES.USERS
                WHERE MYMOVIES.USERS.USERNAME = '${userName}'`
    let userID = await SQLexecuter(sql)
    userID = userID.rows[0].ID

    let sql1 = `SELECT * FROM MYMOVIES.WATCHLIST
                WHERE MYMOVIES.WATCHLIST.USERID = ${userID}
                ORDER BY MYMOVIES.WATCHLIST.ADDEDDATE DESC`
    let watchList = await SQLexecuter(sql1)
    return watchList
})


const addToWatchList = (async (req, res) => {
    let { userName, movieID } = req.body
    let sql = `SELECT ID FROM MYMOVIES.USERS
                WHERE MYMOVIES.USERS.USERNAME = '${userName}'`
    let userID = await SQLexecuter(sql)
    userID = userID.rows[0].ID

    // At first check if the movie already was in the watchHistory or not.
    let sql1 = `SELECT * 
                FROM MYMOVIES.WATCHLIST W JOIN MYMOVIES.USERS U ON W.USERID = U.ID
                WHERE W.MOVIEID = ${movieID} AND
                U.USERNAME = '${userName}' `
    let checkExistMovie = await SQLexecuter(sql1)

    // If doesnt exist, add to watchlist
    if (checkExistMovie.rows.length == 1) {
    }
    else {
        let sql3 = `INSERT INTO MYMOVIES.WATCHLIST
                    VALUES(${movieID},${userID},DEFAULT)`
        let newMovieAdded = await SQLexecuter(sql3)
    }


    return res.json({})
})




const removeFromWatchList = (async (req, res) => {
    let { userName, movieID } = req.body
    let sql = `SELECT ID FROM MYMOVIES.USERS
                WHERE MYMOVIES.USERS.USERNAME = '${userName}'`
    let userID = await SQLexecuter(sql)
    userID = userID.rows[0].ID

    // At first check if the movie already was in the watchList or not.
    let sql1 = `SELECT * 
                FROM MYMOVIES.WATCHLIST W JOIN MYMOVIES.USERS U ON W.USERID = U.ID
                WHERE W.MOVIEID = ${movieID} AND
                U.USERNAME = '${userName}' `
    let checkExistMovie = await SQLexecuter(sql1)

    // If does exist, remove from watchlist
    if (checkExistMovie.rows.length == 1) {
        let sql3 = `DELETE FROM MYMOVIES.WATCHLIST
                    WHERE MYMOVIES.WATCHLIST.USERID = ${userID} AND
                    MYMOVIES.WATCHLIST.MOVIEID = ${movieID}`
        let newMovieAdded = await SQLexecuter(sql3)
    }

    return res.json({})
})










export { getNewlyAddedMovies, getTopRatedMovies, getMostPopularCelebrities, getTopPicksMovies, getWatchHistory, addToWatchHistory,getWatchList, addToWatchList,removeFromWatchList }