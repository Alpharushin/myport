<div class="full-post">
	<div class="container">
		<div class="row">
			<form class="form-delete" action="
			<?=HOST?>blog/post-delete?id=<?=$post->id?>" method="POST" 
								enctype="multipart/form-data">
							<div class="col">
							<h1>Удалить посты</h1>
				Вы действительно хотите удалить пост
				<strong><?=$post['title']?></strong>  с id = 
				<strong><?=$post['id']?></strong> ?
				<input type="submit" name="postDelete" 
				class="button button-delete" value="Удалить">
			 <a class="button button-regular" href="<?=HOST?>blog/post?id=<?=$post->id?>">Отмена</a>
				
			</div>
			</form>
		</div>
	</div>
</div>