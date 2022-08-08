<?php

session_start();
require 'conexion.php';


if (!isset($_SESSION['Identificacion'])) {
    header("Location: index.php");
}

$Usuario = $_SESSION['Usuario'];


$query = "SELECT SUM(Total) FROM facturas"; 
$result_tasks = mysqli_query($mysqli, $query);
$Cantidad = $result_tasks;





?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Menu Principal</title>
    <link href="css/styles.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <a class="navbar-brand" href="principal.php">Control Gym</a><button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
        <ul class="navbar-nav ml-auto mr-0 mr-md-3 my-2 my-md-0">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $Usuario; ?><i class="fas fa-user fa-fw"></i></a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                    <a class="dropdown-item" href="#">Configuración</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="logout.php">Salir</a>
                </div>
            </li>
        </ul>
    </nav>
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <a class="nav-link" href="principal.php">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Menu Principal
                        </a>
                        <div class="sb-sidenav-menu-heading">Interfaz Principal</div>

                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                            <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                            Gestión Gimnasio
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">Area Clientes
                                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="GestionCliente.php">Registro de Clientes</a></nav>
                                    </div>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="ConsultarClientes.php">Consulta de clientes</a></nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">Area Contable
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>
                                        <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                            <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="ConsultarFacturas.php">Consulta de facturas</a></nav>
                                        </div>
                                    </nav>
                                </div>

                            </div>
                        </div>
                        <div class="sb-sidenav-footer">
                            <div class="small">Estas en:</div>
                            Menu Principal
                        </div>
                    </nav>
                </div>
                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid">
                            <h1 class="mt-4">Menu Principal</h1>

                            <div class="row">
                                <div class="col-xl-3 col-md-3">
                                    <div class="card bg-success text-white mb-3">
                                        <div class="card-body"><b>INGRESOS GENERALES DEL GIMNASIO: </b><?php

                                        $query = "SELECT SUM(Total) as Total FROM facturas"; 


                                        $result_tasks = mysqli_query($mysqli, $query);

                                        while ($row = mysqli_fetch_assoc($result_tasks)) { ?>
                                            <?php echo $row['Total']; ?>

                                            <?php } ?></div>
                                            <div class="card-footer d-flex align-items-center justify-content-between">
                                                <a class="small text-white stretched-link" href="Principal.php">Clic aqui para mas detalles</a>
                                                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-3">
                                        <div class="card bg-primary text-white mb-3">
                                            <div class="card-body"><b>CLIENTES TOTALES REGISTRADOS: </b>
                                                <?php
                                                $query = "SELECT Count(Id) as Id FROM clientes"; 


                                                $result_tasks = mysqli_query($mysqli, $query);

                                                while ($row = mysqli_fetch_assoc($result_tasks)) { ?>
                                                  <?php echo $row['Id']; ?>
                                              <?php } ?>
                                          </div>
                                          <div class="card-footer d-flex align-items-center justify-content-between">
                                            <a class="small text-white stretched-link" href="ConsultarClientes.php">Clic aqui para mas detalles</a>
                                            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-3 col-md-3">
                                    <div class="card bg-warning text-white mb-3">
                                        <div class="card-body"><b>MENSUALIDADES VENCIDAS EN EL GIMNASIO HOY: </b>
                                          <?php
                                          $query = "SELECT Count(CodigoFactura) as CodigoFactura FROM facturas WHERE DATE(FechaFin)=CURDATE()"; 
                                          $result_tasks = mysqli_query($mysqli, $query);
                                          while ($row = mysqli_fetch_assoc($result_tasks)) { ?>
                                              <?php echo $row['CodigoFactura']; ?>
                                          <?php } ?>
                                      </div>
                                      <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="MensualidadVencidaHoy.php">Clic aqui para mas detalles</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-md-3">
                                <div class="card bg-danger text-white mb-3">
                                    <div class="card-body"><b>MENSUALIDADES TOTALES VENCIDAS: </b>
                                        <?php
                                        $query = "SELECT Count(CodigoFactura) as CodigoFactura FROM facturas WHERE DATE(FechaFin)<=CURDATE()"; 
                                        $result_tasks = mysqli_query($mysqli, $query);
                                        while ($row = mysqli_fetch_assoc($result_tasks)) { ?>
                                          <?php echo $row['CodigoFactura']; ?>
                                      <?php } ?>
                                  </div>
                                  <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="MensualidadVencidaTotal.php">Clic aqui para mas detalles</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>





                    </div>
                    <div class="row">
                        <div class="col-xl-6">
                            <div class="card mb-4">
                                <img src="gym3.png" width="540" height="280">        
                            </div>
                        </div>
                        <div class="col-xl-6">
                            <div class="card mb-4">
                             <img src="gym1.jpg" width="540" height="280">   
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/chart-area-demo.js"></script>
    <script src="assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/datatables-demo.js"></script>
</body>

</html>