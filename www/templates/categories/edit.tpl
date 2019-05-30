<div class="full-post">
	<div class="container">
		<div class="row">
			<form action="<?=HOST?>blog/category-edit?id=<?=$cat['id']?>" method="POST" enctype="multipart/form-data">
			<div class="col">
				<h1>Редактировать категорию</h1>
				<section class="add-post">
					<div class="add-post__title">Название категории</div>
					<input class="form-full-width" type="text" name="catTitle" placeholder="Введите название категории" value="<?=$cat['catTitle']?>" />
				</section>

				<input type="submit" name="catEdit" class="button button-save" value="Сохранить">
				<a class="button button-regular" href="<?=HOST?>blog/categories"> Отмена </a>
			
				
			</div>
			</form>
		</div>
	</div>
</div>