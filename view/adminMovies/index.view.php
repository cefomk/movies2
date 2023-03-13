<?php
/*
* Vue Gestion des films
*/
?>
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=, initial-scale=1.0">
   <title>Admin Movies</title>
   <link rel="stylesheet" href="../assets/css/pico.min.css">
   <link rel="stylesheet" href="../assets/css/style.css">
</head>

<body>
   <main class="container">
      <header class="header">
         <h1>Gestion des films</h1>
         <p><a href="./ajout.php" role="button">Ajouter un film</a></p>
         <p><a href="../login/deconnexion.php" role="button">Deconnexion</a></p>
      </header>
      <table>
         <thead>
            <tr>
               <th>Titre</th>
               <th>Année</th>
               <th>Genre</th>
               <th>Résumé</th>
               <th>Actions</th>
            </tr>
         </thead>
         <tbody>
            <?php foreach (getMovieLimit($limit, $offset) as $key => $value) : ?>
               <tr>
                  <td><?= $value['title'] ?></td>
                  <td><?= $value['year'] ?></td>
                  <td><?= $value['genres'] ?></td>
                  <td><?= $value['plot'] ?></td>
                  <td>
                     <a href="./edit.php?id=<?= $value['id'] ?>" role="button">Edit</a>
                     <a href="./supp.php?id=<?= $value['id'] ?>" role="button" onclick="return confirm('Confirmer la suppression de ce film ?');">Supprimer</a>
                  </td>
               </tr>
            <?php endforeach; ?>
         </tbody>
      </table>
   </main>
</body>

</html>