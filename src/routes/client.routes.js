import { Router } from "express";
import { join, dirname } from "path";
import __dirname from '../dir.js'

import { methods as userController } from "./../controllers/client.controller.js";
import { vNewClients } from "../validators/VClients.js";

const router = Router();


router.get('/api/newClient', (req, res) => {
    res.render(join( __dirname + '/views/Admin/Client/newClient.ejs'));
})

router.post("/api/client",vNewClients, userController.addClient);
router.put("/api/client/:id", userController.updateClient);
router.delete("/api/client/:id", userController.deleteClient);
router.get("/api/client", userController.getClients);
router.get("/api/client/:id", userController.getClient);


export default router;
