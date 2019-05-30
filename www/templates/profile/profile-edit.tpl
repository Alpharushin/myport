<div class="full-post">
	<div class="container">
		<form enctype="multipart/form-data" action="<?=HOST?>profile-edit" method="POST">
			<div class="row">
				<div class="col"></div>
				<div class="col-10">

					<h1>Редактировать профиль</h1>

					<?php require ROOT. "templates/_parts/_errors.tpl" ?>

					<section class="add-post">
						<div class="add-post__title">Имя</div>
						<input class="form-full-width" type="text" name="name" value="<?=$currentUser->name?>" />
					</section>
					<section class="add-post">
						<div class="add-post__title">Фамилия</div>
						<input class="form-full-width" type="text" name="secondname" value="<?=$currentUser->secondname?>" />
					</section>
					<section class="add-post">
						<div class="add-post__title">Email</div>
						<input class="form-full-width" type="text" name="email" value="<?=$currentUser->email?>"/>
					</section>

					<section class="add-post">
						<div class="add-post__title">Фотография</div>
						<div class="form-download">
							<div class="form-download__title">Изображение jpg , gif или png, рекомендуемый размер 222 на 222 пикселей, до 4Мб.</div>
							
							

							

						<div class="form-download__container"> 
								<fieldset>
									<input type="file" name="avatar" id="file" class="inputfile" data-multiple-caption="{count} файлов выбрано" multiple />
									<label for="file">Выбрать файл</label> <span></span>
								</fieldset>
						</div>

						</div>
						<div class="avatar avatar-big"> <img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar']?>"/>
						
						</div>
					</section>

					<section class="add-post">
						<div class="add-post__title">Страна</div>
						<input class="form-full-width" type="text" name="country" value="<?=$currentUser->country?>" />
					</section>

					<section class="add-post">
						<div class="add-post__title">Город</div>
						<input class="form-full-width" type="text" name="city" value="<?=$currentUser->city?>" />
					</section>


					<section class="add-post">

						<input class="button button-save" type="submit" name="profile-update" value="Сохранить"/>

						<a class="button button-regular" href="<?=HOST?>profile" />Отмена</a>
					</section>













				</div>

			</div>
		</form>


	</div>
</div>