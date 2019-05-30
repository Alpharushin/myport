<div class="full-post">
  <div class="container">
    <div class="row">
      <div class="col">
        <?php if(isAdmin() ) { ?>
          <a class="button button-edit" href="<?=HOST?>blog/post-new">Добавить пост</a>
        <?php } ?>
        <h1>Блог простой , уютный и комфортный</h1>
      </div>
    </div>
    <div class="row">

      <?php foreach ($posts as $post): ?>

        <?php include "blog-card.tpl"; ?>
        
      <?php endforeach ?>

    </div>
  </div>
</div>

