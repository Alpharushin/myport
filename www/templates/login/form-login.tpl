<form class="form-container" method="POST" action="<?=HOST?>login" id="form-validate">
        <div class="form-title">Вход на сайт</div>

        <?php require ROOT. "templates/_parts/_errors.tpl" ?>
        
        <div class="form-fields" id="form-fields">
          <input class="form-full-width" type="email" name="email" placeholder="E-mail"/>
          <input class="form-full-width" type="password" name="password" placeholder="Пароль"/>
        </div>
        <div class="additional-info">
          <div class="save-check__block">
            <input id="save-check" type="checkbox" name="save-check" checked="checked" hidden="hidden"/>
            <label for="save-check">Запомнить меня</label>
          </div><a href="<?=HOST?>lost-password">Забыл пароль</a>
        </div>
        


        <input type="submit" name="login" class="button button-login" value="Войти">


      </form>