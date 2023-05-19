
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