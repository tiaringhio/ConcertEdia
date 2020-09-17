<?php
require_once 'includes/header.php';
?>

<body>
    <div class="container-fluid">
        <div class="carousel carousel-fade">
            <div class="row justify-content-center mb-2">
                <?php
                $sql = "SELECT * FROM concerti";
                $count = 0;
                $path = "./immagini/Concerti/";
                $resultset = mysqli_query($conn, $sql);
                while ($record = mysqli_fetch_assoc($resultset)) {
                ?>
                    <div id="concert-carousel" class="carousel slide" data-ride="carousel" data-interval="false">
                        <ul class="carousel-indicators">
                            <?php
                            $i = 0;
                            foreach ($resultset as $row) {
                                $actives = '';
                                if ($i == 0) {
                                    $actives = 'active';
                                }
                            ?>
                                <li data-target="#concert-carousel" data-slide-to="<?= $i; ?>" class="<?= $actives; ?>"></li>
                            <?php $i++;
                            } ?>
                        </ul>

                        <!-- The slideshow -->
                        <div class="carousel-inner">
                            <?php
                            $i = 0;
                            foreach ($resultset as $row) {
                                $actives = '';
                                $Concerto = $row['Titolo'];
                                if ($i == 0) {
                                    $actives = 'active';
                                }
                            ?>
                                <div class="carousel-item <?= $actives; ?>">
                                    <img id="image-carousel" src="<?= $path . $row['Immagine']; ?>" width="100%" object-fit="cover">
                                    <div class="black-overlay"></div>
                                    <div class="carousel-caption d-none d-md-block">
                                        <form id="form-concerto" method="get" action="concerto.php">
                                            <input type="hidden" name="varname" value="<?php echo $Concerto ?>">
                                            <button class="btn btn-hidden stretched-link" type="submit" id="titlecard"><h1><?php echo $Concerto ?><h1>  </button>
                                            
                                            <p id="paragrafo-carousel"><?= $row['Data']; ?></p>
                                        </form>
                                    </div>
                                </div>
                            <?php $i++;
                            } ?>
                        </div>

                        <!-- Left and right controls -->
                        <a class="carousel-control-prev" href="#concert-carousel" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#concert-carousel" role="button" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>
                <?php
                }
                ?>
            </div>
        </div>
    </div>
</body>

<?php
require_once 'includes/footer.php'
?>