<?php

function convert_access_level_to_login_suffix($access_level) {
    $access_suffix = "d";
    switch ($access_level) {
        case "1":
            $access_suffix = "a";
            break;
        case "2":
            $access_suffix = "b";
            break;
        case "3": 
           $access_suffix = "c";
            break;
        case "4":
            $access_suffix = "d";
            break;
        }
        
        return $access_suffix;
}

?>