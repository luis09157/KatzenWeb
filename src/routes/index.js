import { Router } from "express";
import { join, dirname } from "path";
import __dirname from '../dir.js'

const router = Router();

router.get('/like', (req, res) => {
    res.render(join( __dirname + '/views/like.ejs'));
})


export default router;
