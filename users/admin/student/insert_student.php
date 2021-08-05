<?php

include_once "../../../connect.php";
include_once "student.php";
include_once "form.php";
$student = new Student();
$form = new Form();
$input = new Input();
$label = new Label();
$student->set_link($link);
echo "<h1>Insert a New Student</h1>\n<br><hr>";
echo "<h3>Enter The Following Details and then Submit</h3>\n<br>";
//create a back button - which is actually a form - 
$form->set_form("student_portal_home.php", "POST", "");
//$label->set_label("Click to Register new Student", "First Name", "");
$input->set_input("submit", "back", "Back", "", "");
echo $form->get_form_wrapper($input->get_input());
//what do we need to insert this student -- well we just need to know the current studen stumber - but ai its going to take us time-- wel
//Create an error list - if we can do so we will be ale to know how to work with out erros - or we can push the person back and then just change a few things to the class -
//$status_stud_name = "";
if(isset($_POST['submit']))
{
    //Get the
    //$student->validate_name($)
    //print_r($student->get_link());
    $_SESSION['stud_label'] = "";
    $_SESSION['select_modules'] = "";
    $_SESSION['student'] = array();
    $student->set_stud_number();
    $student->set_firstname($_POST['first_name']);
    $student->set_lastname($_POST['last_name']);
    $student->set_id($_POST['id_nr'], $link);
    $student->set_sex($_POST['sex']);
    $student->set_phone($_POST['phone'], $link);
    $student->set_address($_POST['address']);
    $student->set_email($student->get_stud_number());
    //here we have stored everything inside our array - .
    array_push($_SESSION['student'], $student->get_stud_number(), $_POST['first_name'],$_POST['last_name'],$_POST['id_nr'], $_POST['sex'], $_POST['phone'],$student->get_email(), $_POST['address']);
    //Now there is no where we are comparing the sex and ID 
    if(strpos($student->view_sql(), "NULL") == false)//Meaning no string found
    {
        $sql = $student->view_sql();
        $label_increment = "";
        if(mysqli_query($link, $student->view_sql()))
        {
          echo "<h1>Student added </h1>";
          //Now le us go to the point were we have the user add more information about our student.
          echo "<a href=\"student_portal_home.php\">Register another Student</a><br> ";
          //include "student_portal_home.php";
          //Now let us show the student details for the student that has just registered
          //The details are stored in the session
          //create lables contain
          //include_once "module_regisration.php";
          echo $label_increment;
          $_SESSION['stud_label'] = $student->get_student_label();
          echo $student->get_student_label();
          //create a course button -
          $select_course = new Select();
          $compile_select = "";
          $select_course->set_select("course", "course", "");
          $select_course->set_select_more("course", "course", "", "", "onchange");
          //Create a query to get the courses available in the database
          $sql = "SELECT * FROM `course`";
          $result = mysqli_query($link, $sql);
          if(mysqli_num_rows($result)>0)
          {
            while($row = mysqli_fetch_assoc($result))
            {
              //add data to the set_option.
              $col1 = $row['course_id'];
              $col2 = $row['course_name'];
              $select_course->set_option($col1, $col2);
              $compile_select .= "\t". $select_course->get_option();
            }
          }
          //Create a form where the select will be held
          echo "<br>";
          echo "<hr>";
          echo "<br>";
          echo "<h3>Select Course</h3>";
          echo "<br>";
          $label->set_label("click_course", "Course", "");
          echo $label->get_label();
          $form->set_form("", "POST", "");
          $input->set_input("submit", "click_course", "Enrol Course", "", "");
          //Now le us show the user the moduels that they want to enrol -  after they have selected the course that they want to take.
          $final_select = "";
          $final_select = $select_course->get_select_more($compile_select);
          $final_select .= "<br>\t". $input->get_input() . "\n";
          echo $form->get_form_wrapper($final_select);
          $_SESSION['select_modules'] = $form->get_form_wrapper($final_select);
          //Now let us help the person register for their respecful modules that they wish to enrol
          //this is where we create the button and other things that will allow the user to enrol -
          //Now another question comes up - how long will be have the $_POST['first_name'] - If we will continue to have it the we are good.
          //as the user selectes the desired course - let us show them the list of the modules that they are going to take.
        }
    }
    else
    {
      //echo "<br>Many Errors Found change this dude <br><br>";
      //return the student with the errors that they have made
      $form = new Form();
      $input = new Input();
      $label = new Label();
      $input_wrapper = "";
      $form->set_form("insert_student.php", "POST", "");
      //first _name
      $label->set_label("first_name", $student->get_stud_name_status($student->get_firstname()), "");
      $input->set_input("text", "first_name",$student->get_firstname(), "First Name", "");
      $input_wrapper .= $label->get_label() . "<br>\n";
      $input_wrapper .= $input->get_input_text() . "<br>\n";
      //Last Name
      $label->set_label("last_name", $student->get_stud_surn_status($student->get_lastname()), "");
      $input->set_input("text", "last_name", $student->get_lastname(), "Last Name", "");
      $input_wrapper .= $label->get_label() . "<br>\n";
      $input_wrapper .= $input->get_input_text() . "<br>\n";
      //first _name
      $label->set_label("id_nr", $student->get_id_status($student->get_id()), "");
      $input->set_input("text", "id_nr", $student->get_id(), "ID Number", "");
      $input_wrapper .= $label->get_label() . "<br>\n";
      $input_wrapper .= $input->get_input_text() . "<br>\n";
      //first _name
      $label->set_label("sex", $student->validate_sex($student->get_id(), $student->get_sex()), "");
      $input_wrapper .= $label->get_label() . "<br>\n";
      $select = new Select();
      $select->set_select("sex","sex", "");
      $select->set_option("M", "Male");
      $gender_option = "\t".$select->get_option();
      $select->set_option("F","Female");
      $gender_option .= "\t".$select->get_option();
      $select->set_option("O","Other");
      $gender_option .= "\t".$select->get_option();
      $select_output = $select->get_select($gender_option);
      $input_wrapper.= $select_output;
      //first _name
      $label->set_label("phone", $student->get_phone_status($student->get_phone()), "");
      $input->set_input("text", "phone", $student->get_phone(), "Phone Number", "");
      $input_wrapper .= $label->get_label() . "<br>\n";
      $input_wrapper .= $input->get_input_text() . "<br>\n";
      //first _name
      $label->set_label("address", "Home Address", "");
      $input->set_input("text", "address", $student->get_address(), "Home Address", "");
      $input_wrapper .= $label->get_label() . "<br>\n";
      $input_wrapper .= $input->get_input_text() . "<br><br>\n";
      $input->set_input("submit","submit", "Insert Student", "","");
      $input_wrapper .= $input->get_input() ."<br>\n";
      echo $form->get_form_wrapper($input_wrapper);
    }
}
//Let us show the student information the form that we want to use.
echo "<br>";
echo "<br>";
$course_id = 0;
if(isset($_POST['click_course']))
{
    //Here are the student details.
    echo $_SESSION['stud_label'] ;
    //We display here the student details -
    echo $_SESSION['select_modules'];
    $course_id = (int)$_POST['course'];
    $module_name = "";
    $sql = "SELECT * \n"
      . "FROM course\n"
      . "WHERE course_id = $course_id";
    $result = mysqli_query($link, $sql);
    if(mysqli_num_rows($result)>0)
    {
      while($row = mysqli_fetch_assoc($result))
      {
        $module_name =  $row['course_name'];
      }
      //mpho rabora
    }
    $module_name .= " modules";
    //Create a label
    $label->set_label("", $module_name, "");
    echo "\n<br>" . $label->get_label();
    //Remember that the student does not register for module he registers for a subject.
    //So we need to find all the subjects that the are offered by the institution.
    //get the valude of the
    //Now we need to get the current lecturers that have been offered for the Course which
    //Here we show the user the modules that they can register based upon the course that they have chosen.
    //$sql = "SELECT * FROM `module` WHERE course"
    $sql = "SELECT c.module_code, c.module_name, c.credit\n"
        . "FROM course a, course_module b, module c\n"
        . "WHERE a.course_id = b.course_id\n"
        . "AND b.module_code = c.module_code\n"
        . "AND a.course_id = $course_id";
    $result = mysqli_query($link, $sql);
    $module_table = "";
    //October - 22
    //Now we need to make sure that every module - can be registered - and once the registerd button is clicked we need to show the user that they have registered for that module
    //It think if it was possible to make sure that to do so we need to constantly go to and from connecting to the database and checking if the particular module has been registered or not.
     if(mysqli_num_rows($result) > 0)
     {
       $module_table .= "\n\t<table>\n<tr>";
       $module_table .= "\n\t\t<th>Module Code</th>";
       $module_table .= "\n\t\t<th>Module Name</th>";
       $module_table .= "\n\t\t<th>Module Credit</th>";
       $module_table .= "\n\t\t<th> </th>";
       $module_table .= "\n\t\t<th> </th>";
       $module_table .= "\n\t</tr>";
       $inputs = "";
       while($row = mysqli_fetch_assoc($result))
       {
         $module_table .= "\n\t<tr>";
         $module_table .= "\n\t\t<td>" .$row['module_code'] . "<hr></td>";
         $module_table .= "\n\t\t<td>" .$row['module_name'] . "<hr></td>";
         $module_table .= "\n\t\t<td>" .$row['credit'] . "<hr></td>";
         //Here we need to create the form and then upon creating the form we also need to make sure that we now how we are going to communicate with this form.
         //PHP runs before HTML  -
         //$input->set_input("")
         //Create a form here to insert things inside of it
         //Register
         $module_name = $row['module_code'];
         $form->set_form("module_registration.php", "POST", "");
         $input->set_input("hidden", "module_code", $row['module_code'], "", "");
         $inputs = "\n\t\t<td>" . $input->get_input() . "</td>";
         $input->set_input("submit", "reg_module", "Register", "", "");
         $inputs .= "\n\t\t<td>" . $input->get_input() . "</td>";
         //Wrap the form together
         //$_POST[] -- The currently submitted button.
         $form_out = $form->get_form_wrapper($inputs);



         $module_table .= "\n\t\t<td>" . $form_out . "</td>";
         $module_table .= "\n\t\t<td>" . $input->get_input() . "</td>";
         $module_table .= "\n\t</tr>";

         //Created a form each buton.
         //echo "<br>" .  $row['module_code'] . " | " . $row['module_name'] . " | " . $row["credit"] . "<br>\n";
       }
       $module_table .= "\n\t</table>";
       echo $module_table;
     }
     else
     {
       echo "<br>\n -- No Modules for  found" ;
     }
}


?>
