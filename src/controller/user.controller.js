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
    if (userName === "") {
        throw new ApiError(400, "userName is required")
    }
    if (email === "") {
        throw new ApiError(400, "email is required")
    }
    if (password === "") {
        throw new ApiError(400, "password is required")
    }

    // Checking if user exists
    let check_existed = `SELECT * FROM "MYMOVIES"."USERS" 
                        WHERE 
                        "MYMOVIES"."USERS".userName = '${userName}'
                        `
    const existedUser = await SQLexecuter(check_existed)
    if (existedUser.rows.length != 0) {
        throw new ApiError(401, "User already exists")
    }


    // we access and use files using multer.
    const avatarLocalPath = req.files?.avatar[0]?.path

    //validation again for required files.
    if (!avatarLocalPath) {
        throw new ApiError(400, "Avatar is needed")
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
        throw new ApiError(401, "something went wrong while registering user")
    }

    // return response
    return res.status(201).json(
        new ApiResponse(200, createdUser.rows, "User registered successfully")
    )
})








const loginUser = (async (req, res) => {
    // Take username and password from body.
    const { userName, password } = req.body
    if (!userName) {
        throw new ApiError(400, "Username is required")
    }


    // check if username exists
    let check_user = `SELECT * FROM MYMOVIES.USERS
    WHERE MYMOVIES.USERS.USERNAME = '${userName}'`
    const existingUser = await SQLexecuter(check_user)
    if (existingUser.rows.length == 0) {
        throw new ApiError(401, "Username doesnt exist")
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
        throw new ApiError(401, "Password is incorrect")
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











export { registerUser, loginUser }