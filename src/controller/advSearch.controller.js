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


const getAllGenres = (async (req, res) => {
    let sql = `SELECT * FROM MYMOVIES.GENRE`
    const allGenre = await SQLexecuter(sql)
    return allGenre;
})

const getAllLanguage = (async (req, res) => {
    let sql = `SELECT * FROM MYMOVIES.LANGUAGE`
    const allLanguage = await SQLexecuter(sql)
    return allLanguage;
})




const getAllMovies = (async(req,res) => {
    let sql = `SELECT * FROM MYMOVIES.MOVIE`
    const allMovies = await SQLexecuter(sql)
    return allMovies
})

const filter = (async(req,res) => {
    
    let {data,genre,language} = req.body
    data = JSON.parse(data)
    genre = JSON.parse(genre)
    language = JSON.parse(language)
    
    let sql
    
    // When genre is selected.
    if (genre.length > 0) 
    {
        sql = `SELECT M.ID
                    FROM MOVIE M JOIN MOVIE_GENRE MG ON M.ID = MG.MOVIEID
                    JOIN GENRE G ON MG.GENREID = G.ID
                    JOIN LANGUAGE L ON M.LANGUAGE = L.TITLE
                    `
        sql += `WHERE G.ID IN (`

        for (let i = 0; i < genre.length; i++)
        {
            if (i != genre.length-1) sql += `${genre[i]},`
            else sql += `${genre[i]}`
        }
        sql += `) `

        if (language.length == 1) {
            sql += `AND
                    L.ID = '${language[0]}' `
        }

        if (data.rating!="") 
        {
            sql += `AND
                    M.AVGRATING <= ${data.rating} `
        }

        if (data.startDate!="" && data.endDate!="") 
        {
            sql += `AND
                    M.RELEASEDATE >= TO_DATE('${data.startDate}','MM/DD/YYYY') AND M.RELEASEDATE <= TO_DATE('${data.endDate}','MM/DD/YYYY') `
        }

        if (data.duration!="") {
            sql += `AND
                    M.DURATION <= ${data.duration} `
        }

        sql += `
                GROUP BY M.ID
                HAVING COUNT(M.ID) = ${genre.length}`

        
        
    }


    // When genre is not selected.
    if (genre.length == 0) 
    {
        sql = `SELECT M.ID
                FROM MOVIE M JOIN LANGUAGE L ON M.LANGUAGE = L.TITLE
                `
        

        if (language.length == 1) {
            sql += `WHERE L.ID = ${language[0]} `
        }

        if (data.rating!="") {
            if (language.length == 1) sql += `AND `
            else sql += `WHERE `
            sql += `M.AVGRATING <= ${data.rating} `
        }

        if (data.startDate!="" && data.endDate!="") 
        {
            if (language.length==1 || data.rating!="") sql += `AND `
            else sql += `WHERE `
            sql += `M.RELEASEDATE >= TO_DATE('${data.startDate}','MM/DD/YYYY') AND M.RELEASEDATE <= TO_DATE('${data.endDate}','MM/DD/YYYY') `
        }

        if(data.duration!="") {
            if (language.length==1 || data.rating!="" || (data.startDate!="" && data.endDate!="")) sql += `AND `
            else sql += `WHERE `
            sql += `M.DURATION <= ${data.duration} `
        }
    }



    
    let movieIDs = await SQLexecuter(sql);
    console.log(movieIDs.rows)

    // now we bring the movie info to the frontend.
    let sql2 =``
    if (movieIDs.rows.length > 0) sql2 = `SELECT * FROM MOVIE WHERE `
    for (let i = 0; i < movieIDs.rows.length; i++) {
        if (i != movieIDs.rows.length-1) sql2 += `MOVIE.ID = ${movieIDs.rows[i].ID} OR `
        else sql2 += `MOVIE.ID = ${movieIDs.rows[i].ID}`
    }
    // console.log(sql2)
    
    let movieInfo
    if(sql2!="") movieInfo = await SQLexecuter(sql2);

    return res.json({movieInfo})
})


export {getAllGenres,getAllMovies,getAllLanguage,filter}