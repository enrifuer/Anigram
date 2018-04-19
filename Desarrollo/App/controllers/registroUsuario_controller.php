<?php
    session_start();

    require_once '../../config.php';
    require_once "../models/usuario_model.php";   
    $modeloUsuario = new Usuario_Model();

    $urlFoto = null;
    //Obtener datos usuario
    if(isset($_FILES["fotoPerfilUsuario"]["name"][0]))
        $urlFoto = basename($_FILES["fotoPerfilUsuario"]["name"]);

    $nickname = htmlspecialchars(trim(strip_tags($_REQUEST['nickname'])));
    $nombreCompleto = htmlspecialchars(trim(strip_tags($_REQUEST['nombreCompleto'])));
    $email = htmlspecialchars(trim(strip_tags($_REQUEST['email'])));
    $clave1 = htmlspecialchars(trim(strip_tags($_REQUEST['clave1'])));
    $clave2 = htmlspecialchars(trim(strip_tags($_REQUEST['clave2'])));
    $clave = password_hash($clave1, PASSWORD_BCRYPT);
    $rol = htmlspecialchars(trim(strip_tags($_REQUEST['rol'])));

    if(strcmp($clave1 ,$clave2)){
        $_SESSION['MensajeError'] = "clavesDistintas";
        header('Location: ../views/registro.php');   
    }
    else if($modeloUsuario->buscaUsuarioPorNickname($nickname) > 0){
        $_SESSION['MensajeError'] = "nicknameExistente";
        header('Location: ../views/registro.php');

    }else if(($modeloUsuario->buscaUsuarioPorEmail($email) > 0)){
        $_SESSION['MensajeError'] = "usuarioExistente";
        header('Location: ../views/registro.php');

    }else{
        if($result = $modeloUsuario->registraUsuario($nickname, $nombreCompleto, $email, $clave, $rol, $urlFoto)){
            $_SESSION['ErrorRegistro'] = false;
            $_SESSION['UserID'] = $result;
            $_SESSION['Nombre'] = $nombreCompleto;
            $_SESSION['RolUsuario'] = $rol;
            
            if(isset($_FILES['fotoPerfilUsuario'])){
                $nombre_imagen = $_FILES['fotoPerfilUsuario']['name'];
                $imagen_tmp =$_FILES['fotoPerfilUsuario']['tmp_name'];
                
                move_uploaded_file($imagen_tmp,"../../public/img/saved/".$nickname.'-'.$urlFoto);
            }
            header('Location: ../views/home.php');
        }

        else{
            $_SESSION['MensajeError'] = "otro";
            header('Location: ../views/registro.php');
        }
    }

?>