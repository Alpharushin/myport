<main class="wrap-content">
    <div class="main-content main-content--edit">
      <div class="content-title"> 
        <h1>Редактировать данные</h1>
      </div>

      <?php include( ROOT . 'templates/_parts/_errors.tpl') ?>


      <form class="form-edit" action="<?=HOST?>contacts-edit" method="POST">
        <div class="wrap-row">
          <div class="row-inp">
            <div class="edit-inp form-edit_wrap">Имя
              <input class="form-name edit-input" type="text" name="name" 
                placeholder="Введите имя" 
                value="<?=$contacts->name?>" />
              <span class="error"></span>
            </div>
            <div class="form-edit_wrap">Фамилия
              <input value="<?=$contacts->secondname?>" class="form-name edit-input" type="text" name="secondname" placeholder="Введите фамилию"/><span class="error"></span>
            </div>
          </div>
          <div class="row-inp">
            <div class="edit-inp form-edit_wrap">Email
              <input value="<?=$contacts->email?>" class="form-name edit-input" type="text" name="email" placeholder="Введите email"/><span class="error"></span>
            </div>
            <div class="form-edit_wrap">Skype
              <input value="<?=$contacts->skype?>" class="form-name edit-input" type="text" name="skype" placeholder="Введите skype"/><span class="error"></span>
            </div>
          </div>
          <div class="row-inp">
            <div class="row-wrap">
              <div class="edit-inp form-edit_wrap"><span>Вконтакте</span>
                <input value="<?=$contacts->vk?>" class="form-name edit-input" type="text" name="vk" placeholder="Введите ссылку на профиль"/><span class="error"></span>
              </div>
              <div class="edit-inp form-edit_wrap fix-margin"><span>Facebook</span>
                <input value="<?=$contacts->fb?>" class="form-name edit-input" type="text" name="fb" placeholder="Введите ссылку на профиль"/><span class="error"></span>
              </div>
            </div>
            <div class="row-wrap">
              <div class="edit-inp form-edit_wrap"><span>GitHub</span>
                <input value="<?=$contacts->github?>" class="form-name edit-input" type="text" name="github" placeholder="Введите ссылку на профиль"/><span class="error"></span>
              </div>
              <div class="form-edit_wrap"><span>Twitter</span>
                <input value="<?=$contacts->twitter?>" class="form-name edit-input" type="text" name="twitter" placeholder="Введите ссылку на профиль"/><span class="error"></span>
              </div>
            </div>
          </div>
          <div class="row-inp">
            <div class="edit-inp form-edit_wrap">Telegram
              <input value="<?=$contacts->tel?>" class="form-name edit-input" type="text" name="tel" placeholder="Введите номер"/><span class="error"></span>
            </div>
            <div class="edit-inp form-edit_wrap fix-margin">Адрес
              <textarea  class="form-message" name="address" id="ckEditor" cols="30" rows="10" placeholder="Введите адрес"><?=$contacts->address?></textarea>
              <span class="error"></span>
            </div>
            <div class="edit-inp form-edit_wrap">Широта
		  		<input value="<?=$contacts->lat?>" class="form-name edit-input" type="text" name="lat" placeholder="Введите широту"/><span class="error"></span>
		  	</div>

		  	<div class="edit-inp form-edit_wrap">Долгота
		  		<input value="<?=$contacts->lng?>" class="form-name edit-input" type="text" name="lng" placeholder="Введите долготу"/><span class="error"></span>
		  	</div>
          </div>
        </div>
        <div class="row-inp button-row">
          <input type="submit" name="contactsUpdate" class="button button-save" value="Сохранить">
  
         <a class="button button-regular" href="<?=HOST?>contacts">Отмена</a>
        </div>
      </form>
    </div>
  </main>