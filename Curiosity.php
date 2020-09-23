<?php require_once 'includes/header.php' ?>
<div class="vertical-center">
    <div class="container-fluid fade-in">
        <div class="text-center pb-5">
            <h1 class="title-main">
                LO SAPEVI CHE?
            </h1>
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
            $inline =  "display:inline";
            if ($row = mysqli_fetch_assoc($longConcertResult)) {
                echo "<br>Lo sapevi che Il concerto più lungo è stato " . "<strong>" . $row['Titolo'] . "</strong>";

                echo " ed è durato " . date('g:i ', strtotime($row['duratatot'])) . " ore";
                echo "<strong> INFINITO</strong>";
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
            $polystrumResult = mysqli_query($conn, $polystrum);
            while ($row = mysqli_fetch_assoc($polystrumResult)) {
                echo "<br><br><br>";
                echo "Lo sapevi che " . "<strong>" . $row['Nome'] . " " . $row['Cognome'] . "</strong>" . " sa suonare: ";

                $strum = "SELECT strumenti.nome FROM strumenti, suona, musicisti
              WHERE musicisti.Nome = suona.Nome_Musicista AND
            musicisti.Cognome = suona.Cognome_Musicista AND
            strumenti.Nome = suona.Strumento AND
            musicisti.nome = '" . $row['Nome'] . "' AND
            musicisti.cognome = '" . $row['Cognome'] . "' ";

                $strumResult = mysqli_query($conn, $strum);
                while ($res = mysqli_fetch_assoc($strumResult)) {
                    echo $res['nome'] . " ";
                }
                echo "<strong> CAMALEONTICO</strong>";
            }

            $oldMusician = "SELECT nome, cognome,(2020-YEAR(Nascita)) AS età FROM musicisti
WHERE Morte IS NULL
AND (2020-YEAR(Nascita)) >= ALL (SELECT (2020-YEAR(Nascita)) AS età FROM musicisti
WHERE Morte IS NULL)";
            $oldMusicianResult = mysqli_query($conn, $oldMusician);
            if ($row = mysqli_fetch_assoc($oldMusicianResult)) {
                echo "<br><br><br>";
                echo "Lo sapevi che il musicistà più anziano è " . "<strong>" . $row['nome'] . " " . $row['cognome'] . "</strong>";
                $band = "SELECT band.nome from band, musicisti WHERE
            musicisti.band = band.nome AND
            musicisti.cognome = '" . $row['cognome'] . "' AND
            musicisti.nome = '" . $row['nome'] . "' ";
                $bandRes = mysqli_query($conn, $band);
                if ($res = mysqli_fetch_assoc($bandRes)) {
                    echo " della band " . "<strong>" . $res['nome'] . "</strong>" . " e ha " . "<strong>" . $row['età'] . " anni " . "</strong>" . "<strong>NEANDERTHAL</strong>";
                }
            }

            $diedMusician = "SELECT nome, cognome,(YEAR(Morte)-YEAR(Nascita)) AS età FROM musicisti
WHERE Morte IS NOT NULL
AND (YEAR(morte)-YEAR(Nascita)) <= ALL (SELECT (YEAR(morte)-YEAR(Nascita)) AS età FROM musicisti
WHERE Morte IS NOT NULL)";
            $diedMusicianResult = mysqli_query($conn, $diedMusician);
            if ($row = mysqli_fetch_assoc($diedMusicianResult)) {
                echo "<br><br><br>";
                echo "Lo sapevi che il musicista morto più giovane è " . "<strong>" . $row['nome'] . " " . $row['cognome'] . "</strong>";
                $band = "SELECT band.nome FROM band, musicisti WHERE
            musicisti.band = band.nome AND
            musicisti.cognome = '" . $row['cognome'] . "' AND
            musicisti.nome = '" . $row['nome'] . "' ";
                $bandRes = mysqli_query($conn, $band);
                if ($res = mysqli_fetch_assoc($bandRes)) {
                    echo " della band " . "<strong>" . $res['nome'] . "</strong>" . " <strong>BREVE MA INTENSO</strong>";
                }
            }

            $greatConcert = "SELECT concerti.titolo, concerti.Spettatori FROM concerti
WHERE concerti.spettatori IS NOT NULL 
AND concerti.Spettatori >= ALL(SELECT spettatori FROM concerti 
WHERE Spettatori IS NOT NULL)";
            $greatConcertResult = mysqli_query($conn, $greatConcert);
            if ($row = mysqli_fetch_assoc($greatConcertResult)) {
                echo "<br><br><br>";
                echo "Lo sapevi che il concerto più visto è stato " . "<strong>" . $row['titolo'] . "</strong>" . " con " . $row['Spettatori'] . " spettatori <strong>JACKPOT</strong>";
            }
            ?>

        </div>
    </div>
</div>

<?php require_once 'includes/footer.php' ?>