 <div class="container">
 	<div class="row">
 		<div class="col-lg-3">
 			<nav class="navbar">
        <!-- search -->
        <div id="sb-search" class="sb-search">
         <form>
          <input class="sb-search-input font-weight-light" onkeyup="buttonUp();" placeholder="Pretražite..." type="search" name="search" id="search">
          <input class="sb-search-submit" type="button" id="btn">
          <span class="sb-icon-search"><i class="fa fa-search"></i></span>
        </form>
      </div>
      <!-- search -->
    </nav>
    <h1 class="mb-4 font-weight-normal">Kategorije</h1>
    <?php foreach($data["categories"] as $category): ?>
      <div class="list-group list-group-flush">
       <a href="#" class="list-group-item nav-link text-dark category mt-1 lead" data-id="<?= $category->categoryID ?>"><?= $category->name ?></a>
     </div>
   <?php endforeach; ?>
 </div>
 <?php
 require_once "app/views/fixed/slider.php";
 ?>
 <div class="row" id="books">
  <?php foreach(array_slice($data["books"], 0, 6) as $book): ?>
    <div class="col-lg-4 col-md-6 mb-5">
      <div class="shadow bg-white rounded">
        <div class="card h-100">
          <a href="index.php?page=book&id=<?= $book->bookID ?>"><img class="card-img-top" src="<?= $book->imgSrc ?>" alt="<?= $book->imgAlt ?>"></a>
          <div class="card-body">
            <div class="card-title">
              <h2 class="font-weight-light"><?= $book->name ?></h2>
            </div>
            <h5 class="cl-dark font-weight-normal mt-4"><?= $book->price ?> dinara</h5>
            <p class="card-text mt-3"><?= substr($book->description, 0, 100) ?>...</p>
          </div>
          <div class="card-footer"> 
            <a class="btn btn-orange text-white font-weight-light" href="index.php?page=book&id=<?= $book->bookID ?>" role="button">Detaljnije</a>
          </div>
        </div>
      </div>
    </div> 
    <?php endforeach; ?>
  </div>