import { Router } from "express";
import { join, dirname } from "path";
import __dirname from '../dir.js'

import { methods as spinnerController } from "./../controllers/spinner.controller.js";

const router = Router();    

router.get("/api/spinner/sexo", spinnerController.getSexo);
router.get("/api/spinner/especie", spinnerController.getEspecie);
router.post("/api/spinner/raza", spinnerController.getRaza);
router.get("/api/spinner/cliente", spinnerController.getCliente);

export default router;
