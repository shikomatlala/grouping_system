<?php
session_start();
include_once "form.php";
//create a form and then click various thigns

//scr
//$form->set_form("", "POST", "");
//$input->set_input("")
//create a hidden button and then get the value of that button -
$form = new Form();
$input = new Input();
$label = new Label();
$inputs = "";

echo "<h1>This the date time stamp"  . date('Y-m-d') .  "<br></h1>";

echo "<br>This is the old date" . date('D');
//Create a new form with button
$form->set_form("", "POST", "");
$input->set_input("hidden", "module", "Shiko_Matlala", "", "");
$label->set_label("submit","Submit Form", "");
$inputs .= $label->get_label();
$inputs .= $input->get_input();
$input->set_input("submit", "submit", "Submit", "", "");
$inputs .= $input->get_input();
echo $form->get_form_wrapper($inputs);
if(isset($_POST['submit']))
{
  //get the value of the hidden button
  echo "The value of the hidden button is: " .  $_POST['module'];
}

/*
$_SESSION['student'] = array();
array_push($_SESSION['student'], "Shiko", "Matlala");
for($x = 0; $x < count($_SESSION['student']); $x++)
{
  echo $_SESSION['student'][$x] . "<br>\n";
}
echo "<h1>We can post the first name</h1><br>";
echo $_POST["first_name"];
$form = new Form();
$form->set_form("", "POST", "");
$input = new Input();
$input->set_input("submit", "submit", "Submit", "", "");
echo $form->get_form_wrapper($input->get_input());
//HOw do we know the button that was selected?

if(isset($_POST['submit']))
{
  echo "You clicked me";
}
*/
//echo $_SERVER['SERVER_NAME'];


?>
