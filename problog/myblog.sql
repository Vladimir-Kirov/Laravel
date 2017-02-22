-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 22 фев 2017 в 12:48
-- Версия на сървъра: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Структура на таблица `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `likes`
--

INSERT INTO `likes` (`id`, `created_at`, `updated_at`, `post_id`) VALUES
(1, '2017-02-22 07:39:56', '2017-02-22 07:39:56', 5);

-- --------------------------------------------------------

--
-- Структура на таблица `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(24, '2014_10_12_000000_create_users_table', 1),
(25, '2014_10_12_100000_create_password_resets_table', 1),
(26, '2017_01_18_144758_create_tags_table', 1),
(27, '2017_01_18_144826_create_likes_table', 1),
(28, '2017_01_18_150414_create_posts_table', 1),
(29, '2017_01_19_200241_create_post_tag_table', 1);

-- --------------------------------------------------------

--
-- Структура на таблица `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `content`) VALUES
(1, '2017-02-21 12:48:52', '2017-02-21 12:48:52', 'learning laravel', 'This blog post will get you right on track with Laravel'),
(2, '2017-02-21 12:48:52', '2017-02-21 12:48:52', 'something else', 'Some other content'),
(3, '2017-02-21 13:59:23', '2017-02-21 13:59:23', 'laravel 5.4 is now released', 'Version 5.4 of Laravel is now officially released! This release has many new features, and improvements and here is quick video going over some of the highlights:'),
(5, '2017-02-21 17:33:28', '2017-02-21 17:33:28', 'laravel news', 'At Laracon 2013 in Washington D.C., Taylor announced the first official release cycle for the framework.  The way releases are setup is that a new version of Laravel is released every six months, one around June and another at the end of each year. Bug fixes are provided for six months and security fixes for one year.');

-- --------------------------------------------------------

--
-- Структура на таблица `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `post_tag`
--

INSERT INTO `post_tag` (`id`, `created_at`, `updated_at`, `post_id`, `tag_id`) VALUES
(1, '2017-02-21 13:59:23', '2017-02-21 13:59:23', 3, 1),
(3, '2017-02-21 17:33:28', '2017-02-21 17:33:28', 5, 2);

-- --------------------------------------------------------

--
-- Структура на таблица `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `tags`
--

INSERT INTO `tags` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2017-02-21 12:48:52', '2017-02-21 12:48:52', 'Tutorial'),
(2, '2017-02-21 12:48:52', '2017-02-21 12:48:52', 'Industry News');

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `email`, `first_name`, `password`, `remember_token`) VALUES
(1, '2017-02-21 12:53:21', '2017-02-22 07:43:35', 'test@test.gmail.com', 'Vladimir', '$2y$10$CvnQhC1/10wsEKAmTY2o6uW..kdGW1Lp2DLSilbmbi2xK86LewC.W', 'OinR6OWQbl809TZFGFymbzO9cJo1jnPMvyABnKK3HAnd4sUPHwBRj0p9YukF'),
(2, '2017-02-21 12:54:05', '2017-02-21 17:25:52', 'vladimir__kirov@abv.bg', 'Vladimir', '$2y$10$SeT4SFYEOyRi5wtjNNisyeLylCEG5nTmTLAdWuwbsyOu5XMGU9EXC', 'MgZcgVBodlLUa71uF09IuUU6RLJsXk36Oo0DwXt8SjqUrDMaFMcpbrt19ZSG'),
(3, '2017-02-21 17:01:16', '2017-02-21 17:06:42', 'ivan_lekushev@abv.bg', 'Ivan', '$2y$10$Y1S.yqp.IyOjgYEOYMgHr.DHo9WMVoXWV0pgvVwxf7VuXPP4RTe6q', 'KI8xnoqnDN7ySY1X5vIYtLv64BeEvyzadmifsS8u8S8qT1gOMRm0HCVA8Com'),
(4, '2017-02-21 17:25:58', '2017-02-21 17:27:02', 'petar_ivanov@abv.bg', 'Peter', '$2y$10$5mYDCzgevzhDht1oftebJ.Ag0ew.B381qTQtOiLUJiLAR0k5U5X3O', 'ifE4b4gnJf1SKRRso4E2jXoNG5X5Uu3whPGTX4AORDd36VDoVb2CJQSO4kAw');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
