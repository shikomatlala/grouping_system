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

    //for every module - select its group_number
    //for every group_number select the module_number - 
    //Firstly find the module that we want to enrol - 
                // echo $lecture_id;
                // //Using the lecture_id get the module group -:
                // $sql_module_group = "SELECT module_group, module_level\n"
                // . "FROM lecture, module\n"
                // . "WHERE lecture.module_code =  module.module_code\n"
                // . "AND lecture_id = $lecture_id";
                // //After we get the module group - We want to check the module level that the student has already take - 
                // echo "<br>";
                // $result = mysqli_query($link, $sql_module_group);
                // $module_group = 0;
                // $module_level = 0;
                // if(mysqli_num_rows($result) > 0)
                // {
                //     $row =  mysqli_fetch_assoc($result);
                //     $module_group = (int)$row['module_group'];
                //     $module_level = $row['module_level'];
                //     echo  "Module Group " .$row['module_group'] . " Level " . $row['module_level'] . " stud number $stud_number   lecture_id  $lecture_id";
                // }
                // //Now lect us find group that iw 
                // //AND lecture_student.stud_number  = $stud_number
                // $modules_int_this_group = "
                //         SELECT *
                //         FROM module, lecture_student, lecture
                //         WHERE module.module_code = lecture.module_code
                //         AND lecture_student.lecture_stud_id = lecture.lecture_id
                //         AND module.module_group = $module_group

                // ";
                // $result = mysqli_query($link, $modules_int_this_group);
                // if(mysqli_num_rows($result) > 0)
                // {
                //     //Show us those modules
                //     echo "<br><hr>Module Code | Module Name | Lecture ID | Module Level ";
                //     while($row = mysqli_fetch_assoc($result))
                //     {
                //         echo "<br>";
                //         echo $row['module_code'] . "  |  ";
                //         echo $row['module_name'] . "  |  ";
                //         echo $row['lecture_id'] . "  |  ";
                //         echo $row['module_level'] . "  |  ";
                
                //     }
                // }    
    //Go to group one - 

    //Get the module group of the currenly registered module
    //Now open the the group that is module is in.


?>