<?php 

namespace app\controllers;

use app\models\Menu;
use app\models\Network;


class ErrorController extends Controller {

	private $conn;

	public function __construct($conn) {
		$this->conn = $conn;
	}
	


	public function error404() {

		$menu = $this->linkMenu($this->conn);
		$networks = $this->linkNetwork($this->conn);
		$this->view("404", ["menu" => $menu, "networks" => $networks]);
	}
	
	

	public function error403() {
		
		$menu = $this->linkMenu($this->conn);
		$networks = $this->linkNetwork($this->conn);
		$this->view("403", ["menu" => $menu, "networks" => $networks]);
	}
}
