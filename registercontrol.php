<?php
require_once('common.php');
	
	$name = trim(strip_tags($_POST['name']));
	$surname = trim(strip_tags($_POST['surname']));
	$userName = trim(strip_tags($_POST['userName']));
	$mail = trim(strip_tags($_POST['mail']));
	$password = md5(trim(strip_tags($_POST['password'])));

		if($db->row_count("SELECT * FROM users WHERE userName = '$userName'")){
			echo "Bu kullanıcı adı kullanılıyor.";
		}elseif($db->row_count("SELECT * FROM users WHERE mail = '$mail'")){
			echo "Bu mail adresi kullanılıyor.";
		}else{
			$db->insert("users",array(
				"name" => $name,
				"surname" => $surname,
				"userName" => $userName,
				"mail" => $mail,
				"password" => $password
			));
			echo "Kullanıcı kayıt işleminiz başarılı.";
		}	
?>

