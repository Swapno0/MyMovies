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

const getAllMoviesAwards = (async (req, res) => {
    let sql = `SELECT ID, (TITLE || ' for ' || AWARDDESCRIPTION) AS AWARD_NAME FROM MYMOVIES.AWARD
            WHERE MYMOVIES.AWARD.AWARDRECIEVER = 'Movie'`
    const movieAwards = await SQLexecuter(sql)
    return movieAwards
})

const getAllDirectorAwards = (async (req, res) => {
    let sql = `SELECT ID, (TITLE || ' for ' || AWARDDESCRIPTION) AS AWARD_NAME FROM MYMOVIES.AWARD
            WHERE MYMOVIES.AWARD.AWARDRECIEVER = 'Director'`
    const directorAwards = await SQLexecuter(sql)
    return directorAwards
})

const getAllCastAwards = (async (req, res) => {
    let sql = `SELECT ID, (TITLE || ' for ' || AWARDDESCRIPTION) AS AWARD_NAME FROM MYMOVIES.AWARD
            WHERE MYMOVIES.AWARD.AWARDRECIEVER = 'Actor'`
    const castAwards = await SQLexecuter(sql)
    return castAwards
})

const getAllCelebsAwards = (async (req, res) => {
    let sql = `SELECT ID, (TITLE || ' for ' || AWARDDESCRIPTION) AS AWARD_NAME FROM MYMOVIES.AWARD
            WHERE MYMOVIES.AWARD.AWARDRECIEVER = 'Actor' OR
            MYMOVIES.AWARD.AWARDRECIEVER = 'Director'`
    const celebAwards = await SQLexecuter(sql)

    return celebAwards
})

const getCelebAwardInfo = (async (req,res) => {
    let celeb_id = req.query.ID
    let sql = `SELECT (A.TITLE || ' for ' || A.AWARDDESCRIPTION) AS AWARD_NAME,A.ID,C.RECIEVEDATE,C.MOVIEID
                FROM MYMOVIES.CELEB_AWARD C JOIN MYMOVIES.AWARD A ON C.AWARDID = A.ID
                WHERE
                C.CELEBID = ${celeb_id}`
    const celebAwardInfo = await SQLexecuter(sql)
    return celebAwardInfo
})

const getAllMovies = (async (req, res) => {
    let sql = `SELECT * FROM MYMOVIES.MOVIE`
    const allMovies = await SQLexecuter(sql)
    return allMovies
})


const getAllCastInfo = (async (req, res) => {
    const { input } = req.body
    if (input == "") res.send({})
    else {
        let sql = `SELECT * FROM MYMOVIES.CELEB
                WHERE MYMOVIES.CELEB.NAME LIKE '${input}%'`
        let castInfo = await SQLexecuter(sql)
        res.send(castInfo)
    }
})

const getALLCastInfo = (async (req, res) => {
    let sql = `SELECT * FROM MYMOVIES.CELEB`
    const allCastInfo = await SQLexecuter(sql)
    return allCastInfo
})

const getCelebInfo = (async(req,res) => {
    let celebID = req.query.ID
    let sql = `SELECT * FROM MYMOVIES.CELEB
                WHERE MYMOVIES.CELEB.ID = ${celebID}`
    let celebInfo = await SQLexecuter(sql)
    return celebInfo
})

const getMovieCastInfo = (async (req, res) => {
    let movie_id = req.query.ID
    let sql = `SELECT * 
                FROM MYMOVIES.CELEB C JOIN MYMOVIES.MOVIE_CELEB M ON C.ID = M.CELEBID
                WHERE M.MOVIEID = ${movie_id} AND
                M.CELEBTYPE = 'Actor'`
    const movieCastInfo = await SQLexecuter(sql)
    return movieCastInfo
})

const getMovieDirectorInfo = (async (req, res) => {
    let movie_id = req.query.ID
    let sql = `SELECT * 
                FROM MYMOVIES.CELEB C JOIN MYMOVIES.MOVIE_CELEB M ON C.ID = M.CELEBID
                WHERE M.MOVIEID = ${movie_id} AND
                M.CELEBTYPE = 'Director'`
    const movieDirectorInfo = await SQLexecuter(sql)
    return movieDirectorInfo
})

const getMovieGenreInfo = (async (req, res) => {
    let movie_id = req.query.ID
    let sql = `SELECT *
                FROM MYMOVIES.GENRE G JOIN MYMOVIES.MOVIE_GENRE M ON G.ID = M.GENREID
                WHERE M.MOVIEID = ${movie_id}`
    const movieGenreInfo = await SQLexecuter(sql)
    return movieGenreInfo
})

const getMovieInfo = (async (req, res) => {
    let movie_id = req.query.ID
    let sql = `SELECT * FROM MYMOVIES.MOVIE WHERE
                MYMOVIES.MOVIE.ID = ${movie_id}`
    const movieInfo = await SQLexecuter(sql)
    return movieInfo
})

const getMovieAwardInfo = (async (req, res) => {
    let movie_id = req.query.ID
    let sql = `SELECT (A.TITLE || ' for ' || A.AWARDDESCRIPTION) AS AWARD_NAME,A.ID,M.RECIEVEDATE
                FROM MYMOVIES.MOVIE_AWARD M JOIN MYMOVIES.AWARD A ON M.AWARDID = A.ID
                WHERE
                M.MOVIEID = ${movie_id}`
    const movieAwardInfo = await SQLexecuter(sql)
    return movieAwardInfo
})








const addCelebs = (async (req, res) => {
    let { name, gender, bio, country } = req.body;

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
    bio = bio.replace(/'/g, "''")
    if (country === "") {
        req.session.error = "Country is required"
        // throw new ApiError(400,req.session.error)
        // console.log(req.session.error)
        return res.redirect('/admin/addCelebsPage')
    }

    //access and use files using multer
    const avatarLocalPath = req.files?.avatar ? req.files.avatar[0]?.path : null


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

















const addMovies = (async (req, res) => {
    let { movieData, cast, genre, director } = req.body
    const posterLocalPath = req.files?.poster ? req.files.poster[0]?.path : null
    const coverPhotoLocalPath = req.files?.coverPhoto ? req.files.coverPhoto[0]?.path : null
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
        return res.json({ redirectURL: "/admin/addMoviesPage" })
    }
    if (movieData.releaseDate === "") {
        req.session.error = "Must add Release Date "
        return res.json({ redirectURL: "/admin/addMoviesPage" })
    }
    if (movieData.duration === "") {
        req.session.error = "Must add Duration"
        return res.json({ redirectURL: "/admin/addMoviesPage" })
    }
    if (movieData.language === "") {
        req.session.error = "Must add Language"
        return res.json({ redirectURL: "/admin/addMoviesPage" })
    }
    if (movieData.country === "") {
        req.session.error = "Must add Country"
        return res.json({ redirectURL: "/admin/addMoviesPage" })
    }
    if (movieData.description === "") {
        req.session.error = "Must add Description"
        return res.json({ redirectURL: "/admin/addMoviesPage" })
    }
    movieData.description = (movieData.description).replace(/'/g, "''")
    console.log(movieData.description)


    //validation again for required files.
    if (!posterLocalPath) {
        req.session.error = "Poster is required."
        return res.json({ redirectURL: "/admin/addMoviesPage" })
    }
    if (!coverPhotoLocalPath) {
        req.session.error = "Cover Photo is required."
        return res.json({ redirectURL: "/admin/addMoviesPage" })
    }
    if (posterLocalPath === coverPhotoLocalPath) {
        req.session.error = "Poster and CoverPhoto can not have same name"
        return res.json({ redirectURL: "/admin/addMoviesPage" })
    }



    //upload files in cloudinary
    const storedPoster = await uploader(posterLocalPath)
    const storedCoverPhoto = await uploader(coverPhotoLocalPath)

    // database code for movie database.
    let get_movieId = `SELECT MYMOVIES.MOVIE_ID_SEQ.NEXTVAL FROM DUAL`
    let movieID = await SQLexecuter(get_movieId)
    movieID = movieID.rows[0].NEXTVAL
    let movie_sql = `INSERT INTO MYMOVIES.MOVIE VALUES (${movieID},'${movieData.moviesName}','${movieData.duration}','${storedCoverPhoto.url}','${storedPoster.url}','${movieData.description}',TO_DATE('${movieData.releaseDate}','MM/DD/YYYY'),'${movieData.country}','${movieData.language}',DEFAULT)`
    const movie = await SQLexecuter(movie_sql)

    let check_movie = `SELECT * FROM MYMOVIES.MOVIE
                        WHERE MYMOVIES.MOVIE.ID = ${movieID} AND
                        MYMOVIES.MOVIE.TITLE = '${movieData.moviesName}'`
    const exist_movie = await SQLexecuter(check_movie)

    if (exist_movie.rows.length == 0) {
        req.session.error = "The movie could not be added"
        return res.json({ redirectURL: "/admin/addMoviesPage" })
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





    return res.json({ redirectURL: "/admin" })
})




const updateMovie = (async (req, res) => {
    let { movieData, cast, director, genre, movieAward } = req.body
    let posterLocalPath = req.files?.poster ? req.files.poster[0]?.path : null
    let coverPhotoLocalPath = req.files?.coverPhoto ? req.files.coverPhoto[0]?.path : null
    console.log(400)

    movieData = JSON.parse(movieData)
    cast = JSON.parse(cast)
    genre = JSON.parse(genre)
    director = JSON.parse(director)
    movieAward = JSON.parse(movieAward)

    // Updating basic movie info
    if (movieData.changed_movieTitle) {
        let sql = `UPDATE MYMOVIES.MOVIE
                    SET MYMOVIES.MOVIE.TITLE = '${movieData.changed_movieTitle}'
                    WHERE MYMOVIES.MOVIE.ID = ${movieData.movieID}`
        let changedTitle = await SQLexecuter(sql)
    }
    if (movieData.changed_releaseDate) {
        let sql = `UPDATE MYMOVIES.MOVIE
                    SET MYMOVIES.MOVIE.RELEASEDATE = TO_DATE('${movieData.changed_releaseDate}','MM/DD/YYYY')
                    WHERE MYMOVIES.MOVIE.ID = ${movieData.movieID}`
        let changedReleaseDate = SQLexecuter(sql)
    }
    if (movieData.changed_duration) {
        let sql = `UPDATE MYMOVIES.MOVIE
                    SET MYMOVIES.MOVIE.DURATION = ${movieData.changed_duration}
                    WHERE MYMOVIES.MOVIE.ID = ${movieData.movieID}`
        let changedDuration = SQLexecuter(sql)
    }
    if (movieData.changed_language) {
        let sql = `UPDATE MYMOVIES.MOVIE
                    SET MYMOVIES.MOVIE.LANGUAGE = '${movieData.changed_language}'
                    WHERE MYMOVIES.MOVIE.ID = ${movieData.movieID}`
        let changedLanguage = SQLexecuter(sql)
    }
    if (movieData.changed_country) {
        let sql = `UPDATE MYMOVIES.MOVIE
                    SET MYMOVIES.MOVIE.COUNTRY = '${movieData.changed_country}'
                    WHERE MYMOVIES.MOVIE.ID = ${movieData.movieID}`
        let changedCountry = SQLexecuter(sql)
    }
    if (movieData.changed_description) {
        movieData.changed_description = movieData.changed_description.replace(/'/g, "''")
        let sql = `UPDATE MYMOVIES.MOVIE
                    SET MYMOVIES.MOVIE.DESCRIPTION = '${movieData.changed_description}'
                    WHERE MYMOVIES.MOVIE.ID = ${movieData.movieID}`
        let changedDescription = SQLexecuter(sql)
    }
    if (posterLocalPath) {
        let storedPoster = await uploader(posterLocalPath)
        let sql = `UPDATE MYMOVIES.MOVIE
                SET MYMOVIES.MOVIE.POSTER = '${storedPoster.url}'
                WHERE MYMOVIES.MOVIE.ID = ${movieData.movieID}`
        let changedPoster = SQLexecuter(sql)
    }
    if (coverPhotoLocalPath) {
        let storedCoverPhoto = await uploader(coverPhotoLocalPath)
        let sql = `UPDATE MYMOVIES.MOVIE
                SET MYMOVIES.MOVIE.COVERPHOTO = '${storedCoverPhoto.url}'
                WHERE MYMOVIES.MOVIE.ID = ${movieData.movieID}`
        let changedCoverPhoto = SQLexecuter(sql)
    }



    // Updating the casts of the movie.
    if (cast) {
        // At first delete the existing casts.
        let deleteCast_sql = `DELETE FROM MYMOVIES.MOVIE_CELEB
                            WHERE MYMOVIES.MOVIE_CELEB.MOVIEID = ${movieData.movieID} AND
                            MYMOVIES.MOVIE_CELEB.CELEBTYPE = 'Actor'`
        let deletedCast = await SQLexecuter(deleteCast_sql)

        for (let index = 0; index < cast.length; index++) {
            let cast_sql = `INSERT INTO MYMOVIES.MOVIE_CELEB VALUES (${movieData.movieID},${cast[index].celebID},'Actor','${cast[index].role}')`
            let added_cast = await SQLexecuter(cast_sql)
        }
    }

    // Updating the directors of the movie.
    if (director) {
        // At first delete the existing directors.
        let deleteDirector_sql = `DELETE FROM MYMOVIES.MOVIE_CELEB
                            WHERE MYMOVIES.MOVIE_CELEB.MOVIEID = ${movieData.movieID} AND
                            MYMOVIES.MOVIE_CELEB.CELEBTYPE = 'Director'`
        let deletedCast = await SQLexecuter(deleteDirector_sql)

        for (let index = 0; index < director.length; index++) {
            let director_sql = `INSERT INTO MYMOVIES.MOVIE_CELEB VALUES (${movieData.movieID},${director[index].celebID},'Director','None')`
            let added_director = await SQLexecuter(director_sql)
        }
    }


    // Updating the genre.
    if (genre) {
        let deleteGenre_sql = `DELETE FROM MYMOVIES.MOVIE_GENRE
                            WHERE MYMOVIES.MOVIE_GENRE.MOVIEID = ${movieData.movieID}`
        let deletedGenre = await SQLexecuter(deleteGenre_sql)

        for (let index = 0; index < genre.length; index++) {
        let genre_sql = `INSERT INTO MYMOVIES.MOVIE_GENRE VALUES(${movieData.movieID},${genre[index].genreID})`
        const added_genre = await SQLexecuter(genre_sql)
    }
    }

    //updating the awards
    if (movieAward) {
        let deleteMovieAward_sql = `DELETE FROM MYMOVIES.MOVIE_AWARD
                                    WHERE MYMOVIES.MOVIE_AWARD.MOVIEID = ${movieData.movieID}`
        let deletedMovieAward = await SQLexecuter(deleteMovieAward_sql)

        for (let index = 0; index < movieAward.length; index++) {
            let movieAward_sql = `INSERT INTO MYMOVIES.MOVIE_AWARD VALUES (${movieData.movieID},${movieAward[index].awardID},${movieAward[index].recieveDate})`
            const added_movie_award = SQLexecuter(movieAward_sql)
        }
    }

    return res.json({ redirectURL: `/admin/updateMoviesPage?ID=${movieData.movieID.trim()}` })
})




const deleteMovie = (async (req,res) =>{
    let {movieID} = req.body
    
    let deleteMovie_sql = `DELETE FROM MYMOVIES.MOVIE
                            WHERE MYMOVIES.MOVIE.ID = ${movieID}`
    let deletedMovie = await SQLexecuter(deleteMovie_sql)

    return res.json({ redirectURL: `/admin/updateMoviesHomePage` })
})



const updateCeleb = (async(req,res) => {
    let {celebData,celebAward} = req.body
    let avatarLocalPath = req.files?.avatar ? req.files.avatar[0]?.path : null

    celebData = JSON.parse(celebData)
    celebAward = JSON.parse(celebAward)
    
    // console.log(celebData)
    // console.log(celebAward)
    // console.log(avatarLocalPath)
    // console.log(344)

    // updating basic celeb info
    if (celebData.changed_name) {
        let sql = `UPDATE MYMOVIES.CELEB
                    SET MYMOVIES.CELEB.NAME = '${celebData.changed_name}'
                    WHERE MYMOVIES.CELEB.ID = ${celebData.celebID}`
        let changedName = await SQLexecuter(sql)
    }
    if (celebData.changed_bio) {
        celebData.changed_bio = celebData.changed_bio.replace(/'/g, "''")
        let sql = `UPDATE MYMOVIES.CELEB
                    SET MYMOVIES.CELEB.BIO = '${celebData.changed_bio}'
                    WHERE MYMOVIES.CELEB.ID = ${celebData.celebID}`
        let changedBio = await SQLexecuter(sql)
    }
    if (celebData.changed_country) {
        let sql = `UPDATE MYMOVIES.CELEB
                    SET MYMOVIES.CELEB.COUNTRY = '${celebData.changed_country}'
                    WHERE MYMOVIES.CELEB.ID = ${celebData.celebID}`
        let changedCountry = await SQLexecuter(sql)
    }
    if (celebData.changed_gender) {
        let sql = `UPDATE MYMOVIES.CELEB
                    SET MYMOVIES.CELEB.GENDER = '${celebData.changed_gender}'
                    WHERE MYMOVIES.CELEB.ID = ${celebData.celebID}`
        let changedGender = await SQLexecuter(sql)
    }
    if (avatarLocalPath) {
        let storedAvatar = await uploader(avatarLocalPath)
        let sql = `UPDATE MYMOVIES.CELEB
                SET MYMOVIES.CELEB.AVATAR = '${storedAvatar.url}'
                WHERE MYMOVIES.CELEB.ID = ${celebData.celebID}`
        let changedAvatar = SQLexecuter(sql)
    }

    // Updating the awards
    if (celebAward) {
        let deleteCelebAward_sql = `DELETE FROM MYMOVIES.CELEB_AWARD
                                    WHERE MYMOVIES.CELEB_AWARD.CELEBID = ${celebData.celebID}`
        let deletedCelebAward = await SQLexecuter(deleteCelebAward_sql)

        for (let index = 0; index < celebAward.length; index++) {
            let celebAward_sql = `INSERT INTO MYMOVIES.CELEB_AWARD VALUES (${celebAward[index].movieID},${celebData.celebID},${celebAward[index].awardID},${celebAward[index].recieveDate})`
            const added_celeb_award = SQLexecuter(celebAward_sql)
        }
    }


    return res.json({ redirectURL: `/admin/updateCelebsPage?ID=${celebData.celebID.trim()}` })
})




const deleteCeleb = (async (req,res) => {
    let {celebID} = req.body
    
    // Deleting celeb from Movie_Celeb.
    let delete_movieCeleb_sql = `DELETE FROM MYMOVIES.MOVIE_CELEB
                                WHERE MYMOVIES.MOVIE_CELEB.CELEBID = ${celebID}`
    let deletedMovieCeleb = await SQLexecuter(delete_movieCeleb_sql)

    // Deleting celeb from Celeb_Award.
    let delete_celebAward_sql = `DELETE FROM MYMOVIES.CELEB_AWARD
                                WHERE MYMOVIES.CELEB_AWARD.CELEBID = ${celebID}`
    let deleted_celebAward = await SQLexecuter(delete_celebAward_sql)



    // deleting from CELEB.
    let deleteCeleb_sql = `DELETE FROM MYMOVIES.CELEB
                            WHERE MYMOVIES.CELEB.ID = ${celebID}`
    let deletedMovie = await SQLexecuter(deleteCeleb_sql)

    return res.json({ redirectURL: `/admin/updateCelebsHomePage` })
})














export { getAllGenres, getAllMoviesAwards, getAllDirectorAwards, getAllCastAwards,getAllCelebsAwards,getCelebAwardInfo, getAllMovies, getAllCastInfo, getALLCastInfo,getCelebInfo, getMovieCastInfo, getMovieDirectorInfo, getMovieInfo, getMovieGenreInfo, getMovieAwardInfo, addCelebs, addMovies, updateMovie,deleteMovie,updateCeleb,deleteCeleb }