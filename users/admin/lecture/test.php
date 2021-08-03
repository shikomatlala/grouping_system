<?php
//We are going to test our arrays
$list = array(2,4,3,11,10,23,14);
$module_code = array("CMK10BT", "DSO10AT", "ISY10BT", "ISY10AT",  "CMK10AT","DSO10BT", "DSO17BT");
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
            $list[$x] = $temp;//3 - 3 - 
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
$
//Split the modules into parts
//get the last part of the string - and then tell if the string is proper or not.
$maker = substr($module_code[0], 5, 2);
//echo $maker . " -- This is the maker <br>";
$module_num = array();//in the bigining our array is empty
for($x = 0; $x < sizeof($module_code); $x++)
{ 

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
            
        // }
        // if($module_num[$x] == (int)$module_number)
        // {

        // }
        

    }
    else
    {
        array_push($bt_modules, $module_code[$x]);
    }

}
//Now let us make sure that the module that we are dealing with has the proper number. 
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
    //this is where we are going to make use oof the sorting ninja.if()
    //And then once we have the module that we want to work with we can then make sure that we can put everything properly.

    echo "$at_modules[$x] <br>\n";
    //This where we are going to split the modules accordingly
    //$at_first_modueles
    //now let us sot our the modules according to their numbers...
    $temp = 0;
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

}
echo "<br><br>";
echo "This is the the module numnber $module_number <br> \n";
echo " -- BT MODULES --- <br>\n";
for($x = 0; $x < sizeof($bt_modules); $x++)
{
    echo "$bt_modules[$x] <br>\n";
}
?>