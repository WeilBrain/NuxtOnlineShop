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
-- База данных: `reviews_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `star` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `avatar` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `type`, `star`, `title`, `description`, `avatar`, `user`, `location`, `createdAt`, `updatedAt`) VALUES
(1, 'reviews', 5, 'Great Experience!', 'We had a wonderful experience with Estatein. The team was extremely helpful and knowledgeable, and they helped us find the perfect home.', '/Reviews/profile.png', 'Samantha Smith', 'Canada, Toronto', '2024-02-18 13:05:52', '2024-02-18 13:05:52'),
(2, 'reviews', 4, 'Highly Recommend!', 'We are very satisfied with Estatein\'s service. They listened to our needs and found us a beautiful home in a great location.', '/Reviews/profile.png', 'Michael Johnson', 'UK, London', '2024-02-18 13:05:52', '2024-02-18 13:05:52'),
(3, 'reviews', 5, 'Amazing Service', 'Estatein provided excellent service from start to finish. Their attention to detail and responsiveness exceeded our expectations.', '/Reviews/profile.png', 'Emily Davis', 'Australia, Sydney', '2024-02-18 13:05:52', '2024-02-18 13:05:52'),
(4, 'reviews', 3, 'Good Experience', 'Overall, our experience with Estatein was positive. However, there were some delays in the process that could have been improved.', '/Reviews/profile.png', 'Christopher Brown', 'USA, New York', '2024-02-18 13:05:52', '2024-02-18 13:05:52'),
(5, 'reviews', 5, 'Incredible Team!', 'The Estatein team went above and beyond to help us find our dream home. They were patient, understanding, and knowledgeable.', '/Reviews/profile.png', 'Jessica White', 'Canada, Vancouver', '2024-02-18 13:05:52', '2024-02-18 13:05:52'),
(6, 'reviews', 4, 'Excellent Service', 'We were impressed by the level of professionalism and expertise demonstrated by Estatein. They made the home-buying process smooth and stress-free.', '/Reviews/profile.png', 'Daniel Taylor', 'Germany, Berlin', '2024-02-18 13:05:52', '2024-02-18 13:05:52'),
(7, 'reviews', 5, 'Top-notch Service', 'Estatein provided exceptional service throughout our home search. They were attentive to our needs and helped us find the perfect home for our family.', '/Reviews/profile.png', 'Sophia Martinez', 'USA, Florida', '2024-02-18 13:05:52', '2024-02-18 13:05:52'),
(8, 'reviews', 4, 'Great Support', 'The support and guidance provided by Estatein were invaluable during our home-buying journey. We are grateful for their assistance.', '/Reviews/profile.png', 'Alexander Rodriguez', 'UK, Manchester', '2024-02-18 13:05:52', '2024-02-18 13:05:52'),
(9, 'reviews', 5, 'Impressive Team', 'We were impressed by the professionalism and dedication of the Estatein team. They made the entire process easy and enjoyable.', '/Reviews/profile.png', 'Olivia Harris', 'Canada, Montreal', '2024-02-18 13:05:52', '2024-02-18 13:05:52'),
(10, 'reviews', 3, 'Satisfactory Experience', 'Our experience with Estatein was satisfactory overall. While there were some hiccups along the way, we appreciate their efforts in helping us find a home.', '/Reviews/profile.png', 'Matthew Wilson', 'Australia, Melbourne', '2024-02-18 13:05:52', '2024-02-18 13:05:52'),
(11, 'reviews', 5, 'Exceptional Service! 2', 'We cannot speak highly enough of Estatein\'s service. They made the home-buying process stress-free and enjoyable. Highly recommended!', '/Reviews/profile.png', 'Emma Thompson', 'USA, California', '2024-02-18 13:05:52', '2024-02-18 13:05:52'),
(12, 'reviews', 4, 'Highly Professional', 'Estatein demonstrated professionalism and expertise throughout our home search. We felt confident in their abilities and are thrilled with our new home.', '/Reviews/profile.png', 'David Turner', 'UK, London', '2024-02-18 13:05:52', '2024-02-18 13:05:52'),
(13, 'reviews', 5, 'Excellent Support', 'The support provided by Estatein was exceptional. They were always available to answer our questions and address any concerns.', '/Reviews/profile.png', 'Ava Clark', 'Canada, Toronto', '2024-02-18 13:05:52', '2024-02-18 13:05:52'),
(14, 'reviews', 4, 'Great Service', 'We had a great experience with Estatein. Their team was friendly, knowledgeable, and efficient. We are grateful for their assistance.', '/Reviews/profile.png', 'William Walker', 'Australia, Sydney', '2024-02-18 13:05:52', '2024-02-18 13:05:52'),
(15, 'reviews', 5, 'Fantastic Experience', 'Our experience with Estatein exceeded our expectations. They were professional, reliable, and went above and beyond to help us find our dream home.', '/Reviews/profile.png', 'Charlotte Evans', 'USA, New York', '2024-02-18 13:05:52', '2024-02-18 13:05:52'),
(16, 'reviews', 3, 'Average Service', 'Overall, our experience with Estatein was average. While they were helpful in finding us a home, there were some communication issues along the way.', '/Reviews/profile.png', 'Liam Roberts', 'Canada, Vancouver', '2024-02-18 13:05:52', '2024-02-18 13:05:52'),
(17, 'reviews', 5, 'Outstanding Team', 'Estatein\'s team was outstanding in every aspect. They were attentive, knowledgeable, and made the entire process seamless.', '/Reviews/profile.png', 'Ella Thompson', 'Germany, Berlin', '2024-02-18 13:05:52', '2024-02-18 13:05:52'),
(18, 'reviews', 4, 'Professional Service', 'We were impressed by the professionalism and expertise of the Estatein team. They guided us through every step of the home-buying process.', '/Reviews/profile.png', 'Noah Hill', 'USA, Florida', '2024-02-18 13:05:52', '2024-02-18 13:05:52'),
(19, 'reviews', 5, 'Highly Recommend!', 'We highly recommend Estatein to anyone looking to buy a home. Their team is dedicated, knowledgeable, and truly cares about their clients.', '/Reviews/profile.png', 'Sophie Green', 'UK, Manchester', '2024-02-18 13:05:52', '2024-02-18 13:05:52'),
(20, 'reviews', 4, 'Great Support', 'Estatein provided excellent support throughout our home search. They were responsive, helpful, and made the entire process smooth.', '/Reviews/profile.png', 'James Baker', 'Canada, Montreal', '2024-02-18 13:05:52', '2024-02-18 13:05:52');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
