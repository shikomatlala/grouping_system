<?php
    //headers
    header('Access-Control-Allow-Origin: *');
    header('Content-Type: application/json');
    include_once '../config/Database.php';
    include_once '../models/StudentModel.php';
    $database = new Database();
    $db = $database->connect();
    $post = new Post($db);
    $result = $post->getAllStudents();
    $num = $result->rowCount();
    if($num > 0){
        $posts_arr = array();
        $posts_arr['data'] = array();
        while($row = $result->fetch(PDO::FETCH_ASSOC)){
            extract($row);
            $post_item = array(
            'stud_number'=> $stud_number,
            'first_name'=> $first_name,
            'last_name'=> $last_name,
            'gender'=> $gender,
            'id_nr'=> $id_nr,
            'phone'=> $phone,
            'email'=> $email,
            'address'=> $address
            );
            array_push($posts_arr['data'], $post_item);
        }
        echo json_encode($posts_arr);
    }else{
        echo json_encode(
            array('message'=> 'No posts Found')
        );
    }