<?php 

$page_title = "Контакты";

$contacts = R::load('contacts', 1);

$errors = array();

if ( isset($_POST['newMessage'])) {

	if ( trim($_POST['name']) == '') {
		$errors[] = ['title' => 'Введите Ваше имя' ];
	}
	
	
	if ( trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите Ваш Email' ];
	}

	
	if ( trim($_POST['message']) == '') {
		$errors[] = ['title' => 'Введите Ваше сообщение' ];
	}

	if ( empty($errors)) {

		$message = R::dispense('messages');
		$message->email = htmlentities($_POST['email']);
		$message->name = htmlentities($_POST['name']);
		$message->message = htmlentities($_POST['message']);
		$message->date_time = R::isoDateTime();

		if ( isset($_FILES["file"]["name"]) && $_FILES["file"]["tmp_name"] != "" ) {

			// Write file image params in variables
			$fileName = $_FILES["file"]["name"];
			$fileTmpLoc = $_FILES["file"]["tmp_name"];
			$fileType = $_FILES["file"]["type"];
			$fileSize = $_FILES["file"]["size"];
			$fileErrorMsg = $_FILES["file"]["error"];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;

			if($fileSize > 4194304) {
				$errors[] = 'Ваш файл весит больше чем 4mb';
			} else if (!preg_match("/\.(gif|jpg|png|pdf|doc)$/i", $fileName) ) {
				$errors[] = 'Файл должен иметь следующие расширения: jpg, gif, png, pdf, doc';
			} else if ($fileErrorMsg == 1) {
				$errors[] = 'Неизвестная ошибка';
			}

			$postMessageFolderLocation = ROOT . 'usercontent/upload_files/';

			// Перемещаем загруженный файл в нужную директорию
			$uploadfile = $postMessageFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

			if ($moveResult != true) {
				$errors[] = 'Загрузка файла не удалась';
			}

			$message->message_file_name_original = $fileName;
			$message->message_file = $db_file_name;

		}

		R::store($message);
		header('Location: ' . HOST . "contacts");
		exit();

	}

}


ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/contacts.tpl";
$content = ob_get_contents();
ob_end_clean();


include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";		
		
?>