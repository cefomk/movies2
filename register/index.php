<?php
/*
* Formulaire d'enregistrement d'un nouvel utilisateur
*/
session_start();

require '../inc/fonctions.php';

$login = $email = $pwd = $errors = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') :

    $login = cleanData($_POST['login']);
    $email = cleanData($_POST['email']);
    $pwd = cleanData($_POST['pwd']);

    if ($email && $pwd) :
        if (findEmail($email)) :
            $errors = 'Veuiller choisir un autre email car cette utilisateur existe !';
        else :
            insertUser($login, $email, $pwd);
            $_SESSION['login'] = true;
            header('Location: ../');
            exit();
        endif;
    else :
        $errors = 'Votre email ou mot de passe sont incorrect !';
    endif;
endif;
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="../assets/css/pico.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
</head>

<body>
    <main class="container">
        <h1>Enregistrer un nouvel utilisateur</h1>
        <form method="POST" class="form">
            <div>
                <label for="login">Pseudo</label>
                <input type="login" name="login" id="login" value="<?= $login ?>">
            </div>
            <div>
                <label for="email">Email *</label>
                <input type="email" name="email" id="email" required value="<?= $email ?>">
            </div>
            <div>
                <label for="pwd">Mot de passe *</label>
                <input type="password" name="pwd" id="pwd" required value="<?= $pwd ?>">
            </div>
            <div>
                <input type="submit" value="Inscription">
            </div>
            <?php if (!empty($errors)) : ?>
                <div class="errors">
                    <ul class="errors">
                        <li><?= $errors ?></li>
                    </ul>
                </div>
            <?php endif; ?>
        </form>
        <p>* Informations obligatoires</p>
    </main>
</body>

</html>
