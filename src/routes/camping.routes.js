import { Router } from "express";
import { join, dirname } from "path";
import __dirname from '../dir.js'

import { methods as userController } from "./../controllers/camping.controller.js";

const router = Router();


router.get('/api/newCamping', (req, res) => {
    res.render(join( __dirname + '/views/Admin/Camping/newCamping.ejs'));
})

/
router.post("/api/camping", userController.addCamping);
router.put("/api/camping/:id", userController.updateCamping);
router.delete("/api/camping/:id", userController.deleteCamping);
router.get("/api/camping", userController.getCamping);
router.get("/api/campingCombo", userController.getCampingCombo);
router.get("/api/camping/:id", userController.getCamping);


export default router;
