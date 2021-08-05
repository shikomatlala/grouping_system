<?php
//We are going to test our arrays
$list = array(2,4,3,11,10,23,14);
<<<<<<< HEAD
$module_code = array("ISY34BT", "CMK10BT", "DSO10AT", "ISY10BT", "SSF24BT", "ISY10AT",  "CMK10AT","DSO10BT", "DSO17BT", "ISY34AT", "SSF24AT");
=======
$module_code = array("CMK10BT", "DSO10AT", "ISY10BT", "ISY10AT",  "CMK10AT","DSO10BT", "DSO17BT");
>>>>>>> 9f50c454f7f1fb4be2a7b7bb7f30c6ffc90c1b5e
$modules_broken = array();
//Break down all themodules first
//Now I need to put these modules in order - by both 'AT' and 'BT' respectfully for each module.
//break themodule

//Sort the array;
echo sizeof($list);
$temp = 0;
for($x =0; $x < sizeof($list); $x++)
{
    for($y = 1; $y <= sizeof($list); $y++)
    {
        //4 > 3
        if($list[$x] > $list[$y-1])//  False | x = 1 , y+1 = 2
        {
            //But this time we need to make sure that we compare the modules
            $temp = $list[$y-1];//3
            $list[$y-1] = $list[$x];//4
<<<<<<< HEAD
            $list[$x] = $temp;//3 - 3 -
=======
            $list[$x] = $temp;//3 - 3 - 
>>>>>>> 9f50c454f7f1fb4be2a7b7bb7f30c6ffc90c1b5e
        }
    }
}
//2, 3, 4, 10, 11, 23

echo "<br><br>";
for($x = 0; $x < sizeof($list); $x++)
{
    echo "$list[$x]"  . "  - Where x = $x\n<br>";
}
$at_modules = array();
$bt_modules = array();
<<<<<<< HEAD
=======
$
>>>>>>> 9f50c454f7f1fb4be2a7b7bb7f30c6ffc90c1b5e
//Split the modules into parts
//get the last part of the string - and then tell if the string is proper or not.
$maker = substr($module_code[0], 5, 2);
//echo $maker . " -- This is the maker <br>";
$module_num = array();//in the bigining our array is empty
for($x = 0; $x < sizeof($module_code); $x++)
<<<<<<< HEAD
{
=======
{ 
>>>>>>> 9f50c454f7f1fb4be2a7b7bb7f30c6ffc90c1b5e

    $module_number = (int)substr($module_code[$x], 3,2);
    //Now le us split the modules.
    //We could also make use of nql levels.
    //break the string here to test if this modules is at
    if(strpos($module_code[$x], $maker))
    {
        array_push($at_modules, $module_code[$x]);
        //if($module_number)
        array_push($module_num, (int)$module_number);//We push a value to the array
        echo "$module_number<br>";//We want to make sure that we only store distinct modules
        //Now let us make sure that we push only distinct values.
        //How do we ensure that we push only distinct values?
        //Firstly we need to access the array, and then after we access the array we need to make sure that we can see what is inside the array - and if that value is inside the array then we need not store it.
        // for($y =0; $y < sizeof($module_num); $y++)
        // {
<<<<<<< HEAD

=======
            
>>>>>>> 9f50c454f7f1fb4be2a7b7bb7f30c6ffc90c1b5e
        // }
        // if($module_num[$x] == (int)$module_number)
        // {

        // }
<<<<<<< HEAD

=======
        
>>>>>>> 9f50c454f7f1fb4be2a7b7bb7f30c6ffc90c1b5e

    }
    else
    {
        array_push($bt_modules, $module_code[$x]);
    }

}
<<<<<<< HEAD
//Now let us make sure that the module that we are dealing with has the proper number.
=======
//Now let us make sure that the module that we are dealing with has the proper number. 
>>>>>>> 9f50c454f7f1fb4be2a7b7bb7f30c6ffc90c1b5e
//These are modules wich are important but are lower
$at_first_modueles = array();
$at_last_moduels = array();
$module_number = 0;
$fist_modules = array();
echo " -- AT MODULES --- <br>\n";

echo "This is the the module numnber $module_number <br> \n";
for($x = 0; $x < sizeof($at_modules); $x++)
{
    $module_number = (int)substr($at_modules[$x], 3,2);
<<<<<<< HEAD

=======
>>>>>>> 9f50c454f7f1fb4be2a7b7bb7f30c6ffc90c1b5e
    //this is where we are going to make use oof the sorting ninja.if()
    //And then once we have the module that we want to work with we can then make sure that we can put everything properly.

    echo "$at_modules[$x] <br>\n";
    //This where we are going to split the modules accordingly
    //$at_first_modueles
    //now let us sot our the modules according to their numbers...
    $temp = 0;
<<<<<<< HEAD
}
//Sort all the AT modules - Remember AT is a pre-requisite of BT - So we need to make sure that the person has an AT module first.
for($i =0; $i < sizeof($at_modules); $i++)
{
    for($y = 1; $y <= sizeof($at_modules); $y++)
    {
        //4 > 3
        if((int)substr($at_modules[$i], 3,2) > (int)substr($at_modules[$y-1], 3,2))//  False | i = 1 , y+1 = 2
        {
            //But this time we need to make sure that we compare the modules
            //Now we need to make sure that we can order all the modules properly.
            //To do this we weed to get the module number and then after we order the module by its number we can the put everythig accordingly. - and also make sure that we write all the pre-requistes.
            //This is where we substring the module.
            //$temp = (int)substr($at_modules[$i + 1], 3,2);

            $temp = $at_modules[$y-1];//3
            $at_modules[$y-1] = $at_modules[$i];//4
            $at_modules[$i] = $temp;//3 - 3 -
        }
    }
=======
    for($i =0; $i < sizeof($list); $i++)
    {
        for($y = 1; $y <= sizeof($list); $y++)
        {
            //4 > 3
            if($list[$i] > $list[$y-1])//  False | i = 1 , y+1 = 2
            {
                //But this time we need to make sure that we compare the modules
                $temp = $list[$y-1];//3
                $list[$y-1] = $list[$i];//4
                $list[$i] = $temp;//3 - 3 - 
            }
        }
    }

>>>>>>> 9f50c454f7f1fb4be2a7b7bb7f30c6ffc90c1b5e
}
echo "<br><br>";
echo "This is the the module numnber $module_number <br> \n";
echo " -- BT MODULES --- <br>\n";
for($x = 0; $x < sizeof($bt_modules); $x++)
{
    echo "$bt_modules[$x] <br>\n";
}
<<<<<<< HEAD
//Sort all the AT modules - Remember AT is a pre-requisite of BT - So we need to make sure that the person has an AT module first.
for($i =0; $i < sizeof($bt_modules); $i++)
{
    for($y = 1; $y <= sizeof($bt_modules); $y++)
    {
        //4 > 3
        if((int)substr($bt_modules[$i], 3,2) > (int)substr($bt_modules[$y-1], 3,2))//  False | i = 1 , y+1 = 2
        {
            //But this time we need to make sure that we compare the modules
            //Now we need to make sure that we can order all the modules properly.
            //To do this we weed to get the module number and then after we order the module by its number we can the put everythig accordingly. - and also make sure that we write all the pre-requistes.
            //This is where we substring the module.
            //$temp = (int)substr($at_modules[$i + 1], 3,2);

            $temp = $bt_modules[$y-1];//3
            $bt_modules[$y-1] = $bt_modules[$i];//4
            $bt_modules[$i] = $temp;//3 - 3 -
        }
    }
}
//Al the AT modules have been sorded now. let us check
echo "This is the the module numnber $module_number <br> \n";
for($x = 0; $x < sizeof($at_modules); $x++)
{
    $module_number = (int)substr($at_modules[$x], 3,2);

    //this is where we are going to make use oof the sorting ninja.if()
    //And then once we have the module that we want to work with we can then make sure that we can put everything properly.

    echo "$at_modules[$x] <br>\n";
    //This where we are going to split the modules accordingly
    //$at_first_modueles
    //now let us sot our the modules according to their numbers...
    $temp = 0;
}


echo " -- BT MODULES BUT NOW THEY HAVE BEEN SORTED --- <br>\n";
for($x = 0; $x < sizeof($bt_modules); $x++)
{
    echo "$bt_modules[$x] <br>\n";
}
//Now we need to make sure that we can sort all of this information properly - But before we can do this we need to be able to tell
//Which modules needs to be sorted pre-requisites which modules.
//We thefore need to compare all the modules.
//I just noticed that we might have a problem with this day of doing things because not all modules conform to this module_code naming standard - and therefore
//We will definately have a crash in the system.
//So the best option is to make this manually - rather than to automatic - but for now we need to make sure that we can all the modules.

?>
=======
?>
>>>>>>> 9f50c454f7f1fb4be2a7b7bb7f30c6ffc90c1b5e
