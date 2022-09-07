<?php
    class Post {
        //DB stuff
        private $conn;
        private $table = 'posts';

        //Post Properties
        public $stud_number;
        public $first_name;
        public $last_name;
        public $gender;
        public $id_nr;
        public $phone;
        public $email;
        public $address;
        //public $password;

        //Contructor with DB
        public function __construct($db){
            $this->conn= $db;
        }
        //Create a method to read  post
        public function getAllStudents(){
            $query = 'SELECT * FROM student';
            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            return $stmt;
        }
    }