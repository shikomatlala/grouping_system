<?php
include_once "../../../connect.php";
include_once "../functions.php";
include_once "../student/student.php";
include_once "../student/form.php";
include_once "../lecture/lecture_portal_header.php";
echo header_html("../../../style.css");
//Now let us make a way of selecting all the students in the groups but instead of just selecting them we need to make sure that we display them in groups of 5.
//Make a button to say that we awant to insert a specific number of students.
//Create a form and this form is going to allow us to open antoher portal that will alow us to create groups for our students
//This form should say by how many groups each.
//==========================================================
//Create the group guide form
//==========================================================
//---------------------------------
//variables
//-----------------
//echo back_button("grouping_portal.php");
//button_back($data1, $data_name1, $data2, $data_name2, "view_class", "Back", "grouping_portal.php");
$form = new Form();
$input = new Input();
$label = new Label();
$student = new Student();
$input_wrapper = "";
$ul = "";
$child_ul = "";
$_SESSION['student_num'] = array();//This array is designed to store all the students numbers.
$_group_cursor = 0;
$_tot_reminder = 0;
$_remainder_counter = 0;
$_array_size = 0;
$group_form = "";
$complete_group_form = "";
$num_groups = 0;
$_group_cursor = 0;
//-----------------------------------------------------------------
//Create views
//-----------------------------------------------------------------
$sql = "CREATE OR REPLACE VIEW `stud_with_dso34bt` AS
SELECT student.stud_number AS stud_number, student.first_name, student.last_name, student.gender, module.module_code
FROM module, student, lecture, lecture_student
WHERE lecture.module_code = module.module_code
AND lecture_student.lecture_id = lecture.lecture_id
AND student.stud_number = lecture_student.stud_number
AND lecture.lecture_id = 77";
mysqli_query($link,$sql);
$sql = "CREATE OR REPLACE VIEW `stud_ac_level` AS
SELECT student.stud_number, student.first_name, student.last_name, student.gender, COUNT(module.module_code) module_count, SUM(module.credit) credit_score
FROM module, student, lecture, lecture_student
WHERE lecture.module_code = module.module_code
AND lecture_student.lecture_id = lecture.lecture_id
AND student.stud_number = lecture_student.stud_number
AND student.stud_number IN (SELECT stud_number FROM  stud_with_dso34bt)
GROUP BY student.stud_number, student.first_name, student.last_name, student.gender
ORDER BY credit_score";
mysqli_query($link,$sql);
//-----------------------------------------------------------------
//Store all the students numbers inside an array
//-----------------------------------------------------------------
// $sql = "SELECT stud_number FROM student";
// $sql = "
// SELECT student.stud_number, student.first_name, student.last_name
// FROM student, lecture, lecture_student, module
// WHERE module.module_code = 'DSO34AT'
// AND lecture.module_code = module.module_code
// AND lecture_student.lecture_id = lecture.lecture_id
// AND student.stud_number = lecture_student.stud_number
// GROUP BY student.stud_number, student.first_name, student.last_name";
//==============================
//UL TO LIST GROUPING DETAILS
//===========================
$ul = "<ul>\n";
  $sql = "SELECT * 
    FROM stud_ac_level";
    $result = mysqli_query($link, $sql);
    if(mysqli_num_rows($result)>0)
    {
        while($row = mysqli_fetch_assoc($result))
        {
            array_push($_SESSION['student_num'], $row['stud_number']);
        }
    }
    $_array_size = sizeof($_SESSION['student_num']) - 1;
    //echo $_array_size . " is the array size <br>";
    //-----------------------------------------------------------------
    //Create the Form
    //-----------------------------------------------------------------
    $staff_number = $_POST['staff_number'];
    $module_code = $_POST['module_code'];
    $form->set_form("", "POST", "");
    $label->set_label("", "Enter The number of members per group", "");
    $group_form .= $label->get_label() . " <br>";
    $input->set_input("text", "num_groups", "", "e.g. 25", "");
    $group_form .= $input->get_input_text();
    $lecture_group_id = $_POST['lecture_group_id'];
    $input->set_input("hidden", "lecture_group_id", $_SESSION['class_id'], "", "");
    $group_form .= $input->get_input() . "\n";
    $input->set_input("hidden", "staff_number", $_SESSION['staff_num'], "", "");
    $group_form .= $input->get_input() . "\n";
    $input->set_input("hidden", "module_code", $_SESSION['mod_code'], "", "");
    $group_form .= $input->get_input() . "\n";
    $input->set_input("submit", "submit_num_groups", "Submit", "", "submit_button");
    $group_form .= $input->get_input();
    $form_out = $form->get_form_wrapper($group_form);
    $complete_group_form .= "\n\t\t<td>" . $form_out . "</td>";
    //--- BACK BUTTON ----
   
    //echo button_back($lecture_group_id, "lecture_group_id", $staff_number, "staff_number", "view_class", "Back", "grouping_portal.php");
 
    echo "<h1>Group Students</h1><br><hr>";
    echo heavy_button($staff_number, "staff_number", $lecture_group_id,"lecture_group_id", $module_code, "module_code", "view_class", "Back", "grouping_portal.php", "back_button");
    //--- display the group form
    echo "<h2>Set Grouping Criteria</h2>";
    echo $complete_group_form;
    $staff_number = $_POST['staff_number'];

    //-----------------------------------------------------------------
    //Use the form information to show students put in groups.
    //Display students in groups of 5 -- from the list of all the students.
    //Create a lsit that will display 25 times -- as it does so the list should show the group names
    //-----------------------------------------------------------------
    //echo "Number of students"  . count($_SESSION['student_num']);
    $stud_dit = "<ul>\n";
    $stud_dit .= "\t<li>" . "Number of students "  . count($_SESSION['student_num']) . "</li>\n";
    $student_table = "";
    if(isset($_POST['submit_num_groups']))
    {

        $num_groups = (int)count($_SESSION['student_num'])/(int)$_POST['num_groups'];
        $_SESSION['num_groups']  = $_POST['num_groups'];
        $_tot_reminder = fmod((int)count($_SESSION['student_num']),(int)$_POST['num_groups']);
        $stud_dit .=  "\t<li>The total number of groups   " . (int)$num_groups . " <br></li>\n";
        $stud_dit.= "\t<li>Remainder " . $_tot_reminder . "<br></li>\n";

        //Create a loop to display all the number of loops -- with group names

        if((int)$num_groups  <= 26 && (int)$num_groups > 0 )
        {
            for($x =0; $x < (int)$num_groups; $x++)
            {

                $ul = "<ul>\n";
                //====================================
                //CREATE A TABLE TO DISPLAY GROUP NAMES
                //====================================
                $student_table .= "\n\t<table>";
                $student_table .= "\n\t\t<tr><th>GROUP NAME</th></tr>";//First Header
                //=====================================
                
                //====================================
                //TABLE DATA - This first is the table name
                //====================================
                $group_name = chr($x + 65);
                $student_table .= "\n\t\t\t<tr><td>" . $group_name  . "</td></tr>";
                $student_table .= "\n\t\t<table>\n\t<tr>";
                $student_table .= "\n\t\t\t<th>Student Number</th>";
                $student_table .= "\n\t\t\t<th>First Name</th>";
                $student_table .= "\n\t\t\t<th>Last Name</th>";
                $student_table .= "\n\t\t\t<th>Gender</th>";
                $student_table .= "\n\t\t\t<th>Group Name</th>";
                $student_table .= "\n\t\t\t</tr>";
                $ul .= "\t<li>Group " . chr($x + 65) . "</li>\n";
                //Now we need to disppaly all the people in the groups --  This means we need to 
                //Now we need to make a list within a list.
                $ul  .= "\t<ol>\n";
                
                for($y = 0; $y < (int)$_POST['num_groups']; $y++)
                {
                    $sql = "SELECT * FROM student WHERE stud_number = " . $_SESSION['student_num'][$_group_cursor];
                    $result = mysqli_query($link, $sql);
                    if(mysqli_num_rows($result)>0)
                    {
                        while($row = mysqli_fetch_assoc($result))
                        {
                            $student_table .= "\n\t\t\t<tr>";
                            $student_table .= "\n\t\t\t<td>" .$row['stud_number'] . "</td>";
                            $student_table .= "\n\t\t\t<td>" .$row['first_name'] . "</td>";
                            $student_table .= "\n\t\t\t<td>" .$row['last_name'] . "</td>";
                            $student_table .= "\n\t\t\t<td>" .$row['gender'] . "</td>";
                            $student_table .= "\n\t\t\t<td>" . $group_name . "</td>";
                            $student_table .= "\n\t\t\t</tr>";
                            $ul .= "\t\t<li>" . $row['stud_number'] . "  " . $row['first_name'] . "  " . $row['last_name'] . "  " .$row['gender'] . " </li>\n";
                        }
                    }
                    $_group_cursor++;
                } 
                if($_remainder_counter < $_tot_reminder)
                {
                    $sql = "SELECT * FROM student WHERE stud_number = " . $_SESSION['student_num'][$_array_size + $_remainder_counter - $_remainder_counter];
                    $result = mysqli_query($link, $sql);
                    if(mysqli_num_rows($result)>0)
                    {
                        while($row = mysqli_fetch_assoc($result))
                        {
                            $student_table .= "\n\t\t\t<tr>";
                            $student_table .= "\n\t\t\t<td>" .$row['stud_number'] . "</td>";
                            $student_table .= "\n\t\t\t<td>" .$row['first_name'] . "</td>";
                            $student_table .= "\n\t\t\t<td>" .$row['last_name'] . "</td>";
                            $student_table .= "\n\t\t\t<td>" .$row['gender'] . "</td>";
                            $student_table .= "\n\t\t\t<td>" . $group_name . "</td>";
                            $student_table .= "\n\t\t\t</tr>";
                            $ul .= "\t\t<li>" . $row['stud_number'] . "  " . $row['first_name'] . "  " . $row['last_name'] . "  " .$row['gender'] . " </li>\n";
                        }
                    }
                }
                $student_table .= "\n\t</tr>";
                $_remainder_counter++;
                $ul .= "\t</ol>\n";
            }
            $student_table .= "\n\t</table>";
      
        }
        if((int)$num_groups> 26 )
        {
            for($x =0; $x < (int)$num_groups; $x++)
            {

                $ul = "<ul>\n";
                //====================================
                //CREATE A TABLE TO DISPLAY GROUP NAMES
                //====================================
                $student_table .= "\n\t<table>";
                $student_table .= "\n\t\t<tr><th>GROUP NAME</th></tr>";//First Header
                //=====================================
                
                //====================================
                //TABLE DATA - This first is the table name
                //====================================
                $group_name = $x+1;
                $student_table .= "\n\t\t\t<tr><td>" . $group_name  . "</td></tr>";
                $student_table .= "\n\t\t<table>\n\t<tr>";
                $student_table .= "\n\t\t\t<th>Student Number</th>";
                $student_table .= "\n\t\t\t<th>First Name</th>";
                $student_table .= "\n\t\t\t<th>Last Name</th>";
                $student_table .= "\n\t\t\t<th>Gender</th>";
                $student_table .= "\n\t\t\t<th>Group Name</th>";
                $student_table .= "\n\t\t\t</tr>";
                $ul .= "\t<li>Group " . chr($x + 65) . "</li>\n";
                //Now we need to disppaly all the people in the groups --  This means we need to 
                //Now we need to make a list within a list.
                $ul  .= "\t<ol>\n";
                
                for($y = 0; $y < (int)$_POST['num_groups']; $y++)
                {
                    $sql = "SELECT * FROM student WHERE stud_number = " . $_SESSION['student_num'][$_group_cursor];
                    $result = mysqli_query($link, $sql);
                    if(mysqli_num_rows($result)>0)
                    {
                        while($row = mysqli_fetch_assoc($result))
                        {
                            $student_table .= "\n\t\t\t<tr>";
                            $student_table .= "\n\t\t\t<td>" .$row['stud_number'] . "</td>";
                            $student_table .= "\n\t\t\t<td>" .$row['first_name'] . "</td>";
                            $student_table .= "\n\t\t\t<td>" .$row['last_name'] . "</td>";
                            $student_table .= "\n\t\t\t<td>" .$row['gender'] . "</td>";
                            $student_table .= "\n\t\t\t<td>" . $group_name . "</td>";
                            $student_table .= "\n\t\t\t</tr>";
                            $ul .= "\t\t<li>" . $row['stud_number'] . "  " . $row['first_name'] . "  " . $row['last_name'] . "  " .$row['gender'] . " </li>\n";
                        }
                    }
                    $_group_cursor++;
                } 
                if($_remainder_counter < $_tot_reminder)
                {
                    $sql = "SELECT * FROM student WHERE stud_number = " . $_SESSION['student_num'][$_array_size + $_remainder_counter - $_remainder_counter];
                    $result = mysqli_query($link, $sql);
                    if(mysqli_num_rows($result)>0)
                    {
                        while($row = mysqli_fetch_assoc($result))
                        {
                            $student_table .= "\n\t\t\t<tr>";
                            $student_table .= "\n\t\t\t<td>" .$row['stud_number'] . "</td>";
                            $student_table .= "\n\t\t\t<td>" .$row['first_name'] . "</td>";
                            $student_table .= "\n\t\t\t<td>" .$row['last_name'] . "</td>";
                            $student_table .= "\n\t\t\t<td>" .$row['gender'] . "</td>";
                            $student_table .= "\n\t\t\t<td>" . $group_name . "</td>";
                            $student_table .= "\n\t\t\t</tr>";
                            $ul .= "\t\t<li>" . $row['stud_number'] . "  " . $row['first_name'] . "  " . $row['last_name'] . "  " .$row['gender'] . " </li>\n";
                        }
                    }
                }
                $student_table .= "\n\t</tr>";
                $_remainder_counter++;
                $ul .= "\t</ol>\n";
            }
            $student_table .= "\n\t</table>";
        }
        $num_groups = $_SESSION['num_groups'];
        $lecture_group_id = $_POST['lecture_group_id'];
        echo "<hr>" . button($lecture_group_id, "lecture_group_id", $num_groups, "num_groups", "save_groups", "Save Groups", "save_groups.php", "update_button");
    }
    //num_groups
    //lecture_id
    //lecture_group_id
    //

    //echo button_2($data1, $data_name1, $data2, $data_name2, , "stud_count", "save_groups", "Save Groups", "save_groups.php");
echo "<h2>Group Details</h2>";
echo $stud_dit .= "</ul>\n";
echo $student_table;
function back_button($back_url)
{
    $form = new Form();
    $input = new Input();
    $out = "";
        //create a back button - which is actually a form - 
        $form->set_form($back_url, "POST", "");
        //$label->set_label("Click to Register new Student", "First Name", "");
        $input->set_input("submit", "back", "Back", "", "submit_button");
        echo $form->get_form_wrapper($input->get_input());
        //Above is the back button
    return $out;
}
function button($data1, $data_name1, $data2, $data_name2, $button_name, $button_caption, $action, $class)
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
        $input->set_input("submit", $button_name, $button_caption, "", $class);
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

function button_2($data1, $data_name1, $data2, $data_name2, $data3, $data_name3, $button_name, $button_caption, $action)
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
        $input->set_input("submit", $button_name, $button_caption, "", "");
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
