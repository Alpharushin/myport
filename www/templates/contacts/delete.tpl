<div class="full-post">
	<div class="container">
		<div class="row">
			<form action="<?=HOST?>messages-delete?id=<?=$messages['id']?>" method="POST" enctype="multipart/form-data">
			<div class="col">
				<h1>Удалить сообщение</h1>

				Вы действительно хотите удалить сообщение
				<strong><?=$messages['name']?></strong> 
				<strong><?=$messages['email']?></strong>  с id = 
				<strong><?=$messages['id']?></strong> ?

				<input type="submit" name="msgDelete" class="button button-delete" value="Удалить">
				<a class="button button-regular" href="<?=HOST?>messages"> Отмена </a>
			
				
			</div>
			</form>
		</div>
	</div>
</div>