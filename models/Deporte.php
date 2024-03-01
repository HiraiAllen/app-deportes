<?php
require_once './database/Database.php';
require_once './models/Atleta.php';

class Deporte {
    public $id;
    public $nombre;

    public function getDeporteInfo($id){
        Database::connect();
        $conexion = Database::getConnection();

        $query = "SELECT * FROM deportes WHERE id = $id";

        $resultado = $conexion->query($query);

        $info = array();

        if ($resultado->num_rows > 0) {
            while ($fila = $resultado->fetch_assoc()) {
                $deporte = new Deporte();
                $deporte->id = $fila['id'];
                $deporte->name = $fila['name'];
                $info[] = $deporte;
            }
        }

        return $info;
    }

    public function getAtletasById($id){
        Database::connect();
        $conexion = Database::getConnection();

        $query = "SELECT * FROM atletas_deportes WHERE deportes_id = $id";

        $resultado = $conexion->query($query);

        $atletas = array();

        if ($resultado->num_rows > 0) {
            while ($fila = $resultado->fetch_assoc()) {
                $atleta = new Atleta();
                $atleta_info = $atleta->getAtletaInfo($fila['atletas_id']);

                $atletas[] = $atleta_info; 
            }
        }

        Database::closeConnection();
        return $atletas;
    }
}

?>