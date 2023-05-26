
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Login`(
 IN v_nombreUsuario varchar(100),
 IN v_contrasena varchar(100)
)
BEGIN

   DECLARE MENSAJE VARCHAR(100) DEFAULT '';
   DECLARE EXITO INT DEFAULT 0;
   DECLARE MSG_ERROR VARCHAR(100) DEFAULT '';
   DECLARE RESULT INT DEFAULT 0;
   
    
   SET @RESULT =  (SELECT count(*) FROM usuario
					   WHERE nombreUsuario  = v_nombreUsuario
					   AND contrasena = v_contrasena
					   AND status = 1);
   
   IF @RESULT > 0 THEN
	   SELECT * FROM usuario
	   WHERE nombreUsuario  = v_nombreUsuario
	   AND contrasena = v_contrasena
	   AND status = 1;
       
	ELSE
	   select @EXITO, @MSG_ERROR ,@MENSAJE ;
       
	END IF;
   
END


DELIMITER //
CREATE  PROCEDURE sp_add_paciente (
 IN v_nombreUsuario varchar(100),
 IN v_contrasena varchar(100)
)
BEGIN

   DECLARE MENSAJE VARCHAR(100) DEFAULT '';
   DECLARE EXITO INT DEFAULT 0;
   DECLARE MSG_ERROR VARCHAR(100) DEFAULT '';
   DECLARE RESULT INT DEFAULT 0;
   
    
   SET @RESULT =  (SELECT count(*) FROM usuario
					   WHERE nombreUsuario  = v_nombreUsuario
					   AND contrasena = v_contrasena
					   AND status = 1);
   
   IF @RESULT > 0 THEN
	   SELECT * FROM usuario
	   WHERE nombreUsuario  = v_nombreUsuario
	   AND contrasena = v_contrasena
	   AND status = 1;
       
	ELSE
	   select @EXITO, @MSG_ERROR ,@MENSAJE ;
       
	END IF;
   
END//
DELIMITER ;


DELIMITER //

CREATE  PROCEDURE sp_update_paciente(
 IN v_id INT,
 IN v_nombre varchar(100),
 IN v_peso INT,
 IN v_sexo varchar(100),
 IN v_especie varchar(100),
 IN v_fechaNacimiento varchar(100),
 IN v_color varchar(100),
 IN v_img varchar(100)
)
BEGIN

   DECLARE MENSAJE VARCHAR(100) DEFAULT '';
   DECLARE EXITO INT DEFAULT 0;
   DECLARE MSG_ERROR VARCHAR(100) DEFAULT '';
   DECLARE RESULT INT DEFAULT 0;
   
   
   UPDATE paciente SET 
		nombre = v_nombre,
		peso = v_peso,
		sexo =  v_sexo,
		especie = v_especie,
		fechaNacimiento = v_fechaNacimiento,
		color = v_color,
		img = v_img
	WHERE
		idPaciente = v_id;

	
    select 1, @MSG_ERROR ,@MENSAJE ;
   
END//
DELIMITER ;