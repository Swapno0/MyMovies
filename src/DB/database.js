import oracledb from "oracledb"
oracledb.outFormat = oracledb.OUT_FORMAT_OBJECT

// Connecting with Oracle Database. We tried with getConnection. But a more efficient way to would be to create connection pool, especially when multiple users are using the app at the same time like chatting app. 
let connectionInstance;
const connectDB = async () =>{
    try {
        connectionInstance = await oracledb.getConnection(
            {user : `${process.env.USER_ID}`,
            password : `${process.env.PASSWORD}`,
            connectString : `${process.env.CONNECTION_STRING}`}
        )
        console.log(`\n OracleDB Connected !!`);
    } catch (error) {
        console.log("OracleDB Connection Error", error)
        process.exit(1);
    }
}

// Executing SQL Commands.
const SQLexecuter = async (sql,binds={}) => {
    let result;
    try {
        result = await connectionInstance.execute(sql,binds,{autoCommit:true});
    } catch (error) {
        console.log(error)
    }
    return result
}


export {connectDB,SQLexecuter}