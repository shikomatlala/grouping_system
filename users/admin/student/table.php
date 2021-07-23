<?php

class Table
{
  private $class;

  public function set_table($class)
  {
    $this->class = $class;
  }
  public function get_teable($th, $td)
  {
    $out = "";
    $out .= "\n\t<table class=\"$class\" >";
    $out .=  $th;
    $out .=  $td;
    $out .= "\n\t</table>";

  }
  public function set_th()
  {

  }
  public function get_th()
  public function set_td()
  public function get_td()

  <table style="width:100%">
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
}
