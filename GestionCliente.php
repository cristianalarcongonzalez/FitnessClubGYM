<?php
require "conexion.php";
session_start();

if (!isset($_SESSION['Identificacion'])) {
	header("Location: index.php");
}
$Identificacion = $_SESSION['Identificacion'];
$Usuario = $_SESSION['Usuario'];
?>



<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<title>Clientes</title>
	<link href="css/styles.css" rel="stylesheet" />

	<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">

	<?php require_once('V_NavBar.php'); ?>
	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid">

				<h1 class="mt-4">Gestión de Clientes</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item"><a href="principal.php">Menu Principal</a></li>
					<li class="breadcrumb-item active">Gestión de Clientes</li>
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

									<form action="insertaclientes.php" method="POST">
										<div class="row">
											<div class="col-lg-3">
												<div class="form-group">
													<label class="control-label">Identificación</label>
													<input type="text" class="form-control" name="Identificacion" placeholder="Digite Identificación" minlength="6" maxlength="11" pattern="[0-9]{1,12}" title="Solamente se admiten números" required="required">
												</div>
											</div>
											<div class="col-lg-3">
												<div class="form-group">
													<label class="control-label">Primer Nombre</label>
													<input type="text" class="form-control" name="PrimerNombre" placeholder="Digite Primer Nombre" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,30}" required="required" minlength="3" maxlength="15" title="Solamente se admiten caracteres">
												</div>
											</div>

											<div class="col-lg-3">
												<div class="form-group">
													<label class="control-label">Primer Apellido</label>
													<input type="text" class="form-control" name="PrimerApellido" placeholder="Digite Primer Apellido" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,25}" required="required" minlength="3" maxlength="15" title="Solamente se admiten caracteres">
												</div>
											</div>


											<div class="col-lg-3">
												<div class="form-group">
													<label class="control-label">Segundo Apellido</label>
													<input type="text" class="form-control" name="SegundoApellido" placeholder="Digite Segundo Apellido" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,25}" required="required" minlength="3" maxlength="15" title="Solamente se admiten caracteres">
												</div>
											</div>

										</div>
										<br>
										<div class="row">

											<div class="col-lg-4">
												<div class="form-group">
													<label class="control-label">Sexo</label>
													<select class="form-control" name="Sexo" required="required">
														<option>Seleccione el Sexo</option>
														<option value="M">M</option>
														<option value="F">F</option>
													</select>
												</div>
											</div>
											<div class="col-lg-4">
												<div class="form-group">
													<label class="control-label">Fecha de Nacimiento</label>
													<input class="form-control" type="date" name="FechaNacimiento" placeholder="*Ingrese Fecha de nacimiento" required="required">
												</div>
											</div>
											<div class="col-lg-4">
												<div class="form-group">
													<label class="control-label">Celular</label>
													<input type="text" class="form-control" name="Celular" placeholder="Digite el Celular" minlength="10" maxlength="10" pattern="[0-9]{1,10}" title="Solamente se admiten números" required="required">
												</div>
											</div>

										</div>
										<br>
										<div class="row">

											<div class="col-lg-4">
												<div class="form-group">
													<label class="control-label">Correo electrónico</label>
													<input class="form-control" type="email" name="Correo" placeholder="Digite el Correo electrónico" required="required">
												</div>
											</div>
											<div class="col-lg-4">
												<div class="form-group">
													<label class="control-label">Dirección de domicilio</label>
													<input type="text" class="form-control" name="Direccion" placeholder="Digite la Dirección" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ#/°- ]{1,60}" required="required" minlength="12" maxlength="50">
												</div>
											</div>
											<div class="col-lg-4">
												<div class="form-group">
													<label class="control-label">Tipo de Identificación</label>
													<select class="form-control" name="TipoIdentificacion" required="required">
														<option>Seleccione el tipo de identificación</option>
														<option value="Cedula de Ciudadania">Cedula de Ciudadania</option>
														<option value="Tarjeta de Identidad">Tarjeta de Identidad</option>
														<option value="Cedula de Extranjeria">Cedula de Extranjeria</option>
														<option value="Per Especial Permanencia">Per Especial Permanencia</option>


													</select>
												</div>
											</div>

										</div>
										<br>
										<div class="modal-footer">
											<button type="submit" name="insertacliente" class="btn btn-success"><i class="fa fa-fw fa-lg fa-check-circle"></i>Registrar
											</button>

											<button type="button" id="btnLimpiar" class="btn btn-danger"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancelar
											</button>

										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
		</main>
		<?php require_once('V_Footer_Dev.php') ?>
	</div>
	</div>
	<?php require_once('C_Scripts.php') ?>
</body>

</html>