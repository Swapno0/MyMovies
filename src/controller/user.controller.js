import { fileURLToPath } from 'url';
import { dirname } from 'path';
import path from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const registerUser = (async (req,res) => {
    const {username,email,bio,password} = req.body
    
    
    
})

export {registerUser}