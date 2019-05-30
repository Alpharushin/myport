-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 30 2019 г., 19:36
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `portfolio`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`, `photo`) VALUES
(1, 'Аяз Валиуллин ', '<p><strong>Всем привет)</strong><br />\r\nЯ веб разработчик из Казани. Занимаюсь разработкой современных сайтов и приложений , развиваю искусственный интеллект , робототехнику .</p>\r\n\r\n<p><strong>Чуток преувеличил)</strong><br />\r\nИзучаю Фронтенд , дружу с Бэкендом. Учу 2 иностранных языка , гоняю блиц в шахматы ,изучаю историю , антропологию, также положительно отношусь к умеренным физическим нагрузкам</p>\r\n', '125468138.png');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(1, 'Наука и техника'),
(2, 'Разработка и программирование'),
(3, 'Видео игры'),
(4, 'Общие знания'),
(5, 'История');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `skype` varchar(255) NOT NULL,
  `vk` varchar(255) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `secondname` varchar(255) NOT NULL,
  `github` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `skype`, `vk`, `fb`, `tel`, `address`, `name`, `secondname`, `github`, `twitter`, `lat`, `lng`) VALUES
(1, 'lionayaz@gmail.com', 'alpharushin', 'https://vk.com/alpharushin', '', 'https://teleg.run/alpharushin', '<p><em>Россия , Республика Татарстан , город Казань</em></p>\r\n', 'Аяз', 'Валиуллин', 'https://github.com/Alpharushin', '', 55.824776, 49.147027);

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message_file_name_original` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message_file` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `date` int(11) UNSIGNED DEFAULT NULL,
  `cat` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `post_img`, `post_img_small`, `author_id`, `date_time`, `date`, `cat`) VALUES
(6, 'День памяти', '<p><strong>День Освобождения</strong> (<em>Tag der Befreiung</em>) , <strong>День Памяти </strong>или <strong>День Победы в Европе</strong> (<em>V-E Day</em>, <em>Victory in Europe Day</em>)</p>\r\n\r\n<p>8 мая&nbsp; в Германии и во всей Европе отмечают День освобождения от фашистского режима.</p>\r\n\r\n<p>День освобождения &ndash; не официальная дата. В Германии 8 мая &ndash; рабочий день. На государственном уровне праздник не отмечается.<br />\r\n&nbsp;</p>\r\n\r\n<p>На фото Монумент война-освободителя в Трептов-парке (Treptower Park)</p>\r\n', '959814741.jpg', '320-959814741.jpg', 1, '2019-05-08 16:12:50', 1557321170, 5),
(7, 'E3 2019', '<p>Ровно через месяц стартует долгожданный Е3<br />\r\n<br />\r\n<em><strong>что же призентует там Capcom?</strong></em></p>\r\n', '-626333300.jpg', '320--626333300.jpg', 1, '2019-05-10 23:55:13', 1557521713, 3),
(8, 'Скоро публикация', '<p>Идут последние преготовления перед публикацией сайта!<br />\r\nОсталось удалить различные артефакты , поправить пару косячков и милости прошу)</p>\r\n', '-232998473.jpg', '320--232998473.jpg', 1, '2019-05-28 17:58:54', 1559055534, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `technologies`
--

CREATE TABLE `technologies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `success` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `technologies`
--

INSERT INTO `technologies` (`id`, `name`, `success`) VALUES
(1, 'HTML', 60),
(2, 'CSS', 60),
(3, 'BootStr', 40),
(4, 'jQuery', 35),
(5, 'JS', 30),
(6, 'PHP', 65),
(7, 'Python', 25),
(8, 'MySQL', 65),
(9, 'Git', 50),
(10, 'Gulp', 30),
(11, 'Bower', 15);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `secondname` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT 'user',
  `avatar` varchar(191) DEFAULT NULL,
  `avatar_small` varchar(191) DEFAULT NULL,
  `recovery_code` varchar(191) DEFAULT NULL,
  `recovery_code_times` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `secondname`, `photo`, `country`, `city`, `role`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_times`) VALUES
(1, 'adminforexample@gmail.com', '$2y$10$Gdsqkcsx4clbJr2aEV2e9OxgoyyWfeMATYALNm.DRm7yDWav9BZh.', 'Аяз', 'Валиуллин', '', 'РФ', 'Казань', 'admin', '574366772.jpg', '48-574366772.jpg', NULL, NULL),
(2, 'userforexample@gmail.com', '$2y$10$aY1vS.xxZ4nR.M6IkuEVq.ex63glgzUZz8G8JA8S/V3QBXPpZOeIm', 'Будик', 'Путик', '', 'Япония', 'Токио', 'user', '1042004108.jpg', '48-1042004108.jpg', 'w4EQySb7uL5keYq', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `works`
--

CREATE TABLE `works` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `summary` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `technologies` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `github` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `work_img` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `work_img_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `works`
--

INSERT INTO `works` (`id`, `title`, `summary`, `technologies`, `link`, `github`, `work_img`, `work_img_small`) VALUES
(2, 'JS модуль паттерн', '<p>Простейшая анимации на Джеквери</p>\r\n', '<ul>\r\n	<li>jquery</li>\r\n	<li>JS</li>\r\n	<li>HTML/CSS</li>\r\n</ul>\r\n', 'https://alpharushin.github.io/JS-module-pattern', 'https://github.com/Alpharushin/JS-module-pattern', '67413744.png', '360-67413744.png'),
(3, 'Калькулятор- конструктор Солярис', '<p>Можно менять цвет автомобиля<br />\r\nТакже расчёт стоимости в долларах конвертируется в рубли в зависимости от комплектации</p>\r\n', '<ul>\r\n	<li>HTML/CSS</li>\r\n	<li>JS/Jquery/Ajax</li>\r\n</ul>\r\n', 'https://alpharushin.github.io/Solar-Calculator/', 'https://github.com/Alpharushin/Solar-Calculator', '-208270503.png', '360--208270503.png'),
(4, 'JS/Jqery форма', '<p>Захардкоденная форма регистрации , комментов с подключёнными скриптами<br />\r\nЧисто так побаловаться)</p>\r\n', '<ul>\r\n	<li>HTML/CSS/Bootstrap</li>\r\n	<li>JS/Jquery</li>\r\n</ul>\r\n', 'https://alpharushin.github.io/JS-Jqery-forms/index.html', 'https://github.com/Alpharushin/JS-Jqery-forms', '-416531006.png', '360--416531006.png'),
(5, 'Универсальная форма обратной связи', '<p>Форма обратной связи подразумевает отправку информации пользователем,<br />\r\nзатем введённая информация поступает на почту админа</p>\r\n', '<ul>\r\n	<li>PHP</li>\r\n	<li>HTML/CSS</li>\r\n</ul>\r\n', '', 'https://github.com/Alpharushin/php-universal-feedback-form', '679683017.png', '360-679683017.png'),
(6, 'Вёрстка бутстрап', '<p>Свёрстано на бутсрапе , просто для фана чтобы было)</p>\r\n', '<ul>\r\n	<li>HTML/CSS/Bootstrap</li>\r\n</ul>\r\n', 'https://alpharushin.github.io/MDB-site-project/', 'https://github.com/Alpharushin/MDB-site-project', '831905315.png', '360-831905315.png'),
(7, 'Игротека', '<p>Можно авторизироваться как админ , добавлять информацию о игре , вообщем всё весело)</p>\r\n', '<ul>\r\n	<li>HTML/CSS/Bootstrap</li>\r\n	<li>PHP/MySQL</li>\r\n</ul>\r\n', '', 'https://github.com/Alpharushin/igroteka', '907334518.png', '360-907334518.png'),
(8, 'Калькулятор Python', '<p>Простенький калькулятор на Python</p>\r\n', '<ul>\r\n	<li>Python</li>\r\n</ul>\r\n', '', 'https://github.com/Alpharushin/pythonCalc', '452090817.png', '360-452090817.png');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_comments_post` (`post_id`),
  ADD KEY `index_foreignkey_comments_user` (`user_id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

--
-- Индексы таблицы `technologies`
--
ALTER TABLE `technologies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `technologies`
--
ALTER TABLE `technologies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
