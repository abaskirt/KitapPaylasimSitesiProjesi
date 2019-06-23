<?php
require_once('common.php');
session_start();
    $checkId = trim(strip_tags($_POST['checkId']));
	$likeType = trim(strip_tags($_POST['likeType']));
    $time =time();
	$userId=$_SESSION['userId'];
	
			if($db->row_count("SELECT * FROM likes WHERE likeType = $likeType and userId='$userId' and checkId='$checkId'")){
				$db->query("DELETE FROM likes WHERE likeType = $likeType and userId='$userId' and checkId='$checkId'");
			echo "Kitap silindi";
			}
            else{
				$db->insert("likes",array(
				"userId"=>$userId,
                "time" => $time,
                "checkId" => $checkId,
				"likeType" => $likeType
                ));
			echo "Kitap paylaşıldı";
			}
?>