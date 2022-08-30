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