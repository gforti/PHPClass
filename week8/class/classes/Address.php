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
class Address extends db {
    //put your code here
    
    // todo getAddress(id), getAllAddresses(), updateAddress(id) deleteAddress(id), createAddress()

    public static function deleteAddress($id) {
        $db = new db();
        $statement = $db->prepare('select * from address, name '
                . 'where name.id = address.name_id');
        $statement->execute();
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
        
    }
    
    
}
