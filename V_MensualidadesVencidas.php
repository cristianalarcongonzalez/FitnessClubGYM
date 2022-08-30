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