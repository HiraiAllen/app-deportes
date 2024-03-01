<?php
require_once './database/Database.php';
require_once './models/Deporte.php';

class DeporteController{
    public function getAtletasByDeporte($id){
        $deporte = new Deporte();
        $atletas = $deporte->getAtletasById($id);
        
        try {
            $response = json_encode($atletas);

            header('Content-Type: application/json');

            echo $response;
        } catch(Exception $e) {
            echo $e;
        }
    }
}