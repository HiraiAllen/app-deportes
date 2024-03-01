<?php
require_once './database/Database.php';
require_once './models/Deporte.php';

class Sede {
    public $id;
    public $name;
    public $address;
    public $city;
    public $country;

    // Método para obtener todas las sedes
    public function getAll() {
        // Conectarse a la base de datos
        Database::connect();
        $conexion = Database::getConnection();

        // Consulta SQL para obtener todas las sedes
        $query = "SELECT * FROM sedes";

        // Ejecutar la consulta
        $resultado = $conexion->query($query);

        // Arreglo para almacenar las sedes
        $sedes = array();

        // Verificar si hay resultados
        if ($resultado->num_rows > 0) {
            // Recorrer los resultados y crear objetos Sede
            while ($fila = $resultado->fetch_assoc()) {
                $sede = new Sede();
                $sede->id = $fila['id'];
                $sede->name = $fila['name'];
                $sede->address = $fila['address'];
                $sede->city = $fila['city'];
                $sede->country = $fila['country'];
                // Agregar la sede al arreglo
                $sedes[] = $sede;
            }
        }

        Database::closeConnection();
        return $sedes;
    }

    //Función para obtener los deportes por id
    public function getDeportesById($id){
        // Conectarse a la base de datos
        Database::connect();
        $conexion = Database::getConnection();

        // Consulta SQL para obtener las sedes 
        $query = "SELECT * FROM sedes_deportes WHERE sedes_id = $id";

        // Ejecutar la consulta
        $resultado = $conexion->query($query);

        // Arreglo para almacenar las sedes
        $deportes = array();

        // Verificar si hay resultados
        if ($resultado->num_rows > 0) {
            // Recorrer los resultados y crear objetos Sede
            while ($fila = $resultado->fetch_assoc()) {
                $deporte = new Deporte();
                $deporte_info = $deporte->getDeporteInfo($fila['deportes_id']);

                $deportes[] = $deporte_info; 
            }
        }

        Database::closeConnection();
        return $deportes;
    }
}