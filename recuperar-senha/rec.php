<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

include_once "./conecta.php";
$conexao = conectar();

$email = $_POST['email'];
$sql = "SELECT * FROM usuario WHERE email='$email'";
$result = mysqli_query($conexao, $sql);

$usuario = mysqli_fetch_assoc($result){
    if($usuario == null){
        echo "Email não cadatrado! Se cadastre e logo 
        em seguida faça o login.";
        die();
    }
}

$token = bin2hex(random_bytes(50));

require_once 'PHPMailer/src/PHPMailer.php';
require_once 'PHPMailer/src/SMTP.php';
require_once 'PHPMailer/src/Exception.php';
include 'config.php';


$mail = new PHPMailer(true);

try {
     $mail->CharSet = 'UTF-8';
     $mail->Encoding = 'base64';
     $mail->setLanguage('br');
     $mail->SMTPDebug = SMTP::DEBUG_OFF;  //tira as mensagens de erro
     $mail->isSMTP();                       //envia o email usando SMTP
     $mail->Host = 'smtp.gmail.com';        //Set the SMTP server to send through
     $mail->SMTPAuth = true;                //Enable SMTP authentication
     $mail->Username = $config['email'];    //SMTP username
     $mail->Password = $config['senha_email']; //SMTP password
     //Enable implicit TLS encryption
     $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
     /* TCP port to connect to; use 587 if you have set 
     `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS` */
     $mail->Port = 587;
     $mail->SMTPOptions = array(
         'ssl' => array(
             'verify_peer' => false,
             'verify_peer_name' => false,
             'allow_self_signed' => true
         )
         );
}
?>