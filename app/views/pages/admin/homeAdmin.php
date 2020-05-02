<i class="fas fa-table"></i>
User Table </div>
<div class="container-fluid">
  <div class="card-body">
    <div class="table-responsive">
      <table class="table">
        <thead>
          <th class="lead">ID</th>
          <th class="lead">Full name</th>
          <th class="lead">Email</th>
          <th class="lead">Member since</th>
          <th class="lead">Action</th>
        </thead>
        <tbody class="user-table">
          <?php foreach($data["user"] as $user): ?>
            <tr>
              <td class="lead"><?= $user->userID ?></td>
              <td class="lead"><?= $user->fullName ?></td>
              <td class="lead"><?= $user->email ?></td>
              <td class="lead"><?= $user->registerDate ?></td>
              <td class="lead">
                <button class="btn btn-danger delete-btn font-weight-light" data-id="<?= $user->userID ?>">Delete</button>
              </td>
            </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
    </div>
  </div>
</div>
</div>    
</div>
</div>    
</div>
</div>
</div>