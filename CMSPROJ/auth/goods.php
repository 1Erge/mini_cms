<?php

//Подключение элементов html, head, стилей и заголовков html-документа
include_once "content/page_header.php";
include_once "content/nav_bar.php";

?>

<section>
	<h1>Список товаров CMS</h1>
	<div id="goods_wrapper">
		<?php goods_print($connect) ?>
	</div>
</section>

<?php

//Подключение футера документа
include_once "content/page_footer.php";

?>