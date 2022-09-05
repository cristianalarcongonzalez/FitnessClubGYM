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
$TipoSuscripcion = $result_tasks;
?>
<!DOCTYPE html>
<html lang="es">
<?php require_once('V_head.php');?>
<?php require_once('V_NavBar.php');?>
          <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid">
                            <h1 class="mt-4">Menu Principal</h1>
                            <div class="row">
                                   <?php require_once('V_Ingresos_Mensuales.php');?>
                                    <?php require_once('V_MensualidadesVencidas.php');?>
                                    <?php require_once('V_MensualidadesVencidasT.php');?>
                                    <?php require_once('V_TotalesRegistrados.php');?>
                                    </div>
                                </div>
                    
                    </div>
                   
                    
                   
             </main>
             <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; Creado por dev kbgeptupsi 2022</div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <?php require_once('C_Scripts.php');?>
</body>
</html>