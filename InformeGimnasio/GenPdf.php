<?php
require('fpdf/fpdf.php');
require("class/Docente.php");


//pdf
class PDF extends FPDF{
	var $widths;
	var $aligns;

	function SetWidths($w)
	{

		$this->widths=$w;
	}

	function SetAligns($a)
	{

		$this->aligns=$a;
	}

	function Row($data)
	{

		$nb=0;
		for($i=0;$i<count($data);$i++)
			$nb=max($nb,$this->NbLines($this->widths[$i],$data[$i]));
		$h=8*$nb;

		$this->CheckPageBreak($h);

		for($i=0;$i<count($data);$i++)
		{
			$w=$this->widths[$i];
			$a=isset($this->aligns[$i]) ? $this->aligns[$i] : 'L';

			$x=$this->GetX();
			$y=$this->GetY();


			$this->Rect($x,$y,$w,$h);

			$this->MultiCell($w,8,$data[$i],0,$a,'true');

			$this->SetXY($x+$w,$y);
		}

		$this->Ln($h);
	}

	function CheckPageBreak($h)
	{

		if($this->GetY()+$h>$this->PageBreakTrigger)
			$this->AddPage($this->CurOrientation);
	}

	function NbLines($w,$txt)
	{

		$cw=&$this->CurrentFont['cw'];
		if($w==0)
			$w=$this->w-$this->rMargin-$this->x;
		$wmax=($w-2*$this->cMargin)*1000/$this->FontSize;
		$s=str_replace("\r",'',$txt);
		$nb=strlen($s);
		if($nb>0 and $s[$nb-1]=="\n")
			$nb--;
		$sep=-1;
		$i=0;
		$j=0;
		$l=0;
		$nl=1;
		while($i<$nb)
		{
			$c=$s[$i];
			if($c=="\n")
			{
				$i++;
				$sep=-1;
				$j=$i;
				$l=0;
				$nl++;
				continue;
			}
			if($c==' ')
				$sep=$i;
			$l+=$cw[$c];
			if($l>$wmax)
			{
				if($sep==-1)
				{
					if($i==$j)
						$i++;
				}
				else
					$i=$sep+1;
				$sep=-1;
				$j=$i;
				$l=0;
				$nl++;
			}
			else
				$i++;
		}
		return $nl;
	}

	//header
	function Header(){
		

		$this->SetFont('Helvetica','B',60);
		$this->SetTextColor(181,67,47,25); 
		$this->Cell(0,15,'GYM',0,1,'C');
		$this->SetFont('Helvetica','B',18);
		$this->SetTextColor(25,51,112,25); 
		$this->Cell(0,15,'FITNESS CLUB',0,1,'C');
		$this->SetFont('Helvetica','B',18);
		$this->SetTextColor(25,51,112,25); 
		$this->Cell(0,1,'24/7',0,1,'C');
		
		
		$this->Ln(10);
		parent::Header();
	}


	// footer
	function Footer(){
		$this->SetY(-14);
		$this->SetFont('Arial','B',10);
		$this->Cell(100,11,'Designed Twitter @kbgeptupsi',2,1,'L');
	}




	//cargar datos tabla
	// Cargar los datos
function LoadData($file)
{
    // Leer las líneas del fichero
    $lines = file($file);
    $data = array();
    foreach($lines as $line)
        $data[] = explode(';',trim($line));
    return $data;
}
	//tabla

	function FancyTable($header, $data){
    // Colores, ancho de línea y fuente en negrita
    $this->SetFillColor(255,0,0);
    $this->SetTextColor(255);
    $this->SetDrawColor(128,0,0);
    $this->SetLineWidth(.3);
    $this->SetFont('','B');
    // Cabecera
    $w = array(40, 35, 45, 40);
    for($i=0;$i<count($header);$i++)
        $this->Cell($w[$i],7,$header[$i],1,0,'C',true);
    $this->Ln();
    // Restauración de colores y fuentes
    $this->SetFillColor(224,235,255);
    $this->SetTextColor(0);
    $this->SetFont('');
    // Datos
    $fill = false;
    foreach($data as $row)
    {
        $this->Cell($w[0],6,$row[0],'LR',0,'L',$fill);
        $this->Cell($w[1],6,$row[1],'LR',0,'L',$fill);
        $this->Cell($w[2],6,number_format($row[2]),'LR',0,'R',$fill);
        $this->Cell($w[3],6,number_format($row[3]),'LR',0,'R',$fill);
        $this->Ln();
        $fill = !$fill;
    }
    // Línea de cierre
    $this->Cell(array_sum($w),0,'','T');
}
	
}


//$link = mysqli_connect('localhost','root','','bdfitnessclubgym');
$CodigoFactura= $_GET['id'];
$objdocente = new Docente();
$docente = $objdocente->DocenteIdentificacion($CodigoFactura);
$pdf=new Pdf();

$pdf->AddPage();
$pdf->SetMargins(20,20,20);
$pdf->Image('logogym.png',1,1,-200);
$pdf->Image('qr.jpg',170,8,-150);
$pdf->Ln(5);
$pdf->SetFont('Arial','',12);
//datos
$pdf->SetFont('Arial','B',18);
$pdf->SetFillColor('25','25','22');

$pdf->SetLineWidth(1);
$pdf->SetDrawColor('0','0','55');
$pdf->SetFillColor(2,2,2);
$pdf->SetTextColor('255','0','0');
$pdf->Cell(170,20,'                               FACTURA CLIENTE                         ',1,1);
$pdf->SetLineWidth(-1);
$pdf->SetTextColor('0','0','0');
$pdf->SetFont('Arial','',12);
$pdf->SetFillColor(33,222,22);
$pdf->Cell(35,10,'Codigo factura:   ',1,0);
$pdf->SetFillColor('25','25','22');
$pdf->Cell(0,10,$docente['CodigoFactura'],1,1);
$pdf->Cell(35,10,'Identificacion: ',1,0);
$pdf->Cell(0,10,$docente['Identificacion'],1,1);
$pdf->Cell(35,10,'Nombre: ',1,0);
$pdf->Cell(0,10,$docente['PrimerNombre'].' '.$docente['PrimerApellido'].' '.$docente['SegundoApellido'],1,1);
$pdf->Cell(35,10,'Sexo: ',1,0);
$pdf->Cell(0,10,$docente['Sexo'],1,1);
$pdf->Cell(35,10,'Suscripcion: ',1,0); 
$pdf->Cell(135,10,$docente['TipoSuscripcion'],1,1);
$pdf->Cell(35,10,'Cantidad: ',1,0); 
$pdf->Cell(0,10,$docente['Cantidad'],1,1);
$pdf->Cell(35,10,'Total: ',1,0); 
$pdf->Cell(0,10,$docente['Total'],1,1);
$pdf->Cell(35,10,'FechaRegistro: ',1,0); 
$pdf->Cell(0,10,$docente['FechaRegistro'],1,1);
$pdf->Cell(35,10,'Fecha Final: ',1,0); 
$pdf->Cell(0,10,$docente['FechaFin'],1,1);


//contactos

$pdf->Image('logobanco.png',100,180,-3000);
$pdf->Image('qrban.jpg',120,190,-1000);
$pdf->SetFont('Arial','B',14);
$pdf->Text(120,188,'Medio de pago Bancolombia','B',0,1); 
//whatapps
$pdf->SetFont('Arial','',12);
$pdf->Image('whatsapp.png',20,180,-10050);
$pdf->Text(32,188,'311 534 8928',0,1); 

//instagram
$pdf->Image('instagram2.png',20,195,-1300);
$pdf->Text(32,203,'@guzman_fitnessclub24_7',0,1); 

//ubicacion
$pdf->Image('google.png',10,198,-400);
$pdf->Text(32,220,'Cra 31 #18-17 Avenida los militares ',0,1); 

$pdf->Ln(10);



// seccion 


$pdf->Output('Formato.pdf','I');
?>