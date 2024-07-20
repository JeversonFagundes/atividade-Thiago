<?php

//iniciar a session.
session_start();

//conectar ao banco.
require_once "conecta.php";

//variavel de conexão.
$mysql = conectar();

$sql = "SELECT * FROM usuario user WHERE id_usuario = " . $_SESSION['usuario'][1];

$query = excutarSQL($mysql, $sql);

$usuario = mysqli_fetch_assoc($query);

$pasta = "foto/";

?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>

        .div2 {
            border-radius: 10px;
            position: absolute;
            height: 100px;
            width: 100px;
            border: 1px black solid;
            top: 40px;
            left: 30px;

        }

        img {
            position: absolute;
            width: 100%;
            height: 100%;
        }
        .form{
            position: absolute;
            top:20%;
        }
        .bbbb{
            position: absolute;
            left:10%;
            top:20px;
        }
    </style>
</head>

<body>


<?php



?>

<div class="div2">
        <img src="<?php echo $pasta . $usuario['foto_perfil']; ?>" alt="foto de perfil do usuario.">
    </div>


  
    <div class="bbbb">
    <h1>Bem vindo!</h1>

    <h2><?php echo $_SESSION['usuario'][0]; ?></h2>
    </div>

    <form class="form" action="crud/alterarPerfil.php" method="post">

        <label for="nome">Seu nome:</label>
        <input type="text" name="nome" id="nome" value="<?php echo $usuario['nome']; ?>"><br><br>

        <label for="email">Seu email:</label>
        <input type="email" name="email" id="email" value="<?php echo $usuario['email']; ?>"><br><br>

        <input type="submit" value="Alterar o seu perfil">


    </form>


</body>

</html>