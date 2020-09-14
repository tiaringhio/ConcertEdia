<?php
 require_once 'includes/header.php';
?>

<?php
    $sql = "SELECT * from band";
    $query = mysqli_query($conn, $sql);
    $resultCheck = mysqli_num_rows($query);
    if($resultCheck > 0) {
        while($row = mysqli_fetch_assoc($query)) { 
            ?> <h1> <?php echo $row['Nome'] . "<br>" ;?> </h1> <?php
        }
    }
?>

<?php
    require_once 'includes/footer.php';
?>