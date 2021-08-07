<?php
include_once "../../../connect.php";

//echo "We are about to delete you... ";
if(isset($_POST['delete_student']))
{
    //Now we can move on to deleting this student
    //Le us delete you dude.
    $stud_number = (int)$_POST['stud_number'];
    $sql = "DELETE FROM student WHERE stud_number = $stud_number";

    if(mysqli_query($link, $sql))
    {
        //We have delete the student - now we need to go back - to that page...
        $_SESSION['crud_result'] = " $stud_number   deleted successfully";
        //Now jump back to the page
        //include "student_portal_home.php";
        //Create a form that is going to jump us back.
        //Or we can use an a href
        header("LOCATION: student_portal_home.php");
    }
    else
    {
        $_SESSION['crud_result'] =  "$stud_number could not get deleted";
        header("LOCATION: student_portal_home.php");
        //Now jump back to the page
        //include "student_portal_home.php";
        //We are going to delete you
        //header("LOCATION: student_portal_home.php");
        //Another one
        //echo "";
    }
}

?>