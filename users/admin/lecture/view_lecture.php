<?php
include_once "../../../connect.php";
include_once "../functions.php";
include_once "../student/student.php";
include_once "../student/form.php";
include_once "lecture_portal_header.php";
//Back button 
$course_id = (int)$_POST['course_id'];
echo button("", "", $course_id , "course_id", "submit", "Back", "view_course_module.php");

//Get the module cede
//Now the goal is to view the spefici module
//View the module -- together with varioust things about it.
//
//Now we need to view the lecturers who lectures this class

$select_course = new Select();
$label = new Label();
$form = new Form();
$input = new Input();
$count_lecturers =  0;
$count_students = 0;
$where_clause = "";
$lecture_id = (int)$_POST['lecture_id'];
//echo $lecture_id;
$module_code = "";
//==================================================================================================
//get the module_code
//==================================================================================================
$sql = "SELECT * FROM `lecture` WHERE lecture_id = $lecture_id";
$result = mysqli_query($link, $sql);
if(mysqli_num_rows($result)>0)
{

    while($row = mysqli_fetch_assoc($result))
    {
        $module_code = $row['module_code'];
    }
}
//==================================================================================================
//VIEW LECTURE DETAILS
//==================================================================================================
$sql = "SELECT * 
FROM   lecture, module
WHERE module.module_code = lecture.module_code
AND lecture.lecture_id = $lecture_id";
$result = mysqli_query($link, $sql);
$cours_details = "\t\n<ul>";
if(mysqli_num_rows($result)>0)
{

    while($row = mysqli_fetch_assoc($result))
    {
        $cours_details .= "\t\n<li>Module Code: " .$row['module_code'] . "</li>";
        $cours_details .= "\t\n<li>Module Name: " .$row['module_name'] . "</li>";
        $cours_details .= "\t\n<li>Module Level: " .$row['module_level'] . "</li>";
        $cours_details .= "\t\n<li>Module Credit: " .$row['credit']. "</li>";
        $cours_details .= "\t\n<li>Semester: " .$row['semester'] . "</li>";
        $cours_details .= "\t\n<li>Year: " .$row['year'] . "</li>";
    }

}

$sql = "SELECT * 
FROM lecturer, lecture_group, lecture, module
WHERE lecturer.staff_number = lecture_group.staff_number
AND lecture_group.lecture_id = lecture.lecture_id
AND module.module_code = lecture.module_code
AND lecture.lecture_id = $lecture_id";
$result = mysqli_query($link, $sql);
$lecturer_list = "";


//Get the module_code

//Unordered list to view the module details


if(mysqli_num_rows($result)>0)
{
    $lecturer_list .= "\n\t<table>\n\t<tr>";
    $lecturer_list .= "\n\t\t<th>List Count</th>";
    $lecturer_list .= "\n\t\t<th>Staff Number</th>";
    $lecturer_list .= "\n\t\t<th>First Name</th>";
    $lecturer_list .= "\n\t\t<th>Last Name</th>";
    $lecturer_list .= "\n\t\t<th>Phone</th>";
    $lecturer_list .= "\n\t\t<th>Email</th>";
    $lecturer_list .= "\n\t\t<th> </th>";//Assign Class
    //$lecturer_list .= "\n\t\t<th> </th>";//Udate
    //$lecturer_list .= "\n\t\t<th> </th>";//View Student - This is where we take you to the student home page - now we are going to do that - 
    $lecturer_list .= "\n\t</tr>";
    
    while($row = mysqli_fetch_assoc($result))
    {
        $count_lecturers++;
        //Show us everything about the classes in this course
        $lecturer_list .= "\n\t<tr>";
        $lecturer_list .= "\n\t\t<td>" . $count_lecturers . "</td>";
        $lecturer_list .= "\n\t\t<td>" .$row['staff_number'] . "</td>";
        $lecturer_list .= "\n\t\t<td>" .$row['first_name'] . "</td>";
        $lecturer_list .= "\n\t\t<td>" .$row['last_name'] . "</td>";
        $lecturer_list .= "\n\t\t<td>" .$row['phone'] . "</td>";
        $lecturer_list .= "\n\t\t<td>" .$row['email'] . "</td>";
        $where_clause .= "AND staff_number <> " . $row['staff_number'] . "  ";
    }

}
//Now the question is what do we want to view ---
//We want to view all students taking this lecture and then also want to view the lectures teaching this class
//Another thing that we can do is to make sure that we can assign a lecturer to this lecture.
//Now firslty view all the students taking this course.
$count_students = 0;
//$lecture_id = (int)$_POST['lecture_id'];
$sql = "SELECT * 
FROM student, lecture_student, lecture, module
WHERE student.stud_number = lecture_student.stud_number
AND lecture.lecture_id = lecture_student.lecture_id
AND module.module_code = lecture.module_code
AND lecture.lecture_id = $lecture_id
ORDER BY year, semester";
$result = mysqli_query($link, $sql);
$student_list = "";
if(mysqli_num_rows($result)>0)
{
    $student_list = "";
    $student_list .= "\n\t<table>\n<tr>";
    $student_list .= "\n\t\t<th>List Count</th>";
    $student_list .= "\n\t\t<th>Student Number</th>";
    $student_list .= "\n\t\t<th>First Name</th>";
    $student_list .= "\n\t\t<th>Last Name</th>";
    $student_list .= "\n\t\t<th>Gender</th>";
    $student_list .= "\n\t\t<th>Email</th>";
    //$student_list .= "\n\t\t<th> </th>";//View Class
    //$student_list .= "\n\t\t<th> </th>";//Udate
    //$student_list .= "\n\t\t<th> </th>";//View Student - This is where we take you to the student home page - now we are going to do that - 
    $student_list .= "\n\t</tr>";
    
    while($row = mysqli_fetch_assoc($result))
    {
        $count_students++;
        //Show us everything about the classes in this course
        $student_list .= "\n\t<tr>";
        $student_list .= "\n\t\t<td>" . $count_students . "</td>";
        $module_code = $row['module_code'];
        $student_list .= "\n\t\t<td>" .$row['stud_number'] . "</td>";
        $student_list .= "\n\t\t<td>" .$row['first_name'] . "</td>";
        $student_list .= "\n\t\t<td>" .$row['last_name'] . "</td>";
        $student_list .= "\n\t\t<td>" .$row['gender'] . "</td>";
        $student_list .= "\n\t\t<td>" .$row['email'] . "</td>";
        //$student_list .= "\n\t</tr>";
    }
    $student_list .= "\n\t</table>";
}

//Lecture_ and Lecturers
$cours_details .= "\t\n</ul>";
echo "<hr><h1>Class Details | $module_code</h1>\n";
echo $cours_details;
$lecturer_list .= "\n\t</table>";

//Class lecturers will appear here
echo "<hr><h1>Class Lecturers<h1>\n";
echo "<h3>Total Count: " . $count_lecturers . "\n<h3>";
echo "<hr>" . $lecturer_list;
//Show lectures that are not assigned this class yet.
//1st Select all lectures
echo "<hr><h2>Assign this class to other lecturers</h2>";
///--------------------------
///------------------------
///--------------------------
$sql = "SELECT * 
FROM lecturer
WHERE staff_number <> 1 " . $where_clause;
$result = mysqli_query($link, $sql);

if(mysqli_num_rows($result)>0)
{
    $available_lecturers = "";
    $available_lecturers .= "\n\t<table>\n<tr>";
    //$available_lecturers .= "\n\t\t<th>List Count</th>";
    $available_lecturers .= "\n\t\t<th>Staff Number</th>";
    $available_lecturers .= "\n\t\t<th>First Name</th>";
    $available_lecturers .= "\n\t\t<th>Last Name</th>";
    $available_lecturers .= "\n\t\t<th>Gender</th>";
    $available_lecturers .= "\n\t\t<th>Email</th>";
    $available_lecturers .= "\n\t\t<th> </th>";//Assign this Class
    //$student_list .= "\n\t\t<th> </th>";//Udate
    //$student_list .= "\n\t\t<th> </th>";//View Student - This is where we take you to the student home page - now we are going to do that - 
    $available_lecturers .= "\n\t</tr>";
    
    while($row = mysqli_fetch_assoc($result))
    {
        //$count_students++;
        //Show us everything about the classes in this course
        $available_lecturers .= "\n\t<tr>";
        //$available_lecturers .= "\n\t\t<td>" . $count_students . "</td>";
        $available_lecturers .= "\n\t\t<td>" .$row['staff_number'] . "</td>";
        $available_lecturers .= "\n\t\t<td>" .$row['first_name'] . "</td>";
        $available_lecturers .= "\n\t\t<td>" .$row['last_name'] . "</td>";
        $available_lecturers .= "\n\t\t<td>" .$row['sex'] . "</td>";
        $available_lecturers .= "\n\t\t<td>" .$row['email'] . "</td>";
        //$student_list .= "\n\t</tr>";
        //Assign class Button
        $inputs = "";
        $staff_number = (int)$row['staff_number'];
        $group_name = $row['last_name'] . "_" . $module_code;
        $form->set_form("assing_lecturer_class.php", "POST", "");
        $input->set_input("hidden", "course_id", $course_id, "", "");
        $inputs .= $input->get_input();
        $input->set_input("hidden", "lecture_id", $lecture_id, "", "");
        $inputs .= $input->get_input();
        $input->set_input("hidden", "staff_number", $staff_number, "", "");
        $inputs .= $input->get_input();
        $input->set_input("hidden", "group_name", $group_name, "", "");
        $inputs .= $input->get_input();
        $input->set_input("submit", "assing_class", "Assign Class", "", "");
        $inputs .= $input->get_input();
        $form_out = $form->get_form_wrapper($inputs);
        $available_lecturers .= "\n\t\t<td>" . $form_out . "</td>";

    }
    $available_lecturers .= "\n\t</table>";

}
else
{
    echo "No Classes Found";
}
///------------------------
///--------------------------
///------------------------
echo $available_lecturers;
//echo "18203 Lerato Makapane 8901010025086 F 885210566 leratomakapane@gmail.com";
//
echo "<hr><h1>Students Enrolled<h1>\n";
echo "<h3>Total Count: " . $count_students . "\n<h3>";
echo "<hr>" . $student_list . "<hr>";

function back_button($back_url)
{
    $form = new Form();
    $input = new Input();
    $out = "";
        //create a back button - which is actually a form - 
        $form->set_form($back_url, "POST", "");
        //$label->set_label("Click to Register new Student", "First Name", "");
        $input->set_input("submit", "back", "Back", "", "");
        echo $form->get_form_wrapper($input->get_input());
        //Above is the back button
    return $out;
}

function button($data1, $data_name1, $data2, $data_name2, $button_name, $button_caption, $action)
{
    $form = new Form();
    $input = new Input();
    $inputs = "";
    $out = "";
        //create a back button - which is actually a form - 
        $form->set_form($action, "POST", "");
        $input->set_input("hidden", $data_name1, $data1, "", "");
        $inputs .= $input->get_input() . "\n";
        $input->set_input("hidden", $data_name2, $data2, "", "");
        $inputs .= $input->get_input() . "\n";
        $input->set_input("submit", $button_name, $button_caption, "", "");
        $inputs .= $input->get_input() . "\n";
        $out =  $form->get_form_wrapper($inputs);
        //Above is the back button
    return $out;
}

?>