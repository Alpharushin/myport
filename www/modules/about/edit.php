<?php 

if ( !isAdmin() ) {
	header("Location: " . HOST);
	die;
}

$about = R::load('about', 1);

$errors = array();

if ( isset($_POST['aboutUpdate'])) {

	if ( trim($_POST['name']) == '') {
		$errors[] = ['title' => 'Введите Имя или Никнейм' ];
	}

	if ( trim($_POST['description']) == '') {
		$errors[] = ['title' => 'Введите описание' ];
	}

	if ( empty($errors)) {

		$about->name = htmlentities($_POST['name']);
		$about->description  = $_POST['description'];
		
		if ( isset($_FILES["photo"]["name"]) && $_FILES["photo"]["tmp_name"] != "" ) {
			
			// Write file image params in variables
			$fileName = $_FILES["photo"]["name"];
			$fileTmpLoc = $_FILES["photo"]["tmp_name"];
			$fileType = $_FILES["photo"]["type"];
			$fileSize = $_FILES["photo"]["size"];
			$fileErrorMsg = $_FILES["photo"]["error"];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			// Check file propertties on different conditions
			list($width, $height) = getimagesize($fileTmpLoc);
			if($width < 10 || $height < 10){
				$errors[] = 'Картинка не имеет размера';
			}
			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
			if($fileSize > 4194304) {
				$errors[] = 'Размер Вашей картинки превышает 4mb';
			} else if (!preg_match("/\.(gif|jpg|png)$/i", $fileName) ) {
				$errors[] = 'Тип расширения файла не jpg, gif или png';
			} else if ($fileErrorMsg == 1) {
				$errors[] = 'Неизвестная ошибка';
			}

			// Поверям установлен ли аватар у пользователя
			$photo = $about['photo'];
			$avatarFolderLocation = ROOT . 'usercontent/about/';

			// Если аватар уже установлен, то есть загружен ранее то удаляем файл аватара
			if($photo != ""){
				$picurl = $avatarFolderLocation . $photo; 	
				// Удаляем аватар
			    if (file_exists($picurl)) { unlink($picurl); }
			}

			// Перемещаем загруженный файл в нужную директорию
			$uploadfile = $avatarFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

			if ($moveResult != true) {
				$errors[] = 'Загрузка файла не удалась';
			}

			include_once( ROOT . "/libs/image_resize_imagick.php");
			
			$target_file =  $avatarFolderLocation . $db_file_name;
			$resized_file = $avatarFolderLocation . $db_file_name;
			$wmax = 222;
			$hmax = 222;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);

			$about->photo = $db_file_name;



		}

		R::store($about);
		header('Location: ' . HOST . "about");
		exit();
	}

}


// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/about/edit.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";	

?>