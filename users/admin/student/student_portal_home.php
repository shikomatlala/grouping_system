<?php
// $delay = 5000;
// header("Refresh:$delay;");
include_once "form.php";
include_once "../../../connect.php";


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
// $form->set_form("insert_student.php", "POST", "");
// //first _name
// $label->set_label("first_name", "First Name", "");
// $input->set_input("text", "first_name", "", "First Name", "");
// $input_wrapper .= $label->get_label() . "<br>\n";
// $input_wrapper .= $input->get_input_text() . "<br>\n";
// //Last Name
// $label->set_label("last_name", "Last Name", "");
// $input->set_input("text", "last_name", "", "Last Name", "");
// $input_wrapper .= $label->get_label() . "<br>\n";
// $input_wrapper .= $input->get_input_text() . "<br>\n";
// //first _name
// $label->set_label("id_nr", "ID Number", "");
// $input->set_input("text", "id_nr", "", "ID Number", "");
// $input_wrapper .= $label->get_label() . "<br>\n";
// $input_wrapper .= $input->get_input_text() . "<br>\n";
// //first _name
// $label->set_label("sex", "Gender", "");
// $input_wrapper .= $label->get_label() . "<br>\n";
// $select = new Select();
// $select->set_select("sex","sex", "");
// $select->set_option("M", "Male");
// $gender_option = "\t".$select->get_option();
// $select->set_option("F","Female");
// $gender_option .= "\t".$select->get_option();
// $select->set_option("O","Other");
// $gender_option .= "\t".$select->get_option();
// $select_output = $select->get_select($gender_option);
// $input_wrapper.= $select_output;
// //first _name
// $label->set_label("phone", "Phone Number", "");
// $input->set_input("text", "phone", "", "Phone Number", "");
// $input_wrapper .= $label->get_label() . "<br>\n";
// $input_wrapper .= $input->get_input_text() . "<br>\n";

// //first _name
// $label->set_label("address", "Home Address", "");
// $input->set_input("text", "address", "", "Home Address", "");
// $input_wrapper .= $label->get_label() . "<br>\n";
// $input_wrapper .= $input->get_input_text() . "<br>\n";
// $input->set_input("submit","submit", "Insert Student", "","");
// $input_wrapper .= $input->get_input() ."<br>\n";
// echo $form->get_form_wrapper($input_wrapper);
//End everything here

//Got to Insert student
back_button("../home/admin_home.html");
echo "<h1>Student Management Portal</h1>\n<br><hr>";
echo "<h3>Manage all students here</h3>\n<br>";
$form->set_form("student_form.php", "POST", "");
//$label->set_label("Click to Register new Student", "First Name", "");
$input->set_input("submit", "got_insert_student", "Register New Student", "", "");
echo $form->get_form_wrapper($input->get_input());
//Let us now manage  your students


// $form->set_form("insert_student.php", "POST", "");
// //first _name
// $label->set_label("first_name", "First Name", "");
// $input->set_input("text", "first_name", "", "First Name", "");
// $input_wrapper .= $label->get_label() . "<br>\n";
// $input_wrapper .= $input->get_input_text() . "<br>\n";
// //Last Name
// $label->set_label("last_name", "Last Name", "");
// $input->set_input("text", "last_name", "", "Last Name", "");
// $input_wrapper .= $label->get_label() . "<br>\n";
// $input_wrapper .= $input->get_input_text() . "<br>\n";
// //first _name
// $label->set_label("id_nr", "ID Number", "");
// $input->set_input("text", "id_nr", "", "ID Number", "");
// $input_wrapper .= $label->get_label() . "<br>\n";
// $input_wrapper .= $input->get_input_text() . "<br>\n";
// //first _name
// $label->set_label("sex", "Gender", "");
// $input_wrapper .= $label->get_label() . "<br>\n";
// $select = new Select();
// $select->set_select("sex","sex", "");
// $select->set_option("M", "Male");
// $gender_option = "\t".$select->get_option();
// $select->set_option("F","Female");
// $gender_option .= "\t".$select->get_option();
// $select->set_option("O","Other");
// $gender_option .= "\t".$select->get_option();
// $select_output = $select->get_select($gender_option);
// $input_wrapper.= $select_output;
// //first _name
// $label->set_label("phone", "Phone Number", "");
// $input->set_input("text", "phone", "", "Phone Number", "");
// $input_wrapper .= $label->get_label() . "<br>\n";
// $input_wrapper .= $input->get_input_text() . "<br>\n";

// //first _name
// $label->set_label("address", "Home Address", "");
// $input->set_input("text", "address", "", "Home Address", "");
// $input_wrapper .= $label->get_label() . "<br>\n";
// $input_wrapper .= $input->get_input_text() . "<br>\n";
// $input->set_input("submit","submit", "Insert Student", "","");
// $input_wrapper .= $input->get_input() ."<br>\n";
// echo $form->get_form_wrapper($input_wrapper);
// //End everything here

//Let us look up for
//select all courses and then show then to the user
// $select_course = new Select();
// $compile_select = "";
// $select_course->set_select("course", "course", "");
// $select_course->set_select_more("course", "course", "", "", "onchange");
// //echo "<br>" . $select_course->get_select("") . "<br>";
// $sql = "SELECT * FROM `course`";
// $result = mysqli_query($link, $sql);
// if(mysqli_num_rows($result)>0)
// {
//   while($row = mysqli_fetch_assoc($result))
//   {
//     //add data to the set_option.
//     $col1 = $row['course_id'];
//     $col2 = $row['course_name'];
//     $select_course->set_option($col1, $col2);
//     $compile_select .= "\t". $select_course->get_option();
//   }
// }
// $form->set_form("", "POST", "");

// $input->set_input("submit", "click_course", "Enrol Modules", "", "");
// //Now let us show the user the modules that they want to entrol - make sure that all the modules that weill be showed will be first year modules.

// //$input->get_input();
// $final_select ="";

// $final_select = $select_course->get_select_more($compile_select);
// //echo $final_select;
// $final_select .= "<br>\t". $input->get_input() . "\n";
// echo $form->get_form_wrapper($final_select);
// //ho ;

///This is the enrol module --
//We are not going to enrol moduels for students here
//This is where the course registration starts
// $course_id = 0;
// if(isset($_POST['click_course']))
// {
//     //Show the modules that we want to take.
//     //Get the course that has been selected. and then show it
//     $course_id = (int)$_POST['course'];
//     $module_name = "";
//     $sql = "SELECT * \n"
//       . "FROM course\n"
//       . "WHERE course_id = $course_id";
//     $result = mysqli_query($link, $sql);
//     if(mysqli_num_rows($result)>0)
//     {
//       while($row = mysqli_fetch_assoc($result))
//       {
//         $module_name =  $row['course_name'];
//       }
//     }
//     $module_name .= " modules";
//     //Create a label
//     $label->set_label("", $module_name, "");
//     echo "\n<br>" . $label->get_label();
//     //get the valude of the

//     //Here we show the user the modules that they can register based upon the course that they have chosen.
//     //$sql = "SELECT * FROM `module` WHERE course"
//     $sql = "SELECT c.module_code, c.module_name, c.credit\n"
//         . "FROM course a, course_module b, module c\n"
//         . "WHERE a.course_id = b.course_id\n"
//         . "AND b.module_code = c.module_code\n"
//         . "AND a.course_id = $course_id";
//    $result = mysqli_query($link, $sql);
//    $module_table = "";
//   //Now we need to make sure that every module - can be registered - and once the registerd button is clicked we need to show the user that they have registered for that module
//   //It think if it was possible to make sure that to do so we need to constantly go to and from connecting to the database and checking if the particular module has been registered or not.
//    if(mysqli_num_rows($result) > 0)
//    {
//      $module_table .= "\n\t<table>\n<tr>";
//      $module_table .= "\n\t\t<th>Module Code</th>";
//      $module_table .= "\n\t\t<th>Module Name</th>";
//      $module_table .= "\n\t\t<th>Module Credit</th>";
//      $module_table .= "\n\t\t<th> </th>";
//      $module_table .= "\n\t\t<th> </th>";
//      $module_table .= "\n\t</tr>";
//      while($row = mysqli_fetch_assoc($result))
//      {
//        $module_table .= "\n\t<tr>";
//        $module_table .= "\n\t\t<td>" .$row['module_code'] . "<hr></td>";
//        $module_table .= "\n\t\t<td>" .$row['module_name'] . "<hr></td>";
//        $module_table .= "\n\t\t<td>" .$row['credit'] . "<hr></td>";
//        //Here we need to create the form and then upon creating the form we also need to make sure that we now how we are going to communicate with this form.
//        //PHP runs before HTML  -
//        //$input->set_input("")
//        //Create a form here to insert things inside of it
//        //Register
//        $module_name = $row['module_code'];
//        $form->set_form("", "POST", "");
//        $input->set_input("submit", $module_name, "Register", "", "");
//        //Wrap the form together
//        //$_POST[] -- The currently submitted button.
//        $form_out = $form->get_form_wrapper($input->get_input());
//        $module_table .= "\n\t\t<td>" . $form_out . "</td>";
//        $module_table .= "\n\t\t<td>" . $input->get_input() . "</td>";
//        $module_table .= "\n\t</tr>";

//        //Created a form each buton.
//        //echo "<br>" .  $row['module_code'] . " | " . $row['module_name'] . " | " . $row["credit"] . "<br>\n";
//      }
//      //echo $module_name .= " modules<br>";
//      $module_table .= "\n\t</table>";
//      echo $module_table;
//      //
//    }
//    else
//    {
//      echo "<br>\n -- No Modules for  found" ;
//    }
//     //Now let us show all the modules here.
//     //module name, register_button, unregister button - complete.
//     //echo $sql;
//     //$form->set_form("", "POST", "");
//     //$label->set_label("", "")

//     print_r($_POST);

//     //Now we need to select all the students that are in the system - Who are these students - Now let us make sure that we can find them.
//     //

//     //print_r($_POST);

// }

//We should have a couple of queries in or I think we should make functions
$student_table = "";
$sql = "SELECT * \n"
. "FROM student ORDER BY stud_number DESC\n";
$result = mysqli_query($link, $sql);
echo "<br><h1>Here is a list of all the student</h1><br>";
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
    $input->set_input("submit", "delete_student", "Delete", "", "");
    $inputs .= $input->get_input();
    $form_out = $form->get_form_wrapper($inputs);
    $student_table .= "\n\t\t<td>" . $form_out . "</td>";

    //2nd Form Update Student - This form should take us to insert student - but now we are updating student, how are we going to do this?
    $inputs = "";
    $form->set_form("update_student.php", "POST", "");
    $input->set_input("hidden", "stud_number", $stud_number, "", "");
    $inputs .= $input->get_input();
    $input->set_input("submit", "update_student", "Update", "", "");
    $inputs .= $input->get_input();
    $form_out = $form->get_form_wrapper($inputs);
    $student_table .= "\n\t\t<td>" . $form_out . "</td>";

      //3rd Now let us view the student
      $inputs = "";
      $form->set_form("view_student.php", "POST", "");
      $input->set_input("hidden", "stud_number", $stud_number, "", "");
      $inputs .= $input->get_input();
      $input->set_input("submit", "view_student", "View Student", "", "");
      $inputs .= $input->get_input();
      $form_out = $form->get_form_wrapper($inputs);
      $student_table .= "\n\t\t<td>" . $form_out . "</td>";



  }
  $student_table .= "\n\t</table>";
}
echo "<hr><h3>Total Students $count_students </h3>";
//here we are going to search for the student - by stud_number
$search_student = "";
$inputs = "";
$form->set_form("", "POST", "");
$input->set_input("text", "stud_number", "", "", "");
$inputs .= $input->get_input();
$input->set_input("submit", "search_student", "Search Student", "", "");
$inputs .= $input->get_input();
$form_out = $form->get_form_wrapper($inputs);
$search_student .= "\n\t\t<td>" . $form_out . "</td>";
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
    $student_serach .= "\n\t<table>\n<tr>";
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
      $input->set_input("submit", "delete_student", "Delete", "", "");
      $inputs .= $input->get_input();
      $form_out = $form->get_form_wrapper($inputs);
      $student_serach .= "\n\t\t<td>" . $form_out . "</td>";
  
      //2nd Form Update Student - This form should take us to insert student - but now we are updating student, how are we going to do this?
      $inputs = "";
      $form->set_form("update_student.php", "POST", "");
      $input->set_input("hidden", "stud_number", $stud_number, "", "");
      $inputs .= $input->get_input();
      $input->set_input("submit", "update_student", "Update", "", "");
      $inputs .= $input->get_input();
      $form_out = $form->get_form_wrapper($inputs);
      $student_serach .= "\n\t\t<td>" . $form_out . "</td>";
        //3rd Now let us view the student
        $inputs = "";
        $form->set_form("view_student.php", "POST", "");
        $input->set_input("hidden", "stud_number", $stud_number, "", "");
        $inputs .= $input->get_input();
        $input->set_input("submit", "view_student", "View Student", "", "");
        $inputs .= $input->get_input();
        $form_out = $form->get_form_wrapper($inputs);
        $student_serach .= "\n\t\t<td>" . $form_out . "</td>";
    }
    $student_serach .= "\n\t</table>";
    echo $student_serach;
  }
  else
  {
    echo "<br>Student not Found<br>";
  }
}

echo "<hr><br>";

if($_SESSION['crud_result'] != "")
{
  echo "<h3>Delete Result: " .$_SESSION['crud_result']  . "<h3><hr>";
}
echo $student_table;
$_SESSION['crud_result'] = "";

//Delete the student - But how are we going to know all that the student is involved in - Remember the delete button here will have to do with a 
//A lot of thins - so our delete is not yet complete
// if(isset($_POST['delete_student']))
// {
//     //Now we can move on to deleting this student
//     //Le us delete you dude.
//     $stud_number = (int)$_POST['stud_number'];
//     $sql = "DELETE FROM student WHERE stud_number = $stud_number";

//     //We need to make sure that everything about the student is also deleted -
//     //We need to delete a lot of things or else it just will not work - 
//     //Because remember about referential integrity

//     if(mysqli_query($link, $sql))
//     {
//         //We have delete the student - now we need to go back - to that page...
//         echo  "Student deleted successfully";
//         //echo refresh_page();
//         //Now jump back to the page
//         //include "student_portal_home.php";
//         //Create a form that is going to jump us back.
//         //Or we can use an a href
//     }
//     else
//     {
//       echo   "Student could not get deleted";
//         //Now jump back to the page
//         //include "student_portal_home.php";
//     }
// }
//FUNCTIONS
function back_button($back_url)
{
    $form = new Form();
    $input = new Input();
    $out = "";
        //create a back button - which is actually a form - 
        $form->set_form($back_url, "POST", "");
        //$label->set_label("Click to Register new Student", "First Name", "");
        $input->set_input("submit", "back", "Back", "", "");
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


