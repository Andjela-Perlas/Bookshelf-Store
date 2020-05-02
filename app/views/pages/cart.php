<div class="container container-fluid mt-5">
<!--<div id="successMessage" class="alert invisible"  role="alert">
  <p class="text-center" id="msg"></p>
</div>-->
<table class="table">
  <thead>
    <tr id="price">
      <?php foreach($data["total"] as $t): ?>
        <td class="lead font-weight-bold border-top-0" style="font-size:20px">Ukupno: <?= ($t->total == null) ? 0 : $t->total ?> dinara</td>
      <?php endforeach; ?>
    </tr>
    <tr>
      <th scope="col">Proizvod</th>
      <th scope="col">Naziv</th>
      <th scope="col">Cena</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody id="table-cart">
    <?php foreach($data["products"] as $cart): ?>
      <tr>
        <td><img class="w-25" src="<?= $cart->imgSrc ?>" alt="<?= $cart->imgAlt ?>"></td>
        <td class="lead" style="font-size:20px"><?= $cart->name ?></td>
        <td class="lead" style="font-size:20px"><?= $cart->priceSite ?> dinara</td>
        <td>
          <button type="button" class="btn btn-orange text-white font-weight-light mr-2 deleteBtn" data-id="<?= $cart->cartID ?>" role="button">Kupite</button>
          <button type="button" class="btn btn-orange text-white font-weight-light deleteBtn" data-id="<?= $cart->cartID ?>" role="button">Obrišite</button>
        </td>
      </tr>
    <?php endforeach; ?>
  </tbody>
</table>
</div>