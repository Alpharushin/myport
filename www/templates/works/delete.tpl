<div class="full-post">
	<div class="container">
		<div class="row">
			<form class="form-delete" action="
			<?=HOST?>works/work-delete?id=<?=$work['id']?>" method="POST" 
								enctype="multipart/form-data">
							<div class="col">

							<h1>Удалить проект</h1>

				Вы действительно хотите удалить проект
				<strong><?=$work['title']?></strong>  с id = 
				<strong><?=$work['id']?></strong> ?
				<input type="submit" name="workDelete" 
				class="button button-delete" value="Удалить">
			 <a class="button button-regular" href="<?=HOST?>works/work?id=<?=$work->id?>">Отмена</a>
			
				
			</div>
			</form>
		</div>
	</div>
</div>