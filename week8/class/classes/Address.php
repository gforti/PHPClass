<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Address
 *
 * @author GFORTI
 */
class Address extends DB {
    //put your code here
    
    // todo getAddress(id), getAllAddresses(), updateAddress(id) deleteAddress(id), createAddress()

    public static function deleteAddress($id) {
        $dbc = new DB();
        $db = $dbc->getDB();
        $statement = $db->prepare('delete from address where id = :id');
        $statement->bindParam(':id', $id, PDO::PARAM_INT);
        
        if ( $statement->execute() ) {
            return true;
        }
        
        return false;
    }
    
    
}
