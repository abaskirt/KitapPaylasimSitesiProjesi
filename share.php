<?php
require_once('common.php');
session_start();
    $sdata = trim(strip_tags($_POST['sdata']));
    $time =time();
            
            $db->insert("shares",array(
				"userId"=>$_SESSION["userId"],
                "time" => $time,
                "sdata" => $sdata
                ));
			echo "Gönderiniz paylaşıldı";
?>