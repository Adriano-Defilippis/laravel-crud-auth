-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Ott 14, 2019 alle 01:37
-- Versione del server: 10.4.6-MariaDB
-- Versione PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pets`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `cats`
--

CREATE TABLE `cats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `race` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img_cat_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `cats`
--

INSERT INTO `cats` (`id`, `name`, `race`, `created_at`, `updated_at`, `img_cat_id`, `user_id`) VALUES
(1, 'GAttino speranzosso', 'Soriano', '2019-10-13 18:49:32', '2019-10-13 18:49:32', 1, 1),
(2, 'Gattino Gajardo', 'Romana', '2019-10-13 21:19:16', '2019-10-13 21:19:16', 2, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `img_cats`
--

CREATE TABLE `img_cats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `img_cats`
--

INSERT INTO `img_cats` (`id`, `src`, `created_at`, `updated_at`) VALUES
(1, '/1_25_sapiente.jpg', '2019-10-13 18:49:32', '2019-10-13 18:49:32'),
(2, '/2_12_vitae.jpg', '2019-10-13 21:19:16', '2019-10-13 21:19:16');

-- --------------------------------------------------------

--
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_11_001_create_cats_table', 1),
(5, '2019_10_11_001_create_posts_table', 1),
(6, '2019_10_11_00_create_img_cats_table', 1),
(7, '2019_10_11_134901_add_foreing_key', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `created_at`, `updated_at`, `cat_id`) VALUES
(1, 'Corrupti laboriosam sint provident repudiandae est autem tempore exercitationem voluptatem.    gggggg', 'ggggg', '2019-10-13 19:50:36', '2019-10-13 19:50:36', 1),
(2, 'Corrupti laboriosam sint provident repudiandae est autem tempore exercitationem voluptatem.    gggggg', 'ggggg', '2019-10-13 19:52:18', '2019-10-13 19:52:18', 1),
(3, 'Corrupti laboriosam sint provident repudiandae est autem tempore exercitationem voluptatem.    gggggg', 'ggggg', '2019-10-13 19:55:48', '2019-10-13 19:55:48', 1),
(4, 'sss', 'sssssssssss ccccccccccccccccc', '2019-10-13 19:57:04', '2019-10-13 19:57:04', 1),
(5, 'xfg', 'sdfsdfgsdfg', '2019-10-13 19:58:34', '2019-10-13 19:58:34', 1),
(6, 'xfg', 'sdfsdfgsdfg', '2019-10-13 20:00:32', '2019-10-13 20:00:32', 1),
(7, 'sss', 'sssssss', '2019-10-13 20:03:29', '2019-10-13 20:03:29', 1),
(8, 'sss', 'sssssss', '2019-10-13 20:14:55', '2019-10-13 20:14:55', 1),
(9, 'ioio', 'ioioioioi', '2019-10-13 21:26:01', '2019-10-13 21:26:01', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'GAttino speranzosso', 'aaaaadsdfsdfddda@gggg.com', NULL, '$2y$10$OSRsgv8208axOMyk9IML2OzPNrebSg2vsVZ0IJFLwYi/ivtC/Q4Da', NULL, '2019-10-13 18:49:32', '2019-10-13 18:49:32'),
(2, 'Gattino Gajardo', 'prov22322212222@hotm.it', NULL, '$2y$10$ABDQAiOFo.Y4iUNc95bwM.kOsbRpgTH5N2CZSwwiVrocfccPaeaye', NULL, '2019-10-13 21:19:16', '2019-10-13 21:19:16');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cats_id_unique` (`id`),
  ADD KEY `catImg` (`img_cat_id`),
  ADD KEY `userCat` (`user_id`);

--
-- Indici per le tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `img_cats`
--
ALTER TABLE `img_cats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `img_cats_src_unique` (`src`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indici per le tabelle `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postCat` (`cat_id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `cats`
--
ALTER TABLE `cats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `img_cats`
--
ALTER TABLE `img_cats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `cats`
--
ALTER TABLE `cats`
  ADD CONSTRAINT `catImg` FOREIGN KEY (`img_cat_id`) REFERENCES `img_cats` (`id`),
  ADD CONSTRAINT `userCat` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Limiti per la tabella `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `postCat` FOREIGN KEY (`cat_id`) REFERENCES `cats` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
