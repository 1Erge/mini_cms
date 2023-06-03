<?php

//Подключение элементов html, head, стилей и заголовков html-документа
include_once "content/page_header.php";
include_once "content/nav_bar.php";

?>

<section>
	<h1>Профиль пользователя CMS</h1>
	<div id="profile_wrapper">
		<div id="profile_content">
			<p class="profile_content_p"><b>Логин: </b><?php echo $_SESSION['user_data']['user_login']; ?></p>
			<p class="profile_content_p"><b>Баланс: </b><?php echo check_balance($connect); ?></p>
			<p class="profile_content_p"><b>Дата регистрации: </b><?php echo $_SESSION['user_data']['user_data_reg']; ?></p>
			<div>
				<h2>Список приобретенных товаров:</h2>
				<?php goods_list($connect); ?>
			</div>
		</div>
	</div>
</section>

<?php

//Подключение футера документа
include_once "content/page_footer.php";

?>