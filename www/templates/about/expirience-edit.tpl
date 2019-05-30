  <div class="full-post">
    <div class="container">
     
      
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h2 class="about-block-title">Опыт работы</h2>

          <?php foreach ($jobs as $job){ ?>

          <div class="work-item--admin"><a class="button button-delete" href="#"> Удалить </a>
            <div class="work-item__date"><?=$job->period?></div>
            <div class="work-item-profile"><span class="work-item-profile__name"><?=$job->title?></span></div>
            <div class="work-item__message"><?=$job->description?></div>
          </div>


          <?php } ?>

          
        </div>
        <div class="col"></div>
      </div>
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h2 class="about-block-title">Добавить новое место</h2>

          <?php include( ROOT . 'templates/_parts/_errors.tpl') ?>

          <form action="<?=HOST?>expirience-edit" method="POST">
            <div class="comment-user">
              <section class="add-post">
                <div class="add-post__title">Период</div>
                <input class="form-full-width" type="text" name="period" placeholder="Введите даты начала и окончания работы"/>
              </section>
              <section class="add-post">
                <div class="add-post__title">Название должности</div>
                <input class="form-full-width" type="text" name="title" placeholder="Введите название должности"/>
              </section>
              <section class="add-post add-work">
                <div class="add-post__title">Описание работы, должностные обязанности, достигнутые результаты</div>
                <textarea class="form-message" name="description" placeholder="Напишите интересное краткое содержательное описание"></textarea>
                <input type="submit" name="newWork" class="button button-save" value="Добавить">
                
              </section>
            </div>
          </form>
        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>