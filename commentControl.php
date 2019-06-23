<?php
require_once('common.php');
session_start();
	$cdata = trim(strip_tags($_POST['cdata']));
	$commentType = trim(strip_tags($_POST['commentType']));
	$ctime =time();
	$checkComment = trim(strip_tags($_POST['checkComment']));

			$db->insert("comments",array(
				"userId"=>$_SESSION["userId"],
				"cdata" => $cdata,
				"commentType" => $commentType,
				"ctime" => $ctime,
				"checkComment" => $checkComment
			));
			echo "yorum yapıldı";
		
?>