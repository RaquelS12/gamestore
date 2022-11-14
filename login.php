<form method="post">
    <p>username: <input type="text" name="username"></p>
    <p>password: <input type="password" name="password"></p>
    <p><button>entrar</button></p>
</form>
<p><a href="index.php?opcao=register">criar conta</p>

<?php
    if(!empty($_POST["username"]) && !empty($_POST["password"])){
        require("config.php");
        $username = $_POST["username"];
        $password = $_POST["password"];
        $sql="select * from user where username='$username' and password='$password'";
        echo $sql;
        $result=$conn->query($sql);

        if ($registo=$result->fetch_assoc()){
            $_SESSION["userid"]=$registo["iduser"];
            $_SESSION["username"]=$registo["username"];
            $_SESSION["admin"]=$registo["admin"];
            header("location: index.php");

        }else{
            echo "<p>credenciais incorretas. Tente novamente.</p>";
        }
    }
?>