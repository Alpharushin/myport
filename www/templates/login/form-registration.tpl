<form class="form-container" action="<?=HOST?>registration" method="POST" id="form-validate">
	<div class="form-title">Регистрация</div>


	<?php // print_r($errors); ?>

	<?php require ROOT. "templates/_parts/_errors.tpl" ?>

	






	<div class="error-massages" id="error-massages">

		<div class="error-message error-message__email">Введите email</div>


		<div class="error-message error-message__password">Введите пароль</div>






	</div>





	<div class="form-fields" id="form-fields">
		<input class="form-full-width" type="email" name="email" placeholder="E-mail" />
		<input class="form-full-width" type="password" name="password" placeholder="Пароль"  />
	</div>
	<div class="additional-info"></div>
	<input type="submit" name="register" class="button button-login" value="Регистрация">
</form>