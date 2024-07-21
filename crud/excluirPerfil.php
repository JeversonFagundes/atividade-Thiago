<?php

//iniciar a sesssion.
session_start();

//conectar com bd.
require_once "../conecta.php";

//variavel de conexão.
$mysql = conectar();

$sql = "DELETE FROM usuario WHERE id_usuario = " . $_SESSION['usuario'][1];

executarSQL($mysql, $sql);

header("location: ../index.php");