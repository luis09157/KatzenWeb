import  getConnection  from "./../db/db.js";

const login = async (req, res) => {
    try {
        console.log(req.body);
        const { username, password } = req.body;

        if (username === undefined || password === undefined) {
            res.status(400).json({ message: "Bad Request. Please fill all field." });
        }   

       // const pet = { nombre, peso, idSexo, idEspecie, idRaza, fechaNacimiento, color, img, idCliente };
       // const connection = await getConnection();
       //s await connection.query("call sp_add_paciente('"+ pet.nombre +"', "+ pet.peso +" ,'"+ pet.idSexo +"','"+ pet.idEspecie +"','"+ pet.idRaza +"','"+ pet.fechaNacimiento +"','"+ pet.color +"','"+ pet.img +"','"+ pet.idCliente +"')");
        res.json({ message: "Login" });
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};



export const methods = {
    login
};