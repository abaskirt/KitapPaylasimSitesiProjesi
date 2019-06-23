<?php
require_once('common.php');
$authorId = trim(strip_tags($_POST['authorId']));
foreach($db->query("SELECT * FROM books WHERE authorId = $authorId ORDER BY bookName ") as $row)
	{
	$send [] = array('bookId' => $row['bookId'],'bookName' => $row['bookName']);
	}
echo json_encode($send);
?>