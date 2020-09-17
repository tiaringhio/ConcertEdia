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
                    <div class="card bg-white text-black text-center" style="width: 19rem;">
                    <?php
                                                    $Band = $row['Nome']; ?> 
                        <img class="card-img-top" src="<?= $path . $row['Foto']; ?>" alt="Card image cap"><span><?php echo $Band ?></span>
                        <div class="card-img-overlay">
                            

                            <form method="get" id="form-band" action="SingolaBand.php">
                                <input type="hidden" name="varname" value="<?php echo $Band ?>">
                                 
                                <button class="btn btn-hidden stretched-link" type="submit" id="titlecard">  </button>
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