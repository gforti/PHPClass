<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ProcessForm
 *
 * @author GFORTI
 */
class ProcessForm {
    //put your code here
    
    public function validate(){
        
        if ( count($_POST) ) {
            if ( ! $this->emailIsValid() ) {
                echo '<p> Email is not valid</p>';
            }
             if ( ! $this->nameIsValid() ) {
                echo '<p> Name is not valid</p>';
            }
        }
        
    }
    
    public function emailIsValid(){
        $email = filter_input(INPUT_POST, "email");
        return Validator::emailIsValid($email) ; 
    }
    public function nameIsValid(){
        $name = filter_input(INPUT_POST, "name");
        return true;
    }
    
}
