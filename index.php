<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Loja</title>
</head>
<body>
<?php 
    session_start(); // start ou resume session --- começar ou continuar a sessão!
?>
<nav>     
        <?php if (!empty($_SESSION["userid"]) && $_SESSION["admin"]==1) 
         {  //login efetuado!
            ?>
                <a href="index.php?opcao=loja">Produtos</a>
                <a href="index.php?opcao=adminPage">Inserir Produtos</a>
                <a href="index.php?opcao=logout">Logout</a>
            <?php
         }
         else if (!empty($_SESSION["userid"]) && $_SESSION["admin"]==0) 
         {  //login efetuado!
            ?>
                <a href="index.php?opcao=loja">Produtos</a>
                <a href="index.php?opcao=logout">Logout</a>
            <?php
         }
         else
         {  // sem login
            ?>
                <a href="index.php?opcao=login">Login</a>
                <a href="index.php?opcao=loja">Produtos</a>
            <?php
         }
        ?>
    </nav>
    <hr>
    
    <?php
        if (!empty($_SESSION["username"]))
            echo "<h3>Bem vindo(a) {$_SESSION["username"]}</h3>";
    ?>
    <main>
        <?php
            if(!empty($_GET["opcao"]))
                include($_GET["opcao"].".php");
        ?>
    </main>
</body>
</html>
