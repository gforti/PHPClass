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
        
            print_r($_GET);

            if ( count($_GET) && array_key_exists("cityyyy", $_GET) ) {
                echo $_GET["cityyyy"];
            }
        ?>
        
        <a href="?name=gabe&cityyyy=warwick&state=RI">Click me</a>
    </body>
</html>
