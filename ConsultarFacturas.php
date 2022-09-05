<?php
session_start();
require 'conexion.php';

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
	<title>Consultas</title>
	<link href="css/styles.css" rel="stylesheet" />
	<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
	<?php require_once('V_Nav.php'); ?>
	<div class="sb-sidenav-footer">
		<div class="small">Estas en:</div>
		Facturas
	</div>
	</nav>
	</div>
	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid">
				<h1 class="mt-5"> Generar Pdf</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item"><a href="principal.php">Menu Principal</a></li>
					<li class="breadcrumb-item active">Facturas</li>
				</ol>
				<div class="card mb-4">
					<div class="card-body">En esta sección podra encontrar información de las facturas registradas en el sistema.</div>
				</div>
				<form class="form-inline">
				
					<input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
					<?php $query = "SELECT * FROM facturas where $Identificacion = 'Identificacion'";?>
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>

				</form>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
							<thead>
								<tr>
									<th>Codigo</th>
									<th>Identificación</th>
									<th>Primer Nombre</th>
									<th>Primer Apellido</th>
									<th>Tipo de Suscripción</th>
									<th>SubTotal</th>
									<th>Cantidad</th>
									<th>Total</th>
									<th>Fecha de Inicio</th>
									<th>Fecha Finalización</th>
									<th>Facturar</th>
								</tr>
							</thead>
							<tbody>

								<?php
								$query = "SELECT * FROM facturas";
								$result_tasks = mysqli_query($mysqli, $query);

								while ($row = mysqli_fetch_assoc($result_tasks)) { ?>
									<tr>
										<td><?php echo $row['CodigoFactura']; ?></td>
										<td><?php echo $row['Identificacion']; ?></td>
										<td><?php echo $row['PrimerNombre']; ?></td>
										<td><?php echo $row['PrimerApellido']; ?></td>
										<td><?php echo $row['TipoSuscripcion']; ?></td>
										<td><?php echo $row['SubTotal']; ?></td>
										<td><?php echo $row['Cantidad']; ?></td>
										<td><?php echo $row['Total']; ?></td>
										<td><?php echo $row['FechaRegistro']; ?></td>
										<td><?php echo $row['FechaFin']; ?></td>
										<td>
											<a href="GenerarPdf/GenPdf.php?id=<?php echo $row['CodigoFactura'] ?>" class="btn btn-warning">
												<i class="fas fa-marker"></i>
											</a>
										</td>
									</tr>
								<?php } ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</main>
		<footer class="py-4 bg-light mt-auto">
			<div class="container-fluid">
				<div class="d-flex align-items-center justify-content-between small">
					<div class="text-muted">Copyright &copy; Creado por K&K 2022</div>
					<div>
						<a href="Politicas.php">Politicas de privacidad</a>
					</div>
				</div>
			</div>
		</footer>
	</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
	<script src="assets/demo/datatables-demo.js"></script>
</body>

</html>