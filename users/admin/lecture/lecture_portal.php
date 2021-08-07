<?php
//All our includes are here.
include_once "../../../connect.php";
include_once "../functions.php";
include_once "../student/student.php";
include_once "../student/form.php";
include_once "lecture_portal_header.php";
//OK Now let us manege the lectures.
back_button("../admin_home.html");
echo $header_title;
echo $create_lecture;
echo "<p>You can create a lecture where students can apply to the lecturer<br>
creating a lecturer will require you to also have lecturers who will be available to give the lecture<br>Select the create lecture button to create a lecture.</p>";
//Lec us nwo create a user can create a lecturer -
$form = new Form();
$label = new Label();
$input = new Input();
//Potential issue here is that this session is created when the Admin goes to the student portal - Now I need to make sure that I just call this
$_SESSION['course_id'] = 0;
echo get_course_list($link, "lecture_portal.php");
//$_SESSION['isClicked'] = false;
//
if(isset($_POST['click_course']) )//)
{
  echo $_POST['click_course'] . "**** " .  $_POST['course'] . " ||||";
  //$_SESSION['isClicked'] = true;
  $_SESSION['course_sess'] = $_POST['course'];
  echo "<br>" .  $_SESSION['course_sess'] . " <br>";
  //create a session for saving of this information to keep int fase
  //I am learning that I cannot have more than one form at a time - and yet use both those forms together - I do not know how one can be able to do this.
  echo "You can automatically create all lectures for " . get_course_name_clicked($link, $_SESSION['course_sess']) . " by clicking the button bellow";
  //Create a form for the user to click the button so that they can create the lecture
  //now what is automatic creation of lectures.
  //Create a form - remember that he purpose of the form is to make sure that we can get the course that we working with.
  $form->set_form("create_lecture.php", "POST", "");
  $inputs = "";
  $input->set_input("hidden", "course_id", $_SESSION['course_sess'], "", "");
  $inputs .= $input->get_input();
  $input->set_input("submit", "auto_create", "Auto Create Lectures", "", "");
  $inputs .= $input->get_input();
  echo $form->get_form_wrapper($inputs);
  $_SESSION['course_id'] = (int)$_SESSION['course_sess'];

  print_r($_POST);


    //$_SESSION['course_sess'] = $_POST['course'];//

  //Automatically create the lectures.

  //Now create a form where the user can create lectuers for this module
  //$form->
}
if(isset($_POST['auto_create']))
{
  $course_id = $_SESSION['course_id'];
  $sql = "SELECT * \n"
    . "FROM module, course_module\n"
    . "WHERE module.module_code = course_module.module_code\n"
    . "AND course_module.course_id = $course_id ";
  $result = mysqli_query($link, $sql);
  if(mysqli_num_rows($result) > 0)
  {
    while($row = mysqli_fetch_assoc($result))
    {
      echo "<br>" . $row['module_code'] . " " . $row['module_name'] . " " . $row['date'] . " " ;
    }
  }

}
//Now we want to see all the course first and then we want to see all the modules
//Now let us add things inside our form

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


?>
