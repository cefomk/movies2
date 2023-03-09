<?php
/*
* Mise à jour d'un film
*/
include '../inc/fonctions.php';

(isGetIdValid()) ? $id = $_GET['id'] : error404();

$titleDb = getMovieById($id)['title'];
$genreDb = getMovieById($id)['genres'];
$yearDb = getMovieById($id)['year'];
$plotDb = getMovieById($id)['plot'];

if ($_SERVER['REQUEST_METHOD'] === 'POST') :
    $title = cleanData($_POST['title']);
    $genre = cleanData($_POST['genre']);
    $year = cleanData($_POST['year']);
    $plot = cleanData($_POST['plot']);

    updateMovie($id, $title, $year, $genre, $plot);

    header('Location: ./index.php');
    exit();
endif;


?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <title>Edition film</title>
    <link rel="stylesheet" href="../assets/css/pico.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
</head>

<body>
    <main class="container">
        <h1>Mise à jour d'un film</h1>
        <form method="POST" class="form">
            <div>
                <label for="title">Titre</label>
                <input type="title" name="title" id="title" value="<?= $titleDb ?>">
            </div>
            <div>
                <label for="genre">Genre </label>
                <input type="text" name="genre" id="genre" value="<?= $genreDb ?>">
            </div>
            <div>
                <label for="year">Année</label>
                <input type="text" name="year" id="year" value="<?= $yearDb ?>">
            </div>
            <div>
                <label for="plot">Resumé</label>
                <textarea name="plot" id="plot"><?= $plotDb ?></textarea>
            </div>
            <div>
                <input type="submit" value="Valider">
                <a href="./"><button type="button">Annuler</button></a>
            </div>
        </form>
    </main>
</body>

</html>
