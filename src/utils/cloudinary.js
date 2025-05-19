import { v2 } from "cloudinary"
import fs from "fs"

cloudinary.config({
    cloud_name: process.env.CLOUD_NAME,
    api_key: process.env.API_KEY,
    api_secret: process.env.API_SECRET
});


const uploader = async (localFilePath) => {
    try {
        if (!localFilePath) return null
        const response = await cloudinary.v2.uploader.upload(localFilePath, {
            resource_type : "auto"
        })
    } catch (error) {
        fs.unlinkSync(localFilePath)
        return null
    }
}



export {uploader}