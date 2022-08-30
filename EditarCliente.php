<?php
require "conexion.php";
session_start();
if (!isset($_SESSION['Identificacion'])) {
    header("Location: index.php");
}
$Identificacion = $_SESSION['Identificacion'];

if (isset($_GET['Identificacion'])) {
  $Identificacion = $_GET['Identificacion'];
  $query = "SELECT * FROM clientes WHERE Identificacion=$Identificacion";
  $result = mysqli_query($mysqli, $query);
  if (mysqli_num_rows($result) == 1) {
    $row = mysqli_fetch_array($result);
    $PrimerNombre = $row['PrimerNombre'];
    $PrimerApellido =$row['PrimerApellido'];
    $SegundoApellido =$row['SegundoApellido'];
    $Direccion =$row['Direccion'];
    $Celular =$row['Celular'];
  }
}

if (isset($_POST['update'])) {
  $PrimerNombre = $row['PrimerNombre'];
  $PrimerApellido =$row['PrimerApellido'];
  $SegundoApellido =$row['SegundoApellido'];
  $Direccion =$row['Direccion'];
  $Celular =$row['Celular'];

  $stmt = $mysqli->prepare("UPDATE clientes SET 
  PrimerNombre = ?, 
  PrimerApellido = ?, 
  SegundoApellido = ?,  
  Direccion = ?,  
  Celular = ?  
   WHERE Identificacion = ?");
$stmt->bind_param('sssdii',
   $_POST['PrimerNombre'],
   $_POST['PrimerApellido'],
   $_POST['SegundoApellido'],
   $_POST['Direccion'], 
   $_POST['Celular'],
   $_POST['Identificacion']);
$stmt->execute(); 
$stmt->close();
mysqli_query($mysqli, $query);
  $_SESSION['message'] = 'cliente Modificado exitosamente!';
  $_SESSION['message_type'] = 'warning';
  header('Location: ConsultarClientes.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<?php require_once('V_Head.php')?>
<div class="container-fluid">
<h1 class="mt-5">Modificar Clientes</h1>
</div>
<div class="container p-5">
  <div class="row">
    <div class="col-md-16 mx-auto">
      <div class="card card-body">
        <form action="EditarCliente.php?Identificacion=<?php echo $_GET['Identificacion']; ?>" method="POST">

          <div class="form-group">
            <label><b>Identificacion</b></label>
            <input name="Identificacion" type="text" class="form-control" value="<?php echo $Identificacion; ?>" readonly placeholder="Actualizar Identificacion" autofocus>
          </div>
          <div class="form-group">
          <label><b>PrimerNombre</b></label>
            <input name="PrimerNombre" type="text" class="form-control" value="<?php echo $PrimerNombre; ?>" placeholder="Actualizar Primer nombre">
          </div>
          <div class="form-group">
          <label><b>PrimerApellido</b></label>
            <input name="PrimerApellido" type="text" class="form-control" value="<?php echo $PrimerApellido;?>" placeholder="Actualizar Primer apellido">
          </div>
          <div class="form-group">
          <label><b>SegundoApellido</b></label>
            <input name="SegundoApellido" type="text" class="form-control" value="<?php echo $SegundoApellido; ?>" placeholder="Actualizar segundo apellido">
          </div>
          <div class="form-group">
          <label><b>Direccion</b></label>
            <input name="Direccion" type="text" class="form-control" value="<?php echo $Direccion; ?>" placeholder="Actualizar direccion" >
          </div>
          <div class="form-group">
          <label><b>Celular</b></label>
            <input name="Celular" type="text" class="form-control" value="<?php echo $Celular; ?>" placeholder="Actualizar celular">
          </div>
          <div class="modal-footer">
													<button type="submit" name="update" class="btn btn-success"><i
														class="fa fa-fw fa-lg fa-check-circle"></i>Registrar
													</button>

													<button type="button" id="btnLimpiar" class="btn btn-danger"><i
														class="fa fa-fw fa-lg fa-times-circle"></i>Cancelar
													</button>
												</div>
        </form>
      </div>
    </div>
  </div>
</div>
