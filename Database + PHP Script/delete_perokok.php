<?php

	$id = $_GET['id_perokok'];
	require_once('koneksi.php');

	$query = "DELETE FROM perokok where id_perokok = $id";

	if(mysqli_query($con,$query)) {
		echo 'Berhasil Hapus';
	} else {
		echo 'Gagal Hapus';
	}

	mysqli_close($con);
?>