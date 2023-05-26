import  getConnection  from "./../db/db.js";

const getUser = async (req, res) => {
    try {
        const { id } = req.params;
        const connection = await getConnection();
        const result = await connection.query("call sp_get_usuario("+ id +");");
        res.json(result);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};


const getUsers = async (req, res) => {
    try {
        const connection = await getConnection();
        const result = await connection.query("call sp_get_usuarios();");
        res.json(result);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};

const addUser = async (req, res) => {
    try {
        const { nombre,peso,sexo,especie,fechaNacimiento,color,img } = req.body;

        if (nombre === undefined || peso === undefined 
            || sexo === undefined || especie === undefined
            || fechaNacimiento === undefined || color === undefined
            || img === undefined) {
            res.status(400).json({ message: "Bad Request. Please fill all field." });
        }   

        const pet = { nombre, peso, sexo, especie, fechaNacimiento, color, img };
        const connection = await getConnection();
        await connection.query("call sp_add_paciente('"+ pet.nombre +"', "+ pet.peso +" ,'"+ pet.sexo +"','"+ pet.especie +"','"+ pet.fechaNacimiento +"','"+ pet.color +"','"+ pet.img +"')");
        res.json({ message: "Pet added" });
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};

const updateUser = async (req, res) => {
    try {
        const { id } = req.params;

        const { nombre,peso,sexo,especie,fechaNacimiento,color,img } = req.body;

        if (nombre === undefined || peso === undefined 
            || sexo === undefined || especie === undefined
            || fechaNacimiento === undefined || color === undefined
            || img === undefined || id === undefined) {
            res.status(400).json({ message: "Bad Request. Please fill all field." });
        }   

        const pet = { nombre, peso, sexo, especie, fechaNacimiento, color, img };
        const connection = await getConnection();
        const result = await connection.query("call sp_update_paciente("+ id +",'"+ pet.nombre +"', "+ pet.peso +" ,'"+ pet.sexo +"','"+ pet.especie +"','"+ pet.fechaNacimiento +"','"+ pet.color +"','"+ pet.img +"')");
        res.json(result);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};

const deleteUser = async (req, res) => {
    try {
        const { id } = req.params;
        const connection = await getConnection();
        const result = await connection.query("call sp_delete_pet("+ id +");");
        res.json(result);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};


export const methods = {
    getUser,
    addUser,
    updateUser,
    getUser,
    deleteUser
};