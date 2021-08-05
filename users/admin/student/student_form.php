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
    echo "<h3>Enter The Following Details and then Submit</h3>\n<br>";

    //create a back button - which is actually a form - 
    $form->set_form("student_portal_home.php", "POST", "");
    //$label->set_label("Click to Register new Student", "First Name", "");
    $input->set_input("submit", "back", "Back", "", "");
    echo $form->get_form_wrapper($input->get_input());
    //Above is the back button


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
    $label->set_label("sex", "Gender", "");
    $input_wrapper .= $label->get_label() . "<br>\n";
    $select = new Select();
    $select->set_select("sex","sex", "");
    $select->set_option("M", "Male");
    $gender_option = "\t".$select->get_option();
    $select->set_option("F","Female");
    $gender_option .= "\t".$select->get_option();
    $select->set_option("O","Other");
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
    echo "<h1>Update Your Student Details</h1>\n<br><hr>";
    echo "<h3>Enter The Following Details and then Submit</h3>\n<br>";

    //create a back button - which is actually a form - 
    $form->set_form("student_portal_home.php", "POST", "");
    //$label->set_label("Click to Register new Student", "First Name", "");
    $input->set_input("submit", "back", "Back", "", "");
    echo $form->get_form_wrapper($input->get_input());
    //Above is the back button
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
            $stud_number = $row['stud_number'] . "</td>";
            $student->set_firstname($row['first_name']);
            $student->set_lastname($row['last_name']);
            $student->set_sex($row['gender'], $link);
            $student->set_id($row['id_nr'], $link);
            $student->set_phone($row['phone'], $link);
            $student->set_address($row['address']);
            $student->set_email($row['email']);
            $form->set_form("insert_student.php", "POST", "");
            //This the Student Number
            $label->set_label("stud_num", "<hr>Student Number:  ", "");
            $input_wrapper .= $label->get_label() . "";
            $label->set_label("stud_num", $row['stud_number'], "");
            $input_wrapper .= $label->get_label() . "<br>\n";
            //ID Number
            $label->set_label("id_nr", "ID Number:  ", "");
            $input_wrapper .= $label->get_label() . "";
            $label->set_label("id_nr", $row['id_nr'], "");
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
            $label->set_label("sex", "Gender", "");
            $input_wrapper .= $label->get_label() . "<br>\n";
            $select = new Select();
            $select->set_select("sex","sex", "");
            $select->set_option("M", "Male");
            $gender_option = "\t".$select->get_option();
            $select->set_option("F","Female");
            $gender_option .= "\t".$select->get_option();
            $select->set_option("O","Other");
            $gender_option .= "\t".$select->get_option();
            $select_output = $select->get_select($gender_option);
            $input_wrapper.= $select_output;
            //Now another interesting part is how do we update your details if you have already
            //been registered to the - Do we compare your numbers with other numbers -
            //So when we will be comparing we need to compare with everyone except yourself
            //Phone Number
            $label->set_label("phone", "Phone", "");
            $input->set_input("text", "phone", $row['phone'], "Phone Number", "");
            $input_wrapper .= $label->get_label() . "<br>\n";
            $input_wrapper .= $input->get_input_text() . "<br>\n";
        
            //first _name
            $label->set_label("address", "Home Address", "");
            $input->set_input("text", "address", $student->get_address(), "Home Address", "");
            $input_wrapper .= $label->get_label() . "<br>\n";
            $input_wrapper .= $input->get_input_text() . "<br><br>\n";
            $input->set_input("submit","submit", "Update", "","");
            $input_wrapper .= $input->get_input() ."<br>\n";
        }
        //Firstly we need to validate the information - 
        //And then after we validate the information we need update the information
        //Now how do we validate the information
        //What can we update in the information we cannot update the  id numbe, or orther things, so we can only updat the names and phone number - and that is it - not more.
    }

    echo $form->get_form_wrapper($input_wrapper);


}



//Now we are going to create a new update form here where we are going to update the student.
//But we also need to make sure that we will still validate the information first before we can update - 
?>