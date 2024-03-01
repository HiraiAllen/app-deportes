<?php

// Función para cargar automáticamente las clases y los métodos
function cargarControladorYMetodo($controller, $method) {
    // Verifica si el controlador y el método existen
    if (file_exists('controllers/' . ucfirst($controller) . 'Controller.php')) {
        require_once('controllers/' . ucfirst($controller) . 'Controller.php');
        $controllerClassName = ucfirst($controller) . 'Controller';
        $controllerInstance = new $controllerClassName();

        // Verifica si el método existe en el controlador
        if (method_exists($controllerInstance, $method)) {
            
            $id = isset($_GET['id']) ? $_GET['id'] : null;

            // Verificar si se proporcionó un valor para 'id'
            if ($id !== null) {
                $controllerInstance->$method((int) $id);
            } else {
                $controllerInstance->$method();
            }
        } else {
            // Método no encontrado
            echo "Error: Método no encontrado en el controlador.";
        }
    } else {
        // Controlador no encontrado
        echo "Error: Controlador no encontrado.";
    }
}

// Verifica si se han pasado los parámetros controller y method en la URL
if (isset($_GET['controller']) && isset($_GET['method'])) {
    // Obtiene los valores de controller y method de la URL
    $controller = $_GET['controller'];
    $method = $_GET['method'];

    // Carga el controlador y ejecuta el método
    cargarControladorYMetodo($controller, $method);
} 

else {
    // Parámetros no encontrados
    echo "Error: Parámetros 'controller' y 'method' no encontrados en la URL.";
}