import { Router } from "express";
import { join, dirname } from "path";
import __dirname from '../dir.js'

import { methods as petController } from "./../controllers/pet.controller.js";

const router = Router();

router.get('/newPet', (req, res) => {
    res.render(join( __dirname + '/views/Register/newPet.ejs'));
})
 
router.post("/api/pet", petController.addPet);
router.put("/api/pet/:id", petController.updatePet);
router.delete("/api/pet/:id", petController.deletePet);
router.get("/api/pet", petController.getPets);
router.get("/api/pet/:id", petController.getPet);


export default router;
