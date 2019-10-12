-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Ott 12, 2019 alle 22:01
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
  `img_cat_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `cats`
--

INSERT INTO `cats` (`id`, `name`, `race`, `created_at`, `updated_at`, `img_cat_id`) VALUES
(1, 'corporis', 'Soluta atque qui.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 16),
(2, 'possimus', 'Sed quos in.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 8),
(3, 'est', 'Fuga omnis qui.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 25),
(4, 'soluta', 'Et eveniet quas.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 23),
(5, 'dolorem', 'Vel accusantium autem.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 11),
(6, 'enim', 'Molestiae eos.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 9),
(7, 'aliquid', 'Earum officiis.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 28),
(8, 'dicta', 'Totam quod.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 17),
(9, 'aut', 'Distinctio magnam aut.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 27),
(10, 'consequuntur', 'Quo quod et.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 14),
(11, 'accusamus', 'Quis qui.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 18),
(12, 'laudantium', 'At blanditiis quis.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 29),
(13, 'sit', 'Sunt eaque.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 3),
(14, 'ab', 'Et ipsam.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 7),
(15, 'asperiores', 'Assumenda beatae.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 22),
(16, 'possimus', 'Inventore non eligendi.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 20),
(17, 'sed', 'Eligendi qui.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 5),
(18, 'illum', 'Voluptates perspiciatis.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 19),
(19, 'consectetur', 'Nihil libero.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 6),
(20, 'numquam', 'Consequatur est delectus.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 30),
(21, 'ut', 'Non omnis.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 12),
(22, 'fugiat', 'Quis ut dolores.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 10),
(23, 'expedita', 'Odit dolorum.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 26),
(24, 'non', 'Voluptates sint dolorum.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 21),
(25, 'numquam', 'Enim ab.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 1),
(26, 'nesciunt', 'Natus esse.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 24),
(27, 'cumque', 'Quaerat laborum consequatur.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 13),
(28, 'distinctio', 'Soluta hic ut.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 15),
(29, 'esse', 'Quo amet ut.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 4),
(30, 'laboriosam', 'Libero sapiente animi.', '2019-10-11 18:52:24', '2019-10-11 18:52:24', 2);

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
(1, 'sapiente', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(2, 'ut', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(3, 'enim', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(4, 'eos', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(5, 'blanditiis', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(6, 'veritatis', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(7, 'aut', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(8, 'amet', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(9, 'in', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(10, 'non', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(11, 'culpa', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(12, 'error', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(13, 'tenetur', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(14, 'dolorem', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(15, 'ex', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(16, 'aliquam', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(17, 'ab', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(18, 'incidunt', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(19, 'quae', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(20, 'sunt', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(21, 'ipsa', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(22, 'placeat', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(23, 'expedita', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(24, 'a', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(25, 'molestiae', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(26, 'sequi', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(27, 'assumenda', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(28, 'ducimus', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(29, 'vitae', '2019-10-11 18:52:24', '2019-10-11 18:52:24'),
(30, 'rerum', '2019-10-11 18:52:24', '2019-10-11 18:52:24');

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
(5, '2019_10_11_00_create_img_cats_table', 1),
(6, '2019_10_11_134901_add_foreing_key', 1);

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
(1, 'Jack il gattino', 'prova@hotm.it', NULL, '$2y$10$Wvki6jxd.YZun9ZrUQZiIu9ClOHp2ufu/jIcvgsg32Fx/WdHkSvhu', NULL, '2019-10-11 20:04:12', '2019-10-11 20:04:12');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cats_id_unique` (`id`),
  ADD KEY `cats_img_cat_id_index` (`img_cat_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT per la tabella `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `img_cats`
--
ALTER TABLE `img_cats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `cats`
--
ALTER TABLE `cats`
  ADD CONSTRAINT `catImg` FOREIGN KEY (`img_cat_id`) REFERENCES `img_cats` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
