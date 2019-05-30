<?php 



$errors = array();

$currentUser = $_SESSION['logged_user'];



$user = R::load('users', $currentUser->id);


if ( isset($_POST['profile-update'])) {

	if ( trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите Email' ];
	}

	if ( trim($_POST['name']) == '') {
		$errors[] = ['title' => 'Введите Ваше имя' ];
	}

	if ( trim($_POST['secondname']) == '') {
		$errors[] = ['title' => 'Введите Вашу фамилию' ];
	}

	if ( empty($errors)) {

		$user->name = htmlentities($_POST['name']);
		$user->secondname = htmlentities($_POST['secondname']);
		$user->email = htmlentities($_POST['email']);
		$user->city = htmlentities($_POST['city']);
		$user->country = htmlentities($_POST['country']);

		if ( isset($_FILES["avatar"]["name"]) && $_FILES["avatar"]["tmp_name"] != "" ) {
			
			// Write file image params in variables
			$fileName = $_FILES["avatar"]["name"];
			$fileTmpLoc = $_FILES["avatar"]["tmp_name"];
			$fileType = $_FILES["avatar"]["type"];
			$fileSize = $_FILES["avatar"]["size"];
			$fileErrorMsg = $_FILES["avatar"]["error"];
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
			$avatar = $user['avatar'];
			$avatarFolderLocation = ROOT . 'usercontent/avatar/';

			// Если аватар уже установлен, то есть загружен ранее то удаляем файл аватара
			if($avatar != ""){
				$picurl = $avatarFolderLocation . $avatar; 	
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

			$user->avatar = $db_file_name;


			$target_file =  $avatarFolderLocation . $db_file_name;
			$resized_file = $avatarFolderLocation . "48-" . $db_file_name;
			$wmax = 48;
			$hmax = 48;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);

			$user->avatarSmall = "48-" . $db_file_name;

		}

		R::store($user);
		$_SESSION['logged_user'] = $user;
		$currentUser = $_SESSION['logged_user'];
		header('Location: ' . HOST . "profile");
		exit();
	}


}




ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/profile/profile-edit.tpl";
$content = ob_get_contents();
ob_end_clean();


include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

 ?>