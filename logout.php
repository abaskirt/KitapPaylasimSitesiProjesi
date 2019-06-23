<?php

	require_once('common.php');
	session_start();
	session_destroy();
	header("location:index.php");
?>
	