<?php
//In order for us to enrol lecture we need the following information
//Stud number
//Lecture Id
//We also need to know which course the student has taken.
//For now we know that the student has enroled in Software Development
//and then we need to make sure that the module is contained in the course which the student has enroled.
include_once "form.php";
include_once "../../../connect.php";
include_once "student.php";
include_once "../functions.php";

if(isset($_POST['submit']))
{
    //Now let us register the studen.
    echo $_POST['stud_number'] . "<br>";
    echo $_POST['lecture_id'] . "<br>";
    $stud_number = (int)$_POST['stud_number'];
    $lecture_id = (int)$_POST['lecture_id'];
    $reg_date  = date('Y-m-d');
    echo "The registration date is:   " . $reg_date;
    //test if  the student has already registered for this class ID
    $test_sql = "
    SELECT * 
    FROM lecture_student
    WHERE lecture_student.lecture_id = $lecture_id
    AND stud_number = $stud_number
    ";
    $test_result = mysqli_query($link, $test_sql);
    if(mysqli_num_rows($ary_result) > 0)
    {
        header("LOCATION: view_student.php");
    }
    else
    {
        $sql = "INSERT INTO lecture_student (reg_date, lecture_id, stud_number) VALUES (\"$reg_date\", $lecture_id, $stud_number)";
        if(mysqli_query($link, $sql)) //true / false
        {
            //We should then go back there --
            //But for now we are going to say that you have successfully registered the student.
            //echo "<h1>Student successfully enrolled for class</h1>";
            header("LOCATION: view_student.php");
            //This is where we need to test the modules that student can take.
            //Check the module group, within the module group, check the student has is in the right level
        }
    }

}


?>