<?php
/*
* Suppression d'un film
*/
include '../inc/fonctions.php';

$id = $_GET['id'];

if (suppMovieById($id)) :
   header('Location: ./index.php');
   exit();
else :
   exit('Erreur s\'est produite !');
endif;
