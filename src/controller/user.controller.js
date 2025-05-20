import { fileURLToPath } from 'url';
import { dirname } from 'path';
import path from 'path';
import {ApiError} from "../utils/ApiError.js"
import {uploader} from "../utils/cloudinary.js"
import { ApiResponse } from '../utils/ApiResponse.js';

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
    // Check this using Oracle.


    // we access and use files using multer.
    const avatarLocalPath = req.files?.avatar[0]?.path
    const coverImageLocalPath = req.files?.coverImage[0]?.path

    //validation again for required files.
    if (!avatarLocalPath) {
        throw new ApiError(400,"Avatar is needed")
    }
    if (!coverImageLocalPath) {
        throw new ApiError(400,"CoverImage is needed")
    }

    // upload the files in cloudinary
    const storedAvatar = await uploader(avatarLocalPath)
    const storedCoverImage = await uploader(coverImageLocalPath)

    // Do database entry the above informations.


    // Check for user creation. Apatoto onnanno values diye dei.
    const createdUser = {userName,email,bio,password,storedAvatar:storedAvatar.url,storedCoverImage:storedCoverImage.url}

    // return response
    return res.status(201).json(
        new ApiResponse(200,createdUser,"User registered successfully")
    )



    
})

export {registerUser}