
  <!--
  <table>
  <tr>
    <th>Firstname</th>
    <th>Lastname</th>
    <th>Age</th>
  </tr>

  <tr>
    <td>Jill</td>
    <td>Smith</td>
    <td>50</td>
  </tr>
  <tr>
    <td>Eve</td>
    <td>Jackson</td>
    <td>94</td>
  </tr>
</table>
-->


<?php

  $lecturer_links = array("Insert Student", "Register Student", "Insert Module", "Create Lecture");// Indexs
  for($x = 0; $x < sizeof($lecturer_links); $x++)
  {
    echo "<br>";
    echo $lecturer_links[$x];
  }
?>
