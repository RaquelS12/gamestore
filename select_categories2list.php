<?php
    include("config.php");
    $result=$conn->query("select * from category");

    while($entry = $result->fetch_assoc()){
        $idcategory = $entry["idcategory"];
        $category = $entry["name"];

        echo "<li>id:$idcategory nome:$category";
        echo "<a href='delete_category.php?id=$idcategory'>";
        echo "<img src='delete.png' class='icon'  onclick='confirmMsg($idcategory)'>";
        echo "</a>";
        echo "<a href='alter_category.php?id=$idcategory'>";
        echo "<img src='edit.png' class='icon'>";
        echo "</a>";
        echo "</li>";

    }
    $conn->close();
?>