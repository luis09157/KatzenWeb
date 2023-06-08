import  getConnection  from "./../db/db.js";

const login = async (req, res) => {
    try {
        console.log(req.body);
        const { username, password } = req.body;

        if (username === undefined || password === undefined) {
            res.status(400).json({ message: "Bad Request. Please fill all field." });
        }   

        const connection = await getConnection();
        const result = await connection.query("call sp_Login('"+ username +"','"+ password +"')");
        var data = {data : result[0]};
        res.json(data);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};



export const methods = {
    login
};