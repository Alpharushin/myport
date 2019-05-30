<div class="full-post">
	<div class="container">
		<div class="row">
			<form class="form-delete" action="
			<?=HOST?>blog/comment-delete?id=<?=$comment['id']?>" method="POST" 
				enctype="multipart/form-data">
							<div class="col">
							<h1>Удалить комментарий</h1>
				Вы действительно хотите удалить комментарий 
				<strong><?=$comment['text']?></strong> ?
				<input type="submit" name="commentDelete" 
				class="button button-delete" value="Удалить">
			 <a class="button button-regular" href="<?=HOST?>blog/post?id=<?=$comment['id']?>">Отмена</a>

			</div>
			</form>
		</div>
	</div>
</div>