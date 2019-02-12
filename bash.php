<?php 
 //Propiedad de Social Tool.

$to = $_POST['remitente'];
$subjet = $_POST['asunto'];
$message = $_POST['mensaje'];
$from = $_POST['desde'];
$headers = "From:"	.	$from;

$mail = mail($to,$subjet,$message,$headers,$from); 
 
 if($mail){
 echo "Email Enviado Correctamente";
 }

else{
 echo "ha ocurrido un error, lo sentimos.";
 }
 ?>
