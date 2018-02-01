<?php

	require_once('koneksi.php');

	$query = "SELECT * FROM perokok";
	$r = mysqli_query($con,$sql);
	$result = array();

	while($row = mysqli_fetch_array($r)) {
		array_push($result array(
			"id_rokok" => $row['id_rokok'];
			"waktu" => $row['waktu'];
			"lat" => $row['lat'];
			"lng" => $row['lng'];
			"id_perokok" => $row['id_perokok'];
			"hwid" => $row['hwid'];
		));
	}

	echo json_encode(array('result' => $result));
	mysqli_close($con);
?>