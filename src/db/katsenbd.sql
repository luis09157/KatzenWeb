-- CREATE DATABASE IF NOT EXISTS katsendb;

-- USE companydb;

CREATE TABLE usuario (
  id INT(11) NOT NULL AUTO_INCREMENT,
  nombreUsuario VARCHAR(100),
  contrasena VARCHAR(100),
  nombre VARCHAR(45) ,
  apellidoP VARCHAR(45) ,
  apellidoM VARCHAR(45) ,
  telefono INT(10),
  direccion VARCHAR(45) ,
  edad INT ,
  email VARCHAR(45) ,
  fechaAlta VARCHAR(45) ,
  status int(1) ,
  PRIMARY KEY(id)
);


INSERT INTO usuario(nombreUsuario, contrasena, nombre,apellidoP,apellidoM, telefono, direccion, edad, email, fechaAlta, status) 
VALUES ('Siul09157', '1', 'Luis Alfonso', 'Nino', 'Martinez', 8115885, 'San Jose #349 Col Santa Fe Apodaca NL', 28, 'luisk2ify@gmail.com', NOW() , 1);