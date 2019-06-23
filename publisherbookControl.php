<?php
require_once('common.php');
session_start();
$id=$_SESSION['yayinevi'];
foreach($db->query("select * from publishers as a, books as b WHERE a.publisherId='$id' AND b.publisherId = a.publisherId") as $row)
					{
						$data [] = array(
						'bookId' => $row['bookId'],
						'frontcoverphoto' => $row['frontcoverphoto']);
					}
					
$data = json_encode($data);
echo $data;
?>