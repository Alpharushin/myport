 <div class="container work-experience" >

    

    <div class="row">
      <div class="col-md-4 col-lg-3"></div>
      <div class="col-md-8 col-lg-9" style="position: relative;">
          <?php if ( isAdmin() ) { ?>
      <div class="about-button">
        <a class="button button-edit" href="<?=HOST?>expirience-edit"> Редактировать </a>
      </div>
          <?php }  ?>
        <h1><!--Опыт работы --></h1>

        <?php foreach ($jobs as $job){ ?>

          <div class="work-item"><a class="button button-delete" href="#"> Удалить </a>
            <div class="work-item__date"><?=$job->period?></div>
            <div class="work-item-profile"><span class="work-item-profile__name"><?=$job->title?></span></div>
            <div class="work-item__message"><?=$job->description?></div>
          </div>


          <?php } ?>
        
      </div>
    </div>
  </div>