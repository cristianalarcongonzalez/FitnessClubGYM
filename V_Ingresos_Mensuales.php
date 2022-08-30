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