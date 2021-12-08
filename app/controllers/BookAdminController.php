<?php

namespace app\controllers;

use app\models\Book;


class BookAdminController extends Controller {

    private $conn;

    public function __construct($conn) {
        $this->conn = $conn;
    }

    public function book() {

        $modelBook = new Book($this->conn);
        $book = $modelBook->getAllBooks();
        $this->checkAdmin();
        $this->viewAdmin("bookAdmin", ["book" => $book]);
    }



    public function bookInsert() {

        $this->checkAdmin();
        $code = null;

        if (isset($_POST["insertBook"])) {
            $name = $_POST['name'];
            $description = $_POST['description'];
            $price = $_POST['price'];
            $priceSite = $_POST['priceSite'];
            $imgSrc = $_POST['imgSrc'];
            $imgAlt = $_POST['imgAlt'];
            
            try {
                $bookModel = new Book($this->conn);
                $bookModel->addBook($name, $description, $price, $imgSrc, $imgAlt, $priceSite);
                $code = 201;

            }  catch(PDOException $e){
                echo $e->getMessage();
                $code = 500;
            }
        }

        $this->json($code);
    }



    public function updateBook(){

        $this->checkAdmin();
        $code = null;

        if(isset($_POST['updateBook'])) {

            $bookID = $_POST['bookID'];
            $name = $_POST['name'];
            $description = $_POST['description'];
            $price = $_POST['price'];
            $priceSite = $_POST['priceSite'];
            $imgSrc = $_POST['imgSrc'];
            $imgAlt = $_POST['imgAlt'];
        }

        try {
          $bookModel = new Book($this->conn);
          $bookModel->updateBook($name, $description, $price, $priceSite, $imgSrc, $imgAlt, $bookID);
          $code = 204;
      } catch(PDOException $e) {
        echo $e->getMessage();
        $code = 500;
    }   

    $this->json($code);
}




public  function deleteBook() {

    $this->checkAdmin();
    $code = null;
    $data = "";

    if(isset($_POST['deleteBook'])) {

        $bookID = $_POST['bookID'];

        try {
            $modelBook = new Book($this->conn);
            $modelBook->deleteBook($bookID);
            $code = 204;
        } catch(PDOException $e){
            echo $e->getMessage();
            $code = 500;
        }
    }

    $this->json($code);
}




public function getOneBook() {

    $this->checkAdmin();
    $code = null;

    if(isset($_POST['bookBtn'])) {

        $bookID = $_POST['bookID'];

        try {   
            $bookModel = new Book($this->conn);
            $data = $bookModel->getOneBook($bookID);
        } catch(PDOException $e){
            echo $e->getMessage();
            $code = 500;
        }
    }

    $this->json($data, $code);
}





public function getAllBooks() {

    $this->checkAdmin();
    $code = null;

    try {	
        $bookModel = new Book($this->conn);
        $data = $bookModel->getAllBooks();
    } catch(PDOException $e){
        echo $e->getMessage();
        $code = 500;
    }

    $this->json($data, $code);
}
}
