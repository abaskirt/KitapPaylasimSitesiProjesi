<?php
require_once('common.php');
session_start();
	$bookId = trim(strip_tags($_POST['bookId']));
	$verilen = trim(strip_tags($_POST['verilen']));
	$userId=$_SESSION['userId'];
	$time=time();
	
	
	
	if($db->row_count("SELECT * from point where userId='$userId' and pointId='$bookId' and pointType=0"))
	{
		$db->query("update point set point='$verilen' where pointId='$bookId' and userId='$userId'");
		
	}
	else
	{
		$db->insert("point",array(
		"pointId"=>$bookId,
		"pointType"=>0,
		"userId"=>$userId,
		"point"=>$verilen,
		"time"=>$time
		));
	}
	if($db->row_count("SELECT * from point where pointId='$bookId' and pointType=0"))
	{
	$ortOBJ=$db->fetch_row_assoc("SELECT AVG(point) FROM point where pointType=0 and pointId='$bookId'");
	$ort=number_format($ortOBJ['AVG(point)'],1);
	}
	else{
		$ort=0;
	}
	$db->query("update books set bookPoint='$ort' where bookId='$bookId'");
	
	
	print_r($ort);
	//"update point set point='$verilen' where pointId='$bookId'"
	
	/*
	
	
	$where = array(
    'bookId' => $bookId
	);
	$values = array(
    'bookPoint'=>$verilen
	);
	$db->where($where);
	$db->update('books', $values);*/
?>