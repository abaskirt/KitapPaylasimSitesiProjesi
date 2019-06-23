<?php	
require_once('common.php');
session_start();
	$userId=$_SESSION["userId"];
	foreach($db->query("select * from users where userId='$userId'") as $row)
					{
						$send [] = array('followers' => $row['followers']);
					}
					$followers=$send[0]["followers"];
					$followerlist=explode(",",$followers);				
$json = '{"followers"}';
$data = json_encode($send);
print_r($followerlist);
?>