<?php
include_once "form.php";
include_once "../../../connect.php";
//include_once "even_listener.php";
//let us create students create the first form.
//insert student;
$form = new Form();
$input = new Input();
$label = new Label();
$input_wrapper = "";
$form->set_form("insert_student.php", "POST", "");
//first _name
$label->set_label("first_name", "First Name", "");
$input->set_input("text", "first_name", "", "First Name", "");
$input_wrapper .= $label->get_label() . "<br>\n";
$input_wrapper .= $input->get_input_text() . "<br>\n";
//Last Name
$label->set_label("last_name", "Last Name", "");
$input->set_input("text", "last_name", "", "Last Name", "");
$input_wrapper .= $label->get_label() . "<br>\n";
$input_wrapper .= $input->get_input_text() . "<br>\n";
//first _name
$label->set_label("id_nr", "ID Number", "");
$input->set_input("text", "id_nr", "", "ID Number", "");
$input_wrapper .= $label->get_label() . "<br>\n";
$input_wrapper .= $input->get_input_text() . "<br>\n";
//first _name
$label->set_label("sex", "Gender", "");
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
$label->set_label("phone", "Phone Number", "");
$input->set_input("text", "phone", "", "Phone Number", "");
$input_wrapper .= $label->get_label() . "<br>\n";
$input_wrapper .= $input->get_input_text() . "<br>\n";

//first _name
$label->set_label("address", "Home Address", "");
$input->set_input("text", "address", "", "Home Address", "");
$input_wrapper .= $label->get_label() . "<br>\n";
$input_wrapper .= $input->get_input_text() . "<br>\n";
$input->set_input("submit","submit", "Insert Student", "","");
$input_wrapper .= $input->get_input() ."<br>\n";
echo $form->get_form_wrapper($input_wrapper);
//End everything here

//Let us look up for
//select all courses and then show then to the user
$select_course = new Select();
$compile_select = "";
$select_course->set_select("course", "course", "");
$select_course->set_select_more("course", "course", "", "", "onchange");
//echo "<br>" . $select_course->get_select("") . "<br>";
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
$form->set_form("", "POST", "");

$input->set_input("submit", "click_course", "Enrol Modules", "", "");
//Now let us show the user the modules that they want to entrol - make sure that all the modules that weill be showed will be first year modules.

//$input->get_input();
$final_select ="";

$final_select = $select_course->get_select_more($compile_select);
//echo $final_select;
$final_select .= "<br>\t". $input->get_input() . "\n";
echo $form->get_form_wrapper($final_select);

$course_id = 0;
if(isset($_POST['click_course']))
{
    //Show the modules that we want to take.
    //Get the course that has been selected. and then show it
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
    }
    $module_name .= " modules";
    //Create a label
    $label->set_label("", $module_name, "");
    echo "\n<br>" . $label->get_label();
    //get the valude of the

    //Here we show the user the modules that they can register based upon the course that they have chosen.
    //$sql = "SELECT * FROM `module` WHERE course"
    $sql = "SELECT c.module_code, c.module_name, c.credit\n"
        . "FROM course a, course_module b, module c\n"
        . "WHERE a.course_id = b.course_id\n"
        . "AND b.module_code = c.module_code\n"
        . "AND a.course_id = $course_id";
   $result = mysqli_query($link, $sql);
   $module_table = "";
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
       $form->set_form("", "POST", "");
       $input->set_input("submit", $module_name, "Register", "", "");
       //Wrap the form together
       //$_POST[] -- The currently submitted button.
       $form_out = $form->get_form_wrapper($input->get_input());



       $module_table .= "\n\t\t<td>" . $form_out . "</td>";
       $module_table .= "\n\t\t<td>" . $input->get_input() . "</td>";
       $module_table .= "\n\t</tr>";

       //Created a form each buton.
       //echo "<br>" .  $row['module_code'] . " | " . $row['module_name'] . " | " . $row["credit"] . "<br>\n";
     }
     //echo $module_name .= " modules<br>";
     $module_table .= "\n\t</table>";
     echo $module_table;
   }
   else
   {
     echo "<br>\n -- No Modules for  found" ;
   }
    //Now let us show all the modules here.
    //module name, register_button, unregister button - complete.
    //echo $sql;
    //$form->set_form("", "POST", "");
    //$label->set_label("", "")

    print_r($_POST);

}


//The next this that we need to do here is to include java script files. --
//but remember the JavaScript resides in the html document and not on the php documet -but I can call java scrip using php

//OK so we do get an event - now what do we want to do with that event?
//We want to call off other things - now how do we call of other things.
//We need to know what has been clicked and the value contained therein
//We then need to open another object which will take us to what we have clicked.
//include_once "java_script.php";



?>
