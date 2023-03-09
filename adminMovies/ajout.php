<?php
/*
* Ajout d'un film
*/
include '../inc/fonctions.php';

$title = $year = $genre = $plot = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') :

    $title = cleanData($_POST['title']);
    $year = cleanData($_POST['year']);
    $genre = cleanData($_POST['genre']);
    $plot = cleanData($_POST['plot']);

    insertMovie($title, $year, $genre, $plot);
    header('Location: ./index.php');
    exit();
endif;
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <title>Ajout film</title>
    <link rel="stylesheet" href="../assets/css/pico.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
</head>

<body>
    <main class="container">
        <h1>Ajout d'un film</h1>
        <form method="POST" class="form">
            <div>
                <label for="title">Titre</label>
                <input type="title" name="title" id="title" value="<?= $title ?>">
            </div>
            <div>
                <label for="genre">Genre </label>
                <input type="text" name="genre" id="genre" value="<?= $genre ?>">
            </div>
            <div>
                <label for="year">Année</label>
                <input type="text" name="year" id="year" value="<?= $year ?>">
            </div>
            <div>
                <label for="plot">Resumé</label>
                <textarea name="plot" id="plot"><?= $plot ?></textarea>
            </div>
            <div>
                <input type="submit" value="Ajouter">
                <a href="./"><button type="button">Annuler</button></a>
            </div>
            <?php if (!empty($errors)) : ?>
                <div class="errors">
                    <ul class="errors">
                        <li><?= $errors ?></li>
                    </ul>
                </div>
            <?php endif; ?>
        </form>
    </main>
</body>

</html>
