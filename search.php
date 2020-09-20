<?php
    require_once 'includes/header.php';
?>
<body>
<?php


$tosearch = $_GET['varname'];



$sql = "SELECT concerti.titolo
FROM concerti
WHERE concerti.titolo =  '" . $tosearch . "' 
AND concerti.titolo = ANY
(SELECT concerti.titolo FROM concerti)
" ;

$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($result);
if($row>0){
    include_once 'concerto.php';
       }

    else{
        
        $sql = "SELECT band.nome
FROM band
WHERE band.nome =  '" . $tosearch . "' 
AND band.nome = ANY
(SELECT band.nome FROM band)
" ;

$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($result);
if($row>0){
    include_once 'SingolaBand.php';
       }

    else{
        include_once 'Error.php';
     }

     } ?>