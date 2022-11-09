<?php
    include("config.php");
    $result=$conn->query("select * from category");

    while($entry = $result->fetch_assoc()){
        $idcategory = $entry["idcategory"];
        $category = $entry["name"];
        echo "<option value='$idcategory'>$category</option>";
    }
    $conn->close();
?>