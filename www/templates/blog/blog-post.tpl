<div class="full-post">
<div class="container">
	<div class="row">
		<div class="col"></div>
		<div class="col-10">
		
			<?php if ( isAdmin() ) { ?>
				<a class="button button-edit" href="<?=HOST?>blog/post-edit?id=<?=$post['id']?>"> Редактировать </a>
				<a class="button button-delete" href="<?=HOST?>blog/post-delete?id=<?=$post['id']?>">Удалить</a>
			<?php }  ?>
			
			
			<h1 class="full-post__title"><?=$post['title']?></h1>
			<span class="full-post__author">
				<?=$post['name']?>
				<?=$post['secondname']?>
			</span>
			<a class="full-post__link" href="<?=HOST?>blog?cat_id=<?=$post['cat']?>">
				<?=$post['cat_title']?>
			</a>
			<span class="full-post__date">
				<?php echo rus_date("j F Y H:i ", strtotime($post['date_time'])); ?>
			</span>
			<a class="full-post__link" href="#comments">
				<?php commentNumber( count($comments) ); ?>
			</a>
			<article>
				<?php if ( $post['post_img'] != "" ) {?>
					<img class="full-post__img" src="<?=HOST?>usercontent/blog/<?=$post['post_img']?>" alt="<?=$post['title']?>"/>
				<?php } ?>
				<?=$post['text']?>
			</article>
			<div class="full-post__next-prew">
			</div>

			<?php 	if ( count($comments) > 0) {  ?>
				<h2 id="comments"><?php commentNumber( count($comments) ); ?></h2>
				<?php foreach ($comments as $comment): ?>
					<?php include "comment-card.tpl"; ?>
				<?php endforeach ?>
			<?php } ?>

			<?php 
				if (isLoggedIn()) { ?>

					<div class="comment-post__title">Оставить комментарий</div>
					<div class="comment-post">
						<div class="avatar avatar-small">
							<img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatarSmall']?>" alt="image"/>
						</div>
						<div class="comment-post__author">
							<?=$_SESSION['logged_user']['name']?> 
							<?=$_SESSION['logged_user']['secondname']?>
						</div>
						<form class="comment-post__form" 
							method="POST" 
							action="<?=HOST?>blog/post?id=<?=$_GET['id']?>" > 
							<?php require ROOT. "templates/_parts/_errors.tpl" ?>
							<textarea class="form-message" 
								name="commentText" 
								placeholder="Присоединиться к обсуждению..."></textarea>
							<input type="submit" name="addComment" class="button button-regular" value="Опубликовать">
						</form>
					</div>
					
				<?php } else { ?>

					<div class="no-auth">
						<div class="no-auth__title"> 
							<a href="<?=HOST?>login">Войдите</a> или 
							<a href="<?=HOST?>registration">зарегистрируйтесь</a><br/>
							чтобы оставить комментарий </div>
					</div>

				<?php } ?>
			
		</div>
		<div class="col"></div>
	</div>
</div>
</div>