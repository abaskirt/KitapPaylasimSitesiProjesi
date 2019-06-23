<?php
require_once('common.php');
session_start();
$id=$_SESSION['yazar'];
foreach($db->query("select * from authors as a, books as b WHERE a.authorId='$id' AND b.authorId = a.authorId") as $row)
					{
						$send [] = array(
						'bookId' => $row['bookId'],
						'authorId' => $row['authorId'],
						'frontcoverphoto' => $row['frontcoverphoto']);
					}
					
$send = json_encode($send);
echo $send;
?>