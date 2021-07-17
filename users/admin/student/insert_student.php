<?php
include_once "../../../connect.php";
include_once "student.php";
$sql = "SELECT MAX(stud_number) AS max_value \n"
    . "FROM student";
$result = mysqli_query($link, $sql);
$stud_number =0;
if(mysqli_num_rows($result) > 0)
{
    while($row = mysqli_fetch_assoc($result))
    {
      //Show the hightest number
      $stud_number= (int)$row["max_value"];
      $stud_number++;
    }
}
$student = new Student();
//what do we need to insert this student -- well we just need to know the current studen stumber - but ai its going to take us time-- wel
if(isset($_POST['submit']))
{
    //Get the
    if($student->validate_name($_POST['first_name']) == 0)
    {

    }
    echo "<br>" . $stud_number;
    echo "<br>" . $_POST['first_name'];
    echo "<br>" . $_POST['last_name'];
    echo "<br>" . $_POST['id_nr'];
    echo "<br>" . $_POST['sex'];
    echo "<br>" . $_POST['phone'];
    echo "<br>" . $_POST['address'];
}



/*

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
