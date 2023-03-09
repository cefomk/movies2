<?php
/*
* Vue listant tous les films
*/
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/pico.min.css">
    <link rel="stylesheet" href="./assets/css/style.css">
    <title>Movies</title>
</head>

<body>
    <main class="container">
        <header class="header">
            <h1>Movies</h1>
            <p>
                <?php if (isUserLogin()) { ?>
                    <a href="./login/deconnexion.php" role="button">Deconnexion</a>
                <?php } else { ?>
                    <a href="./login/" role="button">Connexion</a>
                <?php } ?>
            </p>
        </header>
        <section class="movies">
            <?php foreach (getMovieLimitHome($limit, $offset) as $film) { ?>
                <figure class="movie">
                    <figcaption>
                        <h4><?= $film['title'] ?></h4>
                        <p><?= $film['genres'] ?></p>
                        <p><?= $film['cast'] ?></p>
                        <p><?= $film['plot'] ?></p>
                    </figcaption>
                </figure>
            <?php } ?>

        </section>
    </main>
</body>

</html>
