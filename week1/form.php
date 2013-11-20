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
        
            if ( count($_POST) ) {
                
                $email = filter_input(INPUT_POST, "email");
                $comments = filter_input(INPUT_POST, "comments");
               
                
                // validation checks
                
                if ( mail("me@gmail.com", "Post from site", $comments." contact: $email") ) {
                    echo '<div id="">Thanks for sending a message</div>';
                }
                        
                
            }
        ?>
        
        
        <form action="#" method="post">
            
           email <input name="email" type="text"> <br />
           comments <input name="comments" type="text"> <br />
            
           <input type="submit" value="submit" />
            
        </form>
        
    </body>
</html>
