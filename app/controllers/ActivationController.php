<?php

namespace app\controllers;

use app\models\Register;
use app\models\Menu;
use app\models\Network;

class ActivationController extends Controller {

  private $conn;

  public function __construct($conn) {
    $this->conn = $conn;
  }


  
  public function activationToken() {

   if (isset($_GET["active"])) {

     $token = $_GET["active"];
     
     try {
      $registerModel = new Register($this->conn);
      
      $registerModel->activateUser($token);

    } catch(PDOException $e) {
      echo $e->getMessage();
    }
  }

  $menu = $this->linkMenu($this->conn);
  $networks = $this->linkNetwork($this->conn);

  $this->view("activate", ["menu" => $menu, "networks" => $networks]);
}
}