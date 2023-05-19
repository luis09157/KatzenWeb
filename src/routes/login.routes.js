import { Router } from "express";
import { join, dirname } from "path";
import {ping} from '../controllers/login.controller.js'
import __dirname from '../dir.js'

const router = Router();

router.get('/api/login', (req, res) => {
    res.render(join( __dirname + '/views/Login/login.ejs'));
})

router.get("/ping", ping);


export default router;
