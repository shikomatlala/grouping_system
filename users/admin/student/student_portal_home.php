<?php
// $delay = 5000;
// header("Refresh:$delay;");
include_once "form.php";
include_once "../../../connect.php";
echo header_html("../../../style.css");


//echo "<!-- CSS only -->
//<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">";
//include_once "even_listener.php";
//let us create students create the first form.

//insert student;
$form = new Form();
$input = new Input();
$label = new Label();
$_SESSION['stud_number'];
$input_wrapper = "";
//End everything here

//Got to Insert student

echo "<h1>STUDENT MANAGEMENT PORTAL</h1>";
echo "<h2>List of all student</h2><hr>";
back_button("../home/admin_home.php") . "<br>";
echo "<p>Click bellow to register a new student</p>";
$form->set_form("student_form.php", "POST", "");
//$label->set_label("Click to Register new Student", "First Name", "");
$input->set_input("submit", "got_insert_student", "Register New Student", "", "submit_button");
echo $form->get_form_wrapper($input->get_input());
//Let us now manage  your students


//We should have a couple of queries in or I think we should make functions
$student_table = "";
$sql = "SELECT * \n"
. "FROM student ORDER BY stud_number DESC\n";
$result = mysqli_query($link, $sql);
echo "<h2>List of all student</h2>";
//echo "<br>" .  $_SESSION['activity'] . "<br>";
$count_students = 0;
if(mysqli_num_rows($result)>0)
{
  $student_table = "";
  $student_table .= "\n\t<table>\n<tr>";
  $student_table .= "\n\t\t<th>Student Number</th>";
  $student_table .= "\n\t\t<th>First Name</th>";
  $student_table .= "\n\t\t<th>Last Name</th>";
  $student_table .= "\n\t\t<th>Sex</th>";
  $student_table .= "\n\t\t<th>ID Number</th>";
  $student_table .= "\n\t\t<th>Email Address</th>";
  $student_table .= "\n\t\t<th>Phone Number</th>";
  $student_table .= "\n\t\t<th>Home Address</th>";
  $student_table .= "\n\t\t<th> </th>";//Delete
  $student_table .= "\n\t\t<th> </th>";//Udate
  $student_table .= "\n\t\t<th> </th>";//View Student - This is where we take you to the student home page - now we are going to do that - 
  $student_table .= "\n\t</tr>";
  //Select * students
  $module_name = "";



  while($row = mysqli_fetch_assoc($result))
  {
    $count_students++;
    //Get the total number of students -- 

    $student_table .= "\n\t<tr>";
    $student_table .= "\n\t\t<td>" .$row['stud_number'] . "</td>";
    $student_table .= "\n\t\t<td>" .$row['first_name'] . "</td>";
    $student_table .= "\n\t\t<td>" .$row['last_name'] . "</td>";
    $student_table .= "\n\t\t<td>" .$row['gender'] . "</td>";
    $student_table .= "\n\t\t<td>" .$row['id_nr'] . "</td>";
    $student_table .= "\n\t\t<td>" .$row['email'] . "</td>";
    $student_table .= "\n\t\t<td>" .$row['phone'] . "</td>";
    $student_table .= "\n\t\t<td>" .$row['address'] . "</td>";

    //Cool now we need to create a form which will simply be a button - 
    //1st Form Delete a Student - student number - this is all that we are going to need.
    //Set the form to delete a student.
    $inputs = "";
    $stud_number = $row['stud_number'];
    // "Me + " . $row['first_name'];
    $form->set_form("delete_student.php", "POST", "");
    $input->set_input("hidden", "stud_number", $stud_number, "", "");
    $inputs .= $input->get_input();
    $input->set_input("submit", "delete_student", "Delete", "", "delete_button");
    $inputs .= $input->get_input();
    $form_out = $form->get_form_wrapper($inputs);
    $student_table .= "\n\t\t<td>" . $form_out . "</td>";

    //2nd Form Update Student - This form should take us to insert student - but now we are updating student, how are we going to do this?
    $inputs = "";
    $form->set_form("update_student.php", "POST", "");
    $input->set_input("hidden", "stud_number", $stud_number, "", "");
    $inputs .= $input->get_input();
    $input->set_input("submit", "update_student", "Update", "", "update_button");
    $inputs .= $input->get_input();
    $form_out = $form->get_form_wrapper($inputs);
    $student_table .= "\n\t\t<td>" . $form_out . "</td>";

      //3rd Now let us view the student
      $inputs = "";
      $form->set_form("view_student.php", "POST", "");
      $input->set_input("hidden", "stud_number", $stud_number, "", "");
      $inputs .= $input->get_input();
      $input->set_input("submit", "view_student", "View Student", "", "view_button");
      $inputs .= $input->get_input();
      $form_out = $form->get_form_wrapper($inputs);
      $student_table .= "\n\t\t<td>" . $form_out . "</td>";
      $student_table .= "\n\t</tr>";


  }
  $student_table .= "\n\t</table>";
}
echo "<p>Total Students $count_students </p>";
//here we are going to search for the student - by stud_number
$search_student = "";
$inputs = "";
$form->set_form("", "POST", "form_search");
$input->set_input("text", "stud_number", "", "", "");
$inputs .= $input->get_input();
$input->set_input("submit", "search_student", "Search Student", "", "submit_button");
$inputs .= $input->get_input();
$form_out = $form->get_form_wrapper($inputs);
$search_student .= "\n\t\t" . $form_out;
echo $search_student;

if(isset($_POST['search_student']))
{

  //Select * students
  $module_name = "";

  $stud_number = (int)$_POST['stud_number'];
  $sql = "
      SELECT * 
      FROM student 
      WHERE stud_number = $stud_number";
  $result = mysqli_query($link, $sql);
  if(mysqli_num_rows($result)>0)
  {
    $student_serach = "";
    $student_serach .= "<br><br>\n\t<table>\n<tr>";
    $student_serach .= "\n\t\t<th>Student Number</th>";
    $student_serach .= "\n\t\t<th>First Name</th>";
    $student_serach .= "\n\t\t<th>Last Name</th>";
    $student_serach .= "\n\t\t<th>Sex</th>";
    $student_serach .= "\n\t\t<th>ID Number</th>";
    $student_serach .= "\n\t\t<th>Email Address</th>";
    $student_serach .= "\n\t\t<th>Phone Number</th>";
    $student_serach .= "\n\t\t<th>Home Address</th>";
    $student_serach .= "\n\t\t<th> </th>";//Delete
    $student_serach .= "\n\t\t<th> </th>";//Udate
    $student_serach .= "\n\t\t<th> </th>";//View Student - This is where we take you to the student home page - now we are going to do that - 
    $student_serach .= "\n\t</tr>";
    //get the row 
    //But also please make sure 
    while($row = mysqli_fetch_assoc($result))
    {
      $student_serach .= "\n\t<tr>";
      $student_serach .= "\n\t\t<td>" .$row['stud_number'] . "</td>";
      $student_serach .= "\n\t\t<td>" .$row['first_name'] . "</td>";
      $student_serach .= "\n\t\t<td>" .$row['last_name'] . "</td>";
      $student_serach .= "\n\t\t<td>" .$row['gender'] . "</td>";
      $student_serach .= "\n\t\t<td>" .$row['id_nr'] . "</td>";
      $student_serach .= "\n\t\t<td>" .$row['email'] . "</td>";
      $student_serach .= "\n\t\t<td>" .$row['phone'] . "</td>";
      $student_serach .= "\n\t\t<td>" .$row['address'] . "</td>";
  
      //Cool now we need to create a form which will simply be a button - 
      //1st Form Delete a Student - student number - this is all that we are going to need.
      //Set the form to delete a student.
      $inputs = "";
      $stud_number = $row['stud_number'];
      $form->set_form("delete_student.php", "POST", "");
 
      $input->set_input("hidden", "stud_number", $stud_number, "", "");
      $inputs .= $input->get_input();
      $input->set_input("submit", "delete_student", "Delete", "", "delete_button");
      $inputs .= $input->get_input();
      $form_out = $form->get_form_wrapper($inputs);
      $student_serach .= "\n\t\t<td>" . $form_out . "</td>";
  
      //2nd Form Update Student - This form should take us to insert student - but now we are updating student, how are we going to do this?
      $inputs = "";
      $form->set_form("update_student.php", "POST", "");
      $input->set_input("hidden", "stud_number", $stud_number, "", "");
      $inputs .= $input->get_input();
      $input->set_input("submit", "update_student", "Update", "", "update_button");
      $inputs .= $input->get_input();
      $form_out = $form->get_form_wrapper($inputs);
      $student_serach .= "\n\t\t<td>" . $form_out . "</td>";
        //3rd Now let us view the student
        $inputs = "";
        $form->set_form("view_student.php", "POST", "");
        $input->set_input("hidden", "stud_number", $stud_number, "", "");
        $inputs .= $input->get_input();
        $input->set_input("submit", "view_student", "View Student", "", "view_button");
        $inputs .= $input->get_input();
        $form_out = $form->get_form_wrapper($inputs);
        $student_serach .= "\n\t\t<td>" . $form_out . "</td>";
      $student_serach .= "\n\t</tr>";
    }
    $student_serach .= "\n\t</table>";
    echo $student_serach;
  }
  else
  {
    echo "<p>Student not Found<p>";
  }
}

if($_SESSION['crud_result'] != "")
{
  echo "<p>Delete Result: " .$_SESSION['crud_result']  . "<p>";
}
echo "<hr>" .$student_table;
$_SESSION['crud_result'] = "";

//FUNCTIONS
function back_button($back_url)
{
    $form = new Form();
    $input = new Input();
    $out = "";
        //create a back button - which is actually a form - 
        $form->set_form($back_url, "POST", "");
        //$label->set_label("Click to Register new Student", "First Name", "");
        $input->set_input("submit", "back", "Back", "", "back_button");
        echo $form->get_form_wrapper($input->get_input());
        //Above is the back button
    return $out;
}




function refresh_page()
{
  $out = "
  <script>
    window.location.reload()
  </script>";
  return $out;

}

//It will be best if if we can show all the students as soon as the user gets there - 
//Create a table wich shows all the students.

//The next this that we need to do here is to include java script files. --
//but remember the JavaScript resides in the html document and not on the php documet -but I can call java scrip using php

//OK so we do get an event - now what do we want to do with that event?
//We want to call off other things - now how do we call of other things.
//We need to know what has been clicked and the value contained therein
//We then need to open another object which will take us to what we have clicked.
//include_once "java_script.php";


