<?php

//Подключение основных сценариев из папки scripts/
include_once "scripts/main_scripts.php";
include_once "scripts/database_scripts.php";
include_once "scripts/profile_scripts.php";
include_once "scripts/goods_scripts.php";

//Запуск сессии
session_start();

//Запуск функций авторизации, регистрации, уничтожения сессии и приобретения товаров при выполнении условий внутри функций
user_reg($connect);
user_login($connect);
ses_destroy();
buy_goods($connect);

//Подключение сценария подгрузки контента страниц
include_once get_path_to_page();

?>