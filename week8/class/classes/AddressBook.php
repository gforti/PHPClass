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
        
        $statement = $db->prepare('select * address, name '
                . 'where name.id = address.name_id');
        $statement->execute();
        $result = $statement->fetch(PDO::FETCH_ASSOC);
        
         if ( is_array($result) && count($result) ) { 
            print_r($result);                   
       }  
    }
    
}
