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
        
        $myvar = "string";
        $myvar = array();
        $myvar = 90;
        $myvar = true;
        
        $myvar = array("item1", "item2", "item3", true, 90);
        echo $myvar[1];
        /*
        print_r($myvar);
        var_dump($myvar);
        */
        
        $myvar = array( "item1" => "first", "item2" => "second", "item3"=>"third");
        echo $myvar["item2"];
        //print_r($myvar);
        
        
        foreach ($myvar as $key => $value) {
            echo "<p>$key = $value</p>";
        }
        
        
        if ( is_string($myvar) || is_array($myvar) ) {
            echo 'yup!';
        }
        
        
        ?>
    </body>
</html>
