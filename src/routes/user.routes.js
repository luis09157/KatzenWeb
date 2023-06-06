import { Router } from "express";
import { join, dirname } from "path";
import __dirname from '../dir.js'

import { methods as userController } from "./../controllers/user.controller.js";

const router = Router();



router.post("/api/user", userController.addUser);
router.put("/api/user/:id", userController.updateUser);
router.delete("/api/user/:id", userController.deleteUser);
router.get("/api/user", userController.getUsers);
router.get("/api/user/:id", userController.getUser);


export default router;
