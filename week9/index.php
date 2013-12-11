<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        // put your code here
        include 'Logging.php';
        
        /*
        error_log("\nthis is a test", 3, "logs/errors.log");
        //error_log("this is a test");
        
        
        if ( is_dir("logs") && is_file("logs/errors.log") && file_exists("logs/errors.log") ) {
            
            $data = file_get_contents('logs/errors.log');
            
            $convert = explode("\n", $data); //create array separate by new line

            for ( $i = 0, $l = count($convert); $i < $l; $i++ ) {
                echo '<p>', $convert[$i].'</p> '; 
            }
            
            
        }
         * */
        
        Logging::log("this is working", Logging::NOTICE);
        
        echo Logging::getLogs();
         
        
        
        ?>
    </body>
</html>
