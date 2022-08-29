<?php
include("conexionv.php");
if (!isset($_SESSION['CodigoFactura'])) {
	header("Location: index.php");
}
if(isset($_GET['CodigoFactura'])) {
  $CodigoFactura = $_GET['CodigoFactura'];
  $query = "DELETE FROM facturas WHERE CodigoFactura = $CodigoFactura";
  $result = mysqli_query($conn, $query);
  if(!$result) {
    die("Ha ocurrido un error.");
  }
  $_SESSION['message'] = 'Factura Eliminado Satisfactoriamente';
  $_SESSION['message_type'] = 'danger';
  header('Location: ConsultarFacturas.php');
}
//no se implementa por problemas de seguridad ya que cualquiera puede eliminar facturas como si no hubiese rastro
?>