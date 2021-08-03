<?php
include_once "../../../connect.php";
include_once "../functions.php";
include_once "../student/student.php";
include_once "../student/form.php";
include_once "lecture_portal_header.php";

//Now the goal is to create all lectures and then show the student the lectures that were created ....
//Firstly make sure that we knwo if we are on the first of the secon semester.
//Or rather let us do it this way we are going to create all lectures for first and second semester.
//select * the modules.
//After doing so we want omke
//HI there 
echo $header_title;
echo $create_lecture;
if(isset($_POST['auto_create']))
{
    $course_id = $_SESSION['course_id'];
    $sql = "SELECT * \n"
    . "FROM module, course_module\n"
    . "WHERE module.module_code = course_module.module_code\n"
    . "AND course_module.course_id = $course_id";
    $result = mysqli_query($link, $sql);
    if(mysqli_num_rows($result) > 0)
    {
        //We need to get all the courses and then we need to create 
        //Lecture contains all the modules - semester, year, prerequisite_module, module_code.
        //Now the question is how are we going to make sure that we are going to assign the modules to where they belong?
        //I am also worried about the part of pre-requisites.
        //We can use the module_code to get the pre-requisites which means BT requires AT to be registered. -- And we also need to make sure that the we are able to get that.

        while($row = mysqli_fetch_assoc($result))
        {
            echo "<br>" . $row['module_code'] . " " . $row['module_name'] . " " . $row['date'] . " " ;
            //Let us test pre-requisite.
            $module_code = $row['module_code'];
            //Now let us break down this module to know if a few things about it.
            //We can use an array - and bouble sorting.
            
        }
    }
}

?>  