import { pool } from "../db/db.js";

export const createEmployee = async (req, res) => {
    console.log(req.body);
    res.send("post success");
};

export const ping = async (req, res) => {
    const [result] = await pool.query('select "Pong" as result');
    res.json(result[0])
}