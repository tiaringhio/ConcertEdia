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
                <div class="text-center" > 

                    <img src="<?= $path . $record['Foto']; ?>" class="rounded"  alt="Responsive image">
                </div>
            <?php
            }
            ?>
        
    </div>
</body>