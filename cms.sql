-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 03 2023 г., 16:43
-- Версия сервера: 5.7.39
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cms`
--

-- --------------------------------------------------------

--
-- Структура таблицы `goods_list`
--

CREATE TABLE `goods_list` (
  `goods_id` int(50) NOT NULL,
  `goods_num` text CHARACTER SET utf8 NOT NULL,
  `goods_name` text CHARACTER SET utf8 NOT NULL,
  `goods_cost` int(50) NOT NULL,
  `goods_value` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `goods_list`
--

INSERT INTO `goods_list` (`goods_id`, `goods_num`, `goods_name`, `goods_cost`, `goods_value`) VALUES
(1, '123jb13', 'чай', 100, 500),
(2, '12314jc14', 'кофе', 150, 300),
(3, '4224f2fwr', 'печенье', 120, 600),
(4, '1341fqerf', 'Газированная вода ', 90, 300);

-- --------------------------------------------------------

--
-- Структура таблицы `trade_list`
--

CREATE TABLE `trade_list` (
  `trade_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `goods_id` int(50) NOT NULL,
  `goods_value` int(50) NOT NULL,
  `trade_costs` int(50) NOT NULL,
  `tarde_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` int(50) NOT NULL,
  `user_login` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_pass` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_balance` int(50) NOT NULL,
  `user_data_reg` datetime NOT NULL,
  `user_status` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `user_login`, `user_pass`, `user_balance`, `user_data_reg`, `user_status`) VALUES
(1, '', '$2y$10$tvGhR3IyVaPqsLsKKiJqO.WTvufrEe31LUl5cuKU3WbsDYAqCxAt2', 0, '2023-06-03 15:33:09', 'user'),
(2, '2121w', '$2y$10$KkGQ7LLm5FicgMcnW8Ld4OWSLfs09L8YR7HAPKdZ./Q7k7XWJHKu.', 0, '2023-06-03 16:37:04', 'user');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `goods_list`
--
ALTER TABLE `goods_list`
  ADD PRIMARY KEY (`goods_id`);

--
-- Индексы таблицы `trade_list`
--
ALTER TABLE `trade_list`
  ADD PRIMARY KEY (`trade_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `goods_id` (`goods_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `goods_list`
--
ALTER TABLE `goods_list`
  MODIFY `goods_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `trade_list`
--
ALTER TABLE `trade_list`
  MODIFY `trade_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `trade_list`
--
ALTER TABLE `trade_list`
  ADD CONSTRAINT `trade_list_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `trade_list_ibfk_2` FOREIGN KEY (`goods_id`) REFERENCES `goods_list` (`goods_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
