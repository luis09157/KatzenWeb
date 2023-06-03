import  getConnection  from "./../db/db.js";


const getSexo = async (req, res) => {
    try {
        const connection = await getConnection();
        const result = await connection.query("call sp_get_sexo();");
        res.json(result);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};

const getEspecie = async (req, res) => {
    try {
        const connection = await getConnection();
        const result = await connection.query("call sp_get_especie();");
        res.json(result);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};

const getRaza = async (req, res) => {
    try {
        console.log(req.body);
        const { idEspecie } = req.body;

        if (idEspecie === undefined ) {
            res.status(400).json({ message: "Bad Request. Please fill all field." });
        }   

        const connection = await getConnection();
        const result = await connection.query("call sp_get_raza("+ idEspecie +");");
        res.json(result);

    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};






export const methods = {
    getSexo,
    getEspecie,
    getRaza
};