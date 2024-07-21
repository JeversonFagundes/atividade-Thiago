<?php

//iniciar a session.
session_start();

//conectar com o banco de dados.
require_once "../conecta.php";

//variavel de conexão.
$mysql = conectar();

//receber os dados.
$nome = $_POST['nome'];
$email = $_POST['email'];

//verificar se o email existe no banco de dados.
$consulta_usuario = executarSQL($mysql, "SELECT COUNT(*) FROM usuario WHERE email = '$email'");
$quantidade_usuario = mysqli_fetch_row($consulta_usuario)[0];

if ($quantidade_usuario != 0) {
    
    echo "O email já existe no sistema. <p><a href=\"../inicial.php\">Voltar</a></p>";

    die ();
}else {
    
    $sql = "UPDATE usuario SET nome = '$nome', email = '$email' WHERE id_usuario = " . $_SESSION['usuario'][1];

    executarSQL($mysql, $sql);

    $_SESSION['usuario'][0] = $nome;

    header("location:../inicial.php");
}