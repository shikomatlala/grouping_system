<?php
//The user can delete their account
//The usre can check their modules
//The user can view their groups_
//The user
include "../../connect.php";
//
//echo "<h1>WELCOME TO STUDENT PORTAL</h1>";

$username = (int)$_POST['username'];
$password = $_POST['password'];
//Let us login the user
//Check if their stud_number and password are imagegammacorrect
$sql = "SELECT * FROM student_portal WHERE password = '$password' AND stud_number = $username ";
$result = mysqli_query($link, $sql);//Array
if(mysqli_num_rows($result) > 0)
{
  echo "Youa are connected";
  //From here we can jumpt to the studnet protal
} else {
  include "err_stud_user_index.html";
}


?>
