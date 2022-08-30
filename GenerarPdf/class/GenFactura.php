<?php
require_once 'ConexionDB.php';
class facturapdf extends ConexionDB {

    public $mysqli;
    public $data;

    public function __construct() {
        $this->mysqli = parent::conectar();
        $this->data = array();
    }

    public function facturapdf(){
        $resultado = $this->mysqli->query("SELECT * FROM facturas");

        while( $fila = $resultado->fetch_assoc() ){
            $data[] = $fila;
        }

        if (isset($data)) {
            return $data; 
        } 
        
    }

    public function ClienteIdentificacion($id){

        $consulta = sprintf("SELECT
            *
            FROM
            facturas
            WHERE
            CodigoFactura = %s", 
            parent::comillas_inteligentes($id)
        );

        $resultado = $this->mysqli->query($consulta);
        $fila = $resultado->fetch_array();
        return $fila;
    }

}