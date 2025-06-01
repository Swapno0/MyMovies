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























export {getAllGenres,addCelebs,getCastInfo}