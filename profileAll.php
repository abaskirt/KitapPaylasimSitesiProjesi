<?php
	require_once('common.php');
	session_start();
	
	
	$id=$_SESSION['profile'];
	$send=array();
	//takip�ilerin ve kendisine ait Yap�lan payla��mlar
	foreach($db->query("SELECT * FROM shares as s,users as u WHERE u.userId='$id' AND s.userId=u.userId
      							ORDER BY time desc LIMIT 0,10") as $row){
		
		if(!isset($send[$row['time']]))
			$send[$row['time']]=array();						
		if(!isset($send[$row['time']]['shares']))
			$send[$row['time']]['shares']=array();
		if(!isset($send[$row['time']]['shares'][$row['userId']]))
			$send[$row['time']]['shares'][$row['userId']]=array();
		
		$send [$row['time']]['shares'][$row['userId']]=array(
'userId' => $row['userId'],
'shareId' => $row['shareId'],
'name' => $row['name'],
'surname' => $row['surname'],
'avatar' => $row['avatar'],
'time' => $row['time'],
'sdata' => $row['sdata']);
        
		}
		
	
	//takip�ilerin ve kendisine ait Yap�lan yorumlar
	
	foreach($db->query("SELECT * FROM sharebook as s,books as b,users as u,authors as a,publishers as p WHERE u.userId='$id' AND s.bookId=b.bookId AND u.userId=s.userId AND b.authorId=a.authorId AND b.publisherId=p.publisherId
      							ORDER BY time desc LIMIT 0,10") as $row){
		if(!isset($send[$row['time']]))
			$send[$row['time']]=array();
		if(!isset($send[$row['time']]['sharebook']))
			$send[$row['time']]['sharebook']=array();
		if(!isset($send[$row['time']]['sharebook'][$row['userId']]))
			$send[$row['time']]['sharebook'][$row['userId']]=array();
		
		$send [$row['time']]['sharebook'][$row['userId']]=array(
'userId' => $row['userId'],
'sharebookId' => $row['sharebookId'],
'bookId' => $row['bookId'],
'authorName' => $row['authorName'],
'authorSurname' => $row['authorSurname'],
'name' => $row['name'],
'surname' => $row['surname'],
'avatar' => $row['avatar'],
'bookName' => $row['bookName'],
'bookPoint' => $row['bookPoint'],
'publisherName' => $row['publisherName'],
'frontcoverphoto' => $row['frontcoverphoto'],
'time' => $row['time']);
		}
		//takip�ilerin ve kendisine ait Yap�lan be�eniler
	//likeType=0 sa yazar be�enidir
	foreach($db->query("SELECT * FROM likes as l,users as u,authors as a
                           	WHERE u.userId='$id' AND l.userId=u.userId AND l.likeType=0 AND l.checkId=a.authorId
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
                           	WHERE u.userId='$id' AND l.userId=u.userId AND l.likeType=1 AND l.checkId=b.bookId
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
'name' => $row['name'],
'surname' => $row['surname'],
'bookName' => $row['bookName'],
'avatar' => $row['avatar'],
'likeType' => $row['likeType'],
'time' => $row['time']);
		}
	//likeType=2 se kitap yay�nevidir
	foreach($db->query("SELECT * FROM likes as l,users as u,publishers as p
                           	WHERE u.userId='$id' AND l.userId=u.userId AND l.likeType=2 AND l.checkId=p.publisherId
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
'name' => $row['name'],
'surname' => $row['surname'],
'publisherName' => $row['publisherName'],
'avatar' => $row['avatar'],
'likeType' => $row['likeType'],
'time' => $row['time']);
		}
		
		
		//takip�ilerin ve kendisine ait Yap�lan al�nt�lar
	
	foreach($db->query("SELECT * FROM quatations as q,books as b,users as u
                           	WHERE u.userId='$id' AND q.userId=u.userId AND q.bookId=b.bookId
      							ORDER BY time desc LIMIT 0,10") as $row){
									
		
		if(!isset($send[$row['time']]))
			$send[$row['time']]=array();
		if(!isset($send[$row['time']]['quatations']))
			$send[$row['time']]['quatations']=array();
		if(!isset($send[$row['time']]['quatations'][$row['userId']]))
			$send[$row['time']]['quatations'][$row['userId']]=array();
		
		$send [$row['time']]['quatations'][$row['userId']]=array(
'userId' => $row['userId'],
'quatationId' => $row['quatationId'],	
'name' => $row['name'],
'surname' => $row['surname'],
'avatar' => $row['avatar'],
'bookName' => $row['bookName'],
'frontcoverphoto' => $row['frontcoverphoto'],
'qdata' => $row['qdata'],
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