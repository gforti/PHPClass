<?php include 'dependency.php';
?>
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
        
        $ab = new AddressBook();
        
        
        
        print_r($_POST);
        print_r($_GET);
        
        $ab->checkDeletes();
        
        
        $ab->display();
        ?>
        
        <br clear="all" />
        <form action="#" method="post">
            name <input type="text" name="name" value="" /><br />
            Address <input type="text" name="address" value="" /><br />
            city <input type="text" name="city" value="" /><br />
            state <input type="text" name="state" value="" /><br />
            ZIP <input type="text" name="zip" value="" /><br />
            <br />
            <input type="submit" value="ADD" />
            
        </form>
        
    </body>
</html>
