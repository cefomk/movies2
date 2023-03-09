<?php
/*
* Vue listant tous les users
*/
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=, initial-scale=1.0">
  <title>Admin Users</title>
  <link rel="stylesheet" href="../assets/css/pico.min.css">
  <link rel="stylesheet" href="../assets/css/style.css">
</head>

<body>
  <main class="container">
    <h1>Gestion des utilisateurs</h1>
    <table>
      <thead>
        <tr>
          <th>Id</th>
          <th>Pseudo</th>
          <th>Email</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach (getUserAll() as $key => $value) : ?>
          <tr>
            <td><?= $value['id_user'] ?></td>
            <td><?= $value['login'] ?></td>
            <td><?= $value['email'] ?></td>
            <td><a href="./edit.php?id=<?= $value['id_user'] ?>" role="button">Edit</a> <a href="./supp.php?id=<?= $value['id_user'] ?>" role="button">Supprimer</a></td>
          </tr>

        <?php endforeach; ?>
      </tbody>
  </main>
</body>

</html>