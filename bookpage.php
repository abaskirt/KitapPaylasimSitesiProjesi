<?php
	require_once('common.php');
	session_start();
	$id=$_GET["bId"];
	$_SESSION['kitapci']=$id;
	if(!isset($_SESSION['userId'])){
		header("location:index.php");
	}
	$tpl->display('userheader');
	$tpl->display('bookleft');
	$tpl->display('bookmiddle');
	
	$tpl->display('bookright');
	$tpl->display('footer');
	
	
?>