<div class="wrap-works">
    <div class="container">
      <div class="row portfolio-title portfolio-title--work-page">
        <div class="col-lg-9 col-md-8">
          <h1>Проекты <span class="portfolio-font--lighter">и то что я накодил:)</span></h1>
        </div>
        <div class="col-lg-3 col-md-4 portfolio-title--button">
          <?php if (isAdmin()) { ?>
            <a class="button button-edit" href="<?=HOST?>works/work-new"> Добавить проект </a>
          <?php } ?>
        </div>
      </div>
      <div class="row portfolio-works portfolio-works--work-page">
        <?php foreach ($works as $work) {
          include "work-card.tpl";
        }?>
        <?php if(empty($works)) {
          echo "Nothing here :(";
        }?>
      </div>
      <?php 
        if(isset($_GET['id'])) { ?>
          <a href="<?=HOST?>works" class="button">Просмотреть все проекты</a>
        <?php }
      ?>
    </div>
</div>