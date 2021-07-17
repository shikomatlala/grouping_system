<?php
session_start();
$database = "grouping_system";
$password = "";
$username = "root";
$servername = "localhost";
$link = mysqli_connect($servername, $username, $password, $database);
if($link == false){
    die ("ERROR: Could not connect " . mysqli_connect_error());
} else {
  echo "we are connected";
}
//One of the things that we can do is to make sure that we create a script that purely hold functions -- but the issue is that we have a lot of moving parts.
?>
