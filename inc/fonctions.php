<?php
/*
* Fonctions utiles au fonctionnnent du projet
*/
error_reporting(E_ALL);
ini_set('display_errors', '1');

function dbug($valeur)
{
   echo "<pre style='background-color:black;color:white;padding: 15px;overflow: auto;'>";
   var_dump($valeur);
   echo "</pre>";
}

function dd($valeur)
{
   echo "<pre style='background-color:black;color:white;padding: 15px;overflow: auto;height: 500px;'>";
   var_dump($valeur);
   // print_r($valeur);
   echo "</pre>";
   die();
}

function cleanData($valeur)
{
   if (!empty($valeur) && isset($valeur)) :
      $valeur = strip_tags(trim($valeur));
      return $valeur;
   else :
      return false;
   endif;
}

function textData($valeur)
{
   $valeur = preg_match('/^[a-z-A-Z]*$/', $valeur);
   return $valeur;
}

function isGetIdValid(): bool
{
   if (isset($_GET['id']) && is_numeric($_GET['id'])):
      return true;
   else:
      return false;
   endif;
}

function getMovieLimitHome(int $limit, int $offset): array
{
   require './inc/pdo.php';
   $sqlRequest = "SELECT * FROM movies_full ORDER BY id DESC LIMIT :limit OFFSET :offset";
   $resultat = $conn->prepare($sqlRequest);
   $resultat->bindValue(':limit', $limit, PDO::PARAM_INT);
   $resultat->bindValue(':offset', $offset, PDO::PARAM_INT);
   $resultat->execute();
   return $resultat->fetchAll();
}

function getMovieLimit(int $limit, int $offset): array
{
   require '../inc/pdo.php';
   $sqlRequest = "SELECT * FROM movies_full ORDER BY id DESC LIMIT :limit OFFSET :offset";
   $resultat = $conn->prepare($sqlRequest);
   $resultat->bindValue(':limit', $limit, PDO::PARAM_INT);
   $resultat->bindValue(':offset', $offset, PDO::PARAM_INT);
   $resultat->execute();
   return $resultat->fetchAll();
}

function getMovieById(int $idMovie): array
{
   require '../inc/pdo.php';
   $sqlRequest = "SELECT * FROM movies_full WHERE id = :idMovie";
   $resultat = $conn->prepare($sqlRequest);
   $resultat->bindValue(':idMovie', $idMovie, PDO::PARAM_INT);
   $resultat->execute();
   return $resultat->fetch();
}

function suppMovieById(int $idMovie): bool
{
   require '../inc/pdo.php';
   $sqlRequest = "DELETE FROM movies_full WHERE id = :idMovie";
   $resultat = $conn->prepare($sqlRequest);
   $resultat->bindValue(':idMovie', $idMovie, PDO::PARAM_INT);
   return $resultat->execute();
}

function insertMovie(string $title, int $year, string $genre, string $plot): int
{
   require '../inc/pdo.php';
   $requete = 'INSERT INTO movies_full (title,year,genres,plot,modified,created) VALUES (:title, :year, :genre, :plot, now(), now())';
   $resultat = $conn->prepare($requete);
   $resultat->bindValue(':title', $title, PDO::PARAM_STR);
   $resultat->bindValue(':year', $year, PDO::PARAM_INT);
   $resultat->bindValue(':genre', $genre, PDO::PARAM_STR);
   $resultat->bindValue(':plot', $plot, PDO::PARAM_STR);
   $resultat->execute();
   return $conn->lastInsertId();
}

function updateMovie(int $id, string $title, int $year, string $genre, string $plot): bool
{
   require '../inc/pdo.php';
   $requete = 'UPDATE movies_full SET title = :title, year = :year,genres = :genre, plot = :plot,modified = now() WHERE id = :id';
   $resultat = $conn->prepare($requete);
   $resultat->bindValue(':id', $id, PDO::PARAM_INT);
   $resultat->bindValue(':title', $title, PDO::PARAM_STR);
   $resultat->bindValue(':year', $year, PDO::PARAM_INT);
   $resultat->bindValue(':genre', $genre, PDO::PARAM_STR);
   $resultat->bindValue(':plot', $plot, PDO::PARAM_STR);
   $resultat->execute();
   return $resultat->execute();
}

function isUserLogin(): bool
{
   if (isset($_SESSION['login']) && $_SESSION['login'] == true) :
      return true;
   else :
      return false;
   endif;
}

function findEmail(string $email): array|bool
{
   require '../inc/pdo.php';

   $requete = 'SELECT * FROM user where email = :email';
   $resultat = $conn->prepare($requete);
   $resultat->bindValue(':email', $email, PDO::PARAM_STR);
   $resultat->execute();
   return $resultat->fetch();
}

function insertUser(string $login, string $email, string $pwd): int
{
   require '../inc/pdo.php';
   $pwdHashe = password_hash($pwd, PASSWORD_DEFAULT);

   $requete = 'INSERT INTO user (login,email,pwd,created_at) VALUES (:pseudo, :email, :pwd, now())';
   $resultat = $conn->prepare($requete);
   $resultat->bindValue(':pseudo', $login, PDO::PARAM_STR);
   $resultat->bindValue(':email', $email, PDO::PARAM_STR);
   $resultat->bindValue(':pwd', $pwdHashe, PDO::PARAM_STR);
   $resultat->execute();
   dd($conn->lastInsertId());
   return $conn->lastInsertId();
}

function getUserAll(): array
{
   require '../inc/pdo.php';
   $sqlRequest = "SELECT * FROM user";

   $resultat = $conn->prepare($sqlRequest);
   $resultat->execute();
   return $resultat->fetchAll();
}

function error404(): void
{
   http_response_code(404);
   include('../view/404.php');
   die();
}

function redirectUrl(string $path = ''): void
{
   $homeUrl = 'http://' . $_SERVER['HTTP_HOST']. '/movies2' ;
   $homeUrl .= '/'. $path;
   header("Location: {$homeUrl}");
   exit();
}
