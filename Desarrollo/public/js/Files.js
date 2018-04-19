'use strict';

function muestraImagenUsuario(evt) {
    var imagen = evt.target.files; 

    for (var i = 0, f; f = imagen[i]; i++) {

        if (f.type.match('image.*')) {

            var fr = new FileReader();

            fr.onload = (function(img) {
                return function(e) {
                    $("#foto-usuario").css("background-image","url("+e.target.result+")");
                };
            })(f);

            fr.readAsDataURL(f);
        }
    }
}

function muestraImagenMascota(evt) {
    var imagen = evt.target.files; 

    for (var i = 0, f; f = imagen[i]; i++) {

        if (f.type.match('image.*')) {

            var fr = new FileReader();

            fr.onload = (function(img) {
                return function(e) {
                    $("#perfil-mascota").css("background-image","url("+e.target.result+")");
                };
            })(f);

            fr.readAsDataURL(f);
        }
    }
}


$(document).ready(function(){
    $("#perfil-usuario").on("change",function(event){
        muestraImagen(event);
    });

    $("#perfil-mascota").on("change",function(event){
        muestraImagenMascota(event);
    });
});

