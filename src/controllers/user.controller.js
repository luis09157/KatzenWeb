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
        const { nombreUsuario, contrasena, nombre, apellidoP, apellidoM, telefono, direccion, edad, email, idPerfil } = req.body;

        console.log(req.body)

        if (nombreUsuario === undefined || contrasena === undefined 
            || nombre === undefined ) {
            res.status(400).json({ message: "Bad Request. Please fill all field." });
        }   

        console.log("call sp_add_usuario('"+nombreUsuario+"','"+contrasena+"','"+nombre+"','"+apellidoP+"','"+apellidoM+"','"+telefono+"','"+direccion+"',"+edad+",'"+email+"',"+idPerfil+");")
        const connection = await getConnection();
        await connection.query("call sp_add_usuario('"+nombreUsuario+"','"+contrasena+"','"+nombre+"','"+apellidoP+"','"+apellidoM+"','"+telefono+"','"+direccion+"',"+edad+",'"+email+"',"+idPerfil+");");
        res.json({ message: "Pet added" });
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};

const updateUser = async (req, res) => {
    try {
        const { id } = req.params;

        const { telefono,direccion,edad } = req.body;

        if (telefono === undefined || direccion === undefined 
            || edad === undefined || id === undefined) {
            res.status(400).json({ message: "Bad Request. Please fill all field." });
        }   

        const connection = await getConnection();
        const result = await connection.query("call sp_update_usuario('"+telefono+"','"+direccion+"',"+edad+","+id+");");
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
        const result = await connection.query("call sp_delete_user("+ id +");");
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
    getUsers,
    deleteUser
};