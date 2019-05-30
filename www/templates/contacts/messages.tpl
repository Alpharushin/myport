<div class="full-post">
	<div class="container">
		<div class="row">
			<div class="col">
				<h1>Сообщения пользователей</h1>
			</div>
		</div>
		<div class="row">

			<?php foreach ($messages as $message): ?>
				<?php include "message-card.tpl"; ?>
			<?php endforeach  ?>
 
		</div>
	</div>
</div>