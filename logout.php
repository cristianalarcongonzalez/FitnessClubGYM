<?php
  echo '<script language="javascript">alert("Se cerro la sesion");</script>';
	session_start();
	session_destroy();
	header("Location: index.php");
?>