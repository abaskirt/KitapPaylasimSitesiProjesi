<?php
	require_once('common.php');
	session_start();
	$id=$_SESSION['profile'];
	$send=array();
	foreach($db->query("SELECT * FROM likes as l,users as u,authors as a
                           	WHERE l.userId='$id' AND l.userId=u.userId AND l.likeType=0 AND l.checkId=a.authorId
      							ORDER BY time desc LIMIT 0,10") as $row){
									
		if(!isset($send[$row['time']]))
			$send[$row['time']]=array();					
		if(!isset($send[$row['time']]['likes']))
			$send[$row['time']]['likes']=array();
		if(!isset($send[$row['time']]['likes'][$row['userId']]))
			$send[$row['time']]['likes'][$row['userId']]=array();
		
		$send [$row['time']]['likes'][$row['userId']]=array(
'userId' => $row['userId'],
'likeId' => $row['likeId'],	
'authorId' => $row['authorId'],		
'name' => $row['name'],
'surname' => $row['surname'],
'authorName' => $row['authorName'],
'authorSurname' => $row['authorSurname'],
'likeType' => $row['likeType'],
'avatar' => $row['avatar'],
'time' => $row['time']);
		}
		
	//likeType=1 se kitap be�enidir
	foreach($db->query("SELECT * FROM likes as l,users as u,books as b
                           	WHERE l.userId='$id' AND l.userId=u.userId AND l.likeType=1 AND l.checkId=b.bookId
      							ORDER BY time desc LIMIT 0,10") as $row){
									
		if(!isset($send[$row['time']]))
			$send[$row['time']]=array();					
		if(!isset($send[$row['time']]['likes']))
			$send[$row['time']]['likes']=array();
		if(!isset($send[$row['time']]['likes'][$row['userId']]))
			$send[$row['time']]['likes'][$row['userId']]=array();
		
		$send [$row['time']]['likes'][$row['userId']]=array(
'userId' => $row['userId'],
'likeId' => $row['likeId'],	
'bookId' => $row['bookId'],	
'name' => $row['name'],
'surname' => $row['surname'],
'bookName' => $row['bookName'],
'avatar' => $row['avatar'],
'likeType' => $row['likeType'],
'time' => $row['time']);
		}
	//likeType=2 se kitap yay�nevidir
	foreach($db->query("SELECT * FROM likes as l,users as u,publishers as p
                           	WHERE l.userId='$id' AND l.userId=u.userId AND l.likeType=2 AND l.checkId=p.publisherId
      							ORDER BY time desc LIMIT 0,10") as $row){
									
		if(!isset($send[$row['time']]))
			$send[$row['time']]=array();					
		if(!isset($send[$row['time']]['likes']))
			$send[$row['time']]['likes']=array();
		if(!isset($send[$row['time']]['likes'][$row['userId']]))
			$send[$row['time']]['likes'][$row['userId']]=array();
		
		$send [$row['time']]['likes'][$row['userId']]=array(
'userId' => $row['userId'],
'likeId' => $row['likeId'],
'publisherId' => $row['publisherId'],		
'name' => $row['name'],
'surname' => $row['surname'],
'publisherName' => $row['publisherName'],
'avatar' => $row['avatar'],
'likeType' => $row['likeType'],
'time' => $row['time']);
		}
		krsort($send,1);
	
	$cntr=0;
	$returnAr=array();
	foreach($send as $time=>$actions){
		foreach($actions as $actiontype=>$userActions){
			foreach($userActions as $userid=>$action){
				$returnAr[$cntr]=$action;
				$returnAr[$cntr]['actiontype']=$actiontype;
				$cntr++;
				if($cntr==40){
					//print_r($returnAr);
					echo json_encode($returnAr);
					exit;
				}
			}
		}
		
	}
	
	echo json_encode($returnAr);
	
?>