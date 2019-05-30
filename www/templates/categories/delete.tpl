<div class="full-post">
	<div class="container">
		<div class="row">
			<form action="<?=HOST?>blog/category-delete?id=<?=$cat['id']?>" method="POST" enctype="multipart/form-data">
			<div class="col">
				<h1>Удалить категорию</h1>

				Вы действительно хотите удалить категорию 
				<strong><?=$cat['catTitle']?></strong> ?

				<input type="submit" name="catDelete" class="button button-delete" value="Удалить">
				<a class="button button-regular" href="<?=HOST?>blog/categories"> Отмена </a>
			
			</div>
			</form>
		</div>
	</div>
</div>