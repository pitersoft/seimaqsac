<?php
	
	include ("ctrl_admin/conexion/config.php");
	
	$ln = "http://seimaqsac.com/"."ingresar.php?id=".$_GET["id"];

	$sqlinsreg = "SELECT * FROM egresados WHERE link_conf='".$ln."'" ;
	$linkdocu->query($sqlinsreg);
  mysqli_close($linkdocu);

	echo $rspv->num_rows;


	
?>