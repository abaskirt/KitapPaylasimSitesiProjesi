<?php


	require_once('common.php');
    foreach($db->query("SELECT * FROM books ORDER BY rand() LIMIT 5") as $row)
	{
	$send [] = array('bookName' => $row['bookName'],'frontcoverphoto' => $row['frontcoverphoto'],'bookPoint' => $row['bookPoint'],'bookId' => $row['bookId']);
	}
	
	$data =json_encode($send);
	echo $data;
?>