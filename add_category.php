<?php
    if(!empty($_POST["categoryName"])){
        $name = $_POST["categoryName"];

        include("config.php");

        $mysql = "insert into category(name) values ('$name')";
        echo $mysql;  
        $conn->query($mysql);
        $conn->close();
        unset($_POST);
    }
?>