<div class="full-post">
	<div class="container">
		<div class="row">
			<form action="<?=HOST?>blog/post-new" method="POST" enctype="multipart/form-data">
			<div class="col">
				<h1>Добавить пост</h1>

				 <?php include( ROOT . 'templates/_parts/_errors.tpl') ?>
				 
				<section class="add-post">
					<div class="add-post__title">Название</div>
					<input class="form-full-width" type="text" name="postTitle" placeholder="Введите имя" value="Новый пост"/>
				</section>

				<section class="add-post">
					<div class="add-post__cat">Категория</div>
					<select name="cat" id="">
						<?php foreach ($cats as $cat): ?>
							<option value="<?=$cat['id'];?>"><?=$cat['catTitle'];?></option>
						<?php endforeach ?>
					</select>
				</section>
				
				<section class="add-post">
					<div class="add-post__title">Изображение</div>
					<div class="form-download">
						<div class="form-download__title">Изображение jpg или png весом до 4Мб.</div>

						<div class="form-download__container"> 
							<fieldset>
								<input type="file" name="postImg" id="postImg" class="inputfile" data-multiple-caption="{count} файлов выбрано" multiple />
								<label for="postImg">Выбрать файл</label> <span></span>
							</fieldset>
						</div>

					</div>
				</section>
				<section class="add-post">
					<div class="add-post__title">Содержание</div>
					<textarea id="ckEditor" class="form-message" name="postText" placeholder="Сообщение"></textarea>
					<input type="submit" name="postNew" class="button button-save" value="Сохранить">
					<a class="button button-regular" href="<?=HOST?>blog"> Отмена </a>
				</section>
			</div>
			</form>
		</div>
	</div>
</div>