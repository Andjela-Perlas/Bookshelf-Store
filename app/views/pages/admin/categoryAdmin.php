<i class="fas fa-table"></i>
Category Table </div>
<div class="container-fluid">
  <div class="card-body">
    <div class="table-responsive">
      <table class="table">
        <thead>
          <th class="lead">ID</th>
          <th class="lead">Name</th>
          <th class="lead">Action</th>
        </thead>
        <tbody class="category-table">
          <?php foreach($data["category"] as $category): ?>
            <tr>
              <td class="lead"><?= $category->categoryID ?></td>
              <td class="lead"><?= $category->name ?></td>
              <td>
                <button class="btn btn-danger edit-category font-weight-light" data-id="<?= $category->categoryID ?>">Edit</button>
                <button class="btn btn-danger delete-category font-weight-light" data-id="<?= $category->categoryID ?>">Delete</button>
              </td>
            </tr>
          <?php endforeach; ?>
        </tbody>
      </table>

      <div class="col-md-2 mb-5">
        <label class="lead">Category name</label>
        <input type="hidden" id="hdnID" />
        <input type="text" class="form-control" id="category">
        <button class="btn btn-primary my-3 insert-update-btn font-weight-light">Insert</button>
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