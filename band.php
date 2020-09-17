<?php
require_once 'includes/header.php';
?>

<body>
    <div class="container-fluid">
        <div class="row justify-content-center mb-2">
            <?php
            $sql = "SELECT * FROM band";
            $count = 0;
            $path = "./immagini/Band/";
            $resultset = mysqli_query($conn, $sql);
            while ($record = mysqli_fetch_assoc($resultset)) {

                $i = 0;
                foreach ($resultset as $row) {
                    $actives = '';
                    if ($i == 0) {
                        $actives = 'active';
                    }
            ?>
                    <div class="card pb-3 mt-3 mb-3  text-center" style="width: 19rem;">
                        <img class="card-img-top" src="<?= $path . $row['Foto']; ?>" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title"><?= $row['Nome'];
                                                    $Band = $row['Nome']; ?> </h5>

                            <form method="get" action="SingolaBand.php">
                                <input type="hidden" name="varname" value="<?php echo $Band ?>">
                                <button class="btn btn-dark" type="submit">Portami alla Band!</button>
                            </form>
                        </div>
                    </div>
            <?php $i++;
                }
            } ?>
        </div>
    </div>
</body>


<?php
require_once 'includes/footer.php';
?>