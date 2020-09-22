<!-- PROJECT LOGO -->
  <br />
    <p align="center">
    <img src=".\immagini\guitar.png" alt="Logo" width="130" height="130">
  </a>
  <h1 align="center">ConcertEdia</h1>
  <p align="center">
    PHP, Bootstrap, CSS and SQL website that shows info about past concerts, venues and musicians. <br />
    Created for a course at University of Parma.
  </p>
  
  <!-- TABLE OF CONTENTS -->
  # Table of Contents
  
  - [Table of Contents](#table-of-contents)
  - [About The Project](#about-the-project)
  - [Features](#features)
    - [Concerts](#concerts)
    - [Bands](#bands)
    - [Search](#search)
    - [Curiosity](#curiosity)
    - [Dark Mode](#dark-mode)
  - [Database](#database)
  - [License](#license)
  - [Contributors](#contributors)

# About The Project

ConcertEdia is a PHP, Boostrap, CSS and just a little bit of Javascript website that uses SQL queries to show nice to know informations about past concerts, venues and musicians, including photos, dates and fun facts.
Is all you are looking for if you want to relive a historic concert. Let yourself be lulled by the descriptions of the greatest music experts, explore the great stages of the history of music and hear the hits of the past. <br />
Let's rock! 🎸

# Features

You can view the following information:

- **Concerts:** just click on your preferred concert in the carousel found in the `concerti.php` page.
- **Bands:** just click on you favorite band's card found in the `band.php` page.
- **Curiosity:** just click on the Navbar's button and see some curiosities about concerts and bands

Follows an example of both concerts and bands.

## Concerts

Find the details about your favorite concert.

<p>
	<img src="immagini\esempi\band_esempio.png" alt="Concerts">
	<em>Example of concert.</em>
</p>

## Bands

Find the details about your favorite band.

<p>
	<img src="immagini\esempi\concerto_esempio.png" alt="Bands">
	<em>Example of band.</em>
</p>

## Search

You can search for your favorite band or concert by using the searchbar, located on the top right of the screen, inside the navbar.
Just type what you looking for and press `enter`, if the record exists you'll be redirected to the corresponding page, otherwise _Lionel Richie_ will greet you with an error message.

## Curiosity

We'crafted a curiosity page so you too can know all the fucn facts about your favorite band or concert.
<p>
	<img src="immagini\esempi\curiosità_esempio.png" alt="Bands">
	<em>Curiosity page.</em>
</p>

<p>
	<img src="immagini\esempi\curiosity_esempio.png" alt="Curiosity">
	<em>Example of band.</em>
</p>

## Dark Mode

By pressing **+** on your keyboard you will activate **dark mode**, which turns the page black, without sacrificing text readability and image viewing experience.

<p>
	<img src="immagini\esempi\dark_mode_esempio.png" alt="Dark Mode">
	<em>Example of band.</em>
</p>

# Database

Here you can find the ER diagram for the entire database.

<img src="./db/Concertedia.png"></img>

You can re-create the entire db (data included) by using the `.sql` script present in the `db` folder.

LUOGHI([Città], Nazione)
CONCERTI([Titolo], Descrizione, Genere, Spettatori, Link, Città, Data, Immagine)
Con vincolo di integrità referenziale trà Concerti.Città e Luoghi.Città
SCALETTE([Concerto], [Brano])
Con vincolo di integrità referenziale tra Scalette.Concerto e Concerti.Titolo e Scalette.Brano e Brani.Nome
BRANI([Nome], Genere, Durata)
ESECUZIONI([Brano], [Band])
Con vincolo di integrità referenziale tra Esecuzioni.Brano e Brano.nome e Esecuzioni.Band e Band.Nome
BAND([Nome], Genere, Foto, Descrizione)
MUSICISTI([Nome], [Cognome], Nascita, Morte, Band)
Con vincolo di integrità referenziale tra Musicisti.Band e Band.Nome
SUONA([Nome_Musicista], [Cognome_Musicista], [Strumento])
Con vincolo di integrità referenziale tra Suona.Nome_Musicista e Musicisti.Nome e Suona.Cognome_Musicista e Musicisti.Cognome e Suona.Strumento e Strumenti.Nome
STRUMENTI([Nome])

# License

Distributed under the MIT License.

<div>Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" 
title="Flaticon"> www.flaticon.com</a></div><br>

# Contributors

[Mattia Ricci](https://github.com/tiaringhio)

[Filippo Botti](https://github.com/FilippoBotti)
