<?php
    include("config.php");
    if(empty($_GET["id"])){
        header("location: index.php?opcao=adminPage");
    }

    $id = $_GET["id"];

    $result=$conn->query("select * from Product where idProduct='$id'");

    if($entry = $result->fetch_assoc()){
        $product = $entry["name"];
        $price = $entry["price"];
        $details = $entry["details"];
        $detailslong = $entry["detailslong"];
        $stock = $entry["stock"];
    }
?>

<form method="post">
 <p>produto: <input type="text" name="product" value="<?php echo $product; ?>"></p>
 <p>preço: <input type="number" name="price" step="0.01" min="0" value="<?php echo $price; ?>"></p>
 <p>details: <input type="text" name="detais" value="<?php echo $details; ?>"></p>
 <p>details long: <input type="text" name="detais" value="<?php echo $detailslong; ?>"></p>
 <p>stock: <input type="number" name="stock" step="0.01" min="0" value="<?php echo $stock;?>"></p>
 <p><button>alterar</button>
</form>

<?php
    if(!empty($_POST["product"])){
        $id=$_GET["id"];
        $product = $_POST["product"];
        $price = $_POST["price"];
        $stock = $_POST["stock"];
        $details = $_POST["details"];
        $detailslong = $_POST["detailslong"];
        include("config.php");
        $sql = "update Product set name='$product', price='$price', details='$details', detailslong='$detailslong', stock='$stock'  where idProduct='$id'";
        echo "$sql";
        $conn->query($sql);
        $conn->close();
        header("location: index.php?opcao=adminPage");
    }
?>