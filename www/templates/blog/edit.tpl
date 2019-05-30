<div class="full-post">
	<div class="container">
		<div class="row">

			<form action="<?=HOST?>blog/post-edit?id=<?=$post->id?>" method="POST" enctype="multipart/form-data">
			<div class="col">
				<h1>Редактировать пост</h1>

  				<?php include( ROOT . 'templates/_parts/_errors.tpl') ?>

				<section class="add-post">
					<div class="add-post__title">Название</div>
					<input value="<?=$post->title?>" class="form-full-width" type="text" name="postTitle" placeholder="Введите имя" />
				</section>

				<section class="add-post">
					<div class="add-post__cat">Категория</div>

					<select name="cat" id="">
						<?php foreach ($categories as $cat): ?>
							<option 
								value="<?=$cat['id'];?>"
								<?php echo ($cat->id === $post->cat) ? "selected" : ""; ?>
							>
								<?=$cat['cat_title'];?>
							</option>
						<?php endforeach ?>
					</select>
				</section>

				<section class="add-post">
					<div class="add-post__title">Изображение</div>
					<div class="form-download">
						<div class="form-download__title">Изображение jpg или png, размером больше чем 100х100 пикселей, и весом до 2Мб.</div>

						<div class="form-download__container"> 
							<fieldset>
								<input type="file" name="postImg" id="postImg" class="inputfile" data-multiple-caption="{count} файлов выбрано" multiple />
								<label for="postImg">Выбрать файл</label> <span></span>
							</fieldset>
						</div>

						<?php if ( $post->post_img != "" ) {?>

							<div class="form-download__preview">
							  <div class="form-download__preview__container" id="output">
							    <div class="form-download__preview__delete">
							    	<a class="testBtn" id="deletePostImg" >Удалить</a>
							    </div>
							    <div class="form-download__image-container">
							    	<img class="card__img card-post__img" src="<?=HOST?>usercontent/blog/<?=$post['post_img_small']?>" alt="<?=$post['title']?>"/>
							    </div>
							  </div>
							</div>

						<?php } ?>

						<div class="save-check__block" id="deletePostImgCheckBox" style="display: none;">
						  <input id="deleteImgCheckBox" type="checkbox" name="deleteImg" hidden="hidden"/>
						  <label for="deleteImgCheckBox">Картинка будет удалена</label>
						</div>

					</div>
				</section>
				<section class="add-post">
					<div class="add-post__title">Содержание</div>
					<textarea id="ckEditor" class="form-message" name="postText" placeholder="Сообщение"><?=$post->text?></textarea>
					<input type="submit" name="postUpdate" class="button button-save" value="Сохранить">
					<a class="button button-regular" href="<?=HOST?>blog/post?id=<?=$post->id?>"> Отмена </a>
				</section>
			</div>
			</form>
		</div>
	</div>
</div>


