
<form action="../controllers/registroUsuario_controller.php" method="post" enctype="multipart/form-data">
    <div class="image-upload">
        <label for="fotoPerfilUsuario">
            <div id="foto-usuario" class="foto-perfil perfil-gr subir-foto-gr"></div>
        </label>
        <input id="fotoPerfilUsuario" class="input-perfil" name="fotoPerfilUsuario" type="file"/>
    </div>
    <?php 
        if(isset($_SESSION['MensajeError'])){
                echo 'hola';
                Mensajes_Controller::mostrarMensaje($_SESSION['MensajeError']);
            }
    ?>
    <!-- <input type="file" class="formulario-textbox" name="fotoPerfilUsuario" id="fotoPerfilUsuario"> -->
    <input type="text" class="formulario-textbox" id="nickname" name="nickname" placeholder="Nickname" required>
    <input type="text" class="formulario-textbox" id="nombreCompleto" name="nombreCompleto" placeholder="Tu nombre completo" required>
    <input type="email" class="formulario-textbox" id="email" name="email" placeholder="Tu Email" required>
    <input type="password" class="formulario-textbox" id="clave1" name="clave1" placeholder="Tu contraseña" required>
    <input type="password" class="formulario-textbox" id="clave2" name="clave2" placeholder="Repite tu contraseña" required>
    <input type="hidden" class="formulario-textbox" id="rol" name="rol" value="1">
    <div id="boton_enviar">
        <input id="submit" type="submit" name="submit"  onchange="muestraImagen" class="submitHueso" value="Guardar"/>	
    </div>
</form>
 