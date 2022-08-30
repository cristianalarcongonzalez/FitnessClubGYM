<?php
require "conexion.php";
session_start();
if (!isset($_SESSION['Identificacion'])) {
  header("Location: index.php");
}


$PrimerNombre = '';
$PrimerApellido = '';
$SegundoApellido = '';
$FechaNacimiento = '';
$Sexo = '';
$Celular = '';
$Correo = '';
$TipoIdentificacion = '';
$Direccion = '';


if (isset($_GET['Identificacion'])) {
  $Identificacion = $_GET['Identificacion'];
  $query = "SELECT * FROM clientes WHERE Identificacion=$Identificacion";
  $result = mysqli_query($mysqli, $query);
  if (mysqli_num_rows($result) == 1) {
    $row = mysqli_fetch_array($result);

    $PrimerNombre = $row['PrimerNombre'];
    $PrimerApellido = $row['PrimerApellido'];
    $SegundoApellido = $row['SegundoApellido'];
    $FechaNacimiento = $row['FechaNacimiento'];
    $Sexo = $row['Sexo'];
    $Celular = $row['Celular'];
    $Correo = $row['Correo'];
    $TipoIdentificacion = $row['TipoIdentificacion'];
    $Direccion = $row['Direccion'];

  }
}


?>
<?php include('includes/header.php'); ?>
<?php include('includes/footer.php'); ?>
<!DOCTYPE html>
<html lang="en">

<?php  require_once('V_head.php')?>


<main>
  <div class="container-fluid">
    <h1 class="mt-2">Generar Factura</h1>
    <ol class="breadcrumb mb-4">
      <li class="breadcrumb-item"><a href="principal.php">Menu Principal</a></li>
      <li class="breadcrumb-item active">Facturación</li>
    </ol>

    <?php if (isset($_SESSION['message'])) { ?>
      <div class="alert alert-<?= $_SESSION['message_type'] ?> alert-dismissible fade show" role="alert">
        <?= $_SESSION['message'] ?>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <?php
    } ?>


    <div class="row">
      <div class="col-md-12">
        <div class="title">
          <div class="row">
            <div class="col-lg-12">

              <form action="insertafactura.php" method="POST" id="formulario">
                <div class="row">
                  <div class="col-lg-3">
                    <div class="form-group">
                      <label class="control-label">Identificación</label>
                      <input type="text" class="form-control" name="Identificacion"
                      value="<?php echo $Identificacion; ?>" readonly minlength="6" maxlength="11"
                      pattern="[0-9]{1,12}" title="Solamente se admiten números"
                      required="required">
                    </div>
                  </div>
                  <div class="col-lg-3">
                    <div class="form-group">
                      <label class="control-label">Primer Nombre</label>
                      <input type="text" class="form-control" name="PrimerNombre"
                      value="<?php echo $PrimerNombre; ?>" readonly pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,30}" 
                      required="required" minlength="3" maxlength="15" title="Solamente se admiten caracteres">
                    </div>
                  </div>

                  <div class="col-lg-3">
                    <div class="form-group">
                      <label class="control-label">Primer Apellido</label>
                      <input type="text" class="form-control" name="PrimerApellido"
                      value="<?php echo $PrimerApellido; ?>" readonly pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,25}" 
                      required="required" minlength="3" maxlength="80" title="Solamente se admiten caracteres">
                    </div>
                  </div>


                  <div class="col-lg-3">
                    <div class="form-group">
                      <label class="control-label">Segundo Apellido</label>
                      <input type="text" class="form-control" name="SegundoApellido"
                      value="<?php echo $SegundoApellido; ?>" readonly pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,25}" 
                      required="required" minlength="3" maxlength="15" title="Solamente se admiten caracteres">
                    </div>
                  </div>

                </div>
                <br>
                <div class="row">

                 <div class="col-lg-4">
                  <div class="form-group">
                    <label class="control-label">Sexo</label>
                    <input type="text" class="form-control" name="Sexo"
                    value="<?php echo $Sexo; ?>" readonly pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,25}" 
                    required="required" minlength="3" maxlength="15" title="Solamente se admiten caracteres">
                  </div>
                </div>
                <div class="col-lg-4">
                  <div class="form-group">
                    <label class="control-label">Fecha de nacimiento</label>
                    <input type="text" class="form-control" name="FechaNacimiento"
                    value="<?php echo $FechaNacimiento; ?>" readonly pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,25}" 
                    required="required" minlength="3" maxlength="30" title="Solamente se admiten caracteres">
                  </div>
                </div>

                <div class="col-lg-4">
                  <div class="form-group">
                    <label class="control-label">Celular</label>
                    <input type="text" class="form-control" name="Celular"
                    value="<?php echo $Celular; ?>" readonly minlength="10" maxlength="10"
                    pattern="[0-9]{1,10}" title="Solamente se admiten números"
                    required="required">
                  </div>
                </div>

              </div>
              <br>
              <div class="row">

                <div class="col-lg-4">
                  <div class="form-group">
                    <label class="control-label">Correo electrónico</label>
                    <input class="form-control" type="email" name="Correo"
                    value="<?php echo $Correo; ?>" readonly required="required">
                  </div>
                </div>
                <div class="col-lg-4">
                  <div class="form-group">
                    <label class="control-label">Dirección de domicilio</label>
                    <input type="text" class="form-control" name="Direccion"
                    value="<?php echo $Direccion; ?>" readonly pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ#/°- ]{1,60}" 
                    required="required" minlength="12" maxlength="255">
                  </div>
                </div>
                <div class="col-lg-4">
                  <div class="form-group">
                    <label class="control-label">Tipo de identificacion</label>
                    <input type="text" class="form-control" name="TipoIdentificacion"
                    value="<?php echo $TipoIdentificacion; ?>" readonly pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ#/°- ]{1,60}" 
                    required="required" minlength="5" maxlength="50">
                  </div>
                </div>
              </div>

              <br>

              <div class="row">
                <div class="col-lg-2">
                  <div class="form-group">
                    <label class="control-label">Tipo de suscripción</label>
                    <select class="form-control" name="TipoSuscripcion" onchange="CalcularSuscripcion(this.value)"required>
                      <option>Seleccione suscripción</option>
                      <option value="Rutina">Rutina</option>
                      <option value="Mensualidad">Mensualidad</option>
                    </select>
                  </div>
                </div>


                <div class="col-lg-2">
                  <div class="form-group">
                    <label class="control-label">SubTotal</label>
                    <input type="text" class="form-control" name="SubTotal" id="SubTotal"  readonly required="required">
                  </div>
                </div>
            
                <div class="col-lg-2">
                  <div class="form-group">
                    <label class="control-label">Cantidad (Dias o Mes)</label>
                    <input type="text" class="form-control" name="Cantidad" id="Cantidad"
                    minlength="1" maxlength="2" required 
                    pattern="[0-9]{1,10}" title="Solamente se admiten números">
                  </div>
                </div>

                <div class="col-lg-2">
                  <div class="form-group">
                    <label class="control-label">Total a pagar</label>
                  
                    <input type="text" class="form-control" name="Total" id="Total" required readonly>

                  </div>
                  <div class="col-lg-2">
                   <input id="BtnCalcularCorte1" type="button" class="btn btn-warning" value="Calcular"
                   onclick="CalcularTotalPagar()">
                 </div>
               </div>

               <div class="col-lg-4">
                <div class="form-group">
                  <label class="control-label">Fecha de finalización</label>
                  <input class="form-control" type="date" name="FechaFin"
                  placeholder="*Ingrese Fecha de Finalización" required="required">
                </div>
              </div>

            </div>
            <br>
            <div class="modal-footer">
              <button type="submit" name="insertafactura" class="btn btn-success"><i
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
</div>
</main>
</div>
<?php require_once('C_Scripts.php')?>
</body>
</html>
