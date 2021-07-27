<?php
//We now need to make sure that we can register our student -
//The one thing that comes to my mind is that we can make sure that we take the students information
//To begin with if we can take the student's information and then we register then to am module - we will be ok
//We just need to get the value of the hidden button.
//Find the modules that has been selected -
//And then insert that modules to the student module or rather just register that module with the student
if(isset($_POST['reg_module']))
{
  //get the value of the hidden button
  echo "The value of the hidden button is: " .  $_POST['module_code'];
  //Get the modules lecture
  //To have a student register we firslty need to have lectures put up in place.
}


?>
