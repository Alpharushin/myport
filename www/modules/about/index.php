<?php 

$page_title = "Обо мне";

$about = R::load('about', 1);
$technologies = R::find('technologies');
$jobs = R::find('jobs', 'ORDER BY id DESC');

$skills = array();
foreach ($technologies as $technology) {
	$skills[] = $technology;
} 


ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/about/about.tpl";
$content = ob_get_contents();
ob_end_clean();


include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";		
		
?>