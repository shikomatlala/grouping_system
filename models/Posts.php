<?php   
    class Post {
        private $conn;
        private $table = 'posts';
        public $stud_number;
        public $first_name;
        public $last_name;
        public $gender;
        public $id_nr;
        public $phone;
        public $email;
        public $address;
    
        public function __construct($db){
            $this->conn = $db;
        }
        public function read(){
            $query = 'SELECT * FROM student';
            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            return $stmt;
        }
    }
