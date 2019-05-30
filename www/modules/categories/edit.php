<?php 

if ( !isAdmin() ) {
	header("Location: " . HOST);
	die;
}

$cat = R::load('categories', $_GET['id']);


$errors = array();

if ( isset($_POST['catEdit'])) {

	if ( trim($_POST['catTitle']) == '') {
		$errors[] = ['title' => 'Введите Название категории' ];
	}



	if ( empty($errors)) {
		$cat->catTitle = htmlentities($_POST['catTitle']);

		R::store($cat);

		header('Location: ' . HOST . "blog/categories");
		exit();
	}
}


ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/categories/edit.tpl";
$content = ob_get_contents();
ob_end_clean();


include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>