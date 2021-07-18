<?php
//test strings
//
include_once "../../../connect.php";
include "student.php";
include "form.php";
echo "<h1>Tetsing Functions</h1><br><br><br>";
$string = "Shikoa";
$id_nr = "-9511275418082 ";
$id_nr = trim($id_nr," ");
$int_id = (int)$id_nr;
$phone = "076";
if( (int)$phone >0)
{
  echo $phone . "<br>";
  echo "We are getting into another if <br>";
  if(1 > 0)
  {
    echo "We are in another if check this out <br>";
  }
}
echo substr($phone, 0,1);
if($int_id < 0)
{
echo "<br>ID Numbre is $int_id<br>";
}
else
{
  echo "We are not working here";
}
if(ctype_digit($id_nr))
{
  echo "<h3>Problem here</h3>";
}
else
{
  echo "<h3>The ID string length is </h3>" . strlen($id_nr) . "\n<br>";
}

if(ctype_digit($id_nr) && strlen($id_nr) ==13)
{
  if(substr($id_nr,2,2) != "00")
  {
    if(substr($id_nr,4,2)!="00")
    {
      echo 1 . " = ID number is good<br>";
    }
    else
    {
      echo 0;
    }
  }
  else
  {
    echo substr($id_nr, 2,2);
  }
  //echo substr($id_nr, 2,2);
}
else
{
  echo $id_nr. " NB:: contains other characters apart from numeric digits<br><br>";
}
//This ther
if(ctype_alpha($string))
{
  echo "we are good\n<br>";
}
else
{
  echo "False\n<br>";
}
echo "<h1>Testing student.php class</h1><br><br><br>";
$student = new Student();
$student->set_link($link);
$first_name = "Shiko ";
$last_name = "Matlala";
$id_nr = "9511275418082";
//$id_nr = "8604265257084";
$student->set_firstname($first_name);
echo $student->get_firstname() . "<br>";
$student->set_surname($last_name);
echo $student->get_surname() ."<br>";
if($student->check_id($id_nr, $link) == 1)
{
  $student->set_id($id_nr);
}
echo $student->get_id();
echo "<br>" . "The gender of this person is  " . $student->validate_sex($id_nr, "M");
$select = new Select();
$select->set_select("gender","gender", "");
$select->set_option("M", "Male");
$gender_option = "\t".$select->get_option();
$select->set_option("F","Female");
$gender_option .= "\t".$select->get_option();
$select->set_option("O","Other");
$gender_option .= "\t".$select->get_option();
$select_output = $select->get_select($gender_option);
echo $select_output;



?>
