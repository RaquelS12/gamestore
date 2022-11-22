<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ProductDetails</title>
    <link rel="stylesheet" href="productdetails.css">
    <script type="text/javascript" src="productdetails.js"></script>

</head>
<body>
    
        <?php
        include("config.php");
        $result=$conn->query("select Product.*, category.name as category from category inner join Product on idcategory=idcategoryFK where idProduct=".$_GET["id"]);
        $flag = 0;
       
        while($entry = $result->fetch_assoc()){
            $idproduct = $entry["idProduct"];
            $product = $entry["name"];
            $price = $entry["price"];
            $stock = $entry["stock"];
            $idcategory = $entry["idcategoryFK"];
            $namecategory = $entry["category"];

            echo "<h2 style='text-align:center'>$product</h2>";
            echo "<div class='container-product'>";

            $images=$conn->query("select * from Image where idProductFK='$idproduct'");

            while($image=$images->fetch_assoc()){
                echo "<div class='container-product-image'>";
                    echo "<img style='width:100%' src='{$image["image_url"]}'>";
                echo "</div>";
            }

            echo "<a class='prev' onclick='plusSlides(-1)'><-</a>";
            echo "<a class='next' onclick='plusSlides(1)'>-></a>";
            echo "  <div class='caption-container'>
                        <p id='caption'></p>
                    </div>";
            
            echo "<div class='sliderow'>";

            $imgs=$conn->query("select * from Image where idProductFK='$idproduct'");
            while($imag=$imgs->fetch_assoc()){
                $flag++;
                echo "<div class='slidecolumn'>";
                    echo "<img class='images cursor' src='{$imag["image_url"]}' style='width:100%' onclick='currentSlide($flag)'>";
                echo "</div>";
            }
            echo "</div>";
            echo "</div>";
            
            echo "<div id='productDescription' name='productDescription'>";
            echo "nome:$product price:$price stock:$stock categoria:$namecategory";
            echo "</div>";
            //include("delete_product.php");
        }
        $conn->close();
        ?>

</body>
</html>