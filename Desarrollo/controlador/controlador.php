
<?php
require_once("../models/user_model.php");
class controlador
{     
public function __Construct() 
    { 
       
    } 


public function get_user_login($Nombre, $Clave) {
$user = new Usuario($Nombre, $Clave);
$datos=$user->buscarUsuarios_login($Nombre, $Clave);
return $datos;
 }

}
?>