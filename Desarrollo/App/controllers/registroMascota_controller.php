<?php
session_start();
require_once "../models/mascota_model.php";  

$modeloMascota = new Mascota_Model();
$urlFoto = NULL;

//Obtener datos de la mascota
if(isset($_FILES["fotoPerfilMascota"]["name"][0]))
	$urlFoto = basename($_FILES["fotoPerfilMascota"]["name"]);

$nombre = htmlspecialchars(trim(strip_tags($_REQUEST['nombre'])));
$raza = htmlspecialchars(trim(strip_tags($_REQUEST['raza'])));
$tipo = htmlspecialchars(trim(strip_tags($_REQUEST['tipo'])));
$bio = htmlspecialchars(trim(strip_tags($_REQUEST['bio'])));

if($modeloMascota->registraMascota($tipo, $nombre, $raza, $bio, $urlFoto)){
	
	if(isset($_FILES['fotoPerfilMascota'])){
		$nombre_imagen = $_FILES['fotoPerfilMascota']['name'];
		$imagen_tmp =$_FILES['fotoPerfilMascota']['tmp_name'];
		
		move_uploaded_file($imagen_tmp,"../../public/img/saved/" . '-' .$urlFoto);
	}
	header('Location: ../views/home.php');
}
else {
	header('Location: ../views/home.php');
}


?>