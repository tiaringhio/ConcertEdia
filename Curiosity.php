<?php require_once 'includes/header.php' ?>
<?php

$longConcert = "SELECT concerti.Titolo,SEC_TO_TIME(SUM(TIME_TO_SEC(brani.Durata))) AS duratatot
FROM concerti,scalette,brani
WHERE concerti.Titolo = scalette.Concerto AND
brani.Nome = scalette.Brano
GROUP BY concerti.Titolo
HAVING duratatot >ALL (SELECT SEC_TO_TIME(SUM(TIME_TO_SEC(brani.Durata))) AS duratatot
FROM concerti,scalette,brani
WHERE concerti.Titolo = scalette.Concerto AND
brani.Nome = scalette.Brano
GROUP BY concerti.Titolo)";
$longConcertResult = mysqli_query($conn, $longConcert);
if( $row = mysqli_fetch_assoc($longConcertResult)){
    echo "Lo sapevi che: Il concerto più lungo è stato " . $row['Titolo'] ;
    
echo " ed è durato " . date('g:i ', strtotime($row['duratatot'])) . " ore.";
echo " INFINITO";
}

$polystrum = "SELECT musicisti.Nome, musicisti.Cognome, count(*) AS numerostrum FROM musicisti, suona, strumenti
WHERE musicisti.Nome = suona.Nome_Musicista AND
musicisti.Cognome = suona.Cognome_Musicista AND
strumenti.Nome = suona.Strumento
GROUP by musicisti.Nome, musicisti.Cognome
HAVING count(*) >= ALL (SELECT count(*) from musicisti, suona, strumenti
WHERE musicisti.Nome = suona.Nome_Musicista AND
musicisti.Cognome = suona.Cognome_Musicista AND
strumenti.Nome = suona.Strumento
GROUP by musicisti.Nome, musicisti.Cognome)";
$polystrumResult = mysqli_query($conn,$polystrum);
while ( $row = mysqli_fetch_assoc($polystrumResult)){
    echo "<br>";
    echo "Lo sapevi che ". $row['Nome'] . $row['Cognome'] . " sa suonare: ";

    $strum = "SELECT strumenti.nome FROM strumenti, suona, musicisti
              WHERE musicisti.Nome = suona.Nome_Musicista AND
            musicisti.Cognome = suona.Cognome_Musicista AND
            strumenti.Nome = suona.Strumento AND
            musicisti.nome = '" . $row['Nome'] . "' AND
            musicisti.cognome = '" . $row['Cognome'] . "' ";

    $strumResult = mysqli_query($conn,$strum);
    while($res = mysqli_fetch_assoc($strumResult)){
        echo $res['nome'] . " ";
    }
    echo " CAMALEONTICO";
}

$oldMusician = "SELECT nome, cognome,(2020-YEAR(Nascita)) AS età FROM musicisti
WHERE Morte IS NULL
AND (2020-YEAR(Nascita)) >= ALL (SELECT (2020-YEAR(Nascita)) AS età FROM musicisti
WHERE Morte IS NULL)";
$oldMusicianResult = mysqli_query($conn, $oldMusician);
if($row = mysqli_fetch_assoc($oldMusicianResult)){
    echo " <br>Lo sapevi che il musicistà più anziano è " . $row['nome'] . $row['cognome'];
    $band = "SELECT band.nome from band, musicisti WHERE
            musicisti.band = band.nome AND
            musicisti.cognome = '" . $row['cognome'] . "' AND
            musicisti.nome = '" . $row['nome'] . "' ";
    $bandRes = mysqli_query($conn, $band);
    if($res=mysqli_fetch_assoc($bandRes)){
        echo " della band " . $res['nome']  . " e ha " . $row['età'] . " anni " . "NEANDERTHAL";
    }
}

$diedMusician = "SELECT nome, cognome,(YEAR(Morte)-YEAR(Nascita)) AS età FROM musicisti
WHERE Morte IS NOT NULL
AND (YEAR(morte)-YEAR(Nascita)) <= ALL (SELECT (YEAR(morte)-YEAR(Nascita)) AS età FROM musicisti
WHERE Morte IS NOT NULL)";
$diedMusicianResult = mysqli_query($conn, $diedMusician);
if($row = mysqli_fetch_assoc($diedMusicianResult)){
    echo "<br>Lo sapevi che il musicistà morto più giovane è " . $row['nome'] . $row['cognome'];
    $band = "SELECT band.nome FROM band, musicisti WHERE
            musicisti.band = band.nome AND
            musicisti.cognome = '" . $row['cognome'] . "' AND
            musicisti.nome = '" . $row['nome'] . "' ";
    $bandRes = mysqli_query($conn, $band);
    if($res=mysqli_fetch_assoc($bandRes)){
        echo " della band " . $res['nome'] . " BREVE MA INTENSO";
    }
}

$greatConcert = "SELECT concerti.titolo, concerti.Spettatori FROM concerti
WHERE concerti.spettatori IS NOT NULL 
AND concerti.Spettatori >= ALL(SELECT spettatori FROM concerti 
WHERE Spettatori IS NOT NULL)";
$greatConcertResult = mysqli_query($conn, $greatConcert);
if( $row = mysqli_fetch_assoc($greatConcertResult)){
    echo "<br> Lo sapevi che il concerto più visto è stato " . $row['titolo'] . " con " . $row['Spettatori'] . " spettatori JACKPOT";
}
?>
<?php require_once 'includes/footer.php' ?>

