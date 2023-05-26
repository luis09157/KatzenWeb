import  getConnection  from "./../db/db.js";

const getPet = async (req, res) => {
    try {
        const { id } = req.params;
        const connection = await getConnection();
        const result = await connection.query("call sp_get_pet("+ id +");");
        res.json(result);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};


const getPets = async (req, res) => {
    try {
        const connection = await getConnection();
        const result = await connection.query("call sp_get_pets();");
        res.json(result);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};

const addPet = async (req, res) => {
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

const updatePet = async (req, res) => {
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

const deletePet = async (req, res) => {
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
    getPet,
    addPet,
    updatePet,
    getPets,
    deletePet
};