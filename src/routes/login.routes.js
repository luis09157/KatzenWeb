import { Router } from "express";
import { join, dirname } from "path";
import __dirname from '../dir.js'

import { methods as loginController } from "./../controllers/login.controller.js";
const router = Router();

router.get('/api/login', (req, res) => {
    res.render(join( __dirname + '/views/Admin/Login/login.ejs'));
})

router.post("/api/auth", loginController.login);


export default router;
