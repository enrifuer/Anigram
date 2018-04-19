'use strict';

function selectTab(elem){
    console.log(elem);
    $(".menu-tabs").removeClass("active");
    $("#"+elem).addClass( "active" );

    $(".tab-content").removeClass("active");
    $("#div-"+elem).addClass( "active" );
    $("#rol").value=(elem == 'Mascota')?1:2;
}

