<div class="section-block">
	<div class="container">
		<div class="row">
			<div class="col">
				<a href="<?=HOST?>blog/category-new" class="button button-edit float-right" >Создать категорию</a>
				<h1>Все категории</h1>
			</div>
		</div>
			<div class="row">
			
			<table class="table"
				<thead>
					<tr>
						<th scope="col">id</th>
						<th scope="col">Название</th>
						<th scope="col">Редактировать</th>
						<th scope="col">Удалить</th>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($cats as $cat): ?>
						<tr>
							<th scope="row"><?=$cat['id'];?></th>
							<td><?=$cat['catTitle'];?></td>
							<td>
								<a class="button button-edit" href="<?=HOST?>blog/category-edit?id=<?=$cat['id'];?>">Редактировать</a>
							</td>
							<td>
								<a class="button button-delete" href="<?=HOST?>blog/category-delete?id=<?=$cat['id'];?>">Удалить</a>
							</td>
						</tr>
					<?php endforeach ?>
				</tbody>
			</table>

		</div>
	</div>
</div>
