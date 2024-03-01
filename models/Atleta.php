<?php

class Atleta {
    public $id;
    public $name;
    public $lastname;
    public $cc;
    public $city;
    public $country;


    public function getAtletaInfo($id){
        Database::connect();
        $conexion = Database::getConnection();

        $query = "SELECT id, name, lastname FROM atletas WHERE id = $id";

        $resultado = $conexion->query($query);

        $info = array();

        if ($resultado->num_rows > 0) {
            // Recorrer los resultados y crear objetos Sede
            while ($fila = $resultado->fetch_assoc()) {
                $atleta = new Atleta();
                $atleta->id = $fila['id'];
                $atleta->name = $fila['name'];
                $atleta->lastname = $fila['lastname'];
                $info[] = $atleta;
            }
        }

        return $info;
    }
}

?>