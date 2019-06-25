<!DOCTYPE html>
<html lang="ru">

<head>
    <title><?php echo $Title;?></title>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="keywords" content="<?=$Keywords?>">
    <meta name="description" content="<?=$Description?>">
    <meta property="og:type" content="">
    <meta property="og:url" content="">
    <meta property="og:image" content="" />
    <meta property="og:title" content="<?php echo $Title;?>">
    <link rel="shortcut icon" href="/favicon.ico">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/jquery-ui.min.css">
    <link rel="stylesheet" href="/css/prism.css">
    <link rel="stylesheet" href="/css/artplayer.css">
    <script src="/js/artplayer.js"></script>

</head>

<body>
    <? include "part/header.php"; ?>
    <main>
        <div class="do_main_main">
            <div class="do_main_main_all">



                <div class="do_main_result">
                    <?php include $viewway; ?>
                </div>





            </div>
        </div>
        <div id="up" class="bt">Down</div>
        <div class="msg"></div>
        <? include "part/footer.php"; ?>
    </main>
    <script src="/js/jquery-3.4.0.min.js"></script>
    <script src="/js/autosize.min.js"></script>
    <script src="/js/prism.js"></script>
    <script src="/js/jquery-ui.min.js"></script>
    <script src="/js/script.js"></script>
    
    <!-- <script src='https://www.google.com/recaptcha/api.js?hl=ru'></script> -->
    <!-- Todo Google recaptha and kit font awesome -->
</body>

</html>