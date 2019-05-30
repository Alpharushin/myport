<div class="full-post">
    <div class="container">
      <div class="row">
        <form action="<?=HOST?>works/work-edit?id=<?=$work->id?>" method="POST" enctype="multipart/form-data">
        <div class="col"></div>
        <div class="col-10">
          <h1>Редактирование проекта</h1>
          <?php include(ROOT . 'templates/_parts/_errors.tpl')?>
          
          <section class="add-post">
            <div class="add-post__title">Название<?=(@$_POST['workTitle'] != $work->title && @$_POST['workTitle'] != "") ? '<sup>*</sup>' : ''?></div>
            <input class="form-full-width" type="text" name="workTitle" placeholder="Название работы" value="<?=(@$_POST['workTitle'] != "") ? $_POST['workTitle'] : $work->title?>"/>
          </section>
          
          <section class="add-post">
            <div class="add-post__title">Изображение<?=(@$_POST['workImg'] != $work->work_img && @$_POST['workImg'] != "") ? '<sup>*</sup>' : ''?></div>
            <div class="form-download">
              <div class="form-download__title">Изображение jpg или png, размером больше чем 100х100 пикселей, и весом до 2Мб.</div>
              <div class="form-download__container"> 
                <input type="file" id="workImg" name="workImg" style="display:none;" class="inputfile"/>
                <label class="form-download__file-name" for="workImg">Выбрать файл</label>
                <span></span>
              </div>
              <div class="form-download__preview">
                <div class="form-download__preview__container" id="output">
                  <?php if ($work['work_img'] != "") { ?>
                    <div class="form-download__preview__delete">
                      <a class="testBtn" id="deletePostImg">Удалить</a>
                    </div>
                  <?php } ?>
                  <div class="form-download__image-container">
                    <?php if ($work['work_img'] != "") { ?>
                      <img class="form-download__image" src="<?=HOST?>usercontent/work/<?=$work->work_img_small?>"/>
                    <?php } else { ?>
                      <img class="form-download__image" src="<?=HOST?>usercontent/work/no_image.png"/>
                    <?php } ?>
                  </div>
                </div>
              </div>
              <?php if ($work['work_img'] != "") { ?>
                <div class="save-check__block" id="deletePostImgCheckBox" style="display: none;">
                  <input id="deleteImgCheckBox" type="checkbox" name="deleteImg"  hidden="hidden"/>
                  <label for="deleteImgCheckBox">Картинка будет удалена</label>
                </div>
              <?php } ?>
            </div>
          </section>
          <section class="add-post">
            <div class="add-post__title">Коротко о проекте<?=(@$_POST['workSummary'] != $work->summary && @$_POST['workSummary'] != "") ? '<sup>*</sup>' : ''?></div>
            <textarea id="ck" class="form-message editor" name="workSummary" placeholder="Описание проекта"><?=(@$_POST['workSummary'] != "") ? $_POST['workSummary'] : $work->summary?></textarea>
          </section>
          
          <section class="add-post">
            <div class="add-post__title">Технологии в проекте<?=(@$_POST['workTechnologies'] != $work->technologies && @$_POST['workTechnologies'] != "") ? '<sup>*</sup>' : ''?></div>
            <textarea id="ck" class="form-message editor" name="workTechnologies" placeholder="Технологии, списком ul"><?=(@$_POST['workTechnologies'] != "") ? $_POST['workTechnologies'] : $work->technologies?></textarea>
          </section>
          <section class="add-post">
            <div class="add-post__title">Ссылки на проект<?=((@$_POST['workLink'] != $work->link && @$_POST['workLink'] != "") || (@$_POST['workGithub'] != $work->github && @$_POST['workGithub'] != "")) ? '<sup>*</sup>' : ''?></div>
            <input class="form-half" type="text" name="workLink" placeholder="Ссылка на проект" value="<?=(@$_POST['workLink'] != "") ? $_POST['workLink'] : $work->link?>"/>
            <input class="form-half" type="text" name="workGithub" placeholder="Ссылка на github" value="<?=(@$_POST['workGithub'] != "") ? $_POST['workGithub'] : $work->github?>"/>

          </section>
          <section class="add-post">
            <input type="submit" name="workUpdate" class="button button-save" value="Сохранить" >
            <a class="button button-delete" href="#"> Отмена </a>
          </section>
        </div>
        <div class="col"></div>
        </form>
      </div>
    </div>
</div>