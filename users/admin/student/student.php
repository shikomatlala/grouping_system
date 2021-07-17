<?php
include_once "../../../connect.php";
class Student
{
  private $stud_number;
  private $first_name;
  private $last_name;
  private $id_nr;
  private $sex;
  private $phone;
  private $email;
  private $address;
  //member methods
  public function set_student($stud_number, $first_name, $id_nr, $sex, $phone, $email, $address)
  {
    return "Hi";
  }
  public function check_id($id_nr,$link)
  {
     $out= 1;
     $sql = "SELECT * FROM student WHERE id_nr  = \"$id_nr\" ";
     $result = mysqli_query($link, $sql);
     if(mysqli_num_rows($result) > 0)
     {
       $out = 0;
     }
     return $out;
  }
  public function validate_name($string)
  {
    //check it is not num
    //find the size of th string -
    //Trim white space
    $string = trim($string, " ");
    $out = 0;
    if(ctype_alpha($string))
    {
      $out = 1;
      return $out;
    }
    else
    {
      return $out;
    }
  }
  public function set_firstname($first_name)
  {
    $student = new Student();
    if($student->validate_name($first_name) ==1)
    {
      $this->first_name = $first_name;
    }
    else
    {
      $this->first_name = "NULL";
    }
  }
  public function get_firstname()
  {
    return $this->first_name;
  }
  public function set_surname($last_name)
  {
    $student = new Student();
    if($student->Validate_name($last_name) == 1)
    {
      $this->last_name = $last_name;
    }
    else
    {
      $this->last_name = "NULL";
    }
  }
  public function get_surname()
  {
    return $this->last_name;
  }
  public function validate_phone($phone,$link)
  {
     $out= 1;
     $sql = "SELECT * FROM student WHERE phone  = \"$phone\" ";
     $result = mysqli_query($link, $sql);
     if(mysqli_num_rows($result) > 0)
     {
       $out =0;
     }
     return $out;
  }
  public function validate_id($id_nr)
  {
    //Check the size
    $out = 0;
    $id_nr = trim($id_nr," ");
    if(ctype_digit($id_nr) && strlen($id_nr) ==13)
    {
      if(substr($id_nr,2,2) != "00")
      {
        if(substr($id_nr,4,2)!="00")
        {
          $out =1;
        }
      }
    }
    return $out;
  }
  public function set_id($id_nr)
  {
  $student = new Student();
  if($student->validate_id($id_nr) == 1)
  {
    $this->id_nr = $id_nr;
  }
  else
  {
   $this->id_nr = "NULL";
  }
  }
  public function get_id()
  {
  return $this->id_nr;
  }
  public function validate_sex($id_nr, $sex)
  {
    $out =0;
    $id_nr = substr($id_nr, 6, 4);
    if((int)$id_nr > 4999 && $sex =="M")
    {
      $out = 1;
      return $out;
    }
    elseif((int)$id_nr < 5000 && $sex == "F")
    {
      $out =1;
      return $out;
    }
    else
    {
      return $out;
    }
  }
}
