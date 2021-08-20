<?php
include_once "../../../connect.php";
include_once "../functions.php";
include_once "../student/student.php";
include_once "../student/form.php";
include_once "lecture_portal_header.php";
//Now let us write the SQL

if(isset($_POST['assing_class']))
{
    $group_name = $_POST['group_name'];
    $lecture_id = $_POST['lecture_id'];
    $staff_number = $_POST['staff_number'];
    $sql = "INSERT INTO lecture_group (group_name, lecture_id, staff_number) VALUES (\"$group_name\", $lecture_id, $staff_number)";
    if(mysqli_query($link, $sql))
    {
        header("LOCATION: view_lecture.php");
    }
    //This part here should reorganize groups but it will not make sense, I think the best option will be to reorganize groups when we are done with all the work
}