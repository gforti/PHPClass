<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Page
 *
 * @author GFORTI
 */
class Page {
    //put your code here
    
    public static function insertHeader() {
        
echo <<<END
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>This is my Page</title>
         <link rel="stylesheet" type="text/css" href="css/script.css" />
    </head>
    <body>
END;
        
        
    }
    
    public static function insertFooter() {
        
echo <<<END
    <script type="text/javascript" src="js/script.js"></script>
    </body>
</html>
END;
        
        
    }
    
}
