<?php

//iniciar a session.
session_start();

//conectar ao banco.
require_once "conecta.php";

//variavel de conexão.
$mysql = conectar();

$sql = "SELECT user.foto_perfil FROM usuario user WHERE id_usuario = " . $_SESSION['usuario'][1];

$query = excutarSQL($mysql, $sql);

$foto = mysqli_fetch_assoc($query);

$pasta = "foto/";

?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        * {
            padding: 0;
            margin: 0;
        }

        div {
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

        h1 {
            position: absolute;
            top: 150px;
            left: 20px;
        }

        h2 {
            position: absolute;
            top: 200px;
            left: 20px;
        }

        p {
            position: absolute;
            top: 300px;
        }

        header {
            position: absolute;
            top: 13%;
            left: 20%;
            transform: translate(-50%, -50%);
            border-bottom: 1px black solid;
        }

        ul {
            list-style-type: none;
        }

        li {
            display: inline;

        }

        .li1 {
            margin-right: 50px;
        }

        a {
            font-size: 20px;
            text-decoration: none;
        }
    </style>
</head>

<body class="body">

    <header>
        <nav>
            <ul>
                <li class="li1"><a href="crud/">Perfil</a></li>
                <li><a href="logout.php">Sair</a></li>
            </ul>
        </nav>
    </header>
    <div>
        <img src="<?php echo $pasta . $foto['foto_perfil']; ?>" alt="foto de perfil do usuario.">
    </div>

    <h1>Bem vindo!</h1>

    <h2><?php echo $_SESSION['usuario'][0]; ?></h2>


</body>

</html>