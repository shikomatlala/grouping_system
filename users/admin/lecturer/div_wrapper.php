<?php
//We are now going toto make a div
function div($class, $content)
{
    $out = "";
    $out = "<div class=\"$class\">\n";
    $out .= $content;
    $out .= "</div>\n";
    return $out;
}


?>