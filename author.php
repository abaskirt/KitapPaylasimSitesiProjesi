<?php
	require_once('common.php');
	session_start();
	$id=$_GET["aId"];
	$_SESSION['yazar']=$id;
	if(!isset($_SESSION['userId'])){
		header("location:index.php");
	}
	$tpl->display('userheader');
	$tpl->display('author');
	$tpl->display('footer');	
	?>