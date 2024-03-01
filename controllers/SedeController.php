<?php

require_once './database/Database.php';
require_once './models/Sede.php';

class SedeController {
    public function getAllSedes(){
        $sede = new Sede();
        $sedes = $sede->getAll();

        try {
            $response = json_encode($sedes);

            header('Content-Type: application/json');

            echo $response;
        } catch(Exception $e) {
            echo $e;
        }
        
    }

    public function getDeportesBySede($id){
        $sede = new Sede();
        $deportes = $sede->getDeportesById($id);
        

        try {
            $response = json_encode($deportes);

            header('Content-Type: application/json');

            echo $response;
        } catch(Exception $e) {
            echo $e;
        }
    }
}

?>