<form class="form-container" method="POST" action="<?=HOST?>lost-password" id="form-validate">

	<div class="form-title">Забыли пароль?</div>


	<?php if ( !empty($success)) { ?>

		<div class="alert alert-success" role="alert">
			<?php echo array_shift($success); ?>
		</div>
		
		<div class="form-group">
			<a href="login" class="btn btn-primary">Перейти на страницу входа</a>
		</div>

	<?php } else { ?>

		<?php require ROOT. "templates/_parts/_errors.tpl" ?>
		
		<div class="form-fields" id="form-fields">
			<input class="form-full-width" type="email" name="email" placeholder="E-mail" />
		</div>

		<div class="additional-info">
			<a href="<?=HOST?>login">Вернуться назад</a>
		</div>

		<input type="submit" name="lost" class="button button-login" value="Восстановить пароль">
	
	<?php } ?>

</form>