<?php
//Let us inser the user
//we need to confirm their student number
//ID Number
//Check if the username is correct
//Confirm that their passwords match
include "../../connect.php";

$stud_number_int = (int)$_POST['stud_number'];//Make sure that we cast all the variables to their rightful datatypes
$id_number_str = $_POST['id_number'];
$password_str = $_POST['password'];
$password2_str = $_POST['password2'];


$_SESSION["stud_number"] = $_POST['stud_number'];
$_SESSION["id_number_str"] = $id_number_str;
$_SESSION["password_str"] = $password_str;
$_SESSION["password2_str"] = $password2_str;

echo $stud_number_int . "  " . $id_number_str . " " . $password_str . " " . $password2_str . " ";

//$sql = "SELECT * FROM  `grouping_system.user` WHERE `stud_number` = $stud_number ";
$sql = "SELECT * FROM grouping_system.student WHERE stud_number = $stud_number_int  AND id_nr = '$id_number_str' ";
$result = mysqli_query($link, $sql);
if(mysqli_num_rows($result) > 0)
{
  //Insert the new user
  $sql = "INSERT INTO `student_portal` (`password`, `create_date`, `stud_number`) VALUES ( '$password_str', NOW(), $stud_number_int) ";

  if (mysqli_query($link, $sql))
  {
    include "success_new_stud_user.php";
  }

}else {
  include "err_new_stud_user.php";
  echo $stud_number_int;
}

 ?>
