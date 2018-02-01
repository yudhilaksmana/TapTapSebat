<?php

	if($_SERVER['REQUEST_METHOD']=='POST') {
		$hwid = $_POST['hwid'];
		$lat = $_POST['lat'];
		$lng = $_POST['lng'];
		$waktu = $_POST['waktu'];
		$id_rokok = $_POST['id_rokok'];

		$query = "INSERT INTO perokok (hwid, lat, lng, waktu, id_rokok) VALUES ('$hwid','$lat','$lng','$waktu','$id_rokok')";

		require_once('koneksi.php');

		if(mysqli_query($con,$query)) {
			echo 'Input Berhasil';
		} else {

			echo 'Input Gagal : '.mysqli_error($con);
		}

		mysqli_close($con);
	}

?>