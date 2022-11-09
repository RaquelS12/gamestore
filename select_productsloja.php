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

        echo "<div id='product' class='flex-container-product'>";
        echo "<div id='productImage' name='productImage'>";
        $images=$conn->query("select * from Image where idProductFK='$idproduct'");
        while($image=$images->fetch_assoc()){
            echo "<img src='{$image["image_url"]}'>";
        }
        echo "</div>";
        echo "<div id='productDescription' name='productDescription'>";
        echo "nome:$product price:$price stock:$stock categoria:$namecategory";
        echo "</div>";
        echo "</div>";
         //include("delete_product.php");
    }
    $conn->close();
?>