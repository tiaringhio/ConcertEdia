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
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="<?= $path . $row['Foto']; ?>" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title"><?= $row['Nome'] ?> </h5>
                            <a href="#" class="btn btn-dark">Portami alla band!</a>
                        </div>
                    </div>
            <?php $i++;
                }
            } ?>



            <?php
            require_once 'includes/footer.php';
            ?>