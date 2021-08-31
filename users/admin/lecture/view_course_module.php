<?php
include_once "../../../connect.php";
include_once "../functions.php";
include_once "../student/student.php";
include_once "../student/form.php";
include_once "lecture_portal_header.php";
echo header_html("../../../style.css");
//When we are here  we needt o have a view of all the classes for this course --
//Now let us view all the classes for this available for this course.

//echo "<h1>All classes for </h1><br><hr>";

$course_id = (int)$_POST['course_id'];
view_lectures($link, $course_id);
function view_lectures($link, $course_id)
{
    $form = new Form();
    $label = new Label();
    $input = new Input();
    // $sql = "
    // SELECT *
    // FROM lecture, module, course, course_module
    // WHERE lecture.module_code = module.module_code
    // AND course_module.course_id = course.course_id
    // AND module.module_code  = course_module.module_code
    // AND course.course_id = $course_id
    // AND year >= 2021
    // AND semester = 1
    // ORDER BY year, semester";
    $sql = "
    SELECT *
    FROM lecture, module, course, course_module
    WHERE lecture.module_code = module.module_code
    AND course_module.course_id = course.course_id
    AND module.module_code  = course_module.module_code
    AND course.course_id = $course_id
    AND lecture.module_code = 'DSO34BT'
    ORDER BY year, semester";
    $course_name = get_course_name_clicked_2($link, $course_id);
    $student_table = "";
    $result = mysqli_query($link, $sql);
    echo "<br><h1>List of all $course_name  classes</h1><br><hr>";
    echo back_button("lecture_portal.php");
    //echo "<br>" .  $_SESSION['activity'] . "<br>";
    $count_students = 0;
    if(mysqli_num_rows($result)>0)
    {
        $student_table = "";
        $student_table .= "\n\t<table>\n<tr>";
        $student_table .= "\n\t\t<th>Class ID</th>";
        $student_table .= "\n\t\t<th>Module Code</th>";
        $student_table .= "\n\t\t<th>Module Name</th>";
        $student_table .= "\n\t\t<th>Module Level</th>";
        $student_table .= "\n\t\t<th>Module Credit</th>";
        $student_table .= "\n\t\t<th>Year</th>";
        $student_table .= "\n\t\t<th>Semester</th>";
        $student_table .= "\n\t\t<th>Course Name</th>";
        $student_table .= "\n\t\t<th> </th>";//View Class
        //$student_table .= "\n\t\t<th> </th>";//Udate
        //$student_table .= "\n\t\t<th> </th>";//View Student - This is where we take you to the student home page - now we are going to do that - 
        $student_table .= "\n\t</tr>";
        
        while($row = mysqli_fetch_assoc($result))
        {
            $count_students++;
            //Show us everything about the classes in this course
            $student_table .= "\n\t<tr>";
            $student_table .= "\n\t\t<td>" .$row['lecture_id'] . "</td>";
            $student_table .= "\n\t\t<td>" .$row['module_code'] . "</td>";
            $student_table .= "\n\t\t<td>" .$row['module_name'] . "</td>";
            $student_table .= "\n\t\t<td>" .$row['module_level'] . "</td>";
            $student_table .= "\n\t\t<td>" .$row['credit'] . "</td>";
            $student_table .= "\n\t\t<td>" .$row['year'] . "</td>";
            $student_table .= "\n\t\t<td>" .$row['semester'] . "</td>";
            $student_table .= "\n\t\t<td>" .$row['course_name'] . "</td>";

            //Cool now we need to create a form which will simply be a button - 
            //1st Form Delete a Student - student number - this is all that we are going to need.
            //Set the form to delete a student.
            //Here we want to view the Lecture

            $inputs = "";
            $lecture_id = $row['lecture_id'];
            $form->set_form("view_lecture.php", "POST", "");
            $input->set_input("hidden", "lecture_id", $lecture_id, "", "");
            $inputs .= $input->get_input();
            $input->set_input("hidden", "course_id", $course_id, "", "");
            $inputs .= $input->get_input();
            $input->set_input("submit", "view_class", "View", "", "submit_button");
            $inputs .= $input->get_input();
            $form_out = $form->get_form_wrapper($inputs);
            $student_table .= "\n\t\t<td>" . $form_out . "</td>";
        }
        $student_table .= "\n\t</table>";
        echo $student_table;
    }
    else
    {
        echo "No Classes Found";
    }
}


function back_button($back_url)
{
    $form = new Form();
    $input = new Input();
    $out = "";
        //create a back button - which is actually a form - 
        $form->set_form($back_url, "POST", "");
        //$label->set_label("Click to Register new Student", "First Name", "");
        $input->set_input("submit", "back", "Back", "", "back_button");
        echo $form->get_form_wrapper($input->get_input());
        //Above is the back button
    return $out;
}


?>