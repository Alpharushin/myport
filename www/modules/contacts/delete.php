<?php 

if ( !isAdmin() ) {
	header("Location: " . HOST);
	die;
}
		
    $messages = R::load('messages', $_GET['id']);
if ( isset($_POST['msgDelete'])) {
		R::trash($messages);
		header('Location: ' . HOST . "messages");
		exit();
}

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/delete.tpl";
$content = ob_get_contents();
ob_end_clean();


include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";		
		
?>