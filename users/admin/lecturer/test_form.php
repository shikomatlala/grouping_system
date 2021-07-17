<?php
include "form.php";


$input = new Input();
$label = new Label();
$form = new Form();
$input_output = "";
//type, name, value, place_holder
$input->set_input('submit','dso', 'Enter', 'testing', '');
//echo $input->get_input();

$form->set_form("manage_students.php", "POST", "");
$form->set_form_label("fname", "Enter First Name", "");
$form->set_form_input("text", "fname", "Shiko", "", "");
$form->get_form();
echo $form->get_form();

for($x =0; $x < 5; $x++)
{
  $text = "The number is " . $x;
  $label->set_label($x, $text, '');
  $input->set_input('submit', 'dso', $x, 'testing', '');
  $input_output .=$label->get_label() . "<br>\n";
  $input_output .=$input->get_input() . "<br>\n";
}
echo $input_output;
$input->set_input('date', 'dob', '', '', '');
echo $input->get_input();


//We are now testing the form_wrapper
$sum_input;
$label->set_label("fname", "First Name", "");
$input->set_input("text","fname", "First Name", "", "");
$sum_input = "\t". $label->get_label() . "<br>\n";
$sum_input .= "\t". $input->get_input() . "<br>\n";
//last name
$label->set_label("lname", "Last Name", "");
$input->set_input("text","lname", "Last Name", "", "");
$sum_input .= "\t". $label->get_label() . "<br>\n";
$sum_input .= "\t". $input->get_input() . "<br>\n";
//ID Number
$label->set_label("id", "ID Number", "");
$input->set_input("text","id_nr", "ID Number", "", "");
$sum_input .= "\t". $label->get_label() . "<br>\n";
$sum_input .= "\t". $input->get_input() . "<br>\n";
//Gender
$label->set_label("sex", "Sex", "");
$input->set_input("radio","sex", "Sex", "", "");
$sum_input .= "\t". $label->get_label() . "<br>\n";
$sum_input .= "\t". $input->get_input() . "<br>\n";

//Le us wrap this information
//echo $sum_input;
$form->set_form("new_user.php", "POST","");
echo $form->get_form_wrapper($sum_input);
?>
