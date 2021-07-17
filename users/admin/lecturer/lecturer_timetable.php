<?php
include "../../../connect.php";
$str_html_table = " <div>
                    <br><br><br>
                      <table>
                        <tr>";
$sql = "SELECT a.vanue, a.module_code, a.start_time, a.end_time, a.day\n"

    . "FROM lecture a, lecture_lecturer b, lecturer c\n"

    . "WHERE b.staff_number = c.staff_number\n"

    . "AND b.lecture_id = a.lecture_id\n"


    . "AND c.staff_number = 10023";
$result = mysqli_query($link, $sql);
$int_x = 0;
$str_day =array();
$str_module = array();

if(mysqli_num_rows($result) > 0)
{
    while($row = mysqli_fetch_assoc($result))
    {

      //echo "<th>" .  $row["day"] . "<th>";
      //echo $row["module_code"];

      $str_day[$int_x] = $row["day"];
      $str_module[$int_x] = $row["module_code"];
      $int_x++;
    }
    echo $str_html_table;
    echo "<th>Time</th>";
    for($int_y = 0; $int_y < $int_x; $int_y++)
    {
        echo "<th>" . $str_day[$int_y] . "</th>\n";
    }
}
//Write the select query


  //Create the php code
  //create from the file




 ?>
  </tr>


  <tr>
    <th> 1</th>
    <td>DSO</td>
    <td>ISY</td>
    <td>TPG</td>
    <td>TPG</td>
    <td>DSO</td>
  </tr>
</table>
</div>
