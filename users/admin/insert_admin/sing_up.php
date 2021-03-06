<?php
include_once "../../../connect.php";
include_once "form.php";
include_once "student.php";

$form = new Form();
$input = new Input();
$label = new Label();
$student = new Student();
$input_wrapper = "";

echo "<h1>Insert a New Admin/Lecturer</h1>\n<br><hr>";
//This is the back button - it is a functio which takes us back
echo back_button("../home/admin_portal.html");
echo "<h3>Enter The Following Details and then Submit</h3>\n<br>";

$form->set_form("sign_up.php", "POST", "");
//first _name
$label->set_label("staff_number", "Stuff Number", "");
$input->set_input("text", "staff_number", "", "Staff Number", "");
$input_wrapper .= $label->get_label() . "<br>\n";
$input_wrapper .= $input->get_input_text() . "<br>\n";
//Last Name
$label->set_label("staff_id", "ID Number", "");
$input->set_input("text", "last_name", "", "ID Number", "");
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
$input->set_input("submit","insert_admin", "Insert Admin/Lecturer", "","");
$input_wrapper .= $input->get_input() ."<br>\n";
echo $form->get_form_wrapper($input_wrapper);

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