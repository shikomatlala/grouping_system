<?php
session_start();
$database = "grouping_system";
$password = "";
$username = "root";
$servername = "localhost";
$link = mysqli_connect($servername, $username, $password, $database);
if($link == false){
    die ("ERROR: Could not connect " . mysqli_connect_error());
} else {
  echo "we are connected";
}
//One of the things that we can do is to make sure that we create a script that purely hold functions -- but the issue is that we have a lot of moving parts.

function div($class, $content)
{
    $out = "";
    $out = "<div class=\"$class\">\n";
    $out .= $content;
    $out .= "</div>\n";
    return $out;
}

function header_html()
{
    $out = "\n<html lang=\"en\" xmlns=\"http://www.w3.org/1999/xhtml\">";
    $out .= "
<head>
  <meta charset=\"utf-8\" />
  <title>Grouping System</title>
  <meta charset=\"UTF-8\" />
  <link rel=\"stylesheet\" href=\"matrix-login.css\" />
</head>
<body>
    \n";

    return $out;
}

echo header_html();
?>
