<?php


include('conexionv.php');

if (isset($_POST['insertafactura'])) {
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

  $TipoSuscripcion = $_POST['TipoSuscripcion'];
  $SubTotal = $_POST['SubTotal'];
  $Cantidad = $_POST['Cantidad'];
  $Total = $_POST['Total'];
  $FechaFin = $_POST['FechaFin'];

  $query = "INSERT INTO facturas(Identificacion,PrimerNombre, PrimerApellido, SegundoApellido, FechaNacimiento, Sexo, Celular, Correo, TipoIdentificacion, Direccion, TipoSuscripcion, SubTotal, Cantidad, Total, FechaFin) VALUES ('$Identificacion', '$PrimerNombre',  '$PrimerApellido', '$SegundoApellido', '$FechaNacimiento', '$Sexo', '$Celular', '$Correo', '$TipoIdentificacion','$Direccion' , '$TipoSuscripcion', '$SubTotal', '$Cantidad', '$Total', '$FechaFin')";
  $result = mysqli_query($conn, $query);
  

  if(!$result) 
  { 
    echo" 
    <script language='javascript'> 
    alert('ERROR AL GUARDAR DATOS') 
    window.location='ConsultarClientes.php' 
    </script>"; 
    exit(); 
  } 
  else 
  { 
    echo" 
    <script language='javascript'> 
    alert('Registro exitoso, Presione aceptar para Continuar') 
    window.location='ConsultarClientes.php' 
    </script>"; 
  }


}

?>
