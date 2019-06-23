<?php
require_once('common.php');
session_start();
$id=$_SESSION['yayinevi'];
foreach($db->query("select * from publishers WHERE publisherId='$id'") as $row){
						
					$data [] = array('publisherAvatar' => $row['publisherAvatar'],
						'publisherId' => $row['publisherId'],
						'publisherName' => $row['publisherName'],
						'establish' => $row['establish'],//kuruluş yılı
						'address' => $row['address'],
						'bookCategory' => $row['bookCategory'],
                        'about' => $row['about']);
					}				
$data = json_encode($data);
echo $data;
?>