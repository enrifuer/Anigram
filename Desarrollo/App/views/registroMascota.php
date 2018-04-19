	<h2>Este es el espacio para mascota</h2>

    <form method="post" id="Reg_mascota" action="../controllers/registroMascota_controller.php"  enctype="multipart/form-data">
	
        <div class="col-md-2"  >
            <label for="fotoPerfilMascota">
                <div id="perfil-mascota" class="foto-perfil-mascota perfil-md subir-foto-md"></div>
			</label>
			<input id="fotoPerfilMascota" class="input-perfil" name="fotoPerfilMascota" type="file"/>
		</div>
		
		<div class="mascota-nombre-raza">
			<input type="text" class="formulario-textbox-mascota" name="nombre" placeholder="Su nombre" required /> 
			<input type="text" class="formulario-textbox-mascota" name="raza" placeholder="Su raza" required />
		</div>
		<br>
		<div class="fotomascota">
			<h2>Foto perfil mascota</h2>
		</div>

		<div class="tipomascota">
			Perro <input type="radio" name="tipo" value="1" checked>
			Gato <input type="radio" name="tipo" value="2">			
			Conejo <input type="radio" name="tipo" value="3">
			Hamster <input type="radio" name="tipo" value="4">
			Ave <input type="radio" name="tipo" value="5">
			Cobaya <input type="radio" name="tipo" value="6">		 
        </div>

		<!-- PRUEBA SELECTOR TIPO MASCOTA
	 style="background-image:url('/Anigram/Desarrollo/img/IMG_0547.jpg')"
		<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
				<img class="d-block w-30" src="../../public/img/perro-pixilart.png" alt="First slide">
				</div>
				<div class="carousel-item">
				<img class="d-block w-30" src="../../public/img/gato-pixilart.png" alt="Second slide">
				</div>
				<div class="carousel-item">
				<img class="d-block w-30" src="../../public/img/conejo-pixilart.png" alt="Third slide">
				</div>
			</div>
				<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
			</a>
				<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
			</a>
		</div>
		--> 
        
		<div class="biomascota">
			<textarea name="bio" class="formulario-textbox-mascota" rows="5" placeholder="Descripción" cols="30" ></textarea>
		</div>
        <div id="boton_enviar">
            <input id="submitMascota" type="submit" name="submit" class="submitHueso" value="Añadir"/>	
        </div>

	</form>
