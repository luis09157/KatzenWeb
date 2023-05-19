import { Router } from "express";
import { join, dirname } from "path";
import __dirname from '../dir.js'

const router = Router();

router.get('/newPet', (req, res) => {
    res.render(join( __dirname + '/views/Register/newPet.ejs'));
})


export default router;
