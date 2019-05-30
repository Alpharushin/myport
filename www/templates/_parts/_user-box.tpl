    <!-- Logged user box -->
    <div class="header-user__inner-content-box">
      <div class="header-user__inner-name-desc">
        <h2><?=$_SESSION['logged_user']['name']?> <?=$_SESSION['logged_user']['secondname']?></h2>
        <p>Пользователь</p>
      </div>
      <div class="header-user__inner-buttons-box">
        <div class="header-user__inner-profile">
          <form><a class="button button-header-user__inner-btn" href="#"> Профиль </a>
          </form>
        </div>
        <div class="header-user__inner-quit">
          <form><a class="button button-header-user__inner-btn" href="<?php echo HOST . "logout";?>"> Выход </a>

            
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
    <!-- // Logged user box -->