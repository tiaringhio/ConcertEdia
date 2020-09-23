<?php
include_once("db/db_connect.php");
?>
<!DOCTYPE html>
<html lang="it" dir="ltr">

<head>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <!-- Latest compiled and minified JavaScript -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <!-- Roboto font -->
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap" rel="stylesheet">
  <!-- Oswald font -->
  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@700&display=swap" rel="stylesheet">
  <script src="js/jquery-1.7.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <meta http-equiv="content-type" content="text/html;charset=utf-8" />
  <script>
        document.onkeypress = function(e) {
            e = e || window.event;

            if (e.keyCode === 13) {
                document.documentElement.classList.toggle('dark-mode');
            }
        }
    </script>
  <title>ConcertEdia</title>
  <link href="./css/style.css" rel="stylesheet" type="text/css">
  <link rel="icon" href=".\immagini\favicon.ico" type="image/ico" sizes="16x16">
</head>

<!-- NAVBAR-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href=".\index.php">
    <img src=".\immagini\guitar.png" width="30" height="30" class="d-inline-block align-top inverted" alt="">
    ConcertEdia
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="index.php">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="concerti.php">Concerti</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="band.php">Band</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Curiosity.php">Curiosità</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0" action="search.php">
      <input class="form-control mr-sm-2" name="varname" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>