

<?php

    if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 ) {

        if ($_SESSION['role'] == 'admin') {
             // На сайте  Админ
            include ROOT . "templates/_parts/_admin-panel.tpl";
           
        }
    }
?>

<div class="wrapper">
    <div class="header single-work-page__header">
        <div class="header--vignette single-work-page__header--vignette">
            <div class="header__top mb-0">
                <div class="header-admin__general">
                    <div class="header__logo">
                        <a class="header__logo-icon-link single-work-page__header-logo-icon-link" href="#">
                            <i class="far fa-paper-plane"></i>
                        </a>
                        <div class="header__block-title">
                            <p class="header__title single-work-page__header-title mb-0">Digital Lifestyle</p>
                            <p class="header__subtitle single-work-page__header-subtitle mt-0">Сайт IT специалиста</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>  