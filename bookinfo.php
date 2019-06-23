<?php
	require_once('common.php');
	session_start();
	if(!isset($_SESSION['userId'])){
		header("location:index.php");
	}
	$id=$_SESSION['kitapci'];
	foreach($db->query("SELECT * FROM books as b,authors as a,publishers as p where b.bookId='$id' and a.authorId=b.authorId and p.publisherId=b.publisherId ") as $row){
	if(empty($row['firstDate'])){
		$firstDate=2013;
	}
	else{
		$firstDate=$row['firstDate'];
	}
	$send [] = array('bookId' => $row['bookId'],'bookName' => $row['bookName'],'frontcoverphoto' => $row['frontcoverphoto'],
					 'bookPoint' => $row['bookPoint'],'authorName' => $row['authorName'],
					 'authorId' => $row['authorId'],'publisherId' => $row['publisherId'],
					 'publisherName' => $row['publisherName'],'firstDate' => $firstDate,
					 'originalName' => $row['originalName'],'category' => $row['category'],
					 'size' => $row['size'],'pageNumber' => $row['pageNumber'],
					 'authorSurname' => $row['authorSurname'],'summary' => $row['summary']);
	}
	$data =json_encode($send);
	echo $data;
?>