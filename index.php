<?php
require_once "app/config/autoload.php";
require_once "app/config/database.php";

require 'public/source/Exception.php';
require 'public/source/PHPMailer.php';
require 'public/source/SMTP.php';

use app\models\Database;
use app\controllers\PageController as Home;
use app\controllers\BookController as Book;
use app\controllers\ContactController as Contact;
use app\controllers\LoginController as Login;
use app\controllers\RegController as Register;
use app\controllers\ActivationController as Activation;
use app\controllers\CategoryController as Category;
use app\controllers\CartController as Cart;
use app\controllers\UserAdminController as User;
use app\controllers\ContactAdminController as ContactAdmin;
use app\controllers\CategoryAdminController as CategoryAdmin;
use app\controllers\BookAdminController as BookAdmin;
use app\controllers\MenuAdminController as MenuAdmin;
use app\controllers\SocialAdminController as SocialAdmin;
use app\controllers\ErrorController as Error;


$conn = new Database(SERVER, DATABASE, USERNAME, PASSWORD);


if(isset($_GET["page"])){

	switch($_GET["page"]){
		case "home" :
		$pageController = new Home($conn);
		$pageController->home();
		break;
		case "category":
		$categoryController = new Category($conn);
		$categoryController->categoryBook();
		break;
		case "search" :
		$pageController = new Home($conn);
		$pageController->search();
		break;
		case "book":
		$bookController = new Book($conn);
		$bookController->book();
		break;
		case "contact":
		$contactController = new Contact($conn);
		$contactController->contact();
		break;
		case "contactInput":
		$contactController = new Contact($conn);
		$contactController->insertContact();
		break;
		case "about":
		$pageController = new Home($conn);
		$pageController->about();
		break;
		case "login":
		$loginController = new Login($conn);
		$loginController->loginView();
		break;
		case "checkLogin":
		$loginController = new Login($conn);
		$loginController->login();
		break;
		case "logout":
		$loginController = new Login($conn);
		$loginController->logout();
		break;
		case "register":
		$regController = new Register($conn);
		$regController->register();
		break;
		case "reg":
		$regController = new Register($conn);
		$regController->registration();
		break;
		case "activate":
		$activationController = new Activation($conn);
		$activationController->activationToken();
		break;
		case "cart":
		$cartController = new Cart($conn);
		$cartController->cart();
		break;
		case "insertCart":
		$cartController = new Cart($conn);
		$cartController->insertCart();
		break;
		case "getCart":
		$cartController = new Cart($conn);
		$cartController->getFromCart();
		break;
		case "getAllCart":
		$cartController = new Cart($conn);
		$cartController->getAllFromCart();
		break;
		case "getAmount":
		$cartController = new Cart($conn);
		$cartController->getNewAmount();
		break;
		case "getCartNumber":
		$cartController = new Cart($conn);
		$cartController->numberOfBooks();
		break;
		case "deleteCart":
		$cartController = new Cart($conn);
		$cartController->deleteCart();
		break;
		case "admin" :
		$adminPageController = new User($conn);
		$adminPageController->user();
		break;
		case "deleteUser" :
		$adminPageController = new User($conn);
		$adminPageController->deleteUser();
		break;
		case "getUsers" :
		$adminPageController = new User($conn);
		$adminPageController->getUsers();
		break;
		case "contactAdmin" :
		$contactAdminController = new ContactAdmin($conn);
		$contactAdminController->contact();
		break;
		case "categoryAdmin" :
		$categoryAdminController = new CategoryAdmin($conn);
		$categoryAdminController->category();
		break;
		case "insertCategory" :
		$categoryAdminController = new CategoryAdmin($conn);
		$categoryAdminController->categoryInsert();
		break;
		case "getCategory" :
		$categoryAdminController = new CategoryAdmin($conn);
		$categoryAdminController->getCategory();
		break;
		case "getOneCategory" :
		$categoryAdminController = new CategoryAdmin($conn);
		$categoryAdminController->getOneCategory();
		break;
		case "deleteCategory" :
		$categoryAdminController = new CategoryAdmin($conn);
		$categoryAdminController->categoryDelete();
		break;
		case "updateCategory" :
		$categoryAdminController = new CategoryAdmin($conn);
		$categoryAdminController->updateCategory();
		break;
		case "bookAdmin" :
		$bookAdminController = new BookAdmin($conn);
		$bookAdminController->book();
		break;
		case "insertBook" :
		$bookAdminController = new BookAdmin($conn);
		$bookAdminController->bookInsert();
		break;
		case "deleteBook" :
		$bookAdminController = new BookAdmin($conn);
		$bookAdminController->deleteBook();
		break;
		case "getBooks" :
		$bookAdminController = new BookAdmin($conn);
		$bookAdminController->getAllBooks();
		break;
		case "getOneBook" :
		$bookAdminController = new BookAdmin($conn);
		$bookAdminController->getOneBook();
		break;
		case "updateBook" :
		$bookAdminController = new BookAdmin($conn);
		$bookAdminController->updateBook();
		break;
		case "deleteContact" :
		$contactAdminController = new ContactAdmin($conn);
		$contactAdminController->deleteContact();
		break;
		case "getContact" :
		$contactAdminController = new ContactAdmin($conn);
		$contactAdminController->getContact();
		break;
		case "403" :
		$errorController = new Error($conn);
		$errorController->error403();
		break;
		case "404" :
		$errorController = new Error($conn);
		$errorController->error404();
		break;
		default:
		$errorController = new Error($conn);
		$errorController->error404();
		break;
	}
}else {
	$pageController = new Home($conn);
	$pageController->home();
}