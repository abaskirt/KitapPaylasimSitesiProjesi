<?php
	require_once('common.php');
	session_start();
	if(!isset($_SESSION['userId'])){
		header("location:index.php");
	}
	$tpl->display('userheader');
	$tpl->display('left');
	$tpl->display('share');
	
	$tpl->display('right');
	$tpl->display('footer');
?>