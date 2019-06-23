<?php
	require_once('common.php');
	session_start();
	$id=$_SESSION['profile'];
	
	foreach($db->query("SELECT * FROM users where userId='$id'") as $row)
	{
	$send [] = array('avatar' => $row['avatar'],'name' => $row['name'],'surname' => $row['surname'],'userName' => $row['userName'],'birthDate' => $row['birthDate']
	,'userName' => $row['userName'],'job' => $row['job'],'adress' => $row['adress']);
	}
	$data =json_encode($send);
	echo $data;
	
	
?>