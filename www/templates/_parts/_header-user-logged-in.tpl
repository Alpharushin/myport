<div class="header-user__inner" id="navigation-login">
	<div class="header-user__inner-box">
		<div class="header-user__inner-avatar">
			<div class="avatar-user__circle-border">
				<?php if ( $_SESSION['logged_user']['avatarSmall'] == "" ) { ?>
					<img src="<?=HOST?>templates/assets/img/placeholders/user-avatar-placeholder-small.jpg" alt="image"/>
				<?php } else { ?>
					<img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatarSmall']?>" alt="image"/>
				<?php } ?>
			</div>
		</div>
		<div class="header-user__inner-content-box">
			<div class="header-user__inner-name-desc">
				<h2>
					<?=$_SESSION['logged_user']['name']?> 
					<?=$_SESSION['logged_user']['secondname']?>
				</h2>
				<p>Пользователь</p>
			</div>
			<div class="header-user__inner-buttons-box">
				<div class="header-user__inner-profile">
					<a class="button button-header-user__inner-btn" href="<?=HOST?>profile">Профиль</a>
				</div>
				<div class="header-user__inner-quit">
					<a class="button button-header-user__inner-btn" href="<?=HOST?>logout">Выход</a>
				</div>
			</div>
		</div>
	</div>
</div>