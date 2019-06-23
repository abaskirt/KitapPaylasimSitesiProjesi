<?php
	require_once('common.php');
	session_start();
	$id=$_GET["pId"];
	$_SESSION['profile']=$id;
	if(!isset($_SESSION['userId'])){
		header("location:index.php");
	}
	$tpl->display('userheader');
	$tpl->display('profileleft');
	$tpl->display('profilemiddle');
	
	$tpl->display('right');
	$tpl->display('footer');
?>