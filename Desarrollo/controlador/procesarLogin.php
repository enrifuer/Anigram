
<?php
session_start();
	
require_once "../controlador/controlador.php";   
$controlador = new controlador();
	
	
$usuario = $_REQUEST['user'];
$pass = $_REQUEST['password'];

$user = $controlador->get_user_login($usuario, $pass);

if($user->num_rows > 0){
 
if(mysqli_fetch_array($user)){
	echo "correcto";
	$_SESSION['Clave'] = $pass;
	$_SESSION['Nombre'] = $usuario;
}
	}

else {echo "USUARIO O CONTRASEÑA INCORRECTO";}
	
	
	?>