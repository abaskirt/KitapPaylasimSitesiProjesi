<?php
require_once('common.php');
		$comment=array();
		foreach($db->query("SELECT * FROM comments as c, books as b, users as u
                           	WHERE c.commentType='books' AND c.checkComment=b.bookId AND c.userId = u.userId
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