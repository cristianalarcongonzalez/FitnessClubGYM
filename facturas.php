<?php
require_once 'conexionfactura.php';
class Facturas extends Conexionfactura {

    public $mysqli;
    public $data;
    public function __construct() {
        $this->mysqli = parent::conectar();
        $this->data = array();
    }
    public function Factura(){
        $resultado = $this->mysqli->query("SELECT * FROM facturas");
        while( $fila = $resultado->fetch_assoc() ){
            $data[] = $fila;
        }
        if (isset($data)) {
            return $data; 
        } 
    }
    public function facturasid($CodigoFactura){
        $consulta = sprintf("SELECT
            *
            FROM
            facturas
            WHERE
            CodigoFactura = %s", 
            parent::comillas_inteligentes($CodigoFactura)
        );
        $resultado = $this->mysqli->query($consulta);
        $fila = $resultado->fetch_array();
        return $fila;
    }
}
