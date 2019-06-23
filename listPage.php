<?php
	require_once('common.php');
	session_start();
	
	$tpl->display('userheader');
	$tpl->display('profileleft');
	$tpl->display('listPage');
	$tpl->display('footer');
?>