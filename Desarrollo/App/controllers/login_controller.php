<?php
    session_start();
        
    require_once "../models/usuario_model.php";   
    require_once "../configuracion/mensajes.php";   
    $modeloUsuario = new Usuario_Model();
        
        
    $usuario = htmlspecialchars(trim(strip_tags($_REQUEST['user'])));
    $pass = htmlspecialchars(trim(strip_tags($_REQUEST['password'])));
    
    $result = $modeloUsuario->getDatosLogin($usuario);
    //password_verify($pass, $result['Clave'])
    $cifrada = md5($pass);

    if($result != null){
        if(strcmp($result['Clave'], $cifrada) == 0){
            $_SESSION['LoginSuccess'] = true;
            $_SESSION['UserID'] = $result['ID'];
            $_SESSION['Nombre'] = $result['Nombre'];
            $_SESSION['RolUsuario'] = $result['Rol'];
            header('Location: ../views/home.php');
            echo 'SI!';
        } 
        else{      
            echo 'nope!';
            header('Location: ../views/login.php');
        }
    }
    else {
        $_SESSION['MensajeError'] = 'loginError';

        header('Location: ../views/login.php');
    }
    
?>