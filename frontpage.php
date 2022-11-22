<!DOCTYPE html>
<head>
    <title>gameStore</title>
    <link rel="stylesheet" href="frontpage.css">
</head>
<body>
<div id="gallery">
        <?php
        include("config.php");
        $idproduct = array('101', '102', '106', '107', '108', '109', '110', '111', '112', '113', '114', '115');
        
        foreach ($idproduct as $id){
            $query=$conn->query("select image_url from Image where idProductFK='$id'");
            while($entry = $query->fetch_assoc()){
                $image = $entry["image_url"];
            }
            echo "<div class='tile' id='galery-item-$id' prodid='$id'>
            <a class='item-link' href='productdetails.php?id=$id'>
            <img class='item-image' src='{$image}'></a>
            </div>";
    }


        $conn->close();
        ?>
    </div>
</body>
</html>