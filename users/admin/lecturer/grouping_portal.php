<?php
include_once "../../../connect.php";
//echo "Let us group these people";
$header = "<h1>";
$group_stud_div= "<div>\n
                    \t<form action=\"manager_student.php\" action=\"POST\">\n
                        \t\t<input type=\"submit\" name=\"group_studens\" value=\"Group Students\">\n
                        \t\t<input type=\"submit\" name=\"add_students\" value=\"Add Students\">\n

                      </form>
                  <div>";

$staff_number = (int)$_SESSION['staff_number'];
$module_code;
$stud_stats_div = "<div>\n\tStudents Stats\n\t<ul>\n";
$student_list_crud = "<form action=\"manager_student.php\" action=\"POST\">\n";
$count_students = 1;
if(isset($_POST['module_code']))
{
  //echo $_POST['module_code'];
  $header .= $_POST['module_code'] . "  Module</h1><hr>\n";
  $module_code = $_POST['module_code'];
  //Let us see the students --
  $header .= "<h3>Your Fellow Lecturers For this Module</h3>\n";
  $sql = "SELECT c.stud_number, first_name, last_name, phone, email\n"
      . "FROM lecture_group a, lecture b, lecture_student c, student d\n"
      . "WHERE a.lecture_id = b.lecture_id\n"
      . "AND c.lecture_id = b.lecture_id\n"
      . "AND d.stud_number = c.stud_number\n"
      . "AND a.staff_number = 10023\n"
      . "AND b.module_code = \"DSO34BT\"";
  $result = mysqli_query($link, $sql);
  //print_r($result);
  if(mysqli_num_rows($result) > 0 )
  {
      while($row= mysqli_fetch_assoc($result))
      {

        $student_list_crud .= $row['stud_number'] . " ";
        $student_list_crud .= $row['first_name'] . " ";
        $student_list_crud .= $row['last_name'] . " ";
        $student_list_crud .= $row['phone'] . " ";
        $student_list_crud .= $row['email'] . " ";
        $student_list_crud .= "<input type=\"text\" name=\"marks\" placeholder=\"Enter Mark\" > ";
        $student_list_crud .= "<input type=\"submit\" name=\"" . $row['stud_number']. "\" value=\"SAVE\">\n";
        $student_list_crud .= "<input type=\"submit\" name=\"" . $row['stud_number']. "\" value=\"REMOVE\">\n";
        $student_list_crud .= "</form>\n";
        $count_students++;

      }
      $count_students--;
      $stud_stats_div .="\t\t<li>Total Students: " . $count_students. " </li>\n";
      $stud_stats_div .= "\t</ul>";

      echo $header . "\n<hr>";
      $header .= "<h3>Students in your class</h3>\n";
      $stud_stats_div .= "</div><hr>\n";
      echo $stud_stats_div . "\n";
      echo $group_stud_div ."\n";
      echo $student_list_crud . "\n";
  }
  else
  {
     echo include "timetable.php";
  }

}

?>
