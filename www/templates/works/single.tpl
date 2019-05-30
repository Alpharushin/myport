 <div class="container">
    <div class="row justify-content-md-end container-work-title">
      <div class="col-lg-9 col-md-8 work-wrap">					
        <div class="work-title"><?=$work['title']?></div>
      </div>
      <div class="col-lg-2 col-md-3 work-wrap"> 
        <?php if(isAdmin()) { ?>
          <a class="button button-edit" href="<?=HOST?>works/work-edit?id=<?=$work['id']?>"> Редактировать </a>
          <a class="button button-delete" href="<?=HOST?>works/work-delete?id=<?=$work['id'];?>">Удалить</a>
        <?php } ?>
      </div>
    </div>
    <div class="row justify-content-md-center">
      <div class="col-md-10 work-wrap">
        
        <div class="work-project">
          <img src="<?=HOST?>usercontent/work/<?=(@$work['work_img']) ? @$work['work_img'] : 'no_image.png'?>" alt="<?=$work['title']?>"/>
        </div>
      </div>
    </div>
    <div class="row justify-content-md-center">
      <div class="col-md-5 work-contant">
        <div class="title3">Коротко о проекте</div>
        <p><?=$work['summary']?></p>
        
      </div>
      <div class="col-md-5 work-contant">
        <div class="title3">Технологии</div>
        <?=$work['technologies']?>
        <div class="title3">Ссылка на проект</div>
        <p class="work-link-projects"><a href="<?=$work['link']?>"><?=$work['link']?></a></p>
        <div class="title3">Код на github</div>
        <p class="work-link-projects"><a href="<?=$work['github']?>"><?=$work['github']?></a></p>
      </div>
    </div>
    <div class="row justify-content-md-center">
      <div class="col-md-10 work-container-button">
      <?php if(@$prev_work_id) { ?>
        <a class="button button-regular" href="<?=HOST?>works/work?id=<?=$prev_work_id?>"> 
          <span class="button__small-fa-icon">
            <i class="fas fa-arrow-left"></i>
          </span>
          <?=$prev_work_title?>
        </a>
      <?php } ?>
      <?php if(@$next_work_id) { ?>
        <a class="button button-regular" href="<?=HOST?>works/work?id=<?=$next_work_id?>">
          <?=$next_work_title?>  
          <span class="button__small-fa-icon">
            <i class="fas fa-arrow-right"></i>
          </span>
        </a>
      <?php } ?>
      
      </div>
    </div>
  </div>
</div>