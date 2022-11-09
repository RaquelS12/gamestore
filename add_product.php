<?php
    if(!empty($_POST["productName"])){
        $name = $_POST["productName"];
        $price = $_POST["productPrice"];
        $details = $_POST["productDetails"];
        $detailslong = $_POST["productDetailsLong"];
        $stock = $_POST["productStock"];
        $idcategoryFK = $_POST["idcategory"];
        $image_url = "null";
        include("config.php");

        $mysql = "insert into Product(name, price, details, detailslong, stock, idcategoryFK) values ('$name', '$price', '$details', '$detailslong', '$stock','$idcategoryFK')";
        echo $mysql;  
        $conn->query($mysql);
        $idproduct = $conn->insert_id;

        $comando = "";
        foreach($_FILES["imagens"]["tmp_name"] as $key=>$value){
            echo "$key  $value<br>"; // 0   C:\xampp\tmp\php92FE.tmp
            move_uploaded_file($value,"img/".$_FILES["imagens"]["name"][$key]);
            $image_url="img/".$_FILES["imagens"]["name"][$key];
            $comando.="insert into Image(image_url,idProductFK) values('$image_url',$idproduct);";
        }
        
        echo $comando;
        $conn->multi_query($comando);
     
   
        $conn->close();

        //echo "<p>Produto  $produto inserido com sucesso.</p>";
    }
?>