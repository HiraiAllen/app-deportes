<?php

class Database {
    private static $host = "localhost"; 
    private static $user = "root"; 
    private static $password = ""; 
    private static $bdd = "app-deportes"; 
    private static $conn;

    public static function connect() {
        self::$conn = new mysqli(self::$host, self::$user, self::$password, self::$bdd);

        if (self::$conn->connect_error) {
            die("Error de conexión: " . self::$conn->connect_error);
        }
    }

    // Método para cerrar la conexión
    public static function closeConnection() {
        if (self::$conn) {
            self::$conn->close();
        }
    }

    // Método para obtener la conexión
    public static function getConnection() {
        return self::$conn;
    }
}