<?php
 session_start(); 
?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="estilo.css" />
	<meta charset="utf-8">
	<title>Portada</title>
</head>

<body>
	
	
		<div id="contenido">
			

			<form action="../controlador/procesarLoginValido.php" method="POST">
			
			<legend>Usuario y contraseña</legend>
			<p><label>Name:</label> <input type="text" name="user" /></p>
			<p><label>Password:</label> <input type="password" name="password" /></p>
			<button type="submit" name="login">Login</button>
			
			</form>

		</div> <!-- Fin contenido -->

		

	
</body>
</html>