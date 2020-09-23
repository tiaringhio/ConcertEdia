<?php require_once 'includes/header.php'
?>

<body class="fade-in">
    <div class="vertical-center">
        <div class="container-fluid">
            <?php
            $sql = "SELECT * FROM band where nome = '" . $_GET['varname'] . "'";
            $path = "./immagini/Band/";
            $resultset = mysqli_query($conn, $sql);
            while ($record = mysqli_fetch_assoc($resultset)) { ?>
                <div class="row justify-content-around mt-4">
                    <h1 class="title-main">
                        <?php echo $_GET['varname']; ?>
                    </h1>
                </div>
                <div class="row justify-content-center mt-2 mb-4">
                    <h3 class="text-muted"><?php echo $record['Genere']; ?></h3>
                </div>
                <div class="text-center inverted">
                    <img src="<?= $path . $record['Foto']; ?>" class="rounded" width="50%" height="auto" object-fit="cover" alt="Responsive image">
                </div>
                <div class="container-fluid">
                    <div class="row justify-content-center mt-4 mb-4">
                        <div class="col-lg-10">
                            <div class="paragraph-large mt-4 mb-4">
                                <?php echo $record['Descrizione']; ?>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="row justify-content-around">
                        <div class="col-sm">
                            <div class="row justify-content-center">
                                <h2>Formazione</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="paragraph-medium mb-4 text-center">
                    <?php
                    $query_musicista = "SELECT DISTINCT musicisti.nome,  musicisti.cognome 
                                                FROM musicisti,  band
                                                WHERE musicisti.Band = band.Nome AND
                                                band.nome =  '" . $_GET['varname'] . "'";
                    $result_musicista = mysqli_query($conn, $query_musicista);
                    if (!$result_musicista) {
                        printf("Error: %s\n", mysqli_error($conn));
                        exit();
                    }
                    $counterSpace = 0;
                    while ($row_musicista = mysqli_fetch_assoc($result_musicista)) {
                        if ($counterSpace != 0) {
                            echo "<br>";
                        }
                        $counterSpace++; ?>
                        <!-- <div class="mb-4" style="text-align: center"> -->
                        <strong><?php echo $row_musicista['nome']  . " " . $row_musicista['cognome']  ?>
                        </strong>

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
                        while ($row_strumento = mysqli_fetch_assoc($result_strumento)) {
                            if ($counterConc != 0) {
                                $concatenazione = " & ";
                            }
                            echo "<nobr>" . $concatenazione . $row_strumento['Nome']  . "</nobr>";
                            $counterConc++;
                        }
                    }
                    ?>
                    <!-- </div> -->
                </div>
        </div>
    </div>
</body>
<?php
            }
?>
<?php
require_once 'includes/footer.php'
?>