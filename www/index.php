<?php 


define('HOST', 'http://' . $_SERVER['HTTP_HOST'] . '/');


define('ROOT', dirname(__FILE__).'/');

require ROOT . "config.php";
require ROOT . "db.php";
require ROOT . "libs/functions.php";
session_start();


/* ..........................................

РОУТЕР

............................................. */


$uri =  $_SERVER["REQUEST_URI"];
$uri = rtrim($uri, "/"); 
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1);
$uri = explode('?', $uri);

switch ( $uri[0]) {
	case '':
		include "modules/main/index.php";
		break;


	case 'login':
		include "modules/login/login.php";
		break;

	case 'registration':
		include "modules/login/registration.php";
		break;

	case 'logout':
		include "modules/login/logout.php";
		break;

	case 'lost-password':
		include "modules/login/lost-password.php";
		break;

	case 'set-new-password':
		include "modules/login/set-new-password.php";
		break;

	case 'profile':
		include "modules/profile/index.php";
		break;

	case 'profile-edit':
		include "modules/profile/edit.php";
		break;

	case 'about':
		include "modules/about/index.php";
		break;

	case 'contacts':
		include "modules/contacts/index.php";
		break;

	case 'blog':
		include "modules/blog/index.php";
		break;

	case 'blog/post':
		include "modules/blog/post.php";
		break;


	case 'blog/post-new':
		include "modules/blog/post-new.php";
		break;

	case 'blog/categories':
		include "modules/categories/all.php";
		break;

	case 'blog/category-new':
		include "modules/categories/new.php";
		break;

	case 'blog/category-edit':
		include "modules/categories/edit.php";
		break;

	case 'blog/category-delete':
		include "modules/categories/delete.php";
		break;

	case 'contacts-edit':
		include "modules/contacts/edit.php";
		break;

	case 'messages':
		include "modules/contacts/messages.php";
		break;

	case 'messages-delete':
		include "modules/contacts/delete.php";
		break;

	case 'about-edit':
		include "modules/about/edit.php";
		break;

	case 'expirience-edit':
		include "modules/about/expirience-edit.php";
		break;
		
	case 'blog/post-edit':
		include "modules/blog/post-edit.php";
		break;
		
	case 'blog/del-post':
		include "modules/blog/del-post.php";
 		break;

	case 'blog/del-comment':
		include "modules/blog/del-comment.php";
		break;

	case 'works':
		include "modules/works/index.php";
		break;

	case 'works/work':
		include "modules/works/single.php";
		break;

	case 'works/work-new':
		include "modules/works/work-new.php";
		break;

	case 'works/work-edit':
		include "modules/works/work-edit.php";
        break;
		
	case 'works/work-delete':
		include "modules/works/work-delete.php";
		break;

	case 'blog/post-delete':
		include "modules/blog/delete.php";
		break;

	case 'blog/comment-delete':
		include "modules/blog/comment-delete.php";
		break;


	default:
		include "modules/main/index.php";
		break;
}

?>





