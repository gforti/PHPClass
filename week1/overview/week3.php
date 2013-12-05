<?php include 'dependency.php'; ?>
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
        
            
            $email = filter_input(INPUT_POST, "email");
            $name = filter_input(INPUT_POST, "name");
            
           $process = new ProcessForm();
           
           $process->validate();
        ?>
        
        <form action="#" method="post">
            
           Email: <input type="text" name="email" value="<?php echo $email; ?>" />
           <br />
            Name: <input type="text" name="name" value="<?php echo $name; ?>" />
            <br />
            Password <input type="password" name="password" />
            <br />
            <input type="submit" value="Submit" />
            
        </form>
        
        
        <div>
            
            <div>
            
        </div>
        
    </body>
</html>
