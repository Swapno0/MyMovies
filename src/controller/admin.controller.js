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


const getAllGenres = (async (req,res) => {
    let sql = `SELECT * FROM MYMOVIES.GENRE`
    const allGenre = await SQLexecuter(sql)
    return allGenre;
})








const addCelebs = (async (req,res) => {
    const {name,gender,bio,country} = req.body;

    // validating the inputs
    if (name === "" || name.length > 30) {
        req.session.error = "Name should be 0 to 30 characters long"
        // throw new ApiError(400,req.session.error)
        // console.log(req.session.error)
        return res.redirect('/admin/addCelebsPage')
    }
    if (gender === "") {
        req.session.error = "Gender is required"
        // throw new ApiError(400,req.session.error)
        // console.log(req.session.error)
        return res.redirect('/admin/addCelebsPage')
    }
    // if (bio === "" || bio.length > 100) {
    //     req.session.error = "Bio should be 0 to 100 characters long"
    //     // throw new ApiError(400,req.session.error)
    //     console.log(req.session.error)
    //     return res.redirect('/admin/addCelebsPage')
    // }
    if (country === "") {
        req.session.error = "Country is required"
        // throw new ApiError(400,req.session.error)
        // console.log(req.session.error)
        return res.redirect('/admin/addCelebsPage')
    }

    //access and use files using multer
    const avatarLocalPath = req.files?.avatar?req.files.avatar[0]?.path : null


    //validation again for required files.
    if (!avatarLocalPath) {
        req.session.error = "Avatar is required."
        // throw new ApiError(400,req.session.error)
        // console.log(req.session.error)
        return res.redirect('/admin/addCelebsPage')
    }


    //upload files in cloudinary
    const storedAvatar = await uploader(avatarLocalPath)

    //Do database entry for the above informations
    let addCelebs_sql = `INSERT INTO MYMOVIES.CELEB VALUES(MYMOVIES.CELEB_ID_SEQ.NEXTVAL,'${name}','${storedAvatar.url}','${bio}','${country}','${gender}')`
    const celeb = await SQLexecuter(addCelebs_sql)

    //Check for movies creation
    const check_celeb_sql = `SELECT NAME,AVATAR,BIO,COUNTRY,GENDER FROM MYMOVIES.CELEB
                        WHERE MYMOVIES.CELEB.NAME = '${name}'`
    const check_celeb = await SQLexecuter(check_celeb_sql)
    if (check_celeb.rows.length == 0) {
        req.session.error = "Something went wrong while adding the celebrity"
        // throw new ApiError(400,req.session.error)
        // console.log(req.session.error)
        return res.redirect('/admin/addCelebsPage')
    }

    //Redirect to appropriate page
    req.session.success_msg = "Previous Celebrity was added successfully"
    // return res.
    // status(200).
    // json( new ApiResponse(200,check_celeb,"successfully created"))
    // console.log(req.session.success_msg)
    res.redirect('/admin/addCelebsPage')

})









const getCastInfo = (async (req,res) => {
    const {input} = req.body
    if(input == "") res.send({})
    else{
    let sql = `SELECT * FROM MYMOVIES.CELEB
                WHERE MYMOVIES.CELEB.NAME LIKE '${input}%'`
    let castInfo = await SQLexecuter(sql)
    // if (castInfo.rows.length == 0) {
    //     sql = `SELECT * FROM MYMOVIES.CELEB
    //             WHERE MYMOVIES.CELEB.NAME LIKE '%${input}%'`
    //     castInfo = await SQLexecuter(sql)
    // }
    res.send(castInfo)}
})







const addMovies = (async (req,res) => {
    let {movieData,cast,genre,director} = req.body
    const posterLocalPath = req.files?.poster?req.files.poster[0]?.path : null
    const coverPhotoLocalPath = req.files?.coverPhoto?req.files.coverPhoto[0]?.path : null
    movieData = JSON.parse(movieData)
    cast = JSON.parse(cast)
    genre = JSON.parse(genre)
    director = JSON.parse(director)
    console.log(cast)
    console.log(genre)
    console.log(director)

    //moviesName, releaseDate, duration, poster, coverPhoto, language, country, description 
    //validating the inputs
    if (movieData.moviesName === "") {
        req.session.error = "Must add Movie Title"
        return res.json({redirectURL:"/admin/addMoviesPage"})
    }
    if (movieData.releaseDate === "") {
        req.session.error = "Must add Release Date "
        return res.json({redirectURL:"/admin/addMoviesPage"})
    }
    if (movieData.duration === "") {
        req.session.error = "Must add Duration"
        return res.json({redirectURL:"/admin/addMoviesPage"})
    }
    if (movieData.language === "") {
        req.session.error = "Must add Language"
        return res.json({redirectURL:"/admin/addMoviesPage"})
    }
    if (movieData.country === "") {
        req.session.error = "Must add Country"
        return res.json({redirectURL:"/admin/addMoviesPage"})
    }
    if (movieData.description === "") {
        req.session.error = "Must add Description"
        return res.json({redirectURL:"/admin/addMoviesPage"})
    }


    //validation again for required files.
    if (!posterLocalPath) {
        req.session.error = "Poster is required."
        return res.json({redirectURL:"/admin/addMoviesPage"})
    }
    if (!coverPhotoLocalPath) {
        req.session.error = "Cover Photo is required."
        return res.json({redirectURL:"/admin/addMoviesPage"})
    }
    if (posterLocalPath === coverPhotoLocalPath) {
        req.session.error = "Poster and CoverPhoto can not have same name"
        return res.json({redirectURL:"/admin/addMoviesPage"})
    }



    //upload files in cloudinary
    const storedPoster = await uploader(posterLocalPath)
    const storedCoverPhoto = await uploader(coverPhotoLocalPath)

    // database code for movie database.
    let get_movieId = `SELECT MYMOVIES.MOVIE_ID_SEQ.NEXTVAL FROM DUAL`
    let movieID = await SQLexecuter(get_movieId)
    movieID = movieID.rows[0].NEXTVAL
    let movie_sql = `INSERT INTO MYMOVIES.MOVIE VALUES (${movieID},'${movieData.moviesName}','${movieData.duration}','${storedCoverPhoto.url}','${storedPoster.url}','${movieData.description}',TO_DATE('${movieData.releaseDate}','DD-MM-YYYY'),'${movieData.country}','${movieData.language}',DEFAULT)`
    const movie = await SQLexecuter(movie_sql)

    let check_movie = `SELECT * FROM MYMOVIES.MOVIE
                        WHERE MYMOVIES.MOVIE.ID = ${movieID} AND
                        MYMOVIES.MOVIE.TITLE = '${movieData.moviesName}'`
    const exist_movie = await SQLexecuter(check_movie)

    if (exist_movie.rows.length == 0) {
        req.session.error = "The movie could not be added"
        return res.json({redirectURL:"/admin/addMoviesPage"})
    }

    // database code for movie genre.
    for (let index = 0; index < genre.length; index++) {
        let genre_sql = `INSERT INTO MYMOVIES.MOVIE_GENRE VALUES(${movieID},${genre[index]})`
        const added_genre = await SQLexecuter(genre_sql)
    }
    

    // database code for cast.
    for (let index = 0; index < cast.length; index++) {
        let cast_sql = `INSERT INTO MYMOVIES.MOVIE_CELEB VALUES (${movieID},${cast[index].celebID},'Actor','${cast[index].role}')`
        let added_cast = await SQLexecuter(cast_sql)
    }

    // database code for director

    for (let index = 0; index < director.length; index++) {
        let director_sql = `INSERT INTO MYMOVIES.MOVIE_CELEB VALUES (${movieID},${director[index].celebID},'Director','None')`
        let added_director = await SQLexecuter(director_sql)
    }
    

    


    return res.json({redirectURL:"/admin/addAwardsPage"})
})

















export {getAllGenres,addCelebs,getCastInfo,addMovies}