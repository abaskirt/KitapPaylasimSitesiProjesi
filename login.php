<?php

	require_once('common.php');
	if ($_POST) {
        $userName = trim(strip_tags($_POST['userName']));
        $password  = md5(trim(strip_tags($_POST['password'])));
		$send = array();
				if($db->row_count("SELECT * FROM users WHERE userName= '$userName' AND password = '$password' "))
				{
					session_start();
					foreach($db->query("SELECT * FROM users where userName= '$userName' AND password = '$password' ") as $row)
					{
						$send [] = array('userId' => $row['userId'],'userName' => $row['userName'],'name' => $row['name'],'surname' => $row['surname'],'mail' => $row['mail']
										,'followers' => $row['followers'],'password' => $row['password'],'gender' => $row['gender'],'birthPlace' => $row['birthPlace']
										,'birthDate' => $row['birthDate'],'education' => $row['education'],'job' => $row['job'],'hobby' => $row['hobby'],'phobia' => $row['phobia']
										,'team' => $row['team'],'religion' => $row['religion'],'adress' => $row['adress'],'colour' => $row['colour'],'number' => $row['number']
										,'food' => $row['food'],'art' => $row['art'],'sport' => $row['sport'],'car' => $row['car'],'introduce' => $row['introduce'],'relitionship' => $row['relitionship']
										,'favoriteAuthor' => $row['favoriteAuthor'],'userType' => $row['userType'],'avatar' => $row['avatar']);
					}
					$userId=$send[0]['userId'];
					$userName=$send[0]['userName'];
					$name=$send[0]['name'];
					$surname=$send[0]['surname'];
					$mail=$send[0]['mail'];
					$followers=$send[0]['followers'];
					$password=$send[0]['password'];
					$gender=$send[0]['gender'];
					$birthPlace=$send[0]['birthPlace'];
					$birthDate=$send[0]['birthDate'];
					$education=$send[0]['education'];
					$job=$send[0]['job'];
					$hobby=$send[0]['hobby'];
					$phobia=$send[0]['phobia'];
					$team=$send[0]['team'];
					$religion=$send[0]['religion'];
					$adress=$send[0]['adress'];
					$colour=$send[0]['colour'];
					$number=$send[0]['number'];
					$food=$send[0]['food'];
					$art=$send[0]['art'];
					$sport=$send[0]['sport'];
					$car=$send[0]['car'];
					$introduce=$send[0]['introduce'];
					$relitionship=$send[0]['relitionship'];
					$favoriteAuthor=$send[0]['favoriteAuthor'];
					$userType=$send[0]['userType'];
					$avatar=$send[0]['avatar'];
					
					
					$_SESSION["userName"] = $userName;
					$_SESSION["userId"] = $userId;
					$_SESSION["name"]=$name;
					$_SESSION["surname"]=$surname;
					$_SESSION["mail"]=$mail;
					$_SESSION["followers"]=$followers;
					$_SESSION["password"]=$password;
					$_SESSION["gender"]=$gender;
					$_SESSION["birthPlace"]=$birthPlace;
					$_SESSION["birthDate"]=$birthDate;
					$_SESSION["education"]=$education;
					$_SESSION["job"]=$job;
					$_SESSION["hobby"]=$hobby;
					$_SESSION["phobia"]=$phobia;
					$_SESSION["team"]=$team;
					$_SESSION["religion"]=$religion;
					$_SESSION["adress"]=$adress;
					$_SESSION["colour"]=$colour;
					$_SESSION["number"]=$number;
					$_SESSION["food"]=$food;
					$_SESSION["art"]=$art;
					$_SESSION["sport"]=$sport;
					$_SESSION["car"]=$car;
					$_SESSION["introduce"]=$introduce;
					$_SESSION["relitionship"]=$relitionship;
					$_SESSION["favoriteAuthor"]=$favoriteAuthor;
					$_SESSION["userType"]=$userType;
					$_SESSION["avatar"]=$avatar;
					
					
					echo "<SCRIPT type='text/javascript'> 
						alert('Hoşgeldin $userName');
						window.location.replace(\"http:main.php\");
						</SCRIPT>";
					
				}
				else
				{
						echo "<SCRIPT type='text/javascript'> 
						alert('Kullanıcı Adı veya Şifre Yanlış');
						window.location.replace(\"http:index.php\");
						</SCRIPT>";
                }
	}
	else{
		header("location:index.php");
	}
	$tpl->display('header');
	$tpl->display('menu');
	$tpl->display('home');
	$tpl->display('footer');
?>