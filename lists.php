<?php	
require_once('common.php');
	//listType 0 olursa normal liste
	session_start();
	$userId=$_SESSION["userId"];
	foreach($db->query("select * from lists where userId='$userId' AND listType='0'") as $row)
					{
						$send [] = array('listId' => $row['listId'],
						'listName' => $row['listName'],
						'startingDate' => $row['startingDate'],
						'listTag' => $row['listTag'],
						'finishingDate' => $row['finishingDate'],
						'userId' => $row['userId'],
						'books' => $row['books']);
					}
$data = json_encode($send);
echo $data;
?>