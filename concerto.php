<?php
require_once 'includes/header.php';
?>

<?php
$sql = "SELECT * FROM concerti WHERE Titolo = '" . $_GET['varname'] . "'";
$resultset = mysqli_query($conn, $sql);
while ($record = mysqli_fetch_assoc($resultset)) {
?>

    <body>
        <div class="container-fluid">
            <div class=“row”>
                <div class="row justify-content-around mt-4">
                    <h1>
                        <?= $record['Titolo']; ?>
                    </h1>
                </div>
                <div class="row justify-content-center mt-2 mb-4">
                    <h3 class="text-muted">
                        <?= $record['Città']; ?>
                    </h3>
                </div>
                <div class="row justify-content-center mb-2">
                    <?php
                    $url = $record['Link'];
                    preg_match('/[\\?\\&]v=([^\\?\\&]+)/', $url, $matches);
                    $id = $matches[1];
                    $width = '1000px';
                    $height = '565px';
                    ?>
                    <iframe id="ytplayer" type="text/html" width="<?php echo $width ?>" height="<?php echo $height ?>" src="https://www.youtube.com/embed/<?php echo $id ?>?rel=0&showinfo=0&color=white&iv_load_policy=3" frameborder="0" allowfullscreen>
                    </iframe>
                </div>
            </div>
            <div class="container-fluid mt-4 mb-4">
                <div class="row justify-content-center">
                    <div class="col-lg-10">
                        <p class="paragraph-large">
                            <?= $record['Descrizione']; ?>
                        </p>
                    </div>

                </div>
            </div>
            <div class="container-fluid mb-4">
                <div class="row justify-content-around">
                    <div class="col-sm offset-md-2">
                        <h2>Scaletta</h2>
                        <ul class="list-group paragraph-medium">
                            <?php
                            $concerto = $record['Titolo'];
                            $scaletta = "SELECT Brano FROM scalette
                                    WHERE scalette.Concerto = '" . $concerto . "'";
                            $result = mysqli_query($conn, $scaletta);
                            while ($row = mysqli_fetch_array($result)) {
                                echo "<li>" . $row['Brano'] . "</li>";
                            }
                            ?>
                        </ul>
                    </div>
                    </br>
                    <div class="col-sm">
                        <h2>Band</h2>
                        <ul class="list-group">
                            <?php
                            $query_musicista = "SELECT DISTINCT CONCAT (musicisti.nome, ' ', musicisti.cognome) AS Nome_Musicista, Strumenti.nome AS Strumento
                            FROM musicisti, brani, concerti, band, esecuzioni, scalette, strumenti, suona
                            WHERE concerti.Titolo = scalette.Concerto AND
                            scalette.Brano = brani.Nome AND
                            brani.Nome = esecuzioni.Brano AND
                            esecuzioni.Band = band.Nome AND
                            musicisti.Band = band.Nome AND
                            musicisti.Nome = suona.Nome_Musicista AND
                            musicisti.Cognome = suona.Cognome_Musicista AND
                            Strumenti.Nome = suona.Strumento and
                            concerti.Titolo =  '" . $concerto . "'
                                        ";
                            $result_musicista = mysqli_query($conn, $query_musicista);
                            if (!$result_musicista) {
                                printf("Error: %s\n", mysqli_error($conn));
                                exit();
                            }
                            while ($row_musicista = mysqli_fetch_array($result_musicista)) {
                                echo "<li>" . $row_musicista['Nome_Musicista'] . " - " .  $row_musicista['Strumento'] . "</li>";
                            }
                            ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </body>
<?php } ?>
<?php
require_once 'includes/footer.php'
?>