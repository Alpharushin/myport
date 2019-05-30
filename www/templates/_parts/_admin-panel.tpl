
<div class="nav-admin">
  <div class="avatar avatar-small"><img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatarSmall']?>" alt="image"/></div>
  <div class="admin-profile">   
    <div class="admin-profile__name"><?=$_SESSION['logged_user']['name']?> 
					<?=$_SESSION['logged_user']['secondname']?></div>
    <a class="btn btn--admin" href="<?=HOST?>profile">Администратор</a>
  </div>
  <nav>
    <ul class="admin-menu">
      <li><i class="fas fa-plus-circle"></i><a href="<?=HOST?>blog/post-new">Пост</a></li>
      <li><i class="fas fa-folder"></i><a href="<?=HOST?>blog/categories">Категории</a></li>
      <li><i class="fas fa-at"></i><a href="<?=HOST?>about">Обо мне</a></li>
      <li><i class="fas fa-crosshairs"></i><a href="<?=HOST?>works/work-new">Проекты</a></li>
      <li><i class="fas fa-edit"></i><a href="<?=HOST?>contacts">Контакты</a></li>
      <li><i class="fas fa-comments"></i><a href="<?=HOST?>messages">Сообщения</a></li>
    </ul>
  </nav>
  <div class="admin-login"><i class="fas fa-sign-out-alt"></i><a  href="<?php echo HOST . "logout";?>">Выход</a></div>
</div>