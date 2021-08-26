<?php
//Get the students detailes --
//Name, surname, stud_number, email, and so on...
//

include_once "form.php";
include_once "../../../connect.php";
include_once "student.php";
include_once "../functions.php";

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
//This and where statement is for modules to be registered, modules which have not been registered cannot appear on modules to be registered.
$and_where_statement = "";
//
$rows_for_modules_to_register= "";
//echo preresquisite_module_sql("155");
echo $stud_number . " What is this now";
//Get the student particulares
//The best option here is to set a global variable carrying the student number
if(isset($_POST['view_student']))
{
    $stud_number = (int)$_POST['stud_number'];
    $sql = "SELECT * FROM student WHERE stud_number = $stud_number";
    $result = mysqli_query($link, $sql);
    //Check if the student has taken any course?
}
else
{
    $sql = "SELECT * FROM student WHERE stud_number = $stud_number";
    $result = mysqli_query($link, $sql);
}
//
$sql = "
        SELECT * 
        FROM student_course_registation 
        WHERE stud_number = $stud_number";
$result_course = mysqli_query($link, $sql);

//If the student is indeed registered for any modules then show the student that they can register for  modules.
//Else help the student register for a course.
if(mysqli_num_rows($result_course) > 0)
{
    $isEnrolled = true;
    echo stud_info($result, $link);
    echo "<h3>STUDENTS ACCADEMIC HISTORY</h3>\n<br>";
    //Select all the modules that the student has taken.

    //How do we access the students modules that they have registered.

    //$sql = "SELECT * FROM `lecture_student` WHERE stud_number = $stud_number";
    //We also need to make sure that we know the course that the student is taking.
    //Firstly let us let the student specify the course that they are doing.
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
    $module_registration_table = "";
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
        //This is where we are going to find our what the person has not enrolled for.

        $module_registration_table = "";
        //Table for available modules
        $module_registration_table .= "\n\t<table>\n<tr>";
        $module_registration_table .= "\n\t\t<th>Module Code</th>";
        $module_registration_table .= "\n\t\t<th>Module Name</th>";
        $module_registration_table .= "\n\t\t<th>Module Credit</th>";
        $module_registration_table .= "\n\t\t<th>Semester</th>";
        $module_registration_table .= "\n\t\t<th>Year</th>";
        $module_registration_table .= "\n\t\t<th> </th>";//Enrol Module
        $module_registration_table .= "\n\t</tr>";

        while($row = mysqli_fetch_assoc($result))
        {
            //$module_registration_table .= "\n\t<table>\n<tr>";
            $count_classes +=1;
            $class_table .= "\n\t<tr>";
            $class_table .= "\n\t\t<td>" .$row['lecture_id'] . "</td>";
            $class_table .= "\n\t\t<td>" .$row['reg_date'] . "</td>";
            $class_table .= "\n\t\t<td>" .$row['module_code'] . "</td>";
            $class_table .= "\n\t\t<td>" .$row['module_name'] . "</td>";
            $class_table .= "\n\t\t<td>" .$row['semester'] . "</td>";
            $class_table .= "\n\t\t<td>" .$row['year'] . "</td>";
            $and_where_statement .= " AND lecture_id <> " . (int)$row['lecture_id'] . " ";

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
            //For each and every single module - we need to check the module the module that comes after it. or the module that opens up.
            //Rows for table for available modules
            //The question that I have with this is what happens when one modules gives us more than 1 module- so that we end up with duplica modules?
            $preresquite_module_sql = preresquisite_module_sql((int)$row['lecture_id']);
            $preresquite_module_result = mysqli_query($link, $preresquite_module_sql);
            if(mysqli_num_rows($preresquite_module_result)>0)
            {

                //$module_registration_table .= "\n\t<table>\n<tr>";
               while($preresquite_module_row = mysqli_fetch_assoc($preresquite_module_result)) 
               {
                    //$module_registration_table .= "\n\t<table>\n<tr>";
                    $module_registration_table .= "\n\t<tr>";
                    $module_registration_table .= "\n\t\t<td>" .$preresquite_module_row['module_code'] . "</td>";
                    $module_registration_table .= "\n\t\t<td>" .$preresquite_module_row['module_name'] . "</td>";
                    $module_registration_table .= "\n\t\t<td>" .$preresquite_module_row['credit'] . "</td>";
                    $module_registration_table .= "\n\t\t<td>" .$preresquite_module_row['semester'] . "</td>";
                    $module_registration_table .= "\n\t\t<td>" .$preresquite_module_row['year'] . "</td>";
                    $rows_for_modules_to_register .= "\n\t<tr>";
                    $rows_for_modules_to_register .= "\n\t\t<td>" .$preresquite_module_row['module_code'] . "</td>";
                    $rows_for_modules_to_register .= "\n\t\t<td>" .$preresquite_module_row['module_name'] . "</td>";
                    $rows_for_modules_to_register  .= "\n\t\t<td>" .$preresquite_module_row['credit'] . "</td>";
                    $rows_for_modules_to_register .= "\n\t\t<td>" .$preresquite_module_row['semester'] . "</td>";
                    $rows_for_modules_to_register .= "\n\t\t<td>" .$preresquite_module_row['year'] . "</td>";
                    
                    //Table data for available modules
                    $inputs = "";
                    $form->set_form("enrol_lecture.php", "POST", "");;
                    $input->set_input("hidden", "lecture_id", $preresquite_module_row['lecture_id'], "", "");
                    $inputs .= $input->get_input();
                    $input->set_input("hidden", "stud_number", $stud_number, "", "");
                    $inputs .= $input->get_input();
                    $input->set_input("submit", "submit", "Enrol Module", "", "");
                    $inputs .= $input->get_input();
                    $form_out = $form->get_form_wrapper($inputs);
                    $module_registration_table .= "\n\t\t<td>" . $form_out . "</td>";
                    $rows_for_modules_to_register .= "\n\t\t<td>" . $form_out . "</td>";
               }
           
            }


            

        }
        $module_registration_table .= "\n\t</table>";
        $class_table .= "\n\t</table>";
        echo "Total Classes Taken $count_classes <br><br>";
        echo $class_table;
    }
    else
    {
        echo "This student has not enrolled for any classes";
        $isEnrolled = false;
        //If the student has not enrolled for any classes then we need to modufy the module tabe.
        //If the student has not enrolled for any class we can raise a flag - 
    }
    //echo "<hr>";
    //echo $ifrst_year_student;
    //echo "We are here<br>";
    //echo  $module_registration_table;
    //echo "<br><br><br><br><br><br><hr>";

    //Now le us view all the available classes that the student can take
    //Now we need to show all that the student has done.
    //Show all the available lectures that the student can register.
    echo "<h3><hr>AVAILABLE CLASSES TO ENROL </h3>\n<br>";
    $year = 2019;
    //echo "<h2>Available modules for the year " . $year . "</h2>";
    //show all the classes -
    //Now we need to check the modules that the student has registered and then we can then register the student for the new year.
    //Go through all that the student has done.
    //Remember remember if the student has not taken any class - We need to show the student the classes which for the first semester.
    //Firstly find the modules that the student has enroled. 
    //Firstly how do we determine the semester? -- The semester is defined by the institution  - and not time.
    //also make sure that the semester if the first semester for the first year.
    //Find the least year 
    // $sql = "SELECT * FROM  lecture WHERE year =(SELECT MIN(year) FROM lecture)";
    $first_year = 0;
    $first_year_first_semester = 0;

    //$sql = "SELECT year FROM  lecture WHERE year =(SELECT MIN(year) FROM lecture)";
    //$sql = "SELECT year FROM  lecture WHERE year =(SELECT MIN(year) FROM lecture) GROUP BY year";
    $sql = "SELECT year, semester FROM lecture WHERE year =(SELECT MIN(year) FROM lecture) AND semester = (SELECT MIN(semester) FROM lecture) GROUP BY year, semester";
    $result = mysqli_query($link, $sql);
    if(mysqli_num_rows($result) > 0)
    {
        while($row = mysqli_fetch_assoc($result))
        {
            //now le us get the yera
            $first_year = (int)$row['year'];
            $first_year_first_semester  = (int)$row['semester'];
        }
    }
    echo $first_year . " Year | Semester " . $first_year_first_semester ;
    //Select the least year firstly - 
    //The semester is defined by the institution...
    $sql = "
            SELECT * 
            FROM lecture, module
            WHERE lecture.module_code = module.module_code
            AND `year` = $first_year
            AND `semester` = $first_year_first_semester ";
            //$where_statement";//Remember that we need classes that are current - therefore where the year and the semester is valid.
    //echo $sql;
    //If this student is not enrolled then we will show only first year modules - this means that we will edit the sql query here.
    //The student can only take first year modules for this semester only.

    //Module level 1 -- Year 1, Semester 1
    //Module Level 2 -- Year 1, Semester 2
    //Module Level 3 -- Year 2, Semester 1
    //Module Level 4 -- Year 2, Semester 2
    //Module Level 5 -- year 3, Semester 1
    //This is a program - and the goal of this program is that all a student needs to have a credit of 2.8750 -- All comprising of different modules
    //But here is the interesting part - a student cannot register for modules if they have not yet enrolled for a lesser module.
    //Open up rather the modules that the person can taken and when they can take them.
    //Find number of module groups we have
    $ifrst_year_student = "";
    $and_module_level = "";
    if($isEnrolled)
    {
        //and module_level = 1;
        $and_module_level = " AND module.module_level = 1";
        $ifrst_year_student = "<h3>Apply for first year modules 1st Semester<h3><br>\n";
    }
    /*
            $ifrst_year_student = "";
            $and_module_level = "";
            if(!$isEnrolled)
            {
                //and module_level = 1;
                $and_module_level = " AND module.module_level = 1";
                $ifrst_year_student = "<h3>Apply for first year modules 1st Semester<h3><br>\n";
            }
            if($count_classes > 0 && $count_classes < 5)
            {
                //if this is the case the show only those first classes
                //$sql .= " AND module.module_level = 1";
                //What has this person not enrolled for?

                $and_module_level = " AND module.module_level = 1";
                $ifrst_year_student = "<h3>Apply for first year modules<h3><br>\n";
            }
            echo "Count classes is " . $count_classes;
            if($count_classes > 2 && $count_classes < 9)
            {
                //Now we show the student the modules that they are able to take.
                //But why cant we say that a student cannot take some other modules because they are not yet qualified.
                $and_module_level = " AND module.module_level <4";
                //echo $sql .= " AND module.module_level = 2";
                $ifrst_year_student = "<h3>Apply for first year modules 2nd Semester<h3><br>\n";
            }
            if($count_classes > 8 && $count_classes < 13)
            {
                //Now we show the student the modules that they are able to take.
                //But why cant we say that a student cannot take some other modules because they are not yet qualified.
                $and_module_level = " AND module.module_level <3";
                //echo $sql .= " AND module.module_level = 2";
                $ifrst_year_student = "<h3>Apply for 2nd year modules 1st Semester<h3><br>\n";
            }
    */
    //We need to tell this student that they can do he following modules next semester - 
    //we firslty need to found all of their modules -- How many modules do they have?
    //We do not need count classes we only need module level -- this is all that we need.
    $sql .= $and_module_level;
    $sql .= $and_where_statement;
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
        $module_registration_table .= $rows_for_modules_to_register;
        $module_registration_table .= "\n\t</table>";
        
        //if student is first year tell them that they are applying for first year modules
        //echo $ifrst_year_student;
        echo  $module_registration_table;

    }
    //But also we need to make sure that we do not allow the student to take two similar classes
    //Now we need to select all the class that are available for the person to take.
    //what do we want to view about the student?
    //Firslty view all their information- 
    //Selete the student where their details are as follows
    //All that we need is the student number - That is all - 
    //Now let us get the studen number
}
else
{
    echo stud_info($result, $link);
    echo "<h3>Student has not registered a course</h3>\n<br>";
    echo "Click button to register for a course\n";
    //Now le us show the courses that are available to the student.
    echo "<br>Courses Available for registration<br><br>";
    echo get_course_list($link, "");
    //Show the course that got clicked
    //Now that we have create a course select let us allow the register indeed for the course.
    $register_course_button = "reg_course";
    $reg_button_caption  = "Register Course";
    $data_name1 = "stud_number";
    $data_name2 = "course_id";
    $reg_course_id = 0;
    if(isset($_POST['click_course']))
    {
        //Now le us show the person the course that they want to take.
        //echo $_POST['course'];
        echo "<br>You have chosen to register for the following course.<br><br>";
        echo "<h2>" .  get_course_name_clicked($link, $_POST['course']) . "</h2>";
        echo $_POST['course'];
        $reg_course_id = (int)$_POST['course'];
        //OK The following button will allow the person to register for a course....
        //echo button($stud_number, "stud_number", "reg_course", "Register Course", "");
        echo button($_POST['course'], $data_name2, $stud_number, $data_name1 , $register_course_button, $reg_button_caption, "");
    }
    if(isset($_POST['reg_course']))
    {
        $reg_course_id =  (int)$_POST['course_id'];
        //Now le us register the person -- and then when we are done we want to tell the person that they have successfully registerd for a course..
        $reg_date = date('Y-m-d');
        $sql = " INSERT INTO student_course_registation (reg_date, stud_number, course_id) VALUES (\"$reg_date\", $stud_number, $reg_course_id)";
        //echo $sql;
        if(mysqli_query($link, $sql))
        {
            echo "<h3>Student Successully registered for: </h3><h2>" . get_course_name_clicked_2($link, $_POST['course_id']) . "</h2>\n";
            echo reload_button();
        }
    }
    //echo button($stud_number, "stud_number", "reg_course", "Register Course", "");
}

//This function prints the students information
function stud_info($result, $link)
{
    $form = new Form();
    $input = new Input();
    $label = new Label();
    $student = new Student();
    $input_wrapper = "";
    $count_students = 0;
    $phone = "";
    $input_wrapper = "";
    $stud_number= (int)$_SESSION['stud_number'];
    $stud_name= "";
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
}

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
//This button is able to pass information from two entites...
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


function reload_button()
{
    $form = new Form();
    $input = new Input();
    $out = "";
        //create a back button - which is actually a form - 
        $form->set_form("", "POST", "");
        //$label->set_label("Click to Register new Student", "First Name", "");
        $input->set_input("submit", "refresh", "Refresh", "", "");
        echo $form->get_form_wrapper($input->get_input());
        //Above is the back button
    return $out;
}

function preresquisite_module_sql($lect_id)
{
    $out = "
        SELECT * 
        FROM lecture, module
        WHERE lecture.module_code = module.module_code
        AND module.module_group = (SELECT module.module_group FROM `lecture`, `module`
                                    WHERE module.module_code = lecture.module_code
                                    AND lecture.lecture_id = $lect_id)
        AND lecture.year = (SELECT lecture.year FROM `lecture`, `module`
                                    WHERE module.module_code = lecture.module_code
                                    AND lecture.lecture_id = $lect_id) + (SELECT 	CASE 
                                                                            WHEN semester = 2 THEN '1'
                                                                            ELSE '0'
                                                                        END AS nextyear
                                                                        FROM `lecture`, `module`
                                                                        WHERE module.module_code = lecture.module_code
                                                                        AND lecture.lecture_id = $lect_id)
        AND module.module_level = (SELECT module.module_level FROM `lecture`, `module`
                                    WHERE module.module_code = lecture.module_code
                                    AND lecture.lecture_id = $lect_id) + (	SELECT CASE 
                                                                                    WHEN module.module_level = (SELECT module.module_level FROM `lecture`, `module`
                                                                                                                WHERE module.module_code = lecture.module_code
                                                                                                                AND lecture.lecture_id = $lect_id) THEN 1
                                                                                    ELSE 0
                                                                                END AS nextyear
                                                                            FROM `lecture`, `module`
                                                                            WHERE module.module_code = lecture.module_code
                                                                            AND lecture.lecture_id = $lect_id) 
        AND lecture.semester <> (SELECT lecture.semester FROM `lecture`, `module`
                                    WHERE module.module_code = lecture.module_code
                                    AND lecture.lecture_id = $lect_id)";
                                    
     return $out;

}


echo "\n</body>\n</html>";

/*
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

    echo $form->get_form_wrapper($input_wrapper) . "<hr>"; */
?>