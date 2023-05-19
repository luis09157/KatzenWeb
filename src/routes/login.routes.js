import { Router } from "express";
import { join, dirname } from "path";
import {createEmployee} from '../controllers/login.controller.js'
import __dirname from '../dir.js'

const router = Router();

router.get('/api/login', (req, res) => {
    res.render(join( __dirname + '/views/Login/login.ejs'));
})

router.get("/ping", createEmployee);


export default router;
