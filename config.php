<?php
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "gamestore";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
?>