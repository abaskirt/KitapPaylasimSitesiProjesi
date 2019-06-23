<?php
require_once('common.php');
$send = array();
$userobj= $db->fetch_row_assoc("select count(*) from users"); 
	$user= $userobj['count(*)'];

$bookobj= $db->fetch_row_assoc("select count(*) from books"); 
	$book= $bookobj['count(*)'];
	
$authorobj= $db->fetch_row_assoc("select count(*) from authors"); 
	$author= $authorobj['count(*)'];	
	
$publisherobj= $db->fetch_row_assoc("select count(*) from publishers"); 
	$publisher= $publisherobj['count(*)'];	
	
	$veriler = array('user' => $user,'book' => $book, 'author' => $author, 'publisher'=>$publisher);
	$send = array($veriler);
	$data = json_encode($send);
	echo $data;
?>




