import { check } from "express-validator"
import  {validateResult}  from "../helpers/validateHelper.js"

export const vNewClients = [ 
    check('nombre')
        .exists()
        .not()
        .isEmpty()
        .withMessage("Necesitas agregar un nombre."),
    check('apellidoP')
        .exists()
        .not()
        .isEmpty()
        .withMessage("Necesitas agregar un apellido parterno."),
    check('apellidoM')
        .exists()
        .not()
        .isEmpty()
        .withMessage("Necesitas agregar un apellido materno."),
    check('telefono')
        .exists()
        .isNumeric()
        .isMobilePhone()
        .withMessage("Necesitas agregar un telefono."),
    check('direccion')
        .exists()
        .not()
        .isEmpty()
        .withMessage("Necesitas agregar un telefono."),
    check('edad')
        .exists()
        .isNumeric()
        .withMessage("Necesitas agregar un telefono."),
    check('email')
        .exists()
        .isEmail()
        .withMessage("Necesitas agregar un correo."),
    (req, res, next) => {
        validateResult(req, res, next)
    }
]
