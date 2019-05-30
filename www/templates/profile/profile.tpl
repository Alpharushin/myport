<div class="full-post">
  <div class="container">
    <div class="row">
      <div class="col"></div>
      <div class="col-10">
        <h1>Профиль</h1>




        <section class="add-post">
          <div class="add-post__title">Имя, Фимилия</div>
          <div><?=$currentUser->name?> <?=$currentUser->secondname?></div>
        </section>

        <section class="add-post">
          <div class="add-post__title">Email</div>
          <div><?=$currentUser->email?></div>
        </section>

        <section class="add-post">
          <div class="add-post__title">Страна, Город</div>
          <div><?=$currentUser->country?> <?=$currentUser->city?></div>
        </section>


        <section class="add-post">
         
          <a class="button button-regular" href="<?=HOST?>profile-edit" />Редактировать</a>
        </section>












      
      </div>

    </div>
 
   
  
  </div>
</div>