<?php
// se inlcuye el archivo de la conexion
require("../BBDD/conexion.php");

class Usuario{
	private $db;
	private $Nombre;
	private $Apellido1;
	private $Apellido2;
	private $Bio;
	private $Bloqueado;
	private $Clave;
	private $Email;
	private $Rol;
	private $URLFoto;


public function __Construct(){
$this->db=Conexion::conec();
}

public function buscarUsuarios_login($Nombre, $Clave){
	
 $result = $this->db->query("SELECT * from usuario where Nombre = '$Nombre' AND Clave='$Clave'");
 //$users = mysqli_fetch_array($result);
 return $result;
}



}


?>