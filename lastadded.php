<?php


	require_once('common.php');
	
	foreach($db->query("SELECT * FROM books as b,authors as a where b.authorId=a.authorId ORDER BY bookId desc LIMIT 5 ") as $row)
	{
	$send [] = array('bookId' => $row['bookId'],'bookName' => $row['bookName'],'frontcoverphoto' => $row['frontcoverphoto'],'bookPoint' => $row['bookPoint'],'authorName' => $row['authorName'],'authorSurname' => $row['authorSurname']);

	}
    $data =json_encode($send);
	echo($data);
	?>