<?php
require_once('common.php');
session_start();
    $bookId = trim(strip_tags($_POST['bookId']));
    $time =time();
            
            $db->insert("sharebook",array(
				"userId"=>$_SESSION["userId"],
                "time" => $time,
                "bookId" => $bookId
                ));
			echo "Kitap paylaşıldı";
?>