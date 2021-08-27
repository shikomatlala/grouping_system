<?php
include_once "../connect.php";
include_once "form.php";
include_once "student.php";
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
// SELECT * 
//     FROM stud_ac_level
//     WHERE gender  = 'F'
//     ORDER BY credit_score
    

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





for($i =1; $i <= 5 ; $i++)
{
    //echo LEVEL $i
    //Counting all the students -
    $sql = "SELECT * 
    FROM stud_ac_level
    WHERE module_count  = $i
    ORDER BY credit_score DESC";

    $result = mysqli_query($link, $sql);
    if(mysqli_num_rows($result)>0)
    {
        while($row = mysqli_fetch_assoc($result))
        {
            array_push($_SESSION['student_num'], $row['stud_number']);
        }
    }
    $num_groups = (int)count($_SESSION['student_num'])/(int)$_POST['num_groups'];
    $_tot_reminder = fmod((int)count($_SESSION['student_num']),(int)$_POST['num_groups']);
    echo "The total number of groups is: = " . (int)$num_groups . " <br>";
    echo "The remainder " . $_tot_reminder . "<br>";

    $_array_size = sizeof($_SESSION['student_num']) - 1;
    echo $_array_size . " is the array size <br>";
    //-----------------------------------------------------------------
    //Use the form information to show students put in groups.
    //Display students in groups of 5 -- from the list of all the students.
    //Create a lsit that will display 25 times -- as it does so the list should show the group names
    //-----------------------------------------------------------------
    echo "Number of students"  . count($_SESSION['student_num']) . "<br>";
    
    if(isset($_POST['submit_num_groups']))
    {
        $count_groupings_numbers = 0;

        //Create a loop to display all the number of loops -- with group names
        $ul = "<ul>\n";
        //$num_groups = count($_SESSION['student_num'])/(int)$_POST['num_groups'] -1;
        if((int)$num_groups  <= 26 && (int)$num_groups > 0 )
        {
            //Loop through all the males
            for($x =0; $x < (int)$num_groups; $x++)
            {
                $count_groupings_numbers++;
                $ul .= "\t<li>Group " . $count_groupings_numbers . "</li>\n";
                //$ul .= "\t<li>Group " . chr($x + 65) . $i . "</li>\n";
                //Now we need to disppaly all the people in the groups --  This means we need to 
                //Now we need to make a list within a list.
                $ul  .= "\t<ol>\n";
                
                for($y = 0; $y < (int)$_POST['num_groups']; $y++)
                {
                    /*

                    */
                    $sql = "SELECT * FROM stud_ac_level WHERE stud_number = " . $_SESSION['student_num'][$_group_cursor];//session for guys 
                    $result = mysqli_query($link, $sql);
                    if(mysqli_num_rows($result)>0)
                    {
                        while($row = mysqli_fetch_assoc($result))
                        {
                            $ul .= "\t\t<li>" . $row['stud_number'] . "  " . $row['first_name'] . "  " . $row['last_name'] . "  " .$row['gender'] . "  " .$row['module_count'] . "  " .$row['credit_score'] ." </li>\n";
                        }
                    }
                    $_group_cursor++;
                } 
                if($_remainder_counter < $_tot_reminder)
                {
                    $sql = "SELECT * FROM stud_ac_level WHERE stud_number = " . $_SESSION['student_num'][$_array_size + $_remainder_counter - $_remainder_counter];
                    $result = mysqli_query($link, $sql);
                    if(mysqli_num_rows($result)>0)
                    {
                        while($row = mysqli_fetch_assoc($result))
                        {
                            $ul .= "\t\t<li>" . $row['stud_number'] . "  " . $row['first_name'] . "  " . $row['last_name'] . "  " .$row['gender'] . "  " .$row['module_count'] . "  " .$row['credit_score'] ." </li>\n";
                        }
                    }
                }
                $_remainder_counter++;
                $ul .= "\t</ol>\n";
            }
        }
        if((int)$num_groups> 26 )
        {
            $_group_cursor = 0;
            for($x =1; $x <= (int)$num_groups; $x++)
            {
                $ul .= "\t<li>Group " . $x. "</li>\n";
                $ul  .= "\t<ol>\n";

                for($y = 0; $y < (int)$_POST['num_groups']; $y++)
                {

                    $sql = "SELECT * FROM stud_ac_level WHERE stud_number = " . $_SESSION['student_num'][$_group_cursor];
                    $result = mysqli_query($link, $sql);
                    if(mysqli_num_rows($result)>0)
                    {
                        while($row = mysqli_fetch_assoc($result))
                        {
                            $ul .= "\t\t<li>" . $row['stud_number'] . "  " . $row['first_name'] . "  " . $row['last_name'] . "  " .$row['gender'] . "  " .$row['module_count'] . "  " .$row['credit_score'] ." </li>\n";
                        }
                    }
                    $_group_cursor++;  
                } 
                if($_remainder_counter < $_tot_reminder)
                {
                    $sql = "SELECT * FROM stud_ac_level WHERE stud_number = " . $_SESSION['student_num'][$_array_size + $_remainder_counter - $_remainder_counter];
                    $result = mysqli_query($link, $sql);
                    if(mysqli_num_rows($result)>0)
                    {
                        while($row = mysqli_fetch_assoc($result))
                        {
                            $ul .= "\t\t<li>" . $row['stud_number'] . "  " . $row['first_name'] . "  " . $row['last_name'] . "  " .$row['gender'] . "  " .$row['module_count'] . "  " .$row['credit_score'] ." </li>\n";
                            
                        }
                    }
                }
                $_remainder_counter++;
                
                $ul .= "\t</ol>\n";
                
            }
        }
        $ul .= "</ul>\n";
    }

}
echo "The total number of students <array> size = " . $_group_cursor . "<br>";
echo $ul;





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
