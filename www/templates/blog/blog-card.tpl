<div class="col-md-6 col-xl-4">
	<div class="card card-post">

		<?php if ( $post['post_img_small'] != "" ) {?>
			<img class="full-post__img" src="<?=HOST?>usercontent/blog/<?=$post['post_img_small']?>" alt="<?=$post['title']?>"/>
		<?php } else {?>
			<img class="full-post__img" src="<?=HOST?>usercontent/blog/netfoto.png" alt="<?=$post['title']?>"/>
		<?php } ?>


		<h2 class="card__title"><?=$post->title?></h2>
		<a class="button button-regular" href="blog/post?id=<?=$post->id?>">Читать</a>
	</div>
</div>

