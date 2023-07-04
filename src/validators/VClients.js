import { check } from "express-validator"
import  {validateResult}  from "../helpers/validateHelper.js"

export const vNewClients = [ 
    check('nombre')
        .exists()
        .not()
        .isEmpty()
        .withMessage("Necesitas agregar un nombre."),
    (req, res, next) => {
        validateResult(req, res, next)
    }
]
