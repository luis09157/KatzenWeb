import  getConnection  from "./../db/db.js";

const getClient = async (req, res) => {
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


const getClients = async (req, res) => {
    try {
        const connection = await getConnection();
        const result = await connection.query("call sp_get_clientes();");
        var data = {data : result[0]};
        res.json(data);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};

const addClient = async (req, res) => {
    try {
        const { nombre, apellidoP, apellidoM, telefono, direccion, edad, email } = req.body;

        console.log(req.body)
        
        const connection = await getConnection();
        await connection.query("call sp_add_client('"+nombre+"','"+apellidoP+"','"+apellidoM+"','"+telefono+"','"+direccion+"',"+edad+",'"+email+"');");
        res.json({ message: "Client added" });
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};

const updateClient = async (req, res) => {
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

const deleteClient = async (req, res) => {
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
    getClient,
    addClient,
    updateClient,
    getClients,
    deleteClient
};