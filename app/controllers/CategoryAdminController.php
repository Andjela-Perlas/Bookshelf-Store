<?php

namespace app\controllers;

use app\models\Category;


class CategoryAdminController extends Controller {

    private $conn;

    public function __construct($conn) {
        $this->conn = $conn;
    }



    public function category() {

        $modelCategory = new Category($this->conn);
        $category = $modelCategory->getAllCategories();
        $this->checkAdmin();
        $this->viewAdmin("categoryAdmin", ["category" => $category]);
    }



    public function categoryInsert() {

        $this->checkAdmin();
        $code = null;
        $data = "";

        if (isset($_POST["insertCategory"])) {

            $name = $_POST['name'];
            
            try {
                $categoryModel = new Category($this->conn);
                $categoryModel->addCategory($name);
                $code = 201;
                $data = ["success"=> "Uspešno kreirano!"];


            }  catch(PDOException $e){
                echo $e->getMessage();
                $code = 500;
            }
        }
        
        $this->json($data, $code);
    }



    public function categoryDelete() {

        $this->checkAdmin();
        $code = null;
        $data = "";

        if(isset($_POST['deleteCategory'])) {

            $categoryID = $_POST['categoryID'];

            try {
                $categoryModel = new Category($this->conn);
                $categoryModel->deleteCategory($categoryID);
                $code = 204;

            } catch(PDOException $e) {
                echo $e->getMessage();
                $code = 500;
            }
        }

        $this->json($code);
    }



    public function getCategory() {

        $this->checkAdmin();
        $code = null;

        try {	
            $categoryModel = new Category($this->conn);
            $data = $categoryModel->getAllCategories();

        } catch(PDOException $e){
            echo $e->getMessage();
            $code = 500;
        }

        $this->json($data, $code);
    }
    


    public function getOneCategory() {

        $this->checkAdmin();
        $code = null;

        if(isset($_POST['btn'])) {

            $categoryID = $_POST['categoryID'];
            
            try {	
                $categoryModel = new Category($this->conn);
                $data = $categoryModel->getOneCategory($categoryID);

            } catch(PDOException $e){
                echo $e->getMessage();
                $code = 500;
            }

        }

        $this->json($data, $code);
    }


    public function updateCategory() {

        $this->checkAdmin();
        $code = null;

        if(isset($_POST['updateCategory'])) {

            $categoryID = $_POST['categoryID'];
            $name = $_POST['name'];
        }

        try {
          $categoryModel = new Category($this->conn);
          $categoryModel->updateCategory($name, $categoryID);
          $code = 204;

      } catch(PDOException $e){
        echo $e->getMessage();
        $code = 500;
    }   

    $this->json($code);
}
}
