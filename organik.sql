-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 27 2023 г., 11:50
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `organik`
--

-- --------------------------------------------------------

--
-- Структура таблицы `orderprod`
--

CREATE TABLE `orderprod` (
  `id` int(255) NOT NULL,
  `date` varchar(555) NOT NULL,
  `totalPrice` varchar(255) NOT NULL,
  `productID` int(255) NOT NULL,
  `amount` int(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `person`
--

CREATE TABLE `person` (
  `id` int(255) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phoneNumber` int(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `person`
--

INSERT INTO `person` (`id`, `fullName`, `email`, `address`, `phoneNumber`, `message`) VALUES
(72, 'alex', 'asdfadf@dafsdf', 'Kharkiv', 2147483647, 'dsa sdf sadf asd fasdf as as dfasd '),
(73, 'Sonia', 'sonia@com', 'Kuyv', 1231564135, 'vckmaslkdvnklsanvlna ad lkna;lkn an'),
(74, 'Dania', 'dania@com', 'Lviv', 2147483647, 'sdmnafn.sadfas saf dfasd fsadfasdf asd');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `category` varchar(256) NOT NULL,
  `description` varchar(500) NOT NULL,
  `additional` varchar(500) NOT NULL,
  `balance` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `discount`, `src`, `name`, `price`, `category`, `description`, `additional`, `balance`) VALUES
(1, '20.00', '/images/ourProducts/img-1.svg', 'Calabrese Broccoli', '13.00', 'Vegetable', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh nisl condimentum id venenatis a condimentum vitae sapien. Et malesuada fames ac turpis egestas integer eget aliquet nibh.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore gestas integer eget aliquet nibh.', 5),
(2, '20.00', '/images/ourProducts/img-2.svg', 'Fresh Banana Fruites', '14.00', 'Fresh', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh nisl condimentum id venenatis a condimentum vitae sapien. Et malesuada fames ac turpis eg', 'Nibh nisl condimentum id venenatis a condimentum vitae sapien. Et malesuada fames ac turpis egestas integer eget aliquet nibh.', 10),
(3, '20.00', '/images/ourProducts/img-3.svg', 'White Nuts', '15.00', 'Millets', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh nisl condimentum id venenatis a condimentum vitae sapien. Et malesuada fames ac turpis egestas integer eget aliquet nibh.', 'Nibh nisl condimentum id venenatis a condimentum vitae sapien. Et malesuada fames ac turpis egestas integer eget aliquet nibh.', 6),
(4, '20.00', '/images/ourProducts/img-4.svg', 'Vegan Red Tomato', '17.00', 'Vegetable', 'Nibh nisl condimentum id venenatis a condimentum vitae sapien. Et malesuada fames ac turpis egestas integer eget aliquet nibh.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh n', 45),
(5, '20.00', '/images/ourProducts/img-5.svg', 'Mung Bean', '11.00', 'Health', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ultrices eros in cursus turpis. Cursus vitae congue mauris rhoncus aenean vel elit scelerisque.', 'Cursus vitae congue mauris rhoncus aenean vel elit scelerisque.', 17),
(6, '20.00', '/images/ourProducts/img-6.svg', 'Brown Hazelnut', '12.00', 'Nuts', 'Ultrices eros in cursus turpis. Cursus vitae congue mauris rhoncus aenean vel elit scelerisque.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 52),
(7, '20.00', '/images/ourProducts/img-7.svg', 'Eggs', '17.00', 'Fresh', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem mollis aliquam ut porttitor leo a. Enim facilisis gravida neque convallis a cras semper auctor.', 'Lorem mollis aliquam ut porttitor leo a. Enim facilisis gravida neque convallis a cras semper auctor.', 1),
(8, '20.00', '/images/ourProducts/img-8.svg', 'Zelco Suji Elaichi Rusk', '15.00', 'Fresh', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dictum fusce ut placerat orci nulla pellentesque.', 'Dictum fusce ut placerat orci nulla pellentesque.', 36),
(9, '20.00', '/images/ourProducts/img-9.svg', 'Mung Bean', '11.00', 'Health', 'Dictum fusce ut placerat orci nulla pellentesque.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 3),
(10, '20.00', '/images/ourProducts/img-10.svg', 'White Hazelnut', '12.00', 'Nuts', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mauris pharetra et ultrices neque ornare aenean euismod elementum nisi.', 'Mauris pharetra et ultrices neque ornare aenean euismod elementum nisi.', 12),
(11, '20.00', '/images/ourProducts/img-11.svg', 'Fresh Corn', '17.00', 'Fresh', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim diam vulputate ut pharetra sit amet aliquam.', 'Enim diam vulputate ut pharetra sit amet aliquam.', 31),
(12, '', '/images/ourProducts/img-12.svg', 'Organic Almonds', '15.00', 'Fresh', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim diam vulputate ut pharetra sit amet aliquam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 23),
(13, '', '/images/ourProducts/img-13.svg', 'Mung Bean', '11.00', 'Vegetable', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dictumst quisque sagittis purus sit amet volutpat consequat mauris nunc.', 'Dictumst quisque sagittis purus sit amet volutpat consequat mauris nunc.', 96),
(14, '', '/images/ourProducts/img-14.svg', 'Brown Hazelnut', '12.00', 'Vegetable', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget nullam non nisi est.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 11),
(15, '', '/images/ourProducts/img-15.svg', 'Onion', '17.00', 'Vegetable', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fames ac turpis egestas maecenas pharetra convallis posuere.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 85),
(16, '20.00', '/images/ourProducts/img-16.svg', 'Cabbage', '17.00', 'Vegetable', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim ut tellus elementum sagittis vitae et leo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 131);

-- --------------------------------------------------------

--
-- Структура таблицы `tablefinishedorder`
--

CREATE TABLE `tablefinishedorder` (
  `id` int(255) NOT NULL,
  `order_id` int(255) NOT NULL,
  `amount_products` int(255) NOT NULL,
  `total_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `tablefinishedorder`
--

INSERT INTO `tablefinishedorder` (`id`, `order_id`, `amount_products`, `total_price`) VALUES
(5, 0, 0, ''),
(6, 0, 0, ''),
(7, 0, 0, ''),
(8, 0, 0, ''),
(9, 0, 0, ''),
(10, 0, 0, ''),
(11, 0, 0, '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `orderprod`
--
ALTER TABLE `orderprod`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tablefinishedorder`
--
ALTER TABLE `tablefinishedorder`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orderprod`
--
ALTER TABLE `orderprod`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=518;

--
-- AUTO_INCREMENT для таблицы `person`
--
ALTER TABLE `person`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `tablefinishedorder`
--
ALTER TABLE `tablefinishedorder`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
