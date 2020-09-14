<?php
require_once 'includes/header.php';
?>

<body>
    <div class="container-fluid">
        <div class="row justify-content-center mb-2">
            <?php
            $sql = "SELECT * FROM concerti";
            $count = 0;
            $path = "./immagini/concerti/";
            $resultset = mysqli_query($conn, $sql);
            while ($record = mysqli_fetch_assoc($resultset)) {
            ?>
                <div id="concert-carousel" class="carousel slide" data-ride="carousel">
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
                            if ($i == 0) {
                                $actives = 'active';
                            }
                        ?>
                            <div class="carousel-item <?= $actives; ?>">
                                <img id="image-carousel" src="<?= $path . $row['Immagine']; ?>" width="100%" object-fit="cover">
                                <div class="carousel-caption d-none d-md-block">
                                    <h2><?= $row['Titolo']; ?></h2>
                                    <p><?= $row['Data']; ?></p>
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
</body>

</html>