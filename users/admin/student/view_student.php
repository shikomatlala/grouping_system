<?php
//Get the students detailes --
//Name, surname, stud_number, email, and so on...
//

include_once "form.php";
include_once "../../../connect.php";
include_once "student.php";

//Form objects & variables
$form = new Form();
$input = new Input();
$label = new Label();
$student = new Student();
$input_wrapper = "";
$result;
$count_students = 0;
$phone = "";
$input_wrapper = "";
$stud_number= (int)$_SESSION['stud_number'];
$stud_name= "";
//
echo $stud_number;
//Get the student particulares
//The best option here is to set a global variable carrying the student number
if(isset($_POST['view_student']))
{
    $stud_number = (int)$_POST['stud_number'];
    $sql = "SELECT * FROM student WHERE stud_number = $stud_number";
    $result = mysqli_query($link, $sql);
}
else
{
    $sql = "SELECT * FROM student WHERE stud_number = $stud_number";
    $result = mysqli_query($link, $sql);
}



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
        $phone = $row['phone'];
        $student->set_address($row['address']);
        $student->set_email($row['email']);
        //Labels to show the students information - 
        //This the Student Number
        $label->set_label("stud_num", "Student Number:  ", "");
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
        $input_wrapper .= $label->get_label();
        $label->set_label("email", $row['email'], "");
        $input_wrapper .= $label->get_label() . "<br>\n";
        //first _name
        $label->set_label("first_name", "First Name:  ", "");
        $input_wrapper .= $label->get_label();
        $label->set_label("first_name", $row['first_name'], "");
        $input_wrapper .= $label->get_label() . "<br>\n";
        $stud_name = $row['first_name'] . " ";
        //Last Name
        $label->set_label("last_name", "Last Name:  ", "");
        $input_wrapper .= $label->get_label();
        $label->set_label("last_name", $row['last_name'], "");
        $input_wrapper .= $label->get_label() . "<br>\n";
        $stud_name .= $row['last_name'];
        //You cannot edit your gender because if you do it will mess up your ID 
        $label->set_label("phone", "Phone:   ", "");
        $input_wrapper .= $label->get_label();
        $label->set_label("phone", $row['phone'], "");
        $input_wrapper .= $label->get_label() . "<br>\n";
        //first _name
        $label->set_label("address", "Home Address:   ", "");
        $input_wrapper .= $label->get_label();
        $label->set_label("address", $row['address'], "");
        $input_wrapper .= $label->get_label() . "<br>\n";
        //again what if you are other how are we going group you-- so then we should not have an other -
        //It should only have 2 sexs male or female
    }
    //Firstly we need to validate the information - 
    //And then after we validate the information we need update the information
    //Now how do we validate the information
    //What can we update in the information we cannot update the  id numbe, or orther things, so we can only updat the names and phone number - and that is it - not more.
}
//All the Out put comes here
echo back_button("student_portal_home.php") . "<br>";
echo "<h1>Student Information</h1>\n";
echo "<h2>" .  $stud_name . " | " . $stud_number . "</h2>\n<hr>";

//echo "<h3>Information for student : $stud_number</h3>\n<br>";
echo "<h3>PERSONAL DETAILS</h3>\n<br>";

echo $input_wrapper;
///The input button
$input_wrapper = ""; 
$form->set_form("update_from_view_student.php", "POST", "");
$input->set_input("hidden","stud_number", $stud_number, "","");
$input_wrapper .= $input->get_input(). "<br>\n";
$input->set_input("hidden","phone", $phone, "","");
$input_wrapper .= $input->get_input(). "<br>\n";
$input->set_input("submit","submit", "Update Details", "","");
$input_wrapper .= $input->get_input() ."<br>\n";

echo $form->get_form_wrapper($input_wrapper) . "<hr>";
echo "<h3>STUDENTS ACCADEMIC HISTORY</h3>\n<br>";
//Select all the modules that the student has taken.

//How do we access the students modules that they have registered.

//$sql = "SELECT * FROM `lecture_student` WHERE stud_number = $stud_number";
$count_classes = 0;
$stud_number = (int)$stud_number;
$sql = "
    SELECT *
    FROM lecture_student, lecture, module
    WHERE lecture.lecture_id = lecture_student.lecture_id
    AND lecture.module_code = module.module_code
    AND stud_number = $stud_number";
$result = mysqli_query($link, $sql);
$where_statement = "";
if(mysqli_num_rows($result)>0)
{
    $class_table = "";
    $class_table .= "\n\t<table>\n<tr>";
    $class_table .= "\n\t\t<th>Class ID</th>";
    $class_table .= "\n\t\t<th>Registration Date</th>";
    $class_table .= "\n\t\t<th>Module Code</th>";
    $class_table .= "\n\t\t<th>Module Name</th>";
    $class_table .= "\n\t\t<th>Semester</th>";
    $class_table .= "\n\t\t<th>Year</th>";
    $class_table .= "\n\t\t<th> </th>";//Class Details
    $class_table .= "\n\t</tr>";
    //echo "This student has taken lectures";
    //Le us now show those lectures/module/class
    while($row = mysqli_fetch_assoc($result))
    {
        $count_classes +=1;
        $class_table .= "\n\t<tr>";
        $class_table .= "\n\t\t<td>" .$row['lecture_id'] . "</td>";
        $class_table .= "\n\t\t<td>" .$row['reg_date'] . "</td>";
        $class_table .= "\n\t\t<td>" .$row['module_code'] . "</td>";
        $class_table .= "\n\t\t<td>" .$row['module_name'] . "</td>";
        $class_table .= "\n\t\t<td>" .$row['semester'] . "</td>";
        $class_table .= "\n\t\t<td>" .$row['year'] . "</td>";

        //Create the view Class Button - 
        $inputs = "";
        //$stud_number = $row['stud_number'];
        $form->set_form("view_lecture.php", "POST", "");
        $where_statement .= " AND lecture_id <> " . (int)$row['lecture_id'] . " \n";
        $input->set_input("hidden", "lecture_id", $row['lecture_id'], "", "");
        $inputs .= $input->get_input();
        $input->set_input("submit", "submit", "Class Details", "", "");
        $inputs .= $input->get_input();
        $form_out = $form->get_form_wrapper($inputs);
        $class_table .= "\n\t\t<td>" . $form_out . "</td>";
        //$class_table .= "\n\t\t<td>" .$row['email'] . "</td>";
        // reg_date
        // lecture_id
        // stud_number
        // lecture_id
        // module_code
        // semester
        // year
        // prerequisite_module
        //Now the goal is to create a crud where we can view simple details about the module


    }
    $class_table .= "\n\t</table>";
    echo "Total Classes Taken $count_classes <br><br>";
    echo $class_table;
}
else
{
    echo "This student has not enrolled for any classes";
}
//Now le us view all the available classes that the student can take
//Now we need to show all that the student has done.
//Show all the available lectures that the student can register.
echo "<h3><hr>AVAILABLE CLASSES TO ENROL </h3>\n<br>";
//show all the classes -
$sql = "
        SELECT * 
        FROM lecture, module
        WHERE lecture.module_code = module.module_code
        AND `year` = 2021 
        $where_statement";//Remember that we need classes that are current - therefore where the year and the semester is valid.
//echo $sql;
$result = mysqli_query($link, $sql);
if((mysqli_num_rows($result) > 0))
{
    $module_registration_table = "";
    $module_registration_table .= "\n\t<table>\n<tr>";
    $module_registration_table .= "\n\t\t<th>Module Code</th>";
    $module_registration_table .= "\n\t\t<th>Module Name</th>";
    $module_registration_table .= "\n\t\t<th>Module Credit</th>";
    $module_registration_table .= "\n\t\t<th>Semester</th>";
    $module_registration_table .= "\n\t\t<th>Year</th>";
    $module_registration_table .= "\n\t\t<th> </th>";//Enrol Module
    $module_registration_table .= "\n\t</tr>";
    //Now let us show the modules that the student can register to//
    while($row = mysqli_fetch_assoc($result))
    {
        //Create the module table
        $module_registration_table .= "\n\t<tr>";
        $module_registration_table .= "\n\t\t<td>" .$row['module_code'] . "</td>";
        $module_registration_table .= "\n\t\t<td>" .$row['module_name'] . "</td>";
        $module_registration_table .= "\n\t\t<td>" .$row['credit'] . "</td>";
        $module_registration_table .= "\n\t\t<td>" .$row['semester'] . "</td>";
        $module_registration_table .= "\n\t\t<td>" .$row['year'] . "</td>";
        //We also need to make sure that the student can also register for that module and after the student has registered for that module we need to make sure that it does 
        //I think it is best that we show a little details
        //not appear anymore on the thing.
        $inputs = "";
        $form->set_form("enrol_lecture.php", "POST", "");;
        $input->set_input("hidden", "lecture_id", $row['lecture_id'], "", "");
        $inputs .= $input->get_input();
        $input->set_input("hidden", "stud_number", $stud_number, "", "");
        $inputs .= $input->get_input();
        $input->set_input("submit", "submit", "Enrol Module", "", "");
        $inputs .= $input->get_input();
        $form_out = $form->get_form_wrapper($inputs);
        $module_registration_table .= "\n\t\t<td>" . $form_out . "</td>";
        //echo "Class Name : " . $row['module_code'] .  "   " . $form_out . "<br><hr>";
    }
    $module_registration_table .= "\n\t</table>";
    
    echo  $module_registration_table;

 }
//But also we need to make sure that we do not allow the student to take two similar classes
//Now we need to select all the class that are available for the person to take.
//what do we want to view about the student?
//Firslty view all their information- 
//Selete the student where their details are as follows
//All that we need is the student number - That is all - 
//Now let us get the studen number




//FUNCTIONS
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




echo "\n</body>\n</html>";
?>