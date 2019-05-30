<div class="container">
	<div class="row resume-wrap">
		<div class="col-md-4 col-lg-3 resume-avatar">
			<div class="avatar avatar-big">
				<?php 
				if ( $about->photo != '' ) {
					$photo = HOST . 'usercontent/about/' . $about->photo;
				} else {
					$photo = '/img/avatar-img/photo-big.jpg';
				}
				?>
				<img src="<?=$photo?>" alt=""/>
			</div>
		</div>
		<div class="col-md-8 col-lg-9 resume-content">
			<div class="resume-content--text">
				<h1><?=$about->name?></h1>
				<?=$about->description?>
			</div>
			<div class="resume-content--button"><a class="button button-regular" href="<?=HOST . 'about'?>"> Подробнее </a>
			</div>
		</div>
	</div>
</div>
<div class="line"></div>