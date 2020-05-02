<i class="fas fa-table"></i>
Book Table </div>
<div class="container-fluid">

  <div class="card-body">
    <div class="table-responsive col-md-13">
      <table class="table">
        <thead>
          <th class="lead">ID</th>
          <th class="lead">Name</th>
          <th class="lead">Description</th>
          <th class="lead">Price</th>
          <th class="lead">Price Site</th>
          <th class="lead">Image</th>
          <th class="lead">Action</th>
        </thead>
        <tbody class="book-table">
          <?php foreach($data["book"] as $book): ?>
            <tr>
              <td class="lead"><?= $book->bookID ?></td>
              <td class="lead"><?= $book->name ?></td>
              <td class="lead"><?= $book->description ?></td>
              <td class="lead"><?= $book->price ?> dinara</td>
              <td class="lead"><?= $book->priceSite ?> dinara</td>
              <td><img class="admin-img" src="<?= $book->imgSrc ?>" alt="<?= $book->imgAlt ?>"></td>
              <td><button class="btn btn-danger edit-book font-weight-light" data-id="<?= $book->bookID ?>">Edit</button></td>
              <td>
                <button class="btn btn-danger delete-book font-weight-light" data-id="<?= $book->bookID ?>">Delete</button>
              </td>
            </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
      <div class="col-md-3 mb-3">
        <input type="hidden" id="hdnBookID" />

        <label class="lead">Book name</label>
        <input type="text" class="form-control" id="name">
        
        <label class="lead">Book description</label>
        <input type="text" class="form-control" id="description">

        <label class="lead">Book price</label>
        <input type="text" class="form-control" id="price">
        
        <label class="lead">Book site price</label>
        <input type="text" class="form-control" id="priceSite">
        
        <label class="lead">Book src</label>
        <input type="text" class="form-control" id="imgSrc">
        
        <label class="lead">Book alt</label>
        <input type="text" class="form-control" id="imgAlt">

        <button class="btn btn-primary my-3 insert-update-book font-weight-light">Insert</button>
      </div>
    </div>
  </div>
</div>
</div>    
</div>

</div>    
</div>


</div>
</div>