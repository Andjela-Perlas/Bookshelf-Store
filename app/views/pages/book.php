<div class="container">
  <?php
  if(isset($data["book"])) :
    ?>
    <h1 id="title" class="my-5 text-uppercase font-weight-normal"><?=$data["book"]->title ?>
  </h1>
  <div class="row">
    <div class="col-md-5">
      <img id="picture" class="img-fluid picture" src="<?=$data["book"]->imgSrc ?>" alt="<?=$data["book"]->imgAlt ?>">
    </div>
    <div class="col-md-7">
      <p><?=$data["book"]->description ?></p>
      <h3 class="my-5 font-weight-normal">Detalji o proizvodu</h3>
      <ul class="list-unstyled ">
        <li  class="float-sm-right">
          <div id="successMessage" class="alert invisible mr-3 w-100"  role="alert"  style="height: 165px;">
            <p class="text-center mt-5 lead" id="msg"></p>
          </div>
        </li>

        <li class="mt-4 lead">Cena: <?=$data["book"]->price ?> dinara</li>
        <li class="mt-4 lead" >Cena na sajtu: <span id="price-site"><?= $data["book"]->priceSite ?> dinara</span></li>
        <li class="mt-4 lead text-success">Ušteda: <?= bcsub($data["book"]->price, $data["book"]->priceSite) ?>  dinara <i class="far fa-check-square fa-lg ml-2 text-success"></i></li>

        <?php if(!isset($_SESSION['user'])): ?>
          <h3 class="my-5 font-weight-light">Da biste mogli da kupite proizvod, morate biti prijavljeni!</h3>
          <?php else: ?>
            <input id="categoryID" type="hidden" name ="category" value="<?= $data['book']->cbID ?>" />
            <input id="userID" type="hidden" name ="userID" value="<?= $_SESSION['user']->userID ?>" />
            <span>
              <button type="button" id="addBookBtn" class="btn btn-orange text-white my-5 font-weight-light">Dodaj u korpu</button>
            </span>
          <?php endif; ?>
        </ul>
      </div>
    <?php endif; ?>
  </div>

