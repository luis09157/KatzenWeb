import  getConnection  from "./../db/db.js";
import pdf from 'html-pdf';


const content = `
<!doctype html>
    <html>
       <head>
            <meta charset="utf-8">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

            <title>PDF Result Template</title>
            <style>
                h1 {
                    color: green;
                }
            </style>
        </head>
        <body>
            <div class="container">
              <div class="row">
                <div class="col-4">icono</div>
                <div class="col-4">titulo</div>
                <div class="col-4">dibujo</div>
              </div>
            </div>
        </body>
    </html>
`;


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


        pdf.create(content).toFile('./html-pdf.pdf', function(err, res) {
            if (err){
                console.log(err);
            } else {
                console.log(res);
            }
        });

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