<?php
	require_once('common.php');
	session_start();
	if(!isset($_SESSION["profile"]))
		$_SESSION["profile"]=$_SESSION["userId"];
	$userId=$_SESSION["profile"];

foreach($db->query("SELECT * FROM lists WHERE listType!=1 AND userId='$userId'") as $row){
   $send [] = array('listName' => $row['listName'],
   'listId' => $row['listId'],
   'startingDate' => $row['startingDate'],
   'finishingDate' => $row['finishingDate'],
   'books' => $row['books']);

}
	$data=json_encode($send);
	echo $data;
?>
