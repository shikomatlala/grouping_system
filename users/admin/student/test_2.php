<?php
include_once "form.php";
//create a form and then click various thigns

//scr
//$form->set_form("", "POST", "");
//$input->set_input("")
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
//echo $_SERVER['SERVER_NAME'];


?>
