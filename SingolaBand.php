<?php require_once 'includes/header.php'
?>

<body>
    <div class="container-fluid">

        <?php
        $sql = "SELECT * FROM band where nome = '" . $_GET['varname'] . "'";
        $path = "./immagini/Band/";
        $resultset = mysqli_query($conn, $sql);
        while ($record = mysqli_fetch_assoc($resultset)) { ?>
            <h1 id="title">
                <?php echo $_GET['varname']; ?>
                <small class="text-muted"><?php echo $record['Genere']; ?></small>
            </h1>
            <div class="text-center">

                <img src="<?= $path . $record['Foto']; ?>" class="rounded" width="50%" height="auto" object-fit="cover" alt="Responsive image">
            </div>
            <div class="text">
                <?php echo $record['Descrizione']; ?>
            </div>
        <?php
        }
        ?>
        <div>
            <h2>Formazione</h2>

            <div>
                <?php
                $query_musicista = "SELECT DISTINCT musicisti.nome,  musicisti.cognome 
                                FROM musicisti, brani, concerti, band, esecuzioni, scalette
                                WHERE concerti.Titolo = scalette.Concerto AND
                                scalette.Brano = brani.Nome AND
                                brani.Nome = esecuzioni.Brano AND
                                esecuzioni.Band = band.Nome AND
                                musicisti.Band = band.Nome AND
                                band.nome =  '" . $_GET['varname'] . "'
                                            ";
                $result_musicista = mysqli_query($conn, $query_musicista);
                if (!$result_musicista) {
                    printf("Error: %s\n", mysqli_error($conn));
                    exit();
                }
                $counterSpace = 0;
                while ($row_musicista = mysqli_fetch_array($result_musicista)) {
                    if ($counterSpace != 0) {
                        echo "<br>";
                    }
                    $counterSpace++; ?>

                    <nobr style="font-size: 18px; color: black;"> <?php echo $row_musicista['nome']  . " " . $row_musicista['cognome']  ?> </nobr> <?php
                                                                                                                                                    $queryStrumento = "SELECT distinct strumenti.Nome from strumenti, musicisti, suona
                        where musicisti.Nome = suona.Nome_Musicista AND
                        musicisti.Cognome = suona.Cognome_Musicista AND
                        strumenti.Nome = suona.Strumento AND
                        musicisti.Nome = '" . $row_musicista['nome'] . "' and
                        musicisti.Cognome = '" . $row_musicista['cognome'] . "'
                        ";
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
                                                                                                                                                }
                                                                                                                                                    ?>
            </div>
        </div>
    </div>


    </div>

    <?php
    require_once 'includes/footer.php'
    ?>