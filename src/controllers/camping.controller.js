import  getConnection  from "./../db/db.js";



const getCamping = async (req, res) => {
    try {
        const connection = await getConnection();
        const result = await connection.query("call sp_get_campaña();");
        var data = {data : result[0]};
        res.json(data);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};

const getCampingCombo = async (req, res) => {
    try {
        const connection = await getConnection();
        const result = await connection.query("call get_campaña_mes();");
        var data = {data : result[0]};
        res.json(result[0]);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};

const addCamping = async (req, res) => {
    try {
        const { nombre, fechaCamping } = req.body;

        console.log(req.body)

        const connection = await getConnection();
        await connection.query("call sp_add_campaña('"+nombre+"','"+fechaCamping+"');");
        res.json({ 
            message: "Camping added" ,
            errors : {}
        });
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};

const updateCamping = async (req, res) => {
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

const deleteCamping = async (req, res) => {
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
    getCamping,
    getCampingCombo,
    addCamping,
    updateCamping,
    getCamping,
    deleteCamping
};