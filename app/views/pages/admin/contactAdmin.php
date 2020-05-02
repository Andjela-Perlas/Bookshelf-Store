<i class="fas fa-table"></i>
Contact Table </div>
<div class="container-fluid">
  <div class="card-body">
    <div class="table-responsive">
      <table class="table">
        <thead>
          <th class="lead">ID</th>
          <th class="lead">Full name</th>
          <th class="lead">Email</th>
          <th class="lead">Content</th>
          <th class="lead">Action</th>
        </thead>
        <tbody class="contact-table">
          <?php foreach($data["contact"] as $contact): ?>
            <tr>
              <td class="lead"><?= $contact->contactID ?></td>
              <td class="lead"><?= $contact->fullName ?></td>
              <td class="lead"><?= $contact->email ?></td>
              <td class="lead"><?= $contact->content ?></td>
              <td>
                <button class="btn btn-danger delete-contact font-weight-light" data-id="<?= $contact->contactID ?>">Delete</button>
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