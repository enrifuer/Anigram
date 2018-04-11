
<?php  
require"../BBDD/config.php"; 

class Conexion
{ 
    protected $db; 

   public static function conec(){ 

 		$db = new mysqli(DB_SERVER, DB_USER, DB_PASS, DB_NAME); 

        if ($db->connect_errno) {
       
           echo "Error de conexión a la BD: ". $db->connect_error; 
			exit();
        } 

        mysqli_select_db($db, DB_NAME) or die('No se ha podido seleccionar la base de datos');
		return $db; 
    } 
} 
?> 
