
<?php

	require_once('common.php');
	session_start();
	
	if(!isset($_SESSION["profile"]))
		$_SESSION["profile"]=$_SESSION["userId"];
	$userId=$_SESSION["profile"];
	if(isset($_POST['listId'])){
		$listId = trim(strip_tags($_POST['listId']));
		$bookId=$db->fetch_row_assoc("SELECT books FROM lists where listId=$listId");
	}else{
		$bookId=$db->fetch_row_assoc("SELECT books FROM lists where listType=1 AND userId=$userId");
	}
	
	$sonuc = $bookId['books'];
	
	foreach($db->query("SELECT * FROM books as b WHERE b.bookId in ($sonuc)") as $row)
	{
	   $send [] = array('bookName' => $row['bookName'],
	   'bookId' => $row['bookId'],
	   'frontcoverphoto' => $row['frontcoverphoto'],
	   'bookPoint' => $row['bookPoint'],
	   'size' => $row['size']);
	}
	$data=json_encode($send);
		echo $data;
?>