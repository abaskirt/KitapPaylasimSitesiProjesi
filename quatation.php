<?php
require_once('common.php');
session_start();
    $qdata = trim(strip_tags($_POST['qdata']));
    $bookId = trim(strip_tags($_POST['bookId']));
    $time =time();
            
            $db->insert("quatations",array(
				"userId"=>$_SESSION["userId"],
                "time" => $time,
                "qdata" => $qdata,
                "bookId" => $bookId
                ));
			echo "Gönderiniz paylaşıldı";
?>