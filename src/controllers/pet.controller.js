import  getConnection  from "./../db/db.js";
import fs from "fs";
import __dirname from '../dir.js'
import _pathTime from '../date.js'
const pathImg = "/img/addPet/";
import { validateCreate } from "../validators/VPets.js";
import { error } from "console";

const getPet = async (req, res) => {
    try {
        const { id } = req.params;
        const connection = await getConnection();
        const result = await connection.query("call sp_get_pet("+ id +");");
        var data = {data : result[0]};
        res.json(data);
    } catch (error) {
        res.status(500);    
        res.send(error.message);
    }
};


const getPets = async (req, res) => {
    try {
        const connection = await getConnection();
        const result = await connection.query("call sp_get_pets();");
        var data = {data : result[0]};
        res.json(data);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};

const addPet = async (req, res) => {
    try {
        res.setHeader('Content-Type', 'application/json');

        if(req.body.peso === null || req.body.peso ==="")
            req.body.peso = 0;
        if(req.body.sParticulares === null || req.body.sParticulares ==="")
            req.body.sParticulares = "";

            console.log(req.body);
        const{ filename, file , nombre,peso,idSexo,idEspecie,idRaza,fechaNacimiento,color,sParticulares, radioPaciente ,idCliente} = req.body;

        if(filename != ""){
            var pathServidor = pathImg + _pathTime + "." + req.body.filename.split('.')[1];
            var path     = __dirname + "/public" + pathServidor;
            var image    = req.body.file;
            var data     = image.split(',')[1];
            fs.writeFileSync(path,data,{encoding:'base64'});
        }else{
            pathServidor = "/img/carita-felipe.jpg";
        }
       

        const pet = { nombre, peso, idSexo, idEspecie, idRaza, fechaNacimiento, color, radioPaciente, sParticulares, idCliente };
        
        console.log(pet)

        const connection = await getConnection();
        console.log("call sp_add_paciente('"+ pet.nombre +"', "+ pet.peso +" ,'"+ pet.idSexo +"','"+ pet.idEspecie +"','"+ pet.idRaza +"','"+ pet.fechaNacimiento +"','"+ pet.color +"','"+ pathServidor +"','"+ pet.sParticulares +"',"+ Number(pet.radioPaciente)+",'"+ pet.idCliente +"')");
        
        await connection.query("call sp_add_paciente('"+ pet.nombre +"', "+ pet.peso +" ,'"+ pet.idSexo +"','"+ pet.idEspecie +"','"+ pet.idRaza +"','"+ pet.fechaNacimiento +"','"+ pet.color +"','"+ pathServidor +"','"+ pet.sParticulares +"',"+ Number(pet.radioPaciente)+",'"+ pet.idCliente +"')");
        res.json({ 
            message: "Pet added" ,
            errors : {}
        });
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