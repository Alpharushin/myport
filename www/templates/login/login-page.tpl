<!DOCTYPE html>
<html lang="en"></html>
<head>
  <meta charset="UTF-8"/>
  <title>Вход на сайт</title><!--[if IE]>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/><![endif]-->
  <meta name="viewport" content="width=device-width,initial-scale=1"/>
  <meta name="keywords" content=""/>
  <meta name="description" content=""/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap-reboot.min.css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/><!-- build:cssVendor css/vendor.css -->
  <link rel="stylesheet" href="<?php echo HOST;?>templates/assets/libs/bootstrap-4-grid/grid.min.css"/><!-- endbuild -->
<!-- build:cssCustom css/main.css -->
  <link rel="stylesheet" href="<?php echo HOST;?>templates/assets/css/main.css"/><!-- endbuild -->
  <link rel="stylesheet" href="<?php echo HOST;?>templates/assets/css/user-styles.css"/><!-- endbuild -->
<!--[if lt IE 9]>
  <script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script><![endif]-->
</head>
<body class="login-page"><script id="__bs_script__">//<![CDATA[
    document.write("<script async src='/browser-sync/browser-sync-client.js?v=2.23.6'><\/script>".replace("HOST", location.hostname));
//]]></script>

  <div class="login-page__container">
    <div class="login-page__header">
      <div class="header-user__logo-brand">
        <a class="header-user__brand" href="<?=HOST?>">
          <div class="header-user__brandname">
            <h1>Digital Culture and Work</h1>
          </div></a>
      </div>
      
      <?php 

      if ( $uri[0] == 'registration') { ?>
        <div class="header-user__right-link"><a href="login">Вход на сайт</a></div>
      <?php } else { ?>
        <div class="header-user__right-link"><a href="registration">Регистрация</a></div>
      <?php } ?>

       




    </div>
    <div class="login-page__form-container">



<?=$content?>





      
    </div>
    <div class="login-page__footer">
      <p class="footer-copy">© Alpharushin<br/>2018 - 2019</p>
    </div>
  </div><!-- build:jsLibs js/libs.js -->
  <script src="<?php echo HOST;?>templates/assets/libs/jquery/jquery.min.js"></script><!-- endbuild -->
<!-- build:jsVendor js/vendor.js --><!-- endbuild -->
<!-- build:jsNavigation js/navigation.js -->
  <script src="<?php echo HOST;?>templates/assets/js/navigation.js"></script><!-- endbuild -->
<!-- build:jsMain js/main.js -->
  <script src="<?php echo HOST;?>templates/assets/js/main.js"></script><!-- endbuild -->
  <script defer="defer" src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</body>