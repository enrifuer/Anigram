
<?php  

class Conexion
{ 
    protected $db; 

   public static function conec(){ 

 		$db = new mysqli('localhost','root','', 'Anigram'); 

        if ($db->connect_errno) {
       
           echo "Error de conexión a la BD: ". $db->connect_error; 
			exit();
        } 

		return $db; 
    } 
} 
?> 
