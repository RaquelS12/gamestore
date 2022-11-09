<?php
    if (empty($_SESSION["userid"])){
        header("location: index.php");
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>AdminGameStore</title>
    <link rel="stylesheet" href="adminPage.css">
    <script type="text/javascript" src="adminPage.js"></script>
</head>
<body>
    <div id="options" class="flex-container">
        <div id="product">
            <div id="productAdd" class="button" onclick="toggleVisibility(this.id)">Adicionar Produto</div>
            <div id="productAddForm" class="hidden tohide">
                <form method="post" class="form" enctype="multipart/form-data">
                    <p class="title">Novo produto:</p>
                    <p>Nome: <input type="text" name="productName" required></p>
                    <p>Preço: <input type="number" name="productPrice" step=0.01 required></p>
                    <p>Detalhes resumo: <input type="text" name="productDetails"></p>
                    <p>Detalhes: <input type="text" name="productDetailsLong"></p>
                    <p>Stock: <input type="number" name="productStock" required></p>
                    <p>Categoria: <select name="idcategory"><?php include("select_categoriesOption.php") ?></select></p>
                    <p>Imagem: <input type="file" name="imagens[]" multiple>
                    <p><button class="productAddButton">Adicionar</button></p>
                </form>
                <?php include("add_product.php") ?>
            </div>

            <div id="productDelete" class="button" onclick="toggleVisibility(this.id)">Eliminar/Alterar Produto</div>
            <div id="productDeleteForm" class="hidden tohide">
                <div>
                    
                    <ul type="products">
                        <?php include("select_products.php") ?>
                    </ul>
                    <?php include("delete_product.php") ?>
                </div>
            </div>

        </div>

        <div id="category">
            <div id="categoryAdd" class="button" onclick="toggleVisibility(this.id)">Adicionar Categoria</div>
            <div id="categoryAddForm" class="hidden tohide">
                <form method="post" class="form">
                        <p class="title">Nova Categoria:</p>
                        <p>Nome: <input type="text" name="categoryName" required></p>
                        <p><button class="categoryAddButton">Adicionar</button></p>
                    </form>
                    <?php include("add_category.php") ?>
            </div>

            <div id="categoryDeleteAlter" class="button" onclick="toggleVisibility(this.id)">Eliminar/Alterar Categoria</div>
            <div id="categoryDeleteAlterForm" class="hidden tohide">
                <ul type="categories">
                        <?php include("select_categories2list.php") ?>
                </ul>
                        <?php include("delete_category.php") ?>
            </div>

        </div>
    </div>

    
</body>
</html>