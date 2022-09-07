<?php
    header('Access-Control-Allow-Origin: *');
    header('Content-Type: application/json');
    include_once '../config/Database.php';
    include_once '../models/Posts.php';

    $database = new Database();
    $db = $database->connect();

    $post = new Post($db);
    $result = $post->read();
    $num = $result->rowCount();
    if($num > 0){
        $posts_arr = arary();
    }else
    {
        
    }
