<?php
require_once 'includes/header.php';
?>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body,
        html {
            height: 100%;
            margin: 0;
        }

        .img-container {
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            background: url(immagini/Band/lionel_richie.jpg) no-repeat center top;
            z-index: -1;
            background-size: cover;
        }

        .center {
            margin: 0;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
    </style>
</head>

<div class="img-container inverted fade-in">
    <div class="text-center center">
        <h1 class="widget-title">404</h1>
        <p class="title-main">Hello, is it me you're looking for?</p>
        <a href="index.php" class="btn btn-dark btn-lg" role="button">Go home Lionel, you're drunk</a>
    </div>
</div>

<?php
require_once 'includes/footer.php';
?>

</html>