<?php
include_once "../../../connect.php";
include_once "student/form.php";
//Now lect us create a class for getting modules in a list
//echo "list"
function get_course_list($link, $action)
{
  $select_course = new Select();
  $label = new Label();
  $form = new Form();
  $input = new Input();
  $compile_select = "";
  $select_course->set_select("course", "course", "");
  $select_course->set_select_more("course", "course", "", "", "onchange");
  //Create a query to get the courses available in the database
  $sql = "SELECT * FROM `course`";
  $result = mysqli_query($link, $sql);
  if(mysqli_num_rows($result)>0)
  {
    while($row = mysqli_fetch_assoc($result))
    {
      //add data to the set_option.
      $col1 = $row['course_id'];
      $col2 = $row['course_name'];
      $select_course->set_option($col1, $col2);
      $compile_select .= "\t". $select_course->get_option();
    }
  }
  $label->set_label("click_course", "Courses Available", "");
  echo $label->get_label();
  $form->set_form($action, "POST", "");
  $input->set_input("submit", "click_course", "Select Course", "", "");
  //Now le us show the user the moduels that they want to enrol -  after they have selected the course that they want to take.
  $final_select = "";
  $final_select = $select_course->get_select_more($compile_select);
  $final_select .= "<br>\t". $input->get_input() . "\n";
  return $form->get_form_wrapper($final_select);
}

function get_course_name_clicked($link, $course)
{
  $course_id = (int)$_POST['course'];
  $module_name = "";
  $sql = "SELECT * \n"
    . "FROM course\n"
    . "WHERE course_id = $course_id";
  $result = mysqli_query($link, $sql);
  if(mysqli_num_rows($result)>0)
  {
    while($row = mysqli_fetch_assoc($result))
    {
      $module_name =  $row['course_name'];
    }
  }
  return $module_name;
}

function get_course_name_clicked_2($link, $course)
{
  $course_id = (int)$course;
  $module_name = "";
  $sql = "SELECT * \n"
    . "FROM course\n"
    . "WHERE course_id = $course_id";
  $result = mysqli_query($link, $sql);
  if(mysqli_num_rows($result)>0)
  {
    while($row = mysqli_fetch_assoc($result))
    {
      $module_name =  $row['course_name'];
    }
  }
  return $module_name;
}

?>
