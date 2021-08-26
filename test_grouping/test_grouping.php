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
//-----------------------------------------------------------------
//Store all the students numbers inside an array
//-----------------------------------------------------------------
$sql = "SELECT stud_number FROM student";
$result = mysqli_query($link, $sql);
if(mysqli_num_rows($result)>0)
{
    while($row = mysqli_fetch_assoc($result))
    {
        array_push($_SESSION['student_num'], $row['stud_number']);
    }
}

//-----------------------------------------------------------------
//Create the Form
//-----------------------------------------------------------------
$group_form = "";
$complete_group_form = "";
$form->set_form("", "POST", "");
$input->set_input("text", "num_groups", "", "e.g. 25", "");
$group_form .= $input->get_input_text();
$input->set_input("submit", "submit_num_groups", "Class Details", "", "");
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
if(isset($_POST['submit_num_groups']))
{
    //Create a loop to display all the number of loops -- with group names
    $ul = "<ul>";
    if((int)$_POST['num_groups'] <= 26 && (int)$_POST['num_groups'] > 0 )
    {
        for($x =0; $x < (int)$_POST['num_groups']; $x++)
        {
            $ul .= "\t<li>Group " . chr($x + 65) . "</li>";
            //Now we need to disppaly all the people in the groups --  This means we need to 
            //Now we need to make a list within a list.
            $ul  .= "\t<ul>";
            
            for($y = 0; $y < 5; $y++)
            {
                $_group_cursor++;
                $sql = "SELECT * FROM student WHERE stud_number = " . $_SESSION['student_num'][$_group_cursor];
                $result = mysqli_query($link, $sql);
                if(mysqli_num_rows($result)>0)
                {
                    while($row = mysqli_fetch_assoc($result))
                    {
                        $ul .= "\t\t<li>" . $row['stud_number'] . "  " . $row['first_name'] . "  " . $row['last_name'] . "  " .$row['gender'] . " </li>";
                    }
                }
                
            } 
            $ul .= "\t</ul>";
        }
    }
    if((int)$_POST['num_groups'] > 26 && (int)$_POST['num_groups'] > 0 )
    {
        for($x =1; $x <= (int)$_POST['num_groups']; $x++)
        {
            $ul .= "\t<li>Group " . $x. "</li>";
        }
    }
    $ul .= "</ul>";
}
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
