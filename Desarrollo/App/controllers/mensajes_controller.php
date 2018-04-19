<?php
    include '../configuracion/mensajes.php';
    
    class Mensajes_Controller{
        function mostrarMensaje($tipoMensaje){
            $mensaje = "";
            switch($tipoMensaje){
                case 'loginError':
                    $mensaje = Mensajes::loginError;
                    break;
                    
                case 'nicknameExistente':
                    $mensaje = Mensajes::nicknameExistente;
                    break;

                case 'usuarioExistente':
                    $mensaje = Mensajes::usuarioExistente;
                    break;

                case 'clavesDistintas':
                    $mensaje = Mensajes::clavesDistintas;
                    break;
                default:
                    $mensaje = "Se ha producido un error";
                    break;
            }

            echo '<div class="alert alert-danger" role="alert">
                    <span><img src="../../public/img/ic_pets_white_24px.svg"></span>
                    <span class="bold">Wooops!</span>
                    <h6>'.$mensaje.'</h6>
                </div>';
        }
    }
?>