<?php
    require_once 'includes/header.php';
?>
<body>
<?php


$tosearch = $_GET['varname'];



$sql = "SELECT concerti.titolo
FROM concerti
WHERE concerti.titolo =  '" . $tosearch . "' ";


$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($result);
if($row>0){
    include_once 'concerto.php';
       }

    else{
        
        $sql = "SELECT band.nome
FROM band
WHERE band.nome =  '" . $tosearch . "'";

$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($result);
if($row>0){
    include_once 'SingolaBand.php';
       }

    else{
        include_once 'Error.php';
     }

     } ?>