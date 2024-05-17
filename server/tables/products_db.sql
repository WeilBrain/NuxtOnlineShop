-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 16 2024 г., 16:00
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `products_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products_img`
--

CREATE TABLE `products_img` (
  `id` int NOT NULL,
  `ShortProducts_id` int DEFAULT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `products_img`
--

INSERT INTO `products_img` (`id`, `ShortProducts_id`, `image_url`) VALUES
(1, 1, 'https://i.imgur.com/6aDVuY7.png'),
(2, 1, 'https://i.imgur.com/Bz6ZBft.png'),
(3, 1, 'https://i.imgur.com/YGaTCNC.png'),
(4, 1, 'https://i.imgur.com/pVIUP5I.png'),
(5, 1, 'https://i.imgur.com/gMmSjQi.png'),
(6, 1, 'https://i.imgur.com/B5R9hmp.png'),
(7, 1, 'https://i.imgur.com/5s3Izej.png'),
(8, 1, 'https://i.imgur.com/vZ1Qvx4.png'),
(9, 1, 'https://i.imgur.com/SSoURMY.png'),
(10, 1, 'https://i.imgur.com/2ZoOwxp.png');

-- --------------------------------------------------------

--
-- Структура таблицы `ShortProducts`
--

CREATE TABLE `ShortProducts` (
  `id` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int DEFAULT NULL,
  `description` text NOT NULL,
  `type` varchar(255) DEFAULT 'product',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bedroom` int DEFAULT NULL,
  `bathroom` int DEFAULT NULL,
  `villa` tinyint(1) DEFAULT '0',
  `location` varchar(255) DEFAULT NULL,
  `buildYear` int DEFAULT NULL,
  `propertySize` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `ShortProducts`
--

INSERT INTO `ShortProducts` (`id`, `image`, `title`, `price`, `description`, `type`, `createdAt`, `updatedAt`, `bedroom`, `bathroom`, `villa`, `location`, `buildYear`, `propertySize`) VALUES
(1, 'https://i.imgur.com/VnJQ3F2.png', 'Seaside Serenity Villa', 500000, 'Wake up to the soothing melody of waves. This beachfront villa offers...', 'product', '2024-02-15 13:56:21', '2024-04-15 15:19:06', 2, 1, 1, 'Moscow', 2024, 'small'),
(2, 'https://i.imgur.com/VnJQ3F2.png', 'Luxury Beachfront Villa', 99000, 'A stunning beachfront villa with breathtaking ocean views...', 'product', '2024-02-15 16:21:30', '2024-04-15 16:35:49', 4, 3, 1, 'Maldives', 2023, 'extra-large'),
(3, 'https://i.imgur.com/zcAnut7.png', 'Modern City Penthouse', 850000, 'A chic and modern penthouse apartment in the heart of the city...', 'product', '2024-02-15 16:21:30', '2024-04-15 15:19:11', 3, 2, 0, 'New York', 2024, 'extra-large'),
(4, 'https://i.imgur.com/RZ9Gun2.png', 'Rustic Countryside Retreat', 10000, 'A charming countryside cottage surrounded by rolling hills and nature trails...', 'product', '2024-02-15 16:21:30', '2024-04-15 17:44:32', 2, 1, 0, 'France', 2022, 'Small'),
(5, 'https://i.imgur.com/VnJQ3F2.png', 'Seaside Serenity Villa', 1100000, 'Wake up to the soothing melody of waves. This beachfront villa offers...', 'product', '2024-02-15 16:21:30', '2024-04-15 15:13:28', 5, 4, 1, 'USA', 2021, 'Medium'),
(6, 'https://i.imgur.com/zcAnut7.png', 'Mountain View Chalet', 720000, 'Escape to the mountains in this cozy chalet with panoramic views...', 'product', '2024-02-15 16:21:30', '2024-04-15 15:13:31', 3, 2, 0, 'Switzerland', 2019, 'Large'),
(7, 'https://i.imgur.com/RZ9Gun2.png', 'Tropical Paradise Retreat', 999999, 'Experience paradise in this luxurious tropical retreat with lush gardens...', 'product', '2024-02-15 16:21:30', '2024-04-15 16:35:56', 4, 3, 1, 'Costa Rica', 2015, 'Small'),
(8, 'https://i.imgur.com/VnJQ3F2.png', 'City Skyline Apartment', 501000, 'Enjoy city living in this stylish apartment overlooking the skyline...', 'product', '2024-02-15 16:21:30', '2024-04-15 16:36:07', 2, 2, 0, 'Singapore', 2020, 'extra-large'),
(9, 'https://i.imgur.com/zcAnut7.png', 'Lakefront Cabin', 499999, 'Relax by the lake in this charming cabin surrounded by nature...', 'product', '2024-02-15 16:21:30', '2024-04-15 16:36:11', 3, 1, 0, 'Canada', 2018, 'Small'),
(10, 'https://i.imgur.com/RZ9Gun2.png', 'Historic Townhouse', 890000, 'Step back in time in this beautifully restored historic townhouse...', 'product', '2024-02-15 16:21:30', '2024-04-15 15:13:56', 4, 2, 0, 'Italy', 2017, 'Large'),
(11, 'https://i.imgur.com/VnJQ3F2.png', 'Coastal Cottage', 680000, 'Escape to the coast in this quaint cottage with stunning sea views...', 'product', '2024-02-15 16:21:30', '2024-04-15 17:39:09', 2, 1, 1, 'Australia', 2012, 'Large'),
(12, 'https://i.imgur.com/zcAnut7.png', 'Ski Resort Chalet', 1050000, 'Hit the slopes from this cozy chalet in a prime ski resort location...', 'product', '2024-02-15 16:21:30', '2024-04-15 15:14:01', 4, 3, 0, 'Austria', 2014, 'Medium'),
(13, 'https://i.imgur.com/RZ9Gun2.png', 'Luxury Riverside Mansion', 2200000, 'Live in luxury in this grand mansion overlooking the river...', 'product', '2024-02-15 16:21:30', '2024-04-15 15:14:04', 6, 4, 1, 'England', 2013, 'Large'),
(14, 'https://i.imgur.com/VnJQ3F2.png', 'Desert Oasis Villa', 1500000, 'Experience luxury in the desert with this oasis villa retreat...', 'product', '2024-02-15 16:21:30', '2024-04-15 17:41:44', 5, 3, 1, 'Moscow', 2016, 'Small'),
(15, 'https://i.imgur.com/zcAnut7.png', 'Island Paradise Villa', 2800000, 'Escape to paradise on your own private island villa getaway...', 'product', '2024-02-15 16:21:30', '2024-04-15 15:14:10', 7, 5, 1, 'Bahamas', 2017, 'Medium'),
(16, 'https://i.imgur.com/RZ9Gun2.png', 'Historic Manor House', 1800000, 'Step into history in this majestic manor house with period features...', 'product', '2024-02-15 16:21:30', '2024-04-15 15:14:13', 8, 6, 1, 'Scotland', 2020, 'Small'),
(17, 'https://i.imgur.com/VnJQ3F2.png', 'Safari Lodge Retreat', 1350000, 'Embark on a safari adventure from this luxury lodge retreat in the wilderness...', 'product', '2024-02-15 16:21:30', '2024-04-15 15:14:15', 6, 4, 1, 'South Africa', 2018, 'Large'),
(18, 'https://i.imgur.com/zcAnut7.png', 'Scenic Vineyard Estate', 1950000, 'Indulge in the good life with this picturesque vineyard estate...', 'product', '2024-02-15 16:21:30', '2024-04-15 15:19:18', 5, 3, 1, 'Spain', 2022, 'extra-large'),
(19, 'https://i.imgur.com/RZ9Gun2.png', 'Beachfront Bungalow', 720000, 'Relax by the beach in this cozy bungalow with stunning ocean views...', 'product', '2024-02-15 16:21:30', '2024-04-15 15:14:22', 3, 2, 0, 'Mexico', 2023, 'Meduim'),
(20, 'https://i.imgur.com/VnJQ3F2.png', 'Mountainside Retreat', 980000, 'Escape to the mountains in this secluded retreat surrounded by nature...', 'product', '2024-02-15 16:21:30', '2024-04-15 15:19:16', 4, 3, 0, 'Canada', 2024, 'extra-large'),
(21, 'https://i.imgur.com/zcAnut7.png', 'Riverside Cabin', 580000, 'Unwind by the river in this charming cabin retreat with serene views...', 'product', '2024-02-15 16:21:30', '2024-04-15 17:41:46', 2, 1, 0, 'Moscow', 2024, 'Small');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products_img`
--
ALTER TABLE `products_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ShortProducts_id` (`ShortProducts_id`);

--
-- Индексы таблицы `ShortProducts`
--
ALTER TABLE `ShortProducts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products_img`
--
ALTER TABLE `products_img`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `ShortProducts`
--
ALTER TABLE `ShortProducts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `products_img`
--
ALTER TABLE `products_img`
  ADD CONSTRAINT `products_img_ibfk_1` FOREIGN KEY (`ShortProducts_id`) REFERENCES `ShortProducts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
