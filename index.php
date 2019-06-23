<?php 

require_once('common.php');
session_start();
if(isset($_SESSION['userId']))
	{
		header("location:main.php");
	}
$tpl->display('header');
$tpl->display('menu');
$tpl->display('home');
$tpl->display('footer');

?>
