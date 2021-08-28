<?php
include_once "../../../connect.php";
include_once "../functions.php";
include_once "../student/student.php";
include_once "../student/form.php";
include_once "../lecture/lecture_portal_header.php";
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
echo back_button("grouping_portal.php");
echo "We are testing me";
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
    echo $_array_size . " is the array size <br>";
    //-----------------------------------------------------------------
    //Create the Form
    //-----------------------------------------------------------------



    $form->set_form("", "POST", "");
    $label->set_label("", "Enter The number of members per group", "");
    $group_form .= $label->get_label() . " <br>";
    $input->set_input("text", "num_groups", "", "e.g. 25", "");
    $group_form .= $input->get_input_text();
    $input->set_input("submit", "submit_num_groups", "Submit", "", "");
    $group_form .= $input->get_input();
    $form_out = $form->get_form_wrapper($group_form);
    $complete_group_form .= "\n\t\t<td>" . $form_out . "</td>";

    //display the group form
    echo $complete_group_form;

    //-----------------------------------------------------------------
    //Use the form information to show students put in groups.
    //Display students in groups of 5 -- from the list of all the students.
    //Create a lsit that will display 25 times -- as it does so the list should show the group names
    //-----------------------------------------------------------------
    echo "Number of students"  . count($_SESSION['student_num']);


    $student_table = "";
    if(isset($_POST['submit_num_groups']))
    {
        $num_groups = (int)count($_SESSION['student_num'])/(int)$_POST['num_groups'];
        $_tot_reminder = fmod((int)count($_SESSION['student_num']),(int)$_POST['num_groups']);
        echo "The total number of groups is: = " . (int)$num_groups . " <br>";
        echo "The remainder " . $_tot_reminder . "<br>";

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
            // $_group_cursor = 0;
            // for($x =1; $x <= (int)$num_groups; $x++)
            // {
            //     $ul .= "\t<li>Group " . $x. "</li>\n";
            //     $ul  .= "\t<ol>\n";

            //     for($y = 0; $y < (int)$_POST['num_groups']; $y++)
            //     {

            //         $sql = "SELECT * FROM student WHERE stud_number = " . $_SESSION['student_num'][$_group_cursor];
            //         $result = mysqli_query($link, $sql);
            //         if(mysqli_num_rows($result)>0)
            //         {
            //             while($row = mysqli_fetch_assoc($result))
            //             {
            //                 $ul .= "\t\t<li>" . $row['stud_number'] . "  " . $row['first_name'] . "  " . $row['last_name'] . "  " .$row['gender'] . " </li>\n"; 
            //             }
            //         }
            //         $_group_cursor++;  
            //     } 
            //     if($_remainder_counter < $_tot_reminder)
            //     {
            //         $sql = "SELECT * FROM student WHERE stud_number = " . $_SESSION['student_num'][$_array_size + $_remainder_counter - $_remainder_counter];
            //         $result = mysqli_query($link, $sql);
            //         if(mysqli_num_rows($result)>0)
            //         {
            //             while($row = mysqli_fetch_assoc($result))
            //             {
            //                 $ul .= "\t\t<li>" . $row['stud_number'] . "  " . $row['first_name'] . "  " . $row['last_name'] . "  " .$row['gender'] . " </li>\n";
                            
            //             }
            //         }
            //     }
            //     $_remainder_counter++;
                
            //     $ul .= "\t</ol>\n";
                
            // }
        }
        //$ul .= "</ul>\n";
    }

//tHE BACK BUTTON

echo "The total number of students <array> size = " . $_group_cursor . "<br>";
echo $student_table;
//echo $ul;


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
