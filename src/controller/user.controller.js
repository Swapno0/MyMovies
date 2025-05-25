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











const registerUser = (async (req, res) => {
    // Taking some input from the frontEnd through req.body
    const { userName, email, bio, password } = req.body

    // Validating the inputs
    // if (userName === "" || userName.length > 15) {
    //     throw new ApiError(400, "userName is required")
    // }
    // if (email === "") {
    //     throw new ApiError(400, "email is required")
    // }
    // if (password === "") {
    //     throw new ApiError(400, "password is required")
    // }
    if (userName === "" || userName.length > 15) {
        req.session.error = "Username must be within 0 to 15 characters"
        return res.redirect('/signup_page')
    }
    if (email === "") {
        req.session.error = "Email is required. Max 30 characters"
        return res.redirect('/signup_page')
    }
    if (password === "") {
        req.session.error = "Password is required"
        return res.redirect('/signup_page')
    }

    // Checking if user exists
    let check_existed = `SELECT * FROM "MYMOVIES"."USERS" 
                        WHERE 
                        "MYMOVIES"."USERS".userName = '${userName}'
                        `
    const existedUser = await SQLexecuter(check_existed)
    if (existedUser.rows.length != 0) {
        req.session.error = "User already exists"
        return res.redirect('/signup_page')
    }


    // we access and use files using multer.
    const avatarLocalPath = req.files?.avatar?avatar[0]?.path:null

    // const avatarLocalPath = req.files?.avatar && req.files.avatar[0]
    //     ? req.files.avatar[0].path
    //     : null;

    //validation again for required files.
    if (!avatarLocalPath) {
        req.session.error = "Avatar is required."
        console.log(1)
        return res.redirect('/signup_page')
    }


    // upload the files in cloudinary
    const storedAvatar = await uploader(avatarLocalPath)

    // encrypting password
    const encrypted_password = await bcrypt.hash(password, 6)


    // Do database entry the above informations.
    let register_sql = `INSERT INTO "MYMOVIES"."USERS" VALUES (MYMOVIES.USERS_ID_SEQ.NEXTVAL,'${userName}','${email}','${bio}','${storedAvatar.url}','${encrypted_password}',DEFAULT)`
    const User = await SQLexecuter(register_sql)



    // Check for user creation. Apatoto onnanno values diye dei.
    let check_create_user = `SELECT ID,USERNAME,EMAIL,BIO,AVATAR,CREATIONDATE
                            FROM MYMOVIES.USERS
                            WHERE MYMOVIES.USERS.userName = '${userName}'`
    const createdUser = await SQLexecuter(check_create_user)
    if (!createdUser) {
        req.session.error = "Something went wrong while registering the user"
        return res.redirect('/signup_page')
    }

    // return response
    // return res.status(201).json(
    //     new ApiResponse(200, createdUser.rows, "User registered successfully")
    // )

    // redirect to appropriate page.
    req.session.userid = userName
    req.session.isAuth = true
    let check_login = `SELECT ID,userName,email,bio,avatar,creationDate
    FROM MYMOVIES.USERS
    WHERE MYMOVIES.USERS.USERNAME = '${req.session.userid}'`
    const loggedInUser = await SQLexecuter(check_login)
    req.session.loggedInUser = {loggedInUser}
    res.redirect('/home')
})








const loginUser = (async (req, res) => {
    // Take username and password from body.
    const { userName, password } = req.body
    if (!userName) {
        req.session.error = "Username is required."
        return res.redirect('/login_page')
    }


    // check if username exists
    let check_user = `SELECT * FROM MYMOVIES.USERS
    WHERE MYMOVIES.USERS.USERNAME = '${userName}'`
    const existingUser = await SQLexecuter(check_user)
    if (existingUser.rows.length == 0) {
        req.session.error = "Username doesnt exist"
        return res.redirect('/login_page')
    }



    // password check
    // let pass_check = `SELECT PASSWORD FROM MYMOVIES.USERS
    //                 WHERE MYMOVIES.USERS.USERNAME = '${userName}' AND
    //                 MYMOVIES.USERS.PASSWORD = '${password}'
    //                 `
    // const PASS_WORD = await SQLexecuter(pass_check)
    let pass_check = `SELECT PASSWORD FROM MYMOVIES.USERS
    WHERE MYMOVIES.USERS.USERNAME = '${userName}'
    `
    const PASS_WORD = await SQLexecuter(pass_check)



    // if password correct, generate a session.
    const pass_match = await bcrypt.compare(password, PASS_WORD.rows[0].PASSWORD)
    if (!pass_match) {
        req.session.error = "Password doesn't match"
        return res.redirect('/login_page')
    }
    else {
        req.session.userid = userName
        req.session.isAuth = true
    }

    // Check if user is logged in.
    let check_login = `SELECT ID,userName,email,bio,avatar,creationDate
    FROM MYMOVIES.USERS
    WHERE MYMOVIES.USERS.USERNAME = '${req.session.userid}'`
    const loggedInUser = await SQLexecuter(check_login)
    req.session.loggedInUser = {loggedInUser}


    // return response
    // return res.status(200).json(
    //     new ApiResponse(200, loggedInUser.rows, "user logged in successfully")
    // )

    // return appropriate page after succesfully log in
    // res.render('home',{loggedInUser})
    res.redirect('/home')
})






const logoutUser = (async (req,res) => {
    req.session.destroy()
    res.redirect("/")
})









export { registerUser, loginUser,logoutUser }