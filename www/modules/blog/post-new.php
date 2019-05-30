<?php 

if ( !isAdmin() ) {
	header("Location: " . HOST);
	die;
}

$cats = R::find('categories', 'ORDER BY id DESC');

// echo "<pre>";
// print_r($_POST);
// echo "</pre>";

$errors = array();

if ( isset($_POST['postNew'])) {

	if ( trim($_POST['postTitle']) == '') {
		$errors[] = ['title' => 'Введите Название поста' ];
	}

	if ( trim($_POST['postText']) == '') {
		$errors[] = ['text' => 'Введите Текст поста' ];
	}

	if ( empty($errors)) {
		$post = R::dispense('posts');
		$post->title = htmlentities($_POST['postTitle']);
		$post->text = $_POST['postText'];
		$post->date = time();
		$post->authorId = $_SESSION['logged_user']['id'];
		$post->dateTime = R::isoDateTime();
		$post->cat = htmlentities($_POST['cat']);

		if ( isset($_FILES["postImg"]["name"]) && $_FILES["postImg"]["tmp_name"] != "" ) {
			
			// Write file image params in variables
			$fileName = $_FILES["postImg"]["name"];
			$fileTmpLoc = $_FILES["postImg"]["tmp_name"];
			$fileType = $_FILES["postImg"]["type"];
			$fileSize = $_FILES["postImg"]["size"];
			$fileErrorMsg = $_FILES["postImg"]["error"];
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

			$postImgFolderLocation = ROOT . 'usercontent/blog/';

			// Перемещаем загруженный файл в нужную директорию
			$uploadfile = $postImgFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

			if ($moveResult != true) {
				$errors[] = 'Загрузка файла не удалась';
			}

			include_once( ROOT . "/libs/image_resize_imagick.php");
			
			$target_file =  $postImgFolderLocation . $db_file_name;
			$resized_file = $postImgFolderLocation . $db_file_name;
			$wmax = 920;
			$hmax = 620;
			$img = createThumbnailBig($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);
			$post->postImg = $db_file_name;

			$target_file =  $postImgFolderLocation . $db_file_name;
			$resized_file = $postImgFolderLocation . "320-" . $db_file_name;
			$wmax = 320;
			$hmax = 140;
			$img = createThumbnailCrop($target_file, $wmax, $hmax);

			$img->writeImage($resized_file);

			$post->postImgSmall = "320-" . $db_file_name;

		}


		R::store($post);

		header('Location: ' . HOST . "blog");
		exit();
	}
}

// $blogPost = ['title' => 'Заголовок поста', 'text' =>  'Текст поста'];

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/post-new.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>