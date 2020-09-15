<?php
require_once 'includes/header.php';
?>

<?php
$sql = "SELECT * FROM concerti
            ORDER BY RAND()
            LIMIT 1";
$resultset = mysqli_query($conn, $sql);
while ($record = mysqli_fetch_assoc($resultset)) {
?>

    <body>
        <div class="container">
            <div class=“row”>
                <div class="row justify-content-center mt-4">
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
                <div class="row justify-content-center mt-4 mb-2" width="<?php echo $width ?>">
                    <p>
                        <?= $record['Descrizione']; ?>
                    </p>
                </div>
                <div class="container">
                    <div class=“row”>
                        <div class="col-sm-6">
                            <h2>Scaletta</h2>
                            <ul class="list-group">
                                <?php
                                $concerto = $record['Titolo'];
                                $scaletta = "SELECT Brano FROM scalette
                                        WHERE scalette.Concerto = '" . $concerto . "'";
                                $result = mysqli_query($conn, $scaletta);
                                while ($row = mysqli_fetch_array($result)) {
                                    echo "<li>" . $row{
                                        'Brano'} . "</li>";
                                }
                                ?>
                            </ul>
                        </div>
                        </br>
                        <div class="col-sm-6 mb-2">
                            <h2>Band</h2>
                            <ul class="list-group">
                                <?php
                                $query_musicista = "SELECT CONCAT(Nome, ' ', Cognome) AS Nome_Musicista, s.Strumento
                                            FROM musicisti AS m, suona as s
                                            WHERE s.Nome_Musicista = m.Nome
                                                AND s.Cognome_Musicista = m.Cognome
                                                AND Band = (SELECT band.nome
                                                FROM band, scalette, esecuzioni, concerto
                                                WHERE scalette.concerto = '" . $concerto . "'
                                                    AND scalette.brano = brano.nome
                                                    AND esecuzioni.brano = brano.nome
                                                    AND concerti.nome = '" . $concerto . "')
                                            ";

                                $result_musicista = mysqli_query($conn, $query_musicista);
                                while ($row_musicista = mysqli_fetch_array($result_musicista)) {
                                    echo "<li>" . $row_musicista{
                                        'Nome_Musicista'} . ' - ' . $row_musicista{
                                        'Strumento'} . "</li>";
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