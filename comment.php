<?php
		
		require_once('common.php');
		
		$comment=array();
		foreach($db->query("SELECT * FROM comments as c, shares as s, users as u
                           	WHERE c.commentType='shares' AND c.checkComment=s.shareId AND c.userId = u.userId
      							ORDER BY c.ctime desc") as $row){
									
		$comment []=array(
		'commentId' => $row['commentId'],
		'userId' => $row['userId'],
		'avatar' => $row['avatar'],
		'name' => $row['name'],
		'surname' => $row['surname'],
		'commentType' => $row['commentType'],
		'cdata' => $row['cdata'],
		'checkComment' => $row['checkComment'],
		'ctime' => $row['ctime']);
		}
		foreach($db->query("SELECT * FROM comments as c,likes as l, users as u
                           	WHERE c.commentType='likes' AND l.likeType=0 AND l.likeId=c.checkComment  AND c.userId = u.userId
      							ORDER BY c.ctime desc") as $row){
									
		$comment []=array(
		'commentId' => $row['commentId'],
		'userId' => $row['userId'],
		'avatar' => $row['avatar'],
		'name' => $row['name'],
		'surname' => $row['surname'],
		'commentType' => $row['commentType'],
		'cdata' => $row['cdata'],
		'checkComment' => $row['checkComment'],
		'ctime' => $row['ctime']);
		}
		foreach($db->query("SELECT * FROM comments as c,likes as l, users as u
                           	WHERE c.commentType='likes' AND l.likeType=1 AND l.likeId=c.checkComment AND c.userId = u.userId
      							ORDER BY c.ctime desc") as $row){
									
		$comment []=array(
		'commentId' => $row['commentId'],
		'userId' => $row['userId'],
		'avatar' => $row['avatar'],
		'name' => $row['name'],
		'surname' => $row['surname'],
		'commentType' => $row['commentType'],
		'cdata' => $row['cdata'],
		'checkComment' => $row['checkComment'],
		'ctime' => $row['ctime']);
		}
		foreach($db->query("SELECT * FROM comments as c,likes as l, users as u
                           	WHERE c.commentType='likes' AND l.likeType=2 AND l.likeId=c.checkComment AND c.userId = u.userId
      							ORDER BY c.ctime desc") as $row){
									
		$comment []=array(
		'commentId' => $row['commentId'],
		'userId' => $row['userId'],
		'avatar' => $row['avatar'],
		'name' => $row['name'],
		'surname' => $row['surname'],
		'commentType' => $row['commentType'],
		'cdata' => $row['cdata'],
		'checkComment' => $row['checkComment'],
		'ctime' => $row['ctime']);
		}
		foreach($db->query("SELECT * FROM comments as c,quatations as q, users as u
                           	WHERE c.commentType='quatations' AND q.quatationId=c.checkComment AND c.userId = u.userId
      							ORDER BY c.ctime desc") as $row){
									
		$comment []=array(
		'commentId' => $row['commentId'],
		'userId' => $row['userId'],
		'avatar' => $row['avatar'],
		'name' => $row['name'],
		'surname' => $row['surname'],
		'commentType' => $row['commentType'],
		'cdata' => $row['cdata'],
		'checkComment' => $row['checkComment'],
		'ctime' => $row['ctime']);
		}
		foreach($db->query("SELECT * FROM comments as c,sharebook as s, users as u
                           	WHERE c.commentType='sharebook' AND s.sharebookId=c.checkComment AND c.userId = u.userId
      							ORDER BY c.ctime desc") as $row){
									
		$comment []=array(
		'commentId' => $row['commentId'],
		'userId' => $row['userId'],
		'avatar' => $row['avatar'],
		'name' => $row['name'],
		'surname' => $row['surname'],
		'commentType' => $row['commentType'],
		'cdata' => $row['cdata'],
		'checkComment' => $row['checkComment'],
		'ctime' => $row['ctime']);
		}
		echo json_encode($comment);
		
		
?>