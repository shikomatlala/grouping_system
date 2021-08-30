<?php
include "../../../connect.php";
echo header_html("../../../style.css");

$username = (int)$_POST['username'];
$password = $_POST['password'];
if(isset($_POST['submit']))
{
    //Let us login the user
    //Check if their stud_number and password are imagegammacorrect
    if(isset($username))
    {
      $sql = "SELECT * FROM lecturer_portal WHERE password = '$password' AND staff_number = $username ";
      $result = mysqli_query($link, $sql);
      if(mysqli_num_rows($result) > 0)
      {

          include "admin_home.html";
          $_SESSION['staff_number'] = $username;
          //echo $_SESSION['staff_number'];
      }
      else
      {
        include "err_login_admin_portal.html";
      }
    }
}
else
{
    include "err_not_set_login_admin_portal.html";
}


 ?>
