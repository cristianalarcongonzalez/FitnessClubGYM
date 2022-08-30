<?php 
$destinatario = "cristianalarcon109@gmail.com"; 
$asunto = "Mensaje de pruebas"; 
$cuerpo = ' 
<html> 
<head> 
   <title>Prueba</title> 
</head> 
<body> 
<h1>Mensaje de prueba</h1> 
<p> 
Envio por email
</p> 
</body> 
</html> 
'; 

//para el envío en formato HTML 
$headers = "MIME-Version: 1.0\r\n"; 
$headers .= "Content-type: text/html; charset=iso-8859-1\r\n"; 

//dirección del remitente 
$headers .= "From: Cristian alarcon <cristianalarcon109@gmail.com>\r\n"; 


mail($destinatario,$asunto,$cuerpo,$headers) 
?>