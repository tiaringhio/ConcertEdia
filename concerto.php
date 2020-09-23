<?php
require_once 'includes/header.php';
?>

<?php
$sql = "SELECT * FROM concerti WHERE Titolo = '" . $_GET['varname'] . "'";
$resultset = mysqli_query($conn, $sql);
while ($record = mysqli_fetch_assoc($resultset)) {
?>

    <body class="fade-in">
        <div class="vertical-center">
            <div class="container-fluid">
                <div class=“row”>
                    <div class="row justify-content-around mt-4">
                        <h1 class="title-main">
                            <?= $record['Titolo']; ?>
                        </h1>
                    </div>
                    <div class="row justify-content-center mt-2 mb-4">
                        <h3 class="text-muted">
                            <?= $record['Città']; ?>
                        </h3>
                    </div>
                    <div class="row justify-content-center mb-2 inverted">
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
                            <p class="paragraph-large mt-4 mb-4">
                                <?= $record['Descrizione']; ?>
                            </p>
                        </div>

                    </div>
                </div>
                <div class="container-fluid mb-5">
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
                                $queryBand = "SELECT DISTINCT band.nome
                            FROM  brani, concerti, band, esecuzioni, scalette
                            WHERE concerti.Titolo = scalette.Concerto AND
                            scalette.Brano = brani.Nome AND
                            brani.Nome = esecuzioni.Brano AND
                            esecuzioni.Band = band.Nome AND
                            concerti.titolo =  '" . $concerto . "'";
                                $resultBand = mysqli_query($conn, $queryBand);
                                while ($rowBand = mysqli_fetch_array($resultBand)) {
                                ?> <strong> <?php echo $rowBand['nome']; ?> </strong>

                                    <?php
                                    $query_musicista = "SELECT DISTINCT musicisti.nome, musicisti.cognome 
                            FROM musicisti, brani, concerti, band, esecuzioni, scalette
                            WHERE concerti.Titolo = scalette.Concerto AND
                            scalette.Brano = brani.Nome AND
                            brani.Nome = esecuzioni.Brano AND
                            esecuzioni.Band = band.Nome AND
                            musicisti.Band = band.Nome AND
                            band.nome =  '" . $rowBand['nome'] . "'";

                                    $result_musicista = mysqli_query($conn, $query_musicista);
                                    if (!$result_musicista) {
                                        printf("Error: %s\n", mysqli_error($conn));
                                        exit();
                                    }

                                    while ($row_musicista = mysqli_fetch_array($result_musicista)) {
                                    ?>
                                        <div class="mb-4">
                                            <?php echo $row_musicista['nome']  . " " . $row_musicista['cognome']  ?>


                                    <?php
                                        $queryStrumento = "SELECT distinct strumenti.Nome from strumenti, musicisti, suona
                                                                WHERE musicisti.Nome = suona.Nome_Musicista AND
                                                                musicisti.Cognome = suona.Cognome_Musicista AND
                                                                strumenti.Nome = suona.Strumento AND
                                                                musicisti.Nome = '" . $row_musicista['nome'] . "' AND
                                                                musicisti.Cognome = '" . $row_musicista['cognome'] . "'";
                                        $result_strumento = mysqli_query($conn, $queryStrumento);
                                        if (!$result_strumento) {
                                            printf("Error: %s\n", mysqli_error($conn));
                                            exit();
                                        }
                                        $concatenazione = " - ";
                                        $counterConc = 0;
                                        while ($row_strumento = mysqli_fetch_array($result_strumento)) {
                                            if ($counterConc != 0) {
                                                $concatenazione = " & ";
                                            }
                                            echo "<nobr>" . $concatenazione . $row_strumento['Nome']  . "</nobr>";
                                            $counterConc++;
                                        }
                                        echo "<br>";
                                    }
                                    echo "<br>";
                                }
                                    ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>


<?php } ?>
<?php
require_once 'includes/footer.php'
?>