<?php


include('conexionv.php');




if (isset($_POST['insertacliente'])) {
  $Identificacion = $_POST['Identificacion'];
  $PrimerNombre = $_POST['PrimerNombre'];
  $PrimerApellido = $_POST['PrimerApellido'];
  $SegundoApellido = $_POST['SegundoApellido'];
  $FechaNacimiento = $_POST['FechaNacimiento'];
  $Sexo = $_POST['Sexo'];
  $Celular = $_POST['Celular'];
  $Correo = $_POST['Correo'];
  $TipoIdentificacion = $_POST['TipoIdentificacion'];
  $Direccion = $_POST['Direccion'];
    $query = "INSERT INTO clientes(Identificacion,PrimerNombre, PrimerApellido, SegundoApellido, FechaNacimiento, Sexo, Celular, Correo,TipoIdentificacion,Direccion) VALUES ('$Identificacion', '$PrimerNombre',  '$PrimerApellido', '$SegundoApellido', '$FechaNacimiento', '$Sexo', '$Celular', '$Correo', '$TipoIdentificacion','$Direccion' )";
    $result=mysqli_query($conn, $query);
  

  if(!$result) 
  { 
    echo" 
    <script language='javascript'> 
    alert('ERROR AL GUARDAR DATOS, POSIBLE IDENTIFICACIÓN REPETIDA') 
    window.location='GestionCliente.php' 
    </script>"; 
    exit(); 
  } 
  else 
  { 
    echo" 
    <script language='javascript'> 
    alert('Registro exitoso, Presione aceptar para Continuar') 
    window.location='GestionCliente.php' 
    </script>"; 
  }

}
?>