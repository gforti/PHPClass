<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of AddressBook
 *
 * @author GFORTI
 */
class AddressBook extends DB{
    //put your code here
    
    //todo process, display
    
    
    public function display() {
        $db = $this->getDB();
        
        $statement = $db->prepare('select * from address, name '
                . 'where name.id = address.name_id');
        $statement->execute();
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
        
         if ( is_array($result) && count($result) ) { 
             
         
            echo '<table border="1"><caption>Address Book</caption><thead><tr>';
            echo '<th>Address</th><th>City</th><th>state</th><th>ZIP</th><th>Name</th>';
            echo '<th></th><th></th>';
            echo '</tr></thead>';
            echo '<tbody>';
            
            foreach ($result as $row) {
                echo '<tr>';               
                echo '<td>',$row["address"],'</td>';
                echo '<td>',$row["city"],'</td>';
                echo '<td>',$row["state"],'</td>';
                echo '<td>',$row["zip"],'</td>';
                echo '<td>',$row["name"],'</td>';            
                echo '<td><a href=?edit=',$row["id"],'>Edit</a></td>';
                echo '<td><a href=?delete=',$row["id"],'>Delete</a></td>';
                echo '</tr>';
            }
            
            echo '</tbody</table>';
       } else {
           echo '<p> No Records Found </p>';
       }  
    }
    
}
