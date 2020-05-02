<?php

namespace app\controllers;

use app\models\Register;

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;




class RegController extends Controller {

    private $conn;

    public function __construct($conn) {
        $this->conn = $conn;
    }



    public function registration() {

        $code = null;
        $data = "";

        if(isset($_POST["registerBtn"])) {

            $fullName = $_POST["name"];
            $email = $_POST["email"];
            $password = $_POST["password"];
            $confirmPass = $_POST["confirmPass"];
            $gender = isset($_POST["selectedGender"]) ? trim($_POST["selectedGender"]) : null;

            $errors = [];


            $reName = '/^[A-Z][a-z]{2,15}\s[A-Z][a-z]{2,15}$/';
            $rePassword = '/^[a-z0-9]{8,}$/';


            if ($fullName) {
                if (!preg_match($reName, $fullName)) {
                    array_push($errors, 'Ime nije ispravno!');  
                }
            } else {
                array_push($errors, 'Polje za ime ne sme biti prazno!');
            }


            if ($email) {
                if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                    array_push($errors, 'Email nije ispravan!');
                }
            } else {
                array_push($errors, 'Polje za email ne sme biti prazno!');
            }


            if ($password) {
                if (!preg_match($rePassword, $password)) {
                    array_push($errors, 'Lozinka nije ispravna!');

                }
            } else {
                array_push($errors, 'Polje za lozinku ne sme biti prazno!');
            }


            if ($confirmPass !== $password) {
                array_push($errors, "Lozinke se ne poklapaju!");
            } 

            if (empty($gender)) {
                array_push($errors, "Morate izabrati pol!");
            }


            if(count($errors) > 0) {

                $data =  $errors;
                $code = 422;

            } else {

                $token = bin2hex(random_bytes(60));
                $secret = md5($password);

                try {
                    if ($email != $email) {


                    $registerModel = new Register($this->conn);
                    $registerModel->addUser($fullName, $email, $secret, $token);
                    $code = 201;
                    $data = "Uspešno ste se registrovali. Aktivacioni link je poslat na Vaš email!";
                    
                    //mailer
                    $mail = new PHPMailer(true);                              
                    try {

                      $mail->SMTPDebug = 0;                                 
                      $mail->isSMTP();                                      
                      $mail->Host = 'smtp.gmail.com'; 
                      $mail->SMTPAuth = true;                              
                      $mail->Username = 'auditorne.php@gmail.com';              
                      $mail->Password = 'Sifra123';                   
                      $mail->SMTPSecure = 'tls';                            
                      $mail->Port = 587;                                


                      $mail->setFrom('auditorne.php@gmail.com', 'Registraciona forma');
                      $mail->addAddress($email);     

                      $mail->isHTML(true);                                 
                      $mail->Subject = 'Aktivacioni link';
                      $href = "http://localhost/books-finished/books/index.php?page=activate&active=" . $token;
                      $mail->Body = 'Da bi ste aktivirali svoj nalog morate kliknuti na sledeći  - <a href="' . $href . '">aktivacioni link</a>';

                      $mail->send();
                  } catch (Exception $e) {
                    echo $e->getMessage();
                }
                    } else {
                        $code = 409;
                    }

                //mailer
            } catch(PDOException $e) {
                echo $e->getMessage();
            }
        }
    }

    $this->json($data, $code);
}




public function register() {

    $menu = $this->linkMenu($this->conn);
    $networks = $this->linkNetwork($this->conn);
    $modelRegister = new Register($this->conn);
    $gender = $modelRegister->getGender();
    $this->view("register", ["menu" => $menu, "networks" => $networks, "gender" => $gender]);
}
}