<?php 

if ( !isAdmin() ) {
	header("Location: " . HOST);
	die;
}

$post = R::load('posts', $_GET['id']);
 if ( isset($_POST['postDelete'])) {
    R::trash($post);
    R::exec('DELETE FROM comments WHERE post_id=' . $_GET['id']);
		header('Location: ' . HOST . "blog");
		exit();
		}
// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/post-delete.tpl";
$content = ob_get_contents();
ob_end_clean();
// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
?>
