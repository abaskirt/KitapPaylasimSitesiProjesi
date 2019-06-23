<?php
require_once('common.php');
session_start();
$id=$_SESSION['profile'];

		$folOBJ=$db->fetch_row_assoc("SELECT followers FROM users where userId=$id");
		$followerlist = explode(",",$folOBJ['followers']);
        foreach($followerlist as $folrow){
		foreach($db->query("SELECT * FROM users WHERE userId=$folrow") as $row){
		$send []=array(
		'userId' => $row['userId'],
		'avatar' => $row['avatar'],
		'name' => $row['name'],
		'surname' => $row['surname'],
		'userName' => $row['userName']
		);}
		}
		echo json_encode($send);
?>