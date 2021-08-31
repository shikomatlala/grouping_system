<?php
include_once "../../../connect.php";
include_once "../functions.php";
include_once "../student/student.php";
include_once "../student/form.php";
include_once "../lecture/lecture_portal_header.php";
echo header_html("../../../style.css");

//==================================
//variables
//======================
$count_students = 0;
$staff_number = (int)$_POST['staff_number'];
$_SESSION['staff_num'] = (int)$_POST['staff_number'];
$lecture_group_id = (int)$_POST['lecture_group_id'];
$_SESSION['class_id'] = (int)$_POST['lecture_group_id'];
$_SESSION['mod_code'] =  (int)$_POST['module_code'];
$header = "";
$header .= $_POST['module_code'] . "  Module</h1><hr>\n";
$module_code = $_POST['module_code'];
$header .= "<h3>Your Fellow Lecturers For this Module</h3>\n";
$_SESSION['lecture_group_id'] = (int)$_POST['lecture_group_id'];

//echo $_SESSION['lecture_group_id'];
echo "<h1>Grouping Portal</h1><br><hr>";
//Create the group students 
//
$sql = "
      SELECT c.stud_number, first_name, last_name, phone, email
      FROM lecture_group a, lecture b, lecture_student c, student d
      WHERE a.lecture_id = b.lecture_id
      AND c.lecture_id = b.lecture_id
      AND d.stud_number = c.stud_number
      AND a.staff_number = $staff_number
      AND b.module_code = \"$module_code\"";
      
  
  $result = mysqli_query($link, $sql);
  if(mysqli_num_rows($result)>0)
  {
    $student_list = "";
    $student_list .= "\n\t<table>\n\t<tr>";
    $student_list .= "\n\t\t<th>Class List Number</th>";
    $student_list .= "\n\t\t<th>Student Number</th>";
    $student_list .= "\n\t\t<th>First Name</th>";
    $student_list .= "\n\t\t<th>Last Name</th>";
    $student_list .= "\n\t\t<th>Phone</th>";
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
        $student_list .= "\n\t\t<td>" .$row['stud_number'] . "</td>";
        $student_list .= "\n\t\t<td>" .$row['first_name'] . "</td>";
        $student_list .= "\n\t\t<td>" .$row['last_name'] . "</td>";
        $student_list .= "\n\t\t<td>" .$row['phone'] . "</td>";
        $student_list .= "\n\t\t<td>" .$row['email'] . "</td>";
        //$student_list .= "\n\t</tr>";

    }

    echo  back_button("timetable.php");
    echo heavy_button($staff_number, "staff_number", $lecture_group_id,"lecture_group_id", $module_code, "module_code", "group_students", "Group Students", "test_grouping.php", "submit_button");
    //echo button($staff_number, "staff_number", $lecture_group_id, "lecture_group_id", "group_students", "Group Students", "test_grouping.php");
    echo "<h2>Student List</h2><hr><br>";
    echo $student_list;
  
  }

  function back_button($back_url)
  {
      $form = new Form();
      $input = new Input();
      $out = "";
          //create a back button - which is actually a form - 
          $form->set_form($back_url, "POST", "");
          $input->set_input("submit", "back", "Back", "", "back_button");
          echo $form->get_form_wrapper($input->get_input());
          //Above is the back button
      return $out;
  }
  function jump_button($back_url)
  {
      $form = new Form();
      $input = new Input();
      $out = "";
          //create a back button - which is actually a form - 
          $form->set_form($back_url, "POST", "");
          //$label->set_label("Click to Register new Student", "First Name", "");

          $input->set_input("submit", "group_student", "Group Students", "submit_button", "submit_button");
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
        $input->set_input("submit", $button_name, $button_caption, "", "submit_button");
        $inputs .= $input->get_input() . "\n";
        $out =  $form->get_form_wrapper($inputs);
        //Above is the back button
    return $out;
}

function button_back($data1, $data_name1, $data2, $data_name2, $button_name, $button_caption, $action)
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
        $input->set_input("submit", $button_name, $button_caption, "", "back_button");
        $inputs .= $input->get_input() . "\n";
        $out =  $form->get_form_wrapper($inputs);
        //Above is the back button
    return $out;
}

function heavy_button($data1, $data_name1, $data2, $data_name2, $data3, $data_name3, $button_name, $button_caption, $action, $class)
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
        $input->set_input("hidden", $data_name3, $data3, "", "");
        $inputs .= $input->get_input() . "\n";
        $input->set_input("submit", $button_name, $button_caption, "", $class);
        $inputs .= $input->get_input() . "\n";
        $out =  $form->get_form_wrapper($inputs);
        //Above is the back button
    return $out;
}

?>
