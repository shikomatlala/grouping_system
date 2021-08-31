<?php
include_once "../../../connect.php";
echo header_html("../../../style.css");


?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Admin Portal Home</title>
  </head>

  <body>
    <!--Show the lecturer their information
    lectuer name, surname modules they teach and so on
    The number of students they teach
    The course they teach-->
    <br><br>

    <ul class="myul">
    <li><a href="../lecturer/timetable.php">Lecturer Home</a></li>
    <li><a href="../lecture/lecture_portal.php">Manage Lectures</a></li>
    <li><a href="../student/student_portal_home.php">Manage Students</a></li>
    </ul>


    <br><br><br>
    <a href="admin_portal.html">Log out</a>
  </body>
</html>
