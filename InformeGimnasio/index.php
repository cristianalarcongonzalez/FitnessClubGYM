<?php
require("class/Docente.php");
include "header.php";

$objdocente = new Docente();
$Docentes = $objdocente->Docentes();
if(sizeof($Docentes) > 0){
	?>
	<table id="clinica" class="display table table-bordered table-stripe" cellspacing="0" width="100%">
		<thead>
			<tr>
				<th>IDENTIFICACION</th>
				<th>PRIMER NOMBRE</th>
				<th>PRIMER APELLIDO</th>
				<th>CODIGO FACTURA</th>


				<th>HOJA DE VIDA</th>
			</tr>
		</thead>
		<tbody>
			<?php
			foreach ($Docentes as $row){
				?>
				<tr>
					<td><?php echo $row['Identificacion']; ?></td>
					<td><?php echo $row['PrimerNombre']; ?></td>
					<td><?php echo $row['PrimerApellido']; ?></td>
					<td><?php echo $row['CodigoFactura']; ?></td>
					<td>
						<a href="HojaVida.php?id=<?php echo $row['CodigoFactura'] ?>"><span class="glyphicon glyphicon-file" aria-hidden="true"></span> GENERAR FACTURA</a>
					</td>
				</tr>
				<?php
			}
			?>
		</tbody>
	</table>
	<?php
}else{
	echo "No hay resultados...";
}

include "footer.php";