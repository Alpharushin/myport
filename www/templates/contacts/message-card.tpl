<div class="comment-user mb-20"><a class="button button-delete" href="<?=HOST?>messages-delete?id=<?=$message['id'];?>"> Удалить </a>
	<div class="comment-user__date"><?php echo rus_date("j F Y H:i ", strtotime($message['date_time'])); ?></div>

	<div class="comment-user-profile">
		<?php if ( $message->name != '') { ?>
			<span class="comment-user-profile__name"><?=$message->name?></span>&nbsp;
		<?php } ?>

		<a class="comment-user-profile__email" href="mailto:<?=$message->email?>"><?=$message->email?></a>

	</div>
	
	<?php if ( $message->message != '') { ?>
		<div class="comment-user__message"><?=$message->message?></div>
	<?php } ?>

	<?php if ( $message->message_file != '') { ?>
		<div class="comment-user__file">Прикрепленные файлы: <a target="_blank" href="<?=HOST.'usercontent/upload_files/'.$message->message_file?>"><?=$message->message_file_name_original?></a></div>
	<?php } ?>


</div>

