-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 25 2019 г., 03:23
-- Версия сервера: 5.6.38-log
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dosakh`
--

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(30) NOT NULL,
  `people` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `img`, `name`, `people`) VALUES
(1, 'https://upload.wikimedia.org/wikipedia/ru/2/20/Logo_yandex_taxi_app.png', 'Yandex Taxi', 143),
(2, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(3, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(4, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(5, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(6, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(7, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(8, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(9, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(10, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(11, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(12, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(13, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(14, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(15, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(16, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(17, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(18, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(19, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(20, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(21, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(22, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(23, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(24, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(25, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(26, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(27, 'https://www.iphones.ru/wp-content/uploads/2018/08/AB11513D-D751-4519-B1A6-439D18A36A67.jpeg', 'Taxi Vezi', 4334),
(28, '/image/solo.jpg', 'Solo', 4334);

-- --------------------------------------------------------

--
-- Структура таблицы `records`
--

CREATE TABLE `records` (
  `id` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `liked_user` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `records`
--

INSERT INTO `records` (`id`, `likes`, `group_id`, `title`, `text`, `img`, `liked_user`) VALUES
(1, 144, 28, 'Собственная система лайков на PHP и Ajax на сайте, система лайков для сайта', 'Это мы так удаляем лайк (как видно из названия функции.\r\nКак я писал в уроке про посты у нас для ускорения подсчета количества лайков в записях самого поста их количество также хранится (вместо использования функции COUNT() SQL - это нужно из-за особенностей движка InnoDB).\r\nМы конечно могли бы сделать два запроса: один добавлял бы запись в таблицу mc_likes, а второй изменял значение бы поле в mc_posts.\r\nОднако что если один из этих запросов окажется не удачным. Возникает несоответствие количеству лайков в поле поста и записей в таблице лайков.\r\nC помощью BEGIN ... COMMIT; мы превращаем обычные SQL - команды в транзакцию.\r\nЭто означает, что либо они выполнятся все вместе, либо ни одного - произойдет откат.\r\nТаким образом мы гарантируем, что команды не выполнятся по разнясь и данные не будут расходиться.\r\nЭто мы так удаляем лайк (как видно из названия функции.\r\nКак я писал в уроке про посты у нас для ускорения подсчета количества лайков в записях самого поста их количество также хранится (вместо использования функции COUNT() SQL - это нужно из-за особенностей движка InnoDB).\r\nМы конечно могли бы сделать два запроса: один добавлял бы запись в таблицу mc_likes, а второй изменял значение бы поле в mc_posts.\r\nОднако что если один из этих запросов окажется не удачным. Возникает несоответствие количеству лайков в поле поста и записей в таблице лайков.\r\nC помощью BEGIN ... COMMIT; мы превращаем обычные SQL - команды в транзакцию.\r\nЭто означает, что либо они выполнятся все вместе, либо ни одного - произойдет откат.\r\nТаким образом мы гарантируем, что команды не выполнятся по разнясь и данные не будут расходиться.', 'http://sib-okrug.ru/wp-content/uploads/2018/11/original_0.jpg', '1;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;2;'),
(2, 13, 28, 'Собственная система лайков на PHP и Ajax на сайте, система лайков для сайта', 'Это мы так удаляем лайк (как видно из названия функции.\r\nКак я писал в уроке про посты у нас для ускорения подсчета количества лайков в записях самого поста их количество также хранится (вместо использования функции COUNT() SQL - это нужно из-за особенностей движка InnoDB).\r\nМы конечно могли бы сделать два запроса: один добавлял бы запись в таблицу mc_likes, а второй изменял значение бы поле в mc_posts.\r\nОднако что если один из этих запросов окажется не удачным. Возникает несоответствие количеству лайков в поле поста и записей в таблице лайков.\r\nC помощью BEGIN ... COMMIT; мы превращаем обычные SQL - команды в транзакцию.\r\nЭто означает, что либо они выполнятся все вместе, либо ни одного - произойдет откат.\r\nТаким образом мы гарантируем, что команды не выполнятся по разнясь и данные не будут расходиться.\r\nЭто мы так удаляем лайк (как видно из названия функции.\r\nКак я писал в уроке про посты у нас для ускорения подсчета количества лайков в записях самого поста их количество также хранится (вместо использования функции COUNT() SQL - это нужно из-за особенностей движка InnoDB).\r\nМы конечно могли бы сделать два запроса: один добавлял бы запись в таблицу mc_likes, а второй изменял значение бы поле в mc_posts.\r\nОднако что если один из этих запросов окажется не удачным. Возникает несоответствие количеству лайков в поле поста и записей в таблице лайков.\r\nC помощью BEGIN ... COMMIT; мы превращаем обычные SQL - команды в транзакцию.\r\nЭто означает, что либо они выполнятся все вместе, либо ни одного - произойдет откат.\r\nТаким образом мы гарантируем, что команды не выполнятся по разнясь и данные не будут расходиться.', 'http://sib-okrug.ru/wp-content/uploads/2018/11/original_0.jpg', '1;2;2;2;2;2;2;2;2;2;2;2;1;');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `auth` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL,
  `datereg` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--


INSERT INTO `users` (`id`, `name`, `surname`, `email`, `password`, `token`, `auth`, `img`, `datereg`, `login`) VALUES
(1, 'Vladisav', 'Rodionov', 'vladislav.for@mail.ru', '$2y$10$8KMSEN5g8D69TqCYudA2veFTp9.2xgi08noyj7wcU0DM/yPxcizra', NULL, 1, '', '15.06.2019 11:07:59', 'Plugy'),
(2, 'Mdms', 'Nilotin', 'Nilotin@mail.ru', '$2y$10$7RL4UYdVkSvQHU1L2BTiIet1ZaSU1upF.KMufCCJqJ26I/2ehPmUS', '8227', 0, '', '16.06.2019 5:19:49', 'Workout'),
(3, 'Vlad', 'Rodionov', 'vladislavs.for@mail.ru', '$2y$10$s6UipjQwPlmMzEw2zHKSLObvDjnS5sfQ4fOhZSkBfDq4jVonswOpm', NULL, 1, '', '25.06.2019 3:08:19', 'Porns');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `records`
--
ALTER TABLE `records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
