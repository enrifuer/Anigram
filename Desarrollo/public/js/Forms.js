'use strict';

(function() {
    var form = document.getElementById("form-login");
   
    $(document).ready(function(){
        $("#fotoPerfilUsuario").on("change",function(event){
            muestraImagenUsuario(event);
        });
    });

    $(document).ready(function(){
        $("#fotoPerfilMascota").on("change",function(event){
            muestraImagenMascota(event);
        });
    });
    
 })();