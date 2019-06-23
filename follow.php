<?php
require_once('common.php');
session_start();
    $userId=$_SESSION["userId"];
    $followId = trim(strip_tags($_POST['followId']));
    
	
    $degisken = 0;
    
    $followers = ",".$followId;
    $folOBJ=$db->fetch_row_assoc("SELECT followers FROM users where userId=$userId");
    $followerlist = explode(",",$folOBJ['followers']);
    foreach($followerlist as $row){
        if($row == $followId ||$row == $userId){
            $degisken = 1;
        }
    }
	$fol=$folOBJ['followers'].$followers;
    if($degisken == 0){
    $db->query("update users set followers='$fol' where userId='$userId'");
    }
?>