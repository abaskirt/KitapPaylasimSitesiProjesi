<?php
require_once('common.php');
session_start();
$id=$_SESSION['yazar'];
foreach($db->query("select * from authors WHERE authorId='$id'") as $row){
						
					$data [] = array('authoravatar' => $row['authoravatar'],
						'authorId' => $row['authorId'],
						'authorName' => $row['authorName'],
						'authorSurname' => $row['authorSurname'],
						'birthDate' => $row['birthDate'],
						'deathDate' => $row['deathDate'],
                        'prize' => $row['prize'],
						'biography' => $row['biography'],
						'deathDate' => $row['deathDate'],
						'authorPoint' => $row['authorPoint']);
					}				
$data = json_encode($data);

echo $data;
?>