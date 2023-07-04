import { check } from "express-validator"
import  {validateResult}  from "../helpers/validateHelper.js"

export const validateCreate = [ 
    check('nombre')
        .exists()
        .not()
        .isEmpty()
        .withMessage("Necesitas agregar un nombre."),
    check('peso')
        .exists()
        .not()
        .isEmpty()
        .withMessage("Necesitas agregar un peso a la mascota."),
    check('peso')
        .isNumeric()
        .withMessage("El valor de peso necesita ser numerico."),
    check('idSexo')
        .exists()
        .not()
        .isEmpty()
        .isNumeric()
        .withMessage("Hubo un problema al relacionar el sexo de la mascota."),
    check('idEspecie')
        .exists()
        .not()
        .isEmpty()
        .isNumeric()
        .withMessage("Hubo un problema al relacionar la especie de la mascota."),
    check('idRaza')
        .exists()
        .not()
        .isEmpty()
        .isNumeric()
        .withMessage("Hubo un problema al relacionar la raza de la mascota."),
    check('fechaNacimiento')
        .exists()
        .not()
        .isEmpty()
        .withMessage("Necesitas agregar una fecha nacimiento."),
    check('color')
        .exists()
        .not()
        .isEmpty()
        .withMessage("Necesitas agregar un color para la mascota."),
    check('sParticulares')
        .exists()
        .not()
        .isEmpty()
        .withMessage("Necesitas agregar las señas particulares de la mascota."),
    check('idCliente')
        .exists()
        .not()
        .isEmpty()
        .isNumeric()
        .withMessage("Hubo un problema al relacionar al cliente."),
    (req, res, next) => {
        validateResult(req, res, next)
    }
]
