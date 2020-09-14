<?php
 require_once 'includes/header.php';
?>

<?php
    $sql = "SELECT * from concerti";
    $query = mysqli_query($conn, $sql);
    $resultCheck = mysqli_num_rows($query);
    if($resultCheck > 0) {
        while($row = mysqli_fetch_assoc($query)) { ?>
            <h1> <?php echo $row['Titolo'] . "<br>" ?> </h1> <p> <?php echo $row['Descrizione'] . "<br>"?> </p> <?php ;
            
        }
    }
?>

<?php
    require_once 'includes/footer.php';
?>