<?php
class Select
{
  private $name;
  private $id;
  private $class;
  private $value;
  private $caption;
  public function set_select($name,$id, $class)
  {
      $this->name = $name;
      $this->id = $id;
      $this->class = $class;
  }
  public function set_option($value, $caption)
  {
    $this->value = $value;
    $this->caption = $caption;
  }
  public function get_option()
  {
    $out = "<option value=\"$this->value\">$this->caption</option>\n";
    return $out;
  }
  public function get_select($option)
  {
    $out = "";
    $out  =  "\n<select class =\"$this->class\" name=\"$this->name\" id=\"$this->id\">\n";
    $out .= $option;
    $out .= "</select><br>\n";
    return $out;
  }

}
class Input
{
  //input attributes
  private $type;
  private $name;
  private $value;
  private $place_holder;
  private $id;
  private $class;

  //input methods
  public function set_input($type, $name, $value, $place_holder, $class)
  {
    $this->type = $type;
    $this->name = $name;
    $this->value = $value;
    $this->place_holder = $place_holder;
    $this->class = $class;
  }
  public function get_input_text()
  {
    //echo $this->type;
    $out = "<input class=\"$this->class\" type=\"$this->type\" name=\"$this->name\" value=\"$this->value\" placeholder=\"$this->place_holder\">" ;
    return $out;
  }
  public function get_input()
  {
    //echo $this->type;
    $out = "<input class=\"$this->class\" type=\"$this->type\" name=\"$this->name\" value=\"$this->value\" >" ;
    return $out;
  }
}
class Label
{
  //input attributes<label for="css">CSS</label><br>
  private $for;
  private $text;
  private $class;
  //input methods
  public function set_label($for, $text, $class)
  {
    $this->for = $for;
    $this->text = $text;
    $this->class= $class;
  }
  public function get_label()
  {
    //echo $this->type;
    $out = "<label class=\"$this->class\" for=\"$this->for\">$this->text</label>";
    return $out;
  }
}
class Form
{

  //form Attributes
  private $action;
  private $method;
  private $class;
  private $label;
  private $input;

  //Form Methods
  public function set_form_input($type, $name, $value, $place_holder)
  {
    $input = new Input();//I am not creating a new instance of the class
    $input->set_input($type,$name, $value, $place_holder, '');
    $this->input = $input->get_input();
  }
  public function set_form_label($for, $text, $class)
  {
    $label = new Label();
    $label->set_label($for, $text, $class);
    $this->label = $label->get_label();
  }
  public function set_form($action, $method, $class)
  {
      $this->action = $action;
      $this->method = $method;
      $this->class = $class;
  }
  public function get_form()
  {
    //$this->label = new Label();
    //$this->input = new Input();
    $out = "";
    $out .= "\n<form class=\"$this->class\" action=\"$this->action\" method=\"$this->method\" >\n";
    $out .= "\t" . $this->label . "\n";
    $out .= "\t" . $this->input . "\n";
    $out .= "</form>\n";
    return $out;
  }
  public function get_form_wrapper($form_contents)
  {
    $out = "\n<form class=\"$this->class\" action=\"$this->action\" method=\"$this->method\" >\n";
    $out .= $form_contents;
    $out .= "</form>\n";
    return $out;
  }

}

?>
