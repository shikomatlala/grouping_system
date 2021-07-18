<?php
include_once "form.php";
//let us create students create the first form.
//insert student;
$form = new Form();
$input = new Input();
$label = new Label();
$input_wrapper = "";
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
$input_wrapper .= $input->get_input_text() . "<br>\n";
$input->set_input("submit","submit", "Insert Student", "","");
$input_wrapper .= $input->get_input() ."<br>\n";
echo $form->get_form_wrapper($input_wrapper);




?>
