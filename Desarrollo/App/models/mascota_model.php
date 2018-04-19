<?php

require("../configuracion/conexion.php");

class Mascota_Model{
    private $db; 
    private $amo; //Se relaciona con el usuario que posee la mascota
    private $tipo;
    private $nombre; 
    private $raza; 
    private $URLfoto;
    private $bio;


    public function __Construct(){
        try {
            $this->db=Conexion::conec();
            
        } catch (PDOException $e) {
            exit('No se ha podido conectar con la base de datos.');
        }
    }

    function __Contruct($Amo, $tipo, $nombre, $raza, $URLFoto, $bio){
        $this->amo = $Amo;
        $this->tipo = $tipo;
        $this->nombre = $nombre;
        $this->raza = $raza;
        $this->URLFoto = $URLFoto;
        $this->bio = $bio;
    }

    public function registraMascota($tipo, $nombre, $raza, $bio, $URLFoto){
        $ok = false;

        if (mysqli_query($this->db, "INSERT INTO mascota (`ID`, `Amo`, `Tipo`, `Nombre`, `Raza`, `URLFoto`, `Bio`) VALUES (NULL, '14', '$tipo', '$nombre', '$raza', '$URLFoto', '$bio')")) 
            $ok = true;

        return $ok;
    }

    function __destruct(){
        mysqli_close($this->db);
    }
}
?>