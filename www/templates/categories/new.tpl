<div class="full-post">
	<div class="container">
		<div class="row">
			<form action="<?=HOST?>blog/category-new" method="POST" enctype="multipart/form-data">
			<div class="col">
				<h1>Создать категорию</h1>
				<section class="add-post">
					<div class="add-post__title">Название категории</div>
					<input class="form-full-width" type="text" name="catTitle" placeholder="Введите название категории"/>
				</section>

				<input type="submit" name="catNew" class="button button-save" value="Сохранить">
				<a class="button button-regular" href="<?=HOST?>blog/categories"> Отмена </a>
				
				
			</div>
			</form>
		</div>
	</div>
</div>