<?php
	include '../controllers/usuario_controller.php';
	include '../controllers/mensajes_controller.php';
	include 'Templates/cabecera.php';
	session_start();
	
?>

<!DOCTYPE html>
<html>
<head>
	
	<meta charset="utf-8">
	<title>Login</title>
</head>

<body>
<img id="logo-grande" src="../../public/img/Logo-Completo.png" alt="">
	
	<div class="container container-anigram">
			<div class="col align-self-center col-lg-8 offset-lg-2">
			<h1>Login</h1>
				<?php if(isset($_SESSION['MensajeError']))
						Mensajes_Controller::mostrarMensaje($_SESSION['MensajeError']);
				  ?>

				<form id="form-login" class="centered" method="POST" action='../controllers/login_controller.php'>
					<label for="Email" >Email</label> 
					<input id="Email" type="email" name="user" class="formulario-textbox"/>
					<label for="Clave">Contraseña</label> 
					<input id="Clave" type="password" name="password" class="formulario-textbox"/>
					<div id="boton_enviar">
						<input id="submit" type="submit" name="submit" class="submitHueso" value="Entrar"/>	
					</div>
				</form>
				<div class="col offset-lg-4 offset-md-3 offset-2 references">
					<span ><a href="registro.php">Registrarme</a></span>
					<span id="vertical-separator">|</span>
					<span ><a href="home.php">Entrar como invitado</a></span>
				</div>
			</div>
		</div>
	<!-- </div> -->
</body>
</html>
