<?php
include_once "../../../connect.php";
include_once "student.php";
include_once "form.php";

$student = new Student();
$student->set_link($link);
//what do we need to insert this student -- well we just need to know the current studen stumber - but ai its going to take us time-- wel
//Create an error list - if we can do so we will be ale to know how to work with out erros - or we can push the person back and then just change a few things to the class -
//$status_stud_name = "";
if(isset($_POST['submit']))
{
    //Get the
    //$student->validate_name($)
    //print_r($student->get_link());
    $student->set_stud_number();
    $student->set_firstname($_POST['first_name']);
    $student->set_lastname($_POST['last_name']);
    $student->set_id($_POST['id_nr'], $link);
    $student->set_sex($_POST['sex']);
    $student->set_phone($_POST['phone'], $link);
    $student->set_address($_POST['address']);
    $student->set_email($student->get_stud_number());

    if(strpos($student->view_sql(), "NULL") == false)//Meaning no string found
    {
        //echo "<h1>horray we are about to insert the user</h1>";
        //if (mysqli_query($conn, $sql))
        $sql = $student->view_sql();
        if(mysqli_query($link, $student->view_sql()))
        {
          echo "<h1>Student added </h1>";
          include "student_portal_home.php";
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
      $input_wrapper .= $input->get_input_text() . "<br>\n";
      $input->set_input("submit","submit", "Insert Student", "","");
      $input_wrapper .= $input->get_input() ."<br>\n";
      echo $form->get_form_wrapper($input_wrapper);
    }

    //echo "<br>" . $stud_number;

}



/*
echo "<br>";
echo "<br>The ID is " . $student->get_id();
echo "<br>ID Valid = " . $student->validate_id("9910230093082");
echo "<br>ID Check = " . $student->check_id("9910230093082", $link);
echo "<br>ID Valid = " . $student->validate_id($student->get_id());
echo "<br>";
echo "<br>";
echo "<br>Phone Valid = " . $student->validate_phone("0723302232", $link);
echo $student->view_sql();
echo "<br>";
echo $student->get_email();


echo "<br>" . $_POST['first_name'];
echo "<br>" . $_POST['last_name'];
echo "<br>" . $_POST['id_nr'];
echo "<br>" . $_POST['sex'];
echo "<br>" . $_POST['phone'];
echo "<br>" . $_POST['address'];

echo "<br>" . $stud_number;
$email;
$email = $stud_number . "@tut4life.ac.za";
//echo "<br>" . $email;
//Now let us insert the student to the base.
$student = new Student();
//echo $student->validate_id($_POST['id_nr'], $link);
if($student->check_id($_POST['id_nr'], $link) == 0 )
{
  echo "<br>This ID Number is already in use <br>\n";
}
if($student->validate_phone($_POST['phone'], $link) == 0)
{
  echo "<br>This phone number is already in use<br>\n";
}
$student->validate_id($_POST['id_nr']);

//echo   "<br>". $stud_number. ", " . $_POST['first_name'] . ", " . $_POST['last_name'] . ", " . $_POST['id_nr'] . ", " . $_POST['sex'] . ", " . $_POST['phone'] . ", " . $email . ", " . $_POST['address'];

/*
if(isset($_POST["submit"]))
{
  //Get the students data
  $sql = "INSERT INTO `student` ('stud_number',	'first_name',	'last_name',	'id_nr',	'sex',	'phone',	'email',	'address')
          VALUES ($stud_number, \"$_POST['first_name']\" ,  \"$_POST['last_name']\" ,   \"$_POST['id_nr']\" , \"$_POST['sex']\" , \"$_POST['phone']\" , \"$email\", \"$_POST['address']\" ) ";
  if(mysqli_query($link, $sql))
  {
    echo "<h1>Student has been added</h1>";
  }
  else
  {
     echo "Something went wrong"
  }
}*/

?>
