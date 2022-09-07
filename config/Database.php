<?php
    class Database {
        private $host = 'localhost';
        private $db_name = 'grouping_system';
        private $username = 'root';
        private $password = '';
        private $conn;
        //METHO TO CONNECT
        public function connect(){
            $this->conn = null;

            try {  
                $this->conn = new PDO('mysql:host=' . $this->host.';dbname='.$this->db_name, $this->username, $this->password);//Takes in a dsn - 
                $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            }
            catch(PDOException $e){
                echo 'Connection Error: ' . $e->getMessage();
            }
            return $this->conn;
        }
    }