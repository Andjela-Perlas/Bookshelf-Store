<?php

namespace app\models;


class Register {

    private $conn;

    public function __construct(Database $conn) {

        $this->conn = $conn;
    }



    public function addUser($fullName, $email, $password, $token) {

        $registration = [
             $fullName,
             $email,
             $password,
             $token       
        ];
    
        $query = "INSERT INTO user(fullName, email, password, roleID, token) 
        VALUES(?,?,?,2,?);";
    
        
        $this->conn->executeNonGet($query, $registration);
    }

    

    public function activateUser($token) {
        return $this->conn->executeNonGet("UPDATE user SET active = 1 WHERE token = ?", [$token]);
    }



    public function getGender() {

        return $this->conn->executeQuery("SELECT * FROM gender");
    }
}
