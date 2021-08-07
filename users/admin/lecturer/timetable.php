<?php
//include_once "div_wrapper.php";


include_once "../../../connect.php";
//Can we tell the lecturer his class today.
echo "<br><a href=\"../admin_home.html\">back</a>\n";
$content = "<h1>Lecturer Portal</h1>\n";
//Lect us call on the lectures Information
$str_sql = "SELECT * FROM lecturer WHERE staff_number = " . (int)$_SESSION['staff_number'];
$ul = "<ul>\n";
//$str_lecturer_information
$ary_result = mysqli_query($link, $str_sql);
if(mysqli_num_rows($ary_result) > 0)
{
  while($row = mysqli_fetch_assoc($ary_result))
  {
      $ul .= "<li>" . "Staff Number ".$row["staff_number"]  . "</li>\n";
      $ul .= "<li>" . substr($row["first_name"], 0). " ". $row["last_name"]  . "</li>\n";
      $ul .= "<li>" . $row["id_nr"]  . "</li>\n";
      $ul .= "<li>" . $row["phone"]  . "</li>\n";
      $ul .= "<li>" . $row["email"]  . "</li>\n";
  }
  $ul.= "</ul>\n";
}
$content .= $ul;
//This is true
//Le us give the lecturer the modules that he teaches
//These modules will come from the lecture_lecturer time table
$staff_number = (int)$_SESSION['staff_number'];
$form_link = "action=\"grouping_portal.php\" method=\"POST\">\n";
$form = "<form " .$form_link;
//echo $form;

//Lecture Details div.
//echo header_html();
echo div("control-group normal_text", $content);
//Show the Form
$form_div = "";
$sql = "SELECT a.module_code , a.semester, a.year\n"
    . "FROM lecture a, lecture_group b, lecturer c\n"
    . "WHERE a.lecture_id = b.lecture_id\n  "
    . "AND c.staff_number = b.staff_number\n"
    . "AND c.staff_number = $staff_number\n"//Plus zero changes the string into an integer
    . "ORDER BY a.module_code";
$result = mysqli_query($link, $sql);
if(mysqli_num_rows($result) > 0)
{

  echo "<h3>Your Modules</h3>\n";
  while($row = mysqli_fetch_assoc($result))
  {
    $form .= "\t<label for=\"module_code\"> " . $row['module_code'] . "</label>\n";
    $form .= "\t<input type=\"submit\" name=\"module_code\" value=\"" .$row['module_code'] ."\">\n";

    //$form .= " <input=\"submit\" name=\"module_code\" value=\"$row['module_code']\" >\n";
    $form .= "</form>\n";
  }
  //Let us show the user
  $form_div = $form;
 echo div("form" ,$form_div); 
}
else
{
  echo "<label><h3>NB You are not assigned any modules</h3></label>";
}

$time_table_div = "";
$time_table_div .= "<h3>Your Time table</h3>\n";
$str_table_days = array("Time", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday");
$int_header_length = sizeof($str_table_days);
$str_sql = " SELECT b.vanue AS vanue, a.module_code AS module_code, b.start_time AS start_time, b.end_time AS end_time, b.day AS day\n "
    . " FROM lecture a, lecture_lecturer b, lecturer c\n "
    . " WHERE b.lecture_id = a.lecture_id\n "
    . " AND b.staff_number = c.staff_number\n "
    . " AND c.staff_number = $staff_number\n"
    . " ORDER BY b.start_time\n";
//A select statement always returns results, if it is done correctly, if the select yielded to nothing we will get a 0 result else we will get more than one result, if there was an error we will get an date_get_last_error
$ary_result = mysqli_query($link, $str_sql);
$str_html_table = "\n<table>\n"
                . "\t<tr>\n";
for($int_x = 0; $int_x< $int_header_length; $int_x++)
{
  $str_html_table .= "\t\t<th> " . $str_table_days[$int_x] . " </th>\n";
}
$str_html_table .= "\t</tr>\n";
if(mysqli_num_rows($ary_result) > 0)//Remember that our array returns rows and we can count the number of rows using mysqli_num_rows funciton.
{
  while($row = mysqli_fetch_assoc($ary_result))//we use the mysqli_fectch_assoc function to fecth the rows that we have selected.
  {
    $str_html_table .= "\t<tr>\n";
    //Now we need to place each module where it belongs
    //print_r(array_keys($row));
    //echo(array_keys($row));//echo does not print array elements - it only displays scala values
    for($int_x = 0; $int_x < $int_header_length ;$int_x++)
    {
          //Get the data.

          if($row['day'] == $str_table_days[$int_x] && $int_x > 0)
          {
              //$str_html_table .= "<th>" .
              $str_html_table .= "\t\t<td>" .$row["vanue"] ."<br>". $row["module_code"]."</td>\n";
          }
          elseif($int_x > 0)
          {
            $str_html_table .= "\t\t<td>Open</td>\n";
          }
          else
          {
            $str_html_table .= "\t\t<td>" . $row["start_time"] . "</td>\n";
          }
    }
    $str_html_table .= "\t</tr>\n";
  }
  $time_table_div .= $str_html_table . "</table>";
  echo div("body_Footer", $time_table_div);
}
else
{
  echo "<p>You are not yet assigned any class</p>";
}



?>
