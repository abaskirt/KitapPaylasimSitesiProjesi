<?php
	require_once('common.php');
	session_start();
	$id=$_SESSION['profile'];
	
	foreach($db->query("SELECT * FROM quatations as q,users as u,books as b where q.userId='$id' and q.userId=u.userId and q.bookId=b.bookId") as $row)
	{
	$send [] = array('avatar' => $row['avatar'],'name' => $row['name'],'surname' => $row['surname'],'userName' => $row['userName'],
					 'time' => $row['time'],'userId' => $row['userId'], 'bookId' => $row['bookId'],
					 'frontcoverphoto' => $row['frontcoverphoto'],'qdata' => $row['qdata'],
					 'bookName' => $row['bookName'],'quatationId' => $row['quatationId']);
	}
	$data =json_encode($send);
	echo $data;
	
	
?>