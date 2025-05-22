import { fileURLToPath } from 'url';
import { dirname } from 'path';
import path from 'path';
import {ApiError} from "../utils/ApiError.js"
import {uploader} from "../utils/cloudinary.js"
import { ApiResponse } from '../utils/ApiResponse.js';
import { SQLexecuter } from '../DB/database.js';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const registerUser = (async (req,res) => {
    // Taking some input from the frontEnd through req.body
    const {userName,email,bio,password} = req.body
    
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
    console.log(existedUser.rows)
    if (existedUser.rows.length != 0) {
        throw new ApiError(401,"User already exists")
    }


    // we access and use files using multer.
    const avatarLocalPath = req.files?.avatar[0]?.path

    //validation again for required files.
    if (!avatarLocalPath) {
        throw new ApiError(400,"Avatar is needed")
    }
    

    // upload the files in cloudinary
    const storedAvatar = await uploader(avatarLocalPath)

    // Do database entry the above informations.
    let register_sql = `INSERT INTO "MYMOVIES"."USERS" VALUES (MYMOVIES.USERS_ID_SEQ.NEXTVAL,'${userName}','${email}','${bio}','${storedAvatar.url}','${password}',DEFAULT)`
    const User = await SQLexecuter(register_sql)



    // Check for user creation. Apatoto onnanno values diye dei.
    let check_create_user = `SELECT ID,USERNAME,EMAIL,BIO,AVATAR,CREATIONDATE
                            FROM MYMOVIES.USERS
                            WHERE MYMOVIES.USERS.userName = '${userName}'`
    const createdUser = await SQLexecuter(check_create_user)
    if (!createdUser) {
        throw new ApiError(401,"something went wrong while registering user")
    }

    // return response
    return res.status(201).json(
        new ApiResponse(200,createdUser.rows,"User registered successfully")
    )
})

export {registerUser}