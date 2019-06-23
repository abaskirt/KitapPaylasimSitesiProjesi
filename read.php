<?php	
require_once('common.php');
//listType 1 olursa okuduklarım
	session_start();
	$userId=$_SESSION["userId"];
	foreach($db->query("select books from lists where userId='$userId' AND listType='1'") as $row)
					{
						$send [] = array('books' => $row['books']);
					}
					$book=$send[0]['books'];
	foreach($db->query("select * from books where bookId in($book)") as $row)
					{
						$give [] = array('bookName' => $row['bookName']);
					}
					
$data = json_encode($give);
echo $data;
?>