<?php
require_once('common.php');
foreach($db->query("SELECT * FROM authors ORDER BY authorName ") as $row)
	{
	$send [] = array('authorId' => $row['authorId'],'authorName' => $row['authorName'],'authorSurname' => $row['authorSurname']);
	}
echo json_encode($send);
?>