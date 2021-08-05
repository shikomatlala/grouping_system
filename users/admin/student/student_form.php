<?php
//Hwere we need to create a student form - We will make sure that it is here
//
include_once "form.php";
include_once "../../../connect.php";
include_once "student.php";
//
//echo "<!-- CSS only -->
//<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">";
//include_once "even_listener.php";
//let us create students create the first form.
//insert student;
//Create a back button - 
//But where are we going back?
//Insert new Student -
$form = new Form();
$input = new Input();
$label = new Label();
$student = new Student();
$input_wrapper = "";

if(isset($_POST['got_insert_student']))
{

    echo "<h1>Insert a New Student</h1>\n<br><hr>";
    //This is the back button - it is a functio which takes us back
    echo back_button("student_portal_home.php");
    echo "<h3>Enter The Following Details and then Submit</h3>\n<br>";

    $form->set_form("insert_student.php", "POST", "");
    //first _name
    $label->set_label("first_name", "First Name", "");
    $input->set_input("text", "first_name", "", "First Name", "");
    $input_wrapper .= $label->get_label() . "<br>\n";
    $input_wrapper .= $input->get_input_text() . "<br>\n";
    //Last Name
    $label->set_label("last_name", "Last Name", "");
    $input->set_input("text", "last_name", "", "Last Name", "");
    $input_wrapper .= $label->get_label() . "<br>\n";
    $input_wrapper .= $input->get_input_text() . "<br>\n";
    //first _name
    $label->set_label("id_nr", "ID Number", "");
    $input->set_input("text", "id_nr", "", "ID Number", "");
    $input_wrapper .= $label->get_label() . "<br>\n";
    $input_wrapper .= $input->get_input_text() . "<br>\n";
    //first _name
    $label->set_label("sex", "Sex", "");
    $input_wrapper .= $label->get_label() . "<br>\n";
    $select = new Select();
    $select->set_select("sex","sex", "");
    $select->set_option("M", "Male");
    $gender_option = "\t".$select->get_option();
    $select->set_option("F","Female");
    $gender_option .= "\t".$select->get_option();
    $select_output = $select->get_select($gender_option);
    $input_wrapper.= $select_output;
    //first _name
    $label->set_label("phone", "Phone Number", "");
    $input->set_input("text", "phone", "", "Phone Number", "");
    $input_wrapper .= $label->get_label() . "<br>\n";
    $input_wrapper .= $input->get_input_text() . "<br>\n";

    //first _name
    $label->set_label("address", "Home Address", "");
    $input->set_input("text", "address", "", "Home Address", "");
    $input_wrapper .= $label->get_label() . "<br>\n";
    $input_wrapper .= $input->get_input_text() . "<br><br>\n";
    $input->set_input("submit","submit", "Insert Student", "","");
    $input_wrapper .= $input->get_input() ."<br>\n";
    echo $form->get_form_wrapper($input_wrapper);
}

if(isset($_POST['update_student']))
{
    //"student_portal_home.php"
    echo "<h1>Update Your Student Details</h1>\n<br><hr>";
    echo back_button("student_portal_home.php");
    echo "<h3>Enter The Following Details and then Submit</h3>\n<br>";
    //Now let us go forth to update the student information- remember at this point we need to reselect the student first.
    //So we need to create a select statement where the get the students information and then using that information we need to select the student.
    $stud_number = (int)$_POST['stud_number'];
    $sql = "SELECT * FROM student WHERE stud_number = $stud_number";
    $result = mysqli_query($link, $sql);
    $count_students = 0;
    $input_wrapper = "";
    $stud_number = "";
    if(mysqli_num_rows($result)>0)
    {
        while($row = mysqli_fetch_assoc($result))
        {
            //Get the students details - 
            //Let us work with see how this is going to turn out.
            //Show the person their information that they cannot change - 
            //
            $_SESSION['stud_number'] = $row['stud_number'];
            $stud_number = $row['stud_number'] . "</td>";
            $student->set_firstname($row['first_name']);
            $student->set_lastname($row['last_name']);
            $student->set_sex($row['gender'], $link);
            $student->set_id($row['id_nr'], $link);
            $student->set_phone($row['phone'], $link);
            $student->set_address($row['address']);
            $student->set_email($row['email']);
            $form->set_form("", "POST", "");
            //This the Student Number
            $label->set_label("stud_num", "<hr>Student Number:  ", "");
            $input_wrapper .= $label->get_label() . "";
            $label->set_label("stud_num", $row['stud_number'], "");
            $input_wrapper .= $label->get_label() . "<br>\n";
            $input->set_input("hidden", "stud_number", $row['stud_number'], "", "");
            $input_wrapper .= $input->get_input();
            //ID Number
            $label->set_label("id_nr", "ID Number:  ", "");
            $input_wrapper .= $label->get_label() . "";
            $label->set_label("id_nr", $row['id_nr'], "");
            $input_wrapper .= $label->get_label() . "<br>\n";
            //Show the Gender
            $label->set_label("id_nr", "Sex:  ", "");
            $input_wrapper .= $label->get_label() . "";
            $gender = "";
            if($row['gender'] == "M")
            {
                $gender = "Male";
            }
            elseif($row['gender'] == "F")
            {
                $gender = "Female";
            }
            else
            {
                $gender = "Other";
            }
            $label->set_label("id_nr", $gender, "");
            $input_wrapper .= $label->get_label() . "<br>\n";
            //Email
            $label->set_label("email", "Email Address:  ", "");
            $input_wrapper .= $label->get_label() . "";
            $label->set_label("email", $row['email'], "");
            $input_wrapper .= $label->get_label() . "<br><hr>\n";
            //first _name
            $label->set_label("first_name", "First Name:", "");
            $input->set_input("text", "first_name",$student->get_firstname(), "First Name", "");
            $input_wrapper .= $label->get_label() . "<br>\n";
            $input_wrapper .= $input->get_input_text() . "<br>\n";
            //Last Name
            $label->set_label("last_name", "Last Name:", "");
            $input->set_input("text", "last_name", $student->get_lastname(), "Last Name", "");
            $input_wrapper .= $label->get_label() . "<br>\n";
            $input_wrapper .= $input->get_input_text() . "<br>\n";
            //Gender
            //You cannot edit your gender because if you do it will mess up your ID 
            $label->set_label("phone", "Phone", "");
            $input->set_input("text", "phone", $row['phone'], "Phone Number", "");
            $input_wrapper .= $label->get_label() . "<br>\n";
            $input_wrapper .= $input->get_input_text() . "<br>\n";
            //first _name
            $label->set_label("address", "Home Address", "");
            $input->set_input("text", "address", $student->get_address(), "Home Address", "");
            $input_wrapper .= $label->get_label() . "<br>\n";
            $input_wrapper .= $input->get_input_text() . "<br><br>\n";
            $input->set_input("submit","update_student_to_db", "Update", "","");
            $input_wrapper .= $input->get_input() ."<br>\n";
            //again what if you are other how are we going group you-- so then we should not have an other -
            //It should only have 2 sexs male or female
        }
        //Firstly we need to validate the information - 
        //And then after we validate the information we need update the information
        //Now how do we validate the information
        //What can we update in the information we cannot update the  id numbe, or orther things, so we can only updat the names and phone number - and that is it - not more.
    }

    //OK so what we just did here is to make sure that our form has all the relevent information inside of it.
    //Now the goal is to make sure that we take all these things here and then work with them.
    //How are we going to update this information, remember in order of us to update this information - firslty we must set this information - but 
    //Then we we set this information we must make sure that this information
    echo $form->get_form_wrapper($input_wrapper);
}

if(isset($_POST['update_student_to_db']))
{
    //We can use this part here to update the student 
    //Validate the information if not valid then tell the student that something is entered wrong.
    //1 get all the information 
    //Compare phone number
    //Now find a way of getting the student number -   
    $stud_number = (int)$_POST['stud_number']; 
    
    if(validate_phone($_POST['phone'], $link, $stud_number) == 1)
    {
        $phone = $_POST['phone'];
        //echo "The numbers are not taken";  
        //set the student name and surname
        $student->set_firstname($_POST['first_name']);
        $student->set_lastname($_POST['last_name']);
        $student->set_address($_POST['address']);
        if($student->get_firstname() != "NULL")
        {
            if($student->get_lastname() != "NULL")
            {
                if($student->get_address() != "NULL")
                {
                    //We can now insert the student.
                    //Let us go ahead and update the student. the student.
                    // Tjovo
                    $lastname = $student->get_lastname();
                    $firstname = $student->get_firstname();
                    $address = $student->get_address();
                    //echo "We are good";
                    $sql = "
                            UPDATE student
                            SET             first_name = '$firstname', 
                                            last_name = '$lastname',
                                            phone = '$phone',
                                            address = '$address'

                            WHERE stud_number = $stud_number";
                    if(mysqli_query($link, $sql))
                    {
                        //We need to go back -- but as we go back I want us to make sure that we carry with us some basic information
                        //We can use a form which will help us carry all this basic infomation.
                        back_button_with_info("student_portal_home.php", $stud_number, "Finish");
                        //This is hwo you can change the location
                        echo "alert(\"Successfully Updated!\") ";
                        header("LOCATION: student_portal_home.php");


                    }
                }
                else
                {
                    echo "Check you address";
                    //header("location: student_portal_home.php");

                }


            }
            else
            {
                echo "Check Your Last Name ";
            }
        }
        else
        {
            echo "Check Your First Name";
        }
        

    }
    else
    {
        echo "Phone already in use /Invalid";
    }
    //echo $isValid;



}

function validate_phone($phone,$link, $stud_number)
{
  //"0723302232"
   $out= 0;
   $sql = "
        SELECT * 
        FROM student 
        WHERE phone= \"$phone\" 
        AND stud_number <> $stud_number";
   $result = mysqli_query($link, $sql);
   if(ctype_digit($phone) && strlen($phone) == 10)
   {
     if(substr($phone,0,1) == "0")
     {
       if( (int)$phone >0)
       {
        if(mysqli_num_rows($result) == 0)
        {
          $out =1;
        }
       }
     }
   }
   return $out;
}



//the back button -- The question where are we going back?
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
function back_button_with_info($back_url, $info, $button_name)
{
    $inputs ="";
    $form = new Form();
    $input = new Input();
    $out = "";
    //create a back button - which is actually a form - 
    $form->set_form($back_url, "POST", "");
    //$label->set_label("Click to Register new Student", "First Name", "");
    $input->set_input("hidden", "stud_number", $info, "", "");
    $inputs .= $input->get_input();
    $input->set_input("submit", $button_name, "Back", "", "");
    $inputs .= $input->get_input();
    echo $form->get_form_wrapper($inputs);
    //Above is the back button
    return $out;
}
//Now we are going to create a new update form here where we are going to update the student.
//But we also need to make sure that we will still validate the information first before we can update - 
?>