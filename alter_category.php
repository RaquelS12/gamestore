<?php
    include("config.php");
    if(empty($_GET["id"])){
        header("location: index.php?opcao=adminPage");
    }

    $id = $_GET["id"];

    $result=$conn->query("select * from category where idcategory='$id'");

    if($entry = $result->fetch_assoc()){
        $category = $entry["name"];
    }
?>

<form method="post">
 <p>new name: <input type="text" name="category" value="<?php echo $category; ?>"></p>
 <p><button>alterar</button>
</form>

<?php
    if(!empty($_POST["category"])){
        $id=$_GET["id"];
        $category = $_POST["category"];
        
        include("config.php");
        $sql = "update category set name='$category' where idcategory='$id'";
        echo "$sql";
        $conn->query($sql);
        $conn->close();
        header("location: index.php?opcao=adminPage");
    }
?>