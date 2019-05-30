<div class="container">
	<div class="blog-title">
		<h1>А что в <a class="cards-link" href="<?=HOST?>blog">блоге?</a></h1>
	</div>
	<div class="row blog-cards">
		<?php foreach ($posts as $post): ?>
			<?php include(ROOT . "templates/blog/blog-card.tpl"); ?>
		<?php endforeach ?>
	</div>
</div>