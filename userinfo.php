<?php
	require_once('common.php');
	session_start();
	$avatar=$_SESSION['avatar'];
	$name=$_SESSION['name'];
	$userName=$_SESSION['userName'];
	$surname=$_SESSION['surname'];
	
	$send []=array('avatar'=>$avatar,'name'=>$name,'surname' =>$surname,'userName'=>$userName);
	$data =json_encode($send);
	echo $data;
	
	
?>