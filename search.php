<?php
require_once('common.php');
    $query = trim(strip_tags($_GET['query']));
    $min_length = 3;
    $book = array();
    $author = array();
    $publisher = array();
    $user = array();

    $tpl->display('userheader');
	$tpl->display('left');
    
    $query = htmlspecialchars($query);
        
        foreach($db->query("SELECT * FROM books as b,authors as a WHERE b.authorId = a.authorId AND  b.bookName LIKE '%".$query."%'") as $row){
            $book [] = array(
                'bookId' => $row['bookId'],
                'authorId' => $row['authorId'],
                'bookName' => $row['bookName'],
                'authorName' => $row['authorName'],
                'authorSurname' => $row['authorSurname'],
                'frontcoverphoto' => $row['frontcoverphoto']
                );

            }
        foreach($db->query("SELECT * FROM authors WHERE authorName LIKE '%".$query."%'") as $row){
            $author [] = array(
                'authoravatar' => $row['authoravatar'],
                'authorName' => $row['authorName'],
                'authorSurname' => $row['authorSurname']
                );

            }
        foreach($db->query("SELECT * FROM publishers WHERE publisherName LIKE '%".$query."%'") as $row){
            $publisher [] = array(
                'publisherName' => $row['publisherName']
                );

            }
        foreach($db->query("SELECT * FROM users WHERE name LIKE '%".$query."%' OR surname LIKE '%".$query."%' OR userName LIKE '%".$query."%'") as $row){
            $user [] = array(
                'userId' => $row['userId'],
                'name' => $row['name'],
                'surname' => $row['surname'],
                'userName' => $row['userName'],
                'avatar' => $row['avatar']
                );

            }
        //print_r($send);
        $tpl->set('book', $book);
        $tpl->set('author', $author);
        $tpl->set('publisher', $publisher);
        $tpl->set('user', $user);
    
    $tpl->display('search');
	$tpl->display('right');
	$tpl->display('footer');

?>