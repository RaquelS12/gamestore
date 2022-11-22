<?php
    include("config.php");
    $result=$conn->query("select Product.*, category.name as category from category inner join Product on idcategory=idcategoryFK");

    while($entry = $result->fetch_assoc()){
        $idproduct = $entry["idProduct"];
        $product = $entry["name"];
        $price = $entry["price"];
        $stock = $entry["stock"];
        $idcategory = $entry["idcategoryFK"];
        $namecategory = $entry["category"];

        echo "<li class='product-list-item'>";
        echo "<div class='product-list-item-text'>id:$idproduct nome:$product price:$price stock:$stock categoria:$namecategory </div>";
        echo "<div class='product-list-item-icons'><a href='delete_product.php?id=$idproduct'>";
        echo "<img src='delete.png' class='icon' onclick='confirmMsg($idproduct)'>";
        echo "</a>";
        echo "<a href='alter_product.php?id=$idproduct'>";
        echo "<img src='edit.png' class='icon'>";
        echo "</a></div>";
        echo "</li>";
         //include("delete_product.php");
    }
    $conn->close();
?>