<?php
    $server_name = "localhost";
	$mysql_username = "doyb1351_ttsadm";
	$mysql_password = "Do4ibumanjur!";
	$db_name = "doyb1351_TTS";

	$con = mysqli_connect($server_name,$mysql_username,$mysql_password,$db_name);

	if (!$con) {
        die("Connection failed: " . mysqli_connect_error());
    } 
?>