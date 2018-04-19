
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <?php
        include 'Templates/cabecera.php';
        session_start();
    ?>
    <title>Home</title>
</head>
<body>
	<div class="container container-anigram">
            
        <div class="row references">
            <h3><img src="../../public/img/ic_keyboard_arrow_left_black_24px.svg" alt="" /><a href="../controllers/logout_controller.php">Logout</a></h3>
        </div>
        <h2>Bienvenido al home <?  echo (isset($_SESSION['Nombre']))? $_SESSION['Nombre']:'invitado'; ?>!!</h2>
    </div>
</body>
</html>
<?php session_destroy();?>