<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Loja</title>
    <link rel="stylesheet" href="loja.css">
    <script type="text/javascript" src="functions.js"></script>
</head>
<body>
    <h1>Produtos</h1>                  
    <div id='divProducts' class='flex-container-products'>
        <?php include("select_productsloja.php") ?>
    </div>
    
</body>
</html>