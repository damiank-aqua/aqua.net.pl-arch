-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Czas generowania: 25 Lis 2019, 12:45
-- Wersja serwera: 5.7.26
-- Wersja PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `aqua.net.pl-arch`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_category`
--

DROP TABLE IF EXISTS `im_category`;
CREATE TABLE IF NOT EXISTS `im_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `label_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_polish_ci DEFAULT '',
  `content` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `position` int(11) DEFAULT '0',
  `status` varchar(3) COLLATE utf8_polish_ci DEFAULT 'on',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `label_id` (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_category`
--

INSERT INTO `im_category` (`category_id`, `label_id`, `name`, `content`, `position`, `status`, `description`, `date_create`, `date_modify`) VALUES
(4, 21, 'Oddział Legnica', '', 2, 'on', '', '2019-10-25 14:47:01', '2019-10-28 12:57:52'),
(5, 21, 'Centrala firmy - Zielona Góra', '', 1, 'on', '', '2019-10-25 14:47:15', '2019-10-28 12:56:46'),
(6, 21, 'Oddział Nowa Sól', '', 3, 'on', NULL, '2019-10-28 12:59:44', '2019-10-28 12:59:44'),
(7, 21, 'Oddział Głogów', '', 4, 'on', NULL, '2019-10-28 13:14:34', '2019-10-28 13:14:34'),
(8, 21, 'Oddział Jelenia Góra', '', 5, 'on', '', '2019-10-28 13:29:13', '2019-10-28 13:29:24'),
(9, 21, 'Oddział Śrem', '', 6, 'on', NULL, '2019-10-28 13:33:38', '2019-10-28 13:33:38'),
(10, 21, 'Oddział Wałcz', '', 7, 'on', NULL, '2019-10-28 13:36:14', '2019-10-28 13:36:14'),
(11, 21, 'Oddział Wrocław (Mokronoska)', '', 8, 'on', NULL, '2019-10-28 13:42:36', '2019-10-28 13:42:36'),
(12, 27, 'Odwodnienia liniowe', '', 9, 'on', 'Dostawcy', '2019-11-12 12:06:21', '2019-11-12 12:23:07'),
(13, 27, 'Manometry i termometry', '', 10, 'on', 'Dostawcy', '2019-11-12 12:25:27', '2019-11-12 12:25:37'),
(14, 27, 'Pompy', '', 11, 'on', 'Dostawcy', '2019-11-12 13:48:06', '2019-11-12 13:48:20'),
(15, 27, 'Elektrozawory', '', 12, 'on', 'Dostawcy', '2019-11-12 13:49:23', '2019-11-12 13:49:32'),
(16, 27, 'Studnie wodomierzowe', '', 13, 'on', 'Dostawcy', '2019-11-12 13:49:58', '2019-11-12 13:50:08'),
(17, 27, 'Armatura łazienkowa', '', 14, 'on', 'Dostawcy', '2019-11-12 13:50:35', '2019-11-12 13:50:44'),
(18, 27, 'Fontanny, baseny', '', 15, 'on', 'Dostawcy', '2019-11-12 13:51:24', '2019-11-12 13:52:34'),
(19, 27, 'Otulina', '', 16, 'on', 'Dostawcy', '2019-11-12 13:51:43', '2019-11-12 13:52:44'),
(20, 27, 'Armatura', '', 17, 'on', 'Dostawcy', '2019-11-15 08:50:38', '2019-11-15 08:50:52'),
(21, 27, 'Chemia', '', 18, 'on', 'Dostawcy', '2019-11-15 08:51:34', '2019-11-15 08:52:04'),
(22, 27, 'Czujniki poziomu cieczy', '', 19, 'on', 'Dostawcy', '2019-11-15 08:51:50', '2019-11-15 08:52:11'),
(23, 27, 'Elektropompki', '', 20, 'on', 'Dostawcy', '2019-11-15 08:52:31', '2019-11-15 08:53:41'),
(24, 27, 'Armatura gazowa', '', 21, 'on', 'Dostawcy', '2019-11-15 08:52:56', '2019-11-15 08:53:49'),
(25, 27, 'Kanalizacja wewnętrzna', '', 22, 'on', 'Dostawcy', '2019-11-15 08:53:21', '2019-11-15 08:53:55'),
(26, 27, 'Kanalizacja zewnętrzna', '', 23, 'on', 'Dostawcy', '2019-11-15 08:53:33', '2019-11-15 08:54:01'),
(27, 27, 'Kominy', '', 24, 'on', 'Dostawcy', '2019-11-15 08:54:23', '2019-11-15 08:55:30'),
(28, 27, 'Kształtki stalowe', '', 25, 'on', 'Dostawcy', '2019-11-15 08:54:36', '2019-11-15 08:55:38'),
(29, 27, 'Miedź', '', 26, 'on', 'Dostawcy', '2019-11-15 08:55:06', '2019-11-15 08:55:45'),
(30, 27, 'Oczyszczalnie, szamba', '', 27, 'on', 'Dostawcy', '2019-11-15 08:56:30', '2019-11-15 08:57:25'),
(31, 27, 'PE', '', 28, 'on', 'Dostawcy', '2019-11-15 08:56:46', '2019-11-15 08:57:32'),
(32, 27, 'PEX', '', 29, 'on', 'Dostawcy', '2019-11-15 08:56:53', '2019-11-15 08:57:41'),
(33, 27, 'PP', '', 30, 'on', 'Dostawcy', '2019-11-15 08:57:04', '2019-11-15 08:57:48'),
(34, 27, 'PVC klejone', '', 31, 'on', 'Dostawcy', '2019-11-15 08:58:11', '2019-11-15 08:58:23'),
(35, 27, 'Strażackie kształtki i węże', '', 32, 'on', 'Dostawcy\r\n', '2019-11-15 08:59:07', '2019-11-15 09:01:46'),
(36, 27, 'Studnie betonowe', '', 33, 'on', 'Dostawcy', '2019-11-15 08:59:34', '2019-11-15 09:01:53'),
(37, 27, 'Studnie wodomierzowe', '', 34, 'on', 'Dostawcy', '2019-11-15 08:59:52', '2019-11-15 09:02:00'),
(38, 27, 'Szybkozłącza', '', 35, 'on', 'Dostawcy', '2019-11-15 09:00:15', '2019-11-15 09:02:06'),
(39, 27, 'Technika grzewcza', '', 36, 'on', 'Dostawcy', '2019-11-15 09:00:37', '2019-11-15 09:02:22'),
(40, 27, 'Uchwyty do rur', '', 37, 'on', 'Dostawcy', '2019-11-15 09:00:56', '2019-11-15 09:02:30'),
(41, 27, 'Uzdatnianie wody', '', 38, 'on', 'Dostawcy', '2019-11-15 09:01:12', '2019-11-15 09:02:36'),
(42, 27, 'Wodomierze', '', 39, 'on', 'Dostawcy', '2019-11-15 09:01:26', '2019-11-15 09:02:44'),
(43, 27, 'Wymienniki', '', 40, 'on', 'Dostawcy', '2019-11-15 09:01:36', '2019-11-15 09:02:51'),
(44, 27, 'Zawory bezpieczeństwa', '', 41, 'on', NULL, '2019-11-15 09:03:28', '2019-11-15 09:03:28'),
(45, 27, 'Zawory instalacyjne', '', 42, 'on', NULL, '2019-11-15 09:03:44', '2019-11-15 09:03:44'),
(46, 27, 'Zbiorniki przeponowe', '', 43, 'on', NULL, '2019-11-15 09:04:14', '2019-11-15 09:04:14'),
(47, 27, 'Żeliwo, armatura', '', 44, 'on', NULL, '2019-11-15 09:04:33', '2019-11-15 09:04:33'),
(48, 27, 'Żeliwo drogowe', '', 45, 'on', NULL, '2019-11-15 09:04:55', '2019-11-15 09:04:55'),
(49, 27, 'Złączki elektrooporowe', '', 46, 'on', NULL, '2019-11-15 09:05:15', '2019-11-15 09:05:15'),
(50, 27, 'Nawodnienia', '', 47, 'on', NULL, '2019-11-15 13:05:44', '2019-11-15 13:05:44'),
(51, 29, 'Armatura', '', 48, 'on', 'faq', '2019-11-22 13:09:32', '2019-11-22 13:09:46'),
(52, 29, 'Instalacje gazowe', '', 49, 'on', 'faq', '2019-11-22 13:10:07', '2019-11-22 13:10:17'),
(53, 29, 'Instalacje wewnętrzne', '', 50, 'on', 'faq', '2019-11-22 13:10:37', '2019-11-22 13:10:45'),
(54, 29, 'Instalacje zewnętrzne', '', 51, 'on', 'faq', '2019-11-22 13:10:58', '2019-11-22 13:11:12'),
(55, 29, 'Nawadnianie', '', 52, 'on', 'faq', '2019-11-22 13:11:29', '2019-11-22 13:11:35'),
(56, 29, 'Ogrzewanie', '', 53, 'on', 'faq', '2019-11-22 13:11:59', '2019-11-22 13:12:06'),
(57, 29, 'Pompy', '', 54, 'on', 'faq', '2019-11-22 13:12:17', '2019-11-22 13:12:23'),
(58, 29, 'Uzdatnianie wody', '', 55, 'on', 'faq', '2019-11-22 13:12:38', '2019-11-22 13:12:44');

--
-- Wyzwalacze `im_category`
--
DROP TRIGGER IF EXISTS `im_category_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_category_insert_date_create` BEFORE INSERT ON `im_category` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_category_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_category_insert_date_modify` BEFORE INSERT ON `im_category` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_category_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_category_update_date_modify` BEFORE UPDATE ON `im_category` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_file`
--

DROP TABLE IF EXISTS `im_file`;
CREATE TABLE IF NOT EXISTS `im_file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_polish_ci DEFAULT '',
  `content` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `url` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `status` varchar(3) COLLATE utf8_polish_ci DEFAULT 'on',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_file`
--

INSERT INTO `im_file` (`file_id`, `name`, `content`, `url`, `status`, `description`, `date_create`, `date_modify`) VALUES
(4, 'Ogólne warunki sprzedaży (pdf)', '', 'ogolne-warunki-sprzedazy-87a9db6aa3d04c74aca75065a5b894d4.pdf', 'on', '', '2019-10-25 12:59:54', '2019-10-25 13:06:31'),
(5, 'Regulamin oraz katalog nagród (pdf)', '', 'regulamin-oraz-katalog-nagrod-8be0b8ac8707b3d0411c4153a7df1fd0.pdf', 'on', '', '2019-10-25 14:07:11', '2019-10-25 14:09:23'),
(6, 'Dział marketingu', '', 'marketing-81083b671a9d1ce40bfb1043c87bc810.pdf', 'on', 'Zielona Góra', '2019-10-25 14:35:46', '2019-10-25 14:42:55'),
(7, 'Magazynier - kierowca', '', 'mg_kr_leg-a01d333fcc96e663e5e8164c2565c83b.pdf', 'on', 'Legnica', '2019-10-25 14:43:40', '2019-10-25 14:43:49'),
(8, 'Doradca handlowy', '', 'hs_leg-11820afa0e93d62ca59f1dda1a03134e.pdf', 'on', 'Legnica', '2019-10-25 14:44:22', '2019-10-25 14:45:01'),
(9, 'Przedstawiciel handlowy', '', 'ph_leg-1c866e5dfd52025d678adf045dfbf9db.pdf', 'on', 'Legnica', '2019-10-25 14:44:50', '2019-10-25 14:45:11'),
(10, 'Specjalista ds. obsługi sklepu internetowego', '', 's_ds_si-ba0693315f19b375bda112aeb91d4021.pdf', 'on', 'Nowa Sól', '2019-10-28 13:02:37', '2019-10-28 13:03:59'),
(11, 'Przedstawiciel handlowy', '', 'ph_gl-c9a762649d9fe878f7b39e280039f051.pdf', 'on', 'Głogów', '2019-10-28 13:13:28', '2019-10-28 13:13:53'),
(12, 'Przedstawiciel handlowy', '', 'ph_jg-14b4d86eb7cdeeac8bfc085f4cfde8f1.pdf', 'on', 'Jelenia Góra', '2019-10-28 13:20:08', '2019-10-28 13:20:22'),
(13, 'Doradca handlowy', '', 'dh_jg-c41d3a76e0c5746eb6d39a106c174f5a.pdf', 'on', 'Jelenia Góra', '2019-10-28 13:20:44', '2019-10-28 13:20:55'),
(14, 'Przedstawiciel handlowy', '', 'pr_sr-1080ffe8144568182e7dcea7b528cbb1.pdf', 'on', 'Śrem', '2019-10-28 13:32:18', '2019-10-28 13:32:30'),
(15, 'Sprzedawca/Magazynier', '', 'sp_wal-0446a3e8f3b80bd512e96085465a15fa.pdf', 'on', 'Wałcz', '2019-10-28 13:38:33', '2019-10-28 13:38:45'),
(16, 'Przedstawiciel handlowy', '', 'ph_wr-1f04bcecb00e73aa68833fec61e17248.pdf', 'on', 'Wrocław (Mokronoska)', '2019-10-28 13:43:06', '2019-10-28 13:43:22'),
(17, 'Ulotka ogólna', '', 'ulotka_ogolna-07a0228e419800ae3ac223b0a1cf871e.pdf', 'on', '', '2019-10-31 09:28:02', '2019-10-31 09:33:28'),
(18, 'Ulotka pompy', '', 'ulotka_pompy-3d28d266e01ef748f3e630bae1f419e1.pdf', 'on', NULL, '2019-10-31 09:31:52', '2019-10-31 09:31:52'),
(19, 'Ulotka dla przemysłu', '', 'ulotka_przemysl-15999e1a2e1b740d2d8bd19d2b04e6ac.pdf', 'on', NULL, '2019-10-31 09:32:18', '2019-10-31 09:32:18'),
(20, 'Katalog \'\'systemy wodociągowe\'\'', '', 'systemy_wodociagowe-22c2de77c576eaf8929d0f5e8611011c.pdf', 'on', '', '2019-10-31 09:40:36', '2019-10-31 09:42:20'),
(21, 'Katalog \'\'kanalizacja zewnętrzna\'\'', '', 'kan_zew-4be84088072dcac2774c98241bb5341a.pdf', 'on', NULL, '2019-10-31 09:47:07', '2019-10-31 09:52:07'),
(22, 'Katalog \'\'sieci gazowe\'\'', '', 'sieci_gazowe-e71f8ade8462235ee9401fa245dfbf1c.pdf', 'on', NULL, '2019-10-31 09:47:33', '2019-10-31 09:52:14'),
(23, 'Katalog \'\'kanalizacja wewnętrzna\'\'', '', 'kan_wew-7200c0b6890e7c0f20f2e97594726c1f.pdf', 'on', NULL, '2019-10-31 09:47:55', '2019-10-31 09:52:21'),
(24, 'Katalog \'\'pompy\'\'', '', 'pompy-bca8fce760350ff9225c6ac43402664e.pdf', 'on', NULL, '2019-10-31 09:48:25', '2019-10-31 09:52:27'),
(25, 'Katalog \'\'taśmy ostrzegawcze\'\'', '', 'tasmy_ostrzegawcze-fc2b63beb6965c8166526db2e0a70d1c.pdf', 'on', NULL, '2019-10-31 09:48:59', '2019-10-31 09:52:34'),
(26, 'Katalog \'\'elektrozawory\'\'', '', 'zaworyelektromagn-e07b6269bd0ba66e0a74cd9772f22a52.pdf', 'on', NULL, '2019-10-31 09:49:34', '2019-10-31 09:49:34'),
(27, 'Katalog \'\'elektrozawory Watertop\'\'', '', 'elektro_water-a4a4ae2ca6597d90f3a3b10bc938ef32.pdf', 'on', NULL, '2019-10-31 09:50:03', '2019-10-31 09:52:43'),
(28, 'Katalog \'\'czujniki poziomu\'\'', '', 'czujniki_poziomu-c2f63a4316c57038674f1c2c3fc595f0.pdf', 'on', NULL, '2019-10-31 09:50:26', '2019-10-31 09:52:49'),
(29, 'Katalog \'\'wymienniki ciepła\'\'', '', 'wymienniki-b501b862ffa2f10678671b06b5cacf92.pdf', 'on', NULL, '2019-10-31 09:51:09', '2019-10-31 09:51:09'),
(30, 'Oferta dla przemysłu', '', 'oferta_przemysl-8767862393b001da85f7bb7873541057.pdf', 'on', '', '2019-10-31 09:51:42', '2019-10-31 11:08:43'),
(31, 'Oferta dla firm handlowych', '', 'oferta-dla-firm-handlowych-982843f096835f296b11aa76e4d99886.pdf', 'on', NULL, '2019-10-31 11:01:01', '2019-10-31 11:01:01'),
(32, 'Katalog \'\'obudowy studni glębinowych\'\'', '', 'obudowy-31ab90f61fb90aef43a994625e78baeb.pdf', 'on', '', '2019-10-31 11:01:48', '2019-10-31 11:08:00'),
(33, 'Katalog \'\'uzdatnianie wody\'\'', '', 'uzdatnianie_wody-4ea8eab687f3920ebed966730ecd314b.pdf', 'on', '', '2019-10-31 11:03:06', '2019-10-31 11:08:13'),
(34, 'Katalog \'\'armatura stalowa\'\'', '', 'armatura_stalowa-f69f88a7df2399b4bf3627854caed6f9.pdf', 'on', '', '2019-10-31 11:03:57', '2019-10-31 11:08:26'),
(35, 'Katalog \'\'automatyczne systemy nawadniające\'\'', '', 'aut-syst-naw-b25d035b9aabef9453d6d12a0b96cac0.pdf', 'on', NULL, '2019-10-31 11:06:39', '2019-10-31 11:06:39'),
(36, 'Katalog \'\'przydomowe oczyszczalnie ścieków\'\'', '', 'przydomowe_oczyszczalnie-9807e661edc55057804f1a3c484225c7.pdf', 'on', NULL, '2019-10-31 12:05:20', '2019-10-31 12:05:20'),
(37, 'Katalog \'\'fontanny\'\'', '', 'fontanny-c19dc95c0985d0be7bf242323103a2a8.pdf', 'on', NULL, '2019-10-31 12:26:32', '2019-10-31 12:26:32'),
(38, 'Oferta dla studniarzy', '', 'of_studniarze-f9ef21441da60008a2a8e8e66ce03b92.pdf', 'on', NULL, '2019-10-31 13:21:01', '2019-10-31 13:21:01'),
(39, 'Karta katalogowa', '', 'aco-e5086f26518337721602e3c29434cbb7.pdf', 'on', 'ACO', '2019-11-12 12:04:20', '2019-11-12 12:22:16'),
(40, 'Karta katalogowa', '', 'katalog_techniczno_cenowy_afriso-b8ae72801b7309c9cc5075c8efb7391b.pdf', 'on', 'Afriso', '2019-11-12 12:04:35', '2019-11-12 12:22:31'),
(41, 'Karta katalogowa', '', 'katalog_urzadzen_zatapialnych-6c2d255a7a2fd781b2c449acb3fcc988.pdf', 'on', 'Białogon', '2019-11-12 13:39:06', '2019-11-12 13:40:57'),
(42, 'Karta katalogowa', '', 'bwt_katalog_cennik-d896c8c46c85737bfd9f9ca69d58aaeb.pdf', 'on', 'BWT', '2019-11-12 13:41:18', '2019-11-12 13:41:27'),
(43, 'Karta katalogowa', '', 'katalog_danych_technicznych-38ede256ee6d754a88196ae8d70654ba.pdf', 'on', 'Crane', '2019-11-12 13:41:48', '2019-11-12 13:41:58'),
(44, 'Karta katalogowa', '', 'danfoss-b7eedc872d7318170ba390045534e25c.pdf', 'on', 'Danfoss', '2019-11-12 13:42:12', '2019-11-12 13:42:25'),
(45, 'Karta katalogowa', '', '9a8cccaf0c4e9e2ab6c9e5ee6a72dc75-34234932aaa5ff7b5850d676ddec4acf.pdf', 'on', 'Eotech', '2019-11-12 13:42:49', '2019-11-12 13:42:57'),
(46, 'Karta katalogowa', '', 'karta1-febf7bc689efe92dc5de71eb4305602a.pdf', 'on', 'Ferro', '2019-11-12 13:43:17', '2019-11-12 13:43:25'),
(47, 'Karta katalogowa', '', 'chemia_basenowa-02630c7aa292fbae38a04f97b51d054b.pdf', 'on', 'Fluidra', '2019-11-12 13:43:41', '2019-11-12 13:43:51'),
(48, 'Karta katalogowa', '', 'gazex-45802e87bef0283c85ddeb0170e2f180.pdf', 'on', 'Gazex', '2019-11-12 13:44:19', '2019-11-12 13:44:29'),
(49, 'Karta katalogowa', '', 'georgfisher-a8de1a91526a27837068333ab083faf1.pdf', 'on', 'GF plus', '2019-11-12 13:44:46', '2019-11-12 13:45:00'),
(50, 'Karta katalogowa', '', 'avk_cennik-fcb36c267978b4c7d8422d771a8c64cb.pdf', 'on', 'AVK', '2019-11-15 10:22:10', '2019-11-15 10:22:37'),
(51, 'Karta katalogowa', '', 'kataloggvr_eng-c01cafcea6032593f795099430d49088.pdf', 'on', 'GVR', '2019-11-15 10:23:53', '2019-11-15 10:24:01'),
(52, 'Karta katalogowa', '', 'hunter-0c13d6861df89a4db6e34169466cb672.pdf', 'on', 'Hunter', '2019-11-15 10:24:17', '2019-11-15 10:24:26'),
(53, 'Karta katalogowa', '', 'idmar-a65b008a9c89b12a44a34f9b90546d23.pdf', 'on', 'Idmar', '2019-11-15 10:24:43', '2019-11-15 10:24:50'),
(54, 'Karta katalogowa', '', 'catalogo_nocchi-9ccdff4a4cf5615c184f471254d9c2d6.pdf', 'on', 'Jung Pumpen', '2019-11-15 10:25:05', '2019-11-15 10:25:18'),
(55, 'Karta katalogowa', '', 'katalog_kan-kg-d7776de104843253b007441736762079.pdf', 'on', 'Kaczmarek', '2019-11-15 10:25:31', '2019-11-15 10:25:41'),
(56, 'Karta katalogowa', '', 'kanplast-d7a757b0aa541659710a2eceda2fc771.pdf', 'on', 'Kanplast', '2019-11-15 10:25:55', '2019-11-15 10:26:04'),
(57, 'Karta katalogowa', '', 'sbs_katalog-de93867540d9ad67d3aa331225af1cda.pdf', 'on', 'Keller', '2019-11-15 10:26:24', '2019-11-15 10:26:33'),
(58, 'Karta katalogowa', '', 'pompy-93e2359e845da26c993f11905f629a54.pdf', 'on', 'Lowara', '2019-11-15 10:26:48', '2019-11-15 10:26:56'),
(59, 'Karta katalogowa', '', 'czujniki_poziomu-31a53bcfd3147be06525ae5e88b3c007.pdf', 'on', 'MAC', '2019-11-15 10:27:10', '2019-11-15 10:27:17'),
(60, 'Karta katalogowa', '', 'magnaplast-fb194ee30bacb5ad7bc319f6ad1856a2.pdf', 'on', 'Magnaplast', '2019-11-15 10:27:31', '2019-11-15 10:27:40'),
(61, 'Karta katalogowa', '', 'sbs_katalog_2016-5a020d722cf86ec275aa49202ae4f0b2.pdf', 'on', 'Nanopanel', '2019-11-15 10:27:56', '2019-11-15 10:28:05'),
(62, 'Karta katalogowa', '', 'nmc-fb6ef778517234fa1371be3e9f55e129.pdf', 'on', 'NMC', '2019-11-15 10:28:21', '2019-11-15 10:28:28'),
(63, 'Karta katalogowa', '', 'catalogo_nocchi-52a9db2a8d1385a555ee33a45103a738.pdf', 'on', 'Nocchi', '2019-11-15 10:28:44', '2019-11-15 10:28:53'),
(64, 'Karta katalogowa', '', 'katalog_oase-b506b86df4ee450bb9cc71861ca7181a.pdf', 'on', 'Oase', '2019-11-15 10:29:05', '2019-11-15 10:29:20'),
(65, 'Karta katalogowa', '', 'elektrozawory-e817cbaf4f714da6ca65590d45e8a77b.pdf', 'on', 'ODE', '2019-11-15 10:29:37', '2019-11-15 10:29:44'),
(66, 'Karta katalogowa', '', 'perfexim-1f27f450872ab80337b018e3d2823225.pdf', 'on', 'Perfexim', '2019-11-15 10:30:17', '2019-11-15 10:30:25'),
(67, 'Karta katalogowa', '', 'rain-e6a5d306e8b66ded152c8272c98125ee.pdf', 'on', 'Rainbird', '2019-11-15 10:30:39', '2019-11-15 10:30:48'),
(68, 'Karta katalogowa', '', 'rain-955dee979c26deb54cfb5761f224e72b.pdf', 'on', 'Rain SPA', '2019-11-15 10:31:03', '2019-11-15 10:31:14'),
(69, 'Karta katalogowa', '', 'sanha-8549824bb09615ed7304e0cf82f9c587.pdf', 'on', 'Sanha', '2019-11-15 10:31:28', '2019-11-15 10:31:36'),
(70, 'Karta katalogowa', '', 'x-1c5b164ff395b035e73c44d88db5cbeb.pdf', 'on', 'Socla', '2019-11-15 10:31:53', '2019-11-15 10:32:01'),
(71, 'Karta katalogowa', '', 'solanka-przemyslowa-9fc3736275ffb735b3ef5aad63847b45.pdf', 'on', 'Solino', '2019-11-15 10:32:32', '2019-11-15 10:32:40'),
(72, 'Karta katalogowa', '', 'sotlarenz-88500f1b21a2220db016a208323b9e08.pdf', 'on', 'Sotlarentz', '2019-11-15 10:32:56', '2019-11-15 10:33:34'),
(73, 'Karta katalogowa', '', 'speroni-3e7b6c6ffae6bcfd1f65a4116c426b73.pdf', 'on', 'Speroni', '2019-11-15 10:33:50', '2019-11-15 10:33:59'),
(74, 'Karta katalogowa', '', 'spiroflex-aac5709bc69275f0a6b2234569062849.pdf', 'on', 'Spiroflex', '2019-11-15 10:34:16', '2019-11-15 10:34:37'),
(75, 'Karta katalogowa', '', 'przepompownie-31a18e48688e2319c87f5233dedfcc1c.pdf', 'on', 'Techneu', '2019-11-15 10:35:01', '2019-11-15 10:35:07'),
(76, 'Karta katalogowa', '', 'izolacje-techniczne-f0a659ea5f0efb99dd28a76e938edb4a.pdf', 'on', 'Thermaflex', '2019-11-15 10:35:21', '2019-11-15 10:35:53'),
(77, 'Karta katalogowa', '', 'tweetop-47f7bb64d472776bc51918631eff0a71.pdf', 'on', 'Tweetop', '2019-11-15 10:36:09', '2019-11-15 10:36:18'),
(78, 'Karta katalogowa', '', 'water_elektrozawory-eb7f76673bea3f05a6c2c105e8cf5ab3.pdf', 'on', 'Watertop', '2019-11-15 10:36:32', '2019-11-15 10:36:42'),
(79, 'Karta katalogowa', '', 'kanalizacjawewn-6224dd71c71842262b8df32b8fce5fcf.pdf', 'on', 'Wavin', '2019-11-15 10:36:56', '2019-11-15 10:38:12'),
(80, 'Karta katalogowa', '', 'wika1-e2e379ed69fc9f76f5931c7397ef0bd3.pdf', 'on', 'Wika', '2019-11-15 10:38:25', '2019-11-15 10:38:38'),
(81, 'Karta katalogowa', '', 'przydomowe_oczyszczalnie-2e8f8a68ebabc6c6f7dfe56cc9bf64d1.pdf', 'on', 'Wobet Hydret', '2019-11-15 10:38:52', '2019-11-15 10:39:04'),
(82, 'Karta katalogowa', '', 'zetkama-1a46202225961ca0850ee488af3b1c7e.pdf', 'on', 'Zetkama', '2019-11-15 10:39:20', '2019-11-15 10:39:30'),
(83, 'Karta katalogowa', '', 'norson-9cdeab1bf14b1038671f6062b7661513.pdf', 'on', 'Norson', '2019-11-15 13:35:54', '2019-11-15 13:36:06'),
(84, 'Karta katalogowa', '', 'rakoczy-d2bb9a0ebab3b24cb71679d75b30873b.pdf', 'on', 'Rakoczy', '2019-11-15 13:52:21', '2019-11-15 13:52:32'),
(85, 'Karta katalogowa', '', 'reflex-93965402b1289df142c612b991bbd2c7.pdf', 'on', 'Reflex', '2019-11-15 13:59:52', '2019-11-15 14:00:00'),
(86, 'Karta katalogowa', '', 'sp-a-sp-07-2015-056dcec056d10038c7d71906c5114244.pdf', 'on', 'Grundfos', '2019-11-15 14:32:57', '2019-11-15 14:33:24'),
(87, 'Karta katalogowa', '', 'gama-wilo-residential-a6ddd42fb294cf19cfd6545655e0764b.pdf', 'on', 'Wilo', '2019-11-15 14:34:02', '2019-11-15 14:34:13'),
(88, 'Promocja oddziału Wrocław 2', '<p>Obowiązuje od 01.08.2018 do wyczerpania zapas&oacute;w</p>', '2promocja_wroclaw-60f13dbe7ec314f03de7b74aeabf63dd.pdf', 'on', '', '2019-11-25 10:03:02', '2019-11-25 12:51:24'),
(89, 'Promocja oddziału Głogów', '<p>Obowiązuje od 01.08.2018 do wyczerpania zapas&oacute;w</p>', 'promogl_sierpien-6cba7255ff108e476c71f474dbc84f99.pdf', 'on', '', '2019-11-25 10:03:25', '2019-11-25 12:51:42'),
(90, 'Gazele Biznesu 2018', '', 'gazele_2018-eed9be75a02d9e716d9026c3c5d15ccb.pdf', 'on', NULL, '2019-11-25 13:11:31', '2019-11-25 13:11:31'),
(91, 'Favicon', '', 'favicon-7c7908cef398525b7f105b20d475ec25.ico', 'on', NULL, '2019-11-25 13:35:00', '2019-11-25 13:35:00');

--
-- Wyzwalacze `im_file`
--
DROP TRIGGER IF EXISTS `im_file_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_file_insert_date_create` BEFORE INSERT ON `im_file` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_file_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_file_insert_date_modify` BEFORE INSERT ON `im_file` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_file_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_file_update_date_modify` BEFORE UPDATE ON `im_file` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_form`
--

DROP TABLE IF EXISTS `im_form`;
CREATE TABLE IF NOT EXISTS `im_form` (
  `form_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `content` varchar(1024) COLLATE utf8_polish_ci DEFAULT '',
  `source` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `destination` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_image`
--

DROP TABLE IF EXISTS `im_image`;
CREATE TABLE IF NOT EXISTS `im_image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `section` int(11) DEFAULT '0',
  `name` varchar(64) COLLATE utf8_polish_ci DEFAULT '',
  `content` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `url` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `status` varchar(3) COLLATE utf8_polish_ci DEFAULT 'on',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_image`
--

INSERT INTO `im_image` (`image_id`, `section`, `name`, `content`, `url`, `status`, `description`, `date_create`, `date_modify`) VALUES
(1, 0, 'Moon', 'What are you doing?', '1.jpg', 'on', '', '2019-10-15 08:07:37', '2019-10-15 08:10:13'),
(2, 0, 'Winter tree', '', '2.jpg', 'on', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(3, 0, 'Cactuars', '', '3.jpg', 'on', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(4, 0, 'First slider', 'Content of first slider', 'slider-1.jpg', 'on', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(5, 0, 'Second slider', 'Content of second slider', 'slider-2.jpg', 'on', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(6, 0, 'Third slider', '', 'slider-3.jpg', 'on', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(7, 0, '16 HURTOWNI BRANŻY', '<span style=\"font-size: 30px;\">INSTALACYJNEJ, GRZEWCZEJ I POMPOWEJ</span><br>', 'slider-a47c2e4b11ee6373242c36b2e27cbeaa-e61628d97d1132c51a940af9419259f1.jpg', 'on', '', '2019-10-15 08:51:40', '2019-10-15 10:10:07'),
(8, 0, 'Technika pompowa', '', 'pompy-edcfbdd230681cbf8d7d9b21b2172cf4.png', 'on', '', '2019-10-15 10:13:47', '2019-10-15 10:27:56'),
(9, 0, 'Technika grzewcza', '', 'grzewcza-d43e97b92d54a18f2b813341db3dfeae.png', 'on', NULL, '2019-10-15 10:29:32', '2019-10-15 10:29:32'),
(10, 0, 'Systemy nawadniające', '', 'nawadnianie-933c43df2828800dd2710414cf92981a.png', 'on', NULL, '2019-10-15 11:04:11', '2019-10-15 11:04:11'),
(11, 0, 'Produkty specjalistyczne', '', 'specjalne-ccd0598a883a677043a65931e8ae32a0.png', 'on', NULL, '2019-10-15 11:04:49', '2019-10-15 11:04:49'),
(12, 0, 'Uzdatnianie wody', '', 'uzdatnianie-7f8303af72ff5e76c43560323b096af2.png', 'on', NULL, '2019-10-15 11:05:34', '2019-10-15 11:05:34'),
(13, 0, 'Programy partnerskie', '', 'szkolenia-95f8eb202fe2272db4e463c0a38e84f0.png', 'on', NULL, '2019-10-15 13:35:57', '2019-10-15 13:35:57'),
(14, 0, 'Wydarzenia', '', 'nowosci-217aa2658f24c465ad849ee9385ec9e2.png', 'on', NULL, '2019-10-15 13:36:17', '2019-10-15 13:36:17'),
(15, 0, 'Promocje', '', 'promocje-8a412630a3d53a627f4e02327e22a1d9.png', 'on', NULL, '2019-10-15 13:36:29', '2019-10-15 13:36:29'),
(16, 1, 'Logo', '', 'logo-07571f0da1e37de375fa8debb6f0e7b8.png', 'on', NULL, '2019-10-15 14:23:56', '2019-10-15 14:23:56'),
(17, 0, 'eu', '', 'eu-fa606eeb696124076172bd9cc6b68b6b.jpg', 'on', NULL, '2019-11-08 12:51:15', '2019-11-08 12:51:15'),
(18, 0, 'ACO', '', 'logo-6a4ff9f312c498826bc7d3b6282ec7d7.jpg', 'on', NULL, '2019-11-12 11:57:26', '2019-11-12 11:57:26'),
(19, 0, 'Afriso', '', 'logo-b108b4f5f785f74e1723752f17b28a4d.jpg', 'on', NULL, '2019-11-12 11:57:57', '2019-11-12 11:57:57'),
(20, 0, 'Białogon', '', 'logo-7337554c6bf78b9db6bf4b209c89a196.jpg', 'on', NULL, '2019-11-12 13:32:36', '2019-11-12 13:32:36'),
(21, 0, 'BWT', '', 'logo-68c5c8915e85ab7dc6bb59a02731f500.jpg', 'on', NULL, '2019-11-12 13:34:48', '2019-11-14 14:04:44'),
(22, 0, 'Crane', '', 'logo-cb5af86b8b9efc66c950adff78e0241e.jpg', 'on', NULL, '2019-11-12 13:35:17', '2019-11-12 13:35:17'),
(23, 0, 'Danfoss', '', 'logo-820cfa37577bb5c67ee9644cff3ff99f.jpg', 'on', NULL, '2019-11-12 13:35:32', '2019-11-12 13:35:32'),
(24, 0, 'Eotech', '', 'logo-a039cda561c788417d47630ff53f3725.jpg', 'on', NULL, '2019-11-12 13:35:46', '2019-11-12 13:35:46'),
(25, 0, 'Ferro', '', 'logo-5586667a68383a6022fa9bd78259f9ce.jpg', 'on', NULL, '2019-11-12 13:36:43', '2019-11-12 13:36:43'),
(26, 0, 'Fluidra', '', 'logo-37b91b643a2a724273fded495eb750ae.jpg', 'on', NULL, '2019-11-12 13:36:57', '2019-11-12 13:36:57'),
(27, 0, 'Folimpex', '', 'logo-e8b1cd1260c8d7e36faf1602c22133c6.jpg', 'on', NULL, '2019-11-12 13:37:21', '2019-11-12 13:37:21'),
(28, 0, 'Gazex', '', 'logo-9d01c0a9428c2db82f94eac38cc9058f.jpg', 'on', NULL, '2019-11-12 13:37:40', '2019-11-12 13:37:40'),
(29, 0, 'GF', '', 'logo-c72646117b2dda9c822d2bf07f13ecc4.jpg', 'on', NULL, '2019-11-12 13:38:32', '2019-11-12 13:38:32'),
(30, 0, 'Armak', '', 'logo-5742e04c67456aab9ce8487462f33152.jpg', 'on', '', '2019-11-15 09:09:27', '2019-11-15 11:02:19'),
(31, 0, 'GVR', '', 'logo-d5622fe1ff5a5938c882346406661996.jpg', 'on', NULL, '2019-11-15 09:10:27', '2019-11-15 09:10:27'),
(32, 0, 'Hunter', '', 'logo-e633c1eebc913a7fad32f5d5f597900f.jpg', 'on', NULL, '2019-11-15 09:10:39', '2019-11-15 09:10:39'),
(33, 0, 'Idmar', '', 'logo-c345edf6a38f9a2e77e65a8016360d93.jpg', 'on', NULL, '2019-11-15 09:10:51', '2019-11-15 09:10:51'),
(34, 0, 'Jung Pumpen', '', 'logo-6206f2480dc32e6953810d9190fa7145.jpg', 'on', NULL, '2019-11-15 09:11:08', '2019-11-15 09:11:08'),
(35, 0, 'Kaczmarek', '', 'logo-06cd9fa2805b850e05e1c51f9fd8987c.jpg', 'on', NULL, '2019-11-15 09:11:22', '2019-11-15 09:11:22'),
(36, 0, 'Kanplast', '', 'logo-e8887a37ac55c5fcb037b70c0b117756.jpg', 'on', NULL, '2019-11-15 09:11:34', '2019-11-15 09:11:34'),
(37, 0, 'Keller', '', 'logo-6659a0aa21f6846e7cf4bee15743da3b.jpg', 'on', NULL, '2019-11-15 09:11:47', '2019-11-15 09:11:47'),
(38, 0, 'Lowara', '', 'logo-72d49ecb647a4bb7f91bbca0ec7c02fa.jpg', 'on', NULL, '2019-11-15 09:11:58', '2019-11-15 09:11:58'),
(39, 0, 'MAC', '', 'logo-faef610a50eefde99ca742b4812cf2d9.jpg', 'on', NULL, '2019-11-15 09:12:12', '2019-11-15 09:12:12'),
(40, 0, 'Magnaplast', '', 'logo-834713aaf56fc9540b9e37b71132c06a.jpg', 'on', NULL, '2019-11-15 09:12:28', '2019-11-15 09:12:28'),
(41, 0, 'Nanopanel', '', 'logo-cac65126bb5ee9ff98ec47a1d9b587e0.jpg', 'on', NULL, '2019-11-15 09:12:40', '2019-11-15 10:08:31'),
(42, 0, 'NMC', '', 'logo-448955394dde65931289dd19a4dab0e9.jpg', 'on', NULL, '2019-11-15 09:12:52', '2019-11-15 09:12:52'),
(43, 0, 'Nocchi', '', 'logo-90d5eca68a8299637d75866bac84c822.jpg', 'on', NULL, '2019-11-15 09:13:05', '2019-11-15 09:13:05'),
(44, 0, 'Oase', '', 'logo-f8b8921d7aaa097e4ad41d3f67480f23.jpg', 'on', NULL, '2019-11-15 09:13:17', '2019-11-15 10:08:37'),
(45, 0, 'ODE', '', 'logo-21a41ca25f7a07d418087d150a5ef003.jpg', 'on', NULL, '2019-11-15 10:09:02', '2019-11-15 10:09:02'),
(46, 0, 'Pamline', '', 'logo-pamline-f18162ba2d0d79489db1fc86b69460da.png', 'on', NULL, '2019-11-15 10:09:24', '2019-11-15 10:09:24'),
(47, 0, 'Perfexim', '', 'logo-8bc9c94767ccad2d7ad5f7dbefcfde54.jpg', 'on', NULL, '2019-11-15 10:09:45', '2019-11-15 10:09:45'),
(48, 0, 'Rainbird', '', 'logo-2a460a52b8442e5d8b8142d7d6f8c779.jpg', 'on', NULL, '2019-11-15 10:10:11', '2019-11-15 10:10:11'),
(49, 0, 'Rain SPA', '', 'logo-16b75369ad8894dba3a51d71074a18da.jpg', 'on', NULL, '2019-11-15 10:10:28', '2019-11-15 10:10:28'),
(50, 0, 'Sanha', '', 'logo-4b2e522ddabde6a6638bd04cc59615db.jpg', 'on', NULL, '2019-11-15 10:10:45', '2019-11-15 10:10:45'),
(51, 0, 'Socla', '', 'logo-4ae68ece37d42616eb9edde5f7beef27.jpg', 'on', NULL, '2019-11-15 10:11:58', '2019-11-15 10:11:58'),
(52, 0, 'AVK', '', 'cp-40-690d80b8b619d511c64d7dea43825197.png', 'on', NULL, '2019-11-15 10:14:31', '2019-11-15 10:14:31'),
(53, 0, 'Solino', '', 'logo-c6225378ca220b2820fd0dbfa1e50ffd.jpg', 'on', NULL, '2019-11-15 10:14:48', '2019-11-15 10:14:48'),
(54, 0, 'Sotralentz', '', 'logo-fea472ecca28ed86b6ec1f81d9cdf1e9.jpg', 'on', NULL, '2019-11-15 10:15:52', '2019-11-15 10:15:52'),
(55, 0, 'Speroni', '', 'logo-4f5ae7dfbe8491befab6b1ce3e34d902.jpg', 'on', NULL, '2019-11-15 10:16:10', '2019-11-15 10:16:10'),
(56, 0, 'Spiroflex', '', 'logo-07150428af32a4cc8da8d085771ec845.jpg', 'on', NULL, '2019-11-15 10:16:27', '2019-11-15 10:16:27'),
(57, 0, 'Techneu', '', 'logo-266f0baaeea64cc994b11efb5c384008.jpg', 'on', NULL, '2019-11-15 10:17:51', '2019-11-15 10:17:51'),
(58, 0, 'Thermaflex', '', 'logo-9720b4cf17c66febb076308b7a5b2672.jpg', 'on', NULL, '2019-11-15 10:18:08', '2019-11-15 10:18:08'),
(59, 0, 'Tweetop', '', 'logo-5428e60b4f3eacec4c239d2c6257d6cc.jpg', 'on', NULL, '2019-11-15 10:18:27', '2019-11-15 10:18:27'),
(60, 0, 'Watertop', '', 'logo-299c1357af66e589759c4a33e751a290.jpg', 'on', NULL, '2019-11-15 10:18:41', '2019-11-15 10:18:41'),
(61, 0, 'Wavin', '', 'logo-488610de24eac074781b28f1e2c672a9.jpg', 'on', NULL, '2019-11-15 10:19:22', '2019-11-15 10:19:22'),
(62, 0, 'Wika', '', 'logo-68252e00b54b6520ac8d2f385b1720a9.jpg', 'on', NULL, '2019-11-15 10:19:34', '2019-11-15 10:19:34'),
(63, 0, 'Wobet-hydret', '', 'logo-6d1c5f55be3256c282439006b5b6bfe8.jpg', 'on', NULL, '2019-11-15 10:19:59', '2019-11-15 10:19:59'),
(64, 0, 'Zetkama', '', '300-40-0e72b1c967d2bae2b44a88e87cfae33a.png', 'on', NULL, '2019-11-15 10:21:02', '2019-11-15 10:21:02'),
(65, 0, 'Bewa', '', 'bewa-c99585e0a0f44980f0b8c8ba11ddd1f6.gif', 'on', '', '2019-11-15 11:12:36', '2019-11-15 11:14:34'),
(66, 0, 'Norson', '', 'logo-norson-1024x450-535f02c77f537f85d425eb7e2ae105ea.png', 'on', NULL, '2019-11-15 13:35:39', '2019-11-15 13:35:39'),
(67, 0, 'Rakoczy', '', 'rakoczy-logo-849dc2e30efccd1a795eaf5d377bcc82.png', 'on', NULL, '2019-11-15 13:52:09', '2019-11-15 13:52:09'),
(68, 0, 'Reflex', '', 'reflex-logo-1fe7340b4ee67e8180ce8f0b8fcc05cc.png', 'on', NULL, '2019-11-15 13:59:39', '2019-11-15 13:59:39'),
(69, 0, 'Wilo', '', 'wilo_4032984-73183b9662f84f09f79edf8c64956a07.jpg', 'on', '', '2019-11-15 14:30:36', '2019-11-15 14:37:38'),
(70, 0, 'Grundfos', '', 'logo_grundfos2-2faa1575a0776d35f22554ddd1719eb3.jpg', 'on', '', '2019-11-15 14:30:50', '2019-11-15 14:36:15'),
(71, 0, 'Poranny start z firmą Immergas', '', 'poranny-start-immergas-94e5a3c4f86553acec72c979edff0a4a.jpg', 'on', NULL, '2019-11-21 10:06:25', '2019-11-21 10:06:25'),
(72, 0, 'aeroklub 1', '', 'img_7950-fb1f27a4f475c1e7005321f316848474.jpg', 'on', NULL, '2019-11-21 10:59:03', '2019-11-21 10:59:03'),
(73, 0, 'aeroklub 2', '', 'img_7959-0ab6293f8db44e049f291205f5ef2cf2.jpg', 'on', NULL, '2019-11-21 10:59:17', '2019-11-21 10:59:17'),
(74, 0, 'aeroklub 3', '', 'img_8005-26be0eac612aa3e92986a5698ca94326.jpg', 'on', NULL, '2019-11-21 10:59:28', '2019-11-21 10:59:28'),
(75, 0, 'aeroklub 4', '', 'img_7949-7947bcdeb6cbb92fd18eb72a2d945d49.jpg', 'on', NULL, '2019-11-21 11:01:45', '2019-11-21 11:01:45'),
(76, 0, 'aeroklub 5', '', 'img_7976-e5d3e9a03245120e5e894bb4f78f8117.jpg', 'on', '', '2019-11-21 11:01:54', '2019-11-21 11:04:40'),
(77, 0, 'aeroklub 6', '', 'img_7987-c411bd53c11fe5d667dee8784dd11c7c.jpg', 'on', NULL, '2019-11-21 11:02:03', '2019-11-21 11:02:03'),
(78, 0, 'Poranny start w oddziale Nowa Sól', '', 'poranny-start-ns-91fd81147b7c8ca664c89798a9c59f67.jpg', 'on', NULL, '2019-11-21 11:51:25', '2019-11-21 11:51:25'),
(79, 0, 'Gazele biznesu 2017 1', '', '214594-c21195079ef7043a1c497241103b5ba2.jpg', 'on', '', '2019-11-21 12:15:21', '2019-11-21 12:15:32'),
(80, 0, 'Gazele biznesu 2017 2', '', '215202110956w_1600-7da8cb2fa39adda19322b2ceb0344e84.jpg', 'on', NULL, '2019-11-21 12:15:52', '2019-11-21 12:15:52'),
(81, 0, 'Grundfos - szkolenie dla doradców technicznych 1', '', '1_0-dcaca81fe1692f4322d6abd530dea551.jpg', 'on', '', '2019-11-21 12:17:03', '2019-11-21 12:17:24'),
(82, 0, 'Grundfos - szkolenie dla doradców technicznych 2', '', '2_2-f36c798582ad9dc10f8f252307c695e8.jpg', 'on', NULL, '2019-11-21 12:17:15', '2019-11-21 12:17:15'),
(83, 0, 'Lubin kręgle 1', '', '20180309_162940-1b2a26cb72d5925b2f7aad55466662a5.jpg', 'on', NULL, '2019-11-21 12:18:00', '2019-11-21 12:18:00'),
(84, 0, 'Lubin kręgle 2', '', '20180309_172941-ad031af06915fe9f825d15157874045c.jpg', 'on', NULL, '2019-11-21 12:18:09', '2019-11-21 12:18:09'),
(85, 0, 'Lubin kręgle 3', '', '20180309_174802-0e49c0c91a4fd4dd60204566b1f8a6a2.jpg', 'on', NULL, '2019-11-21 12:18:17', '2019-11-21 12:18:17'),
(86, 0, 'Lubin kręgle 4', '', '20180309_174817-08701974478c10e96064f6ac6f433ac0.jpg', 'on', NULL, '2019-11-21 12:18:26', '2019-11-21 12:18:26'),
(87, 0, 'Nowe oddziały 1', '', 'img-5cc94e4de9fdf32a53a9ca204a739663-v-7e2bf5b02aec055a1572bfb8a552313e.jpg', 'on', NULL, '2019-11-21 12:18:43', '2019-11-21 12:18:43'),
(88, 0, 'Nowe oddziały 2', '', 'img-70acff794e2ed08d1b12b6edc514d09d-v-639ce3dabf679baa6c90f1f2d058814b.jpg', 'on', NULL, '2019-11-21 12:18:58', '2019-11-21 12:18:58'),
(89, 0, 'Nowe oddziały 3', '', 'img-300c0242002641f0947b5fc93684de48-v-b20f955314dd7fa96891a94e7afd0d57.jpg', 'on', NULL, '2019-11-21 12:19:06', '2019-11-21 12:19:06'),
(90, 0, 'Oddział Lubin - otwarcie 1', '', '2_0-14656a9b9b2504b1f9d587768cbce066.jpg', 'on', '', '2019-11-21 12:19:34', '2019-11-21 12:19:51'),
(91, 0, 'Oddział Lubin - otwarcie 2', '', 'resized_20180518_105108-069a753075b7518b08b445c7a5c54676.jpeg', 'on', NULL, '2019-11-21 12:19:44', '2019-11-21 12:19:44'),
(92, 0, 'Oddział Lubin - otwarcie 3', '', 'resized_20180518_1210171-6fc7dd1372307202893456c45abf5096.jpeg', 'on', NULL, '2019-11-21 12:20:26', '2019-11-21 12:20:26'),
(93, 0, 'Oddział Lubin - otwarcie 4', '', 'resized_20180518_121407_0-0efcdaf823c1ce589a7070e6bb1e7bc4.jpeg', 'on', NULL, '2019-11-21 12:20:49', '2019-11-21 12:20:49'),
(94, 0, 'Poranny start w oddziale Lubin 1', '', 'dsc_0156-4524ec7c1421d0576b9f81b48f7ec350.jpg', 'on', NULL, '2019-11-21 12:21:12', '2019-11-21 12:21:12'),
(95, 0, 'Poranny start w oddziale Lubin 2', '', 'dsc_0157-50c0f4990c9f2dd8df4ee9deb94cf21e.jpg', 'on', NULL, '2019-11-21 12:21:20', '2019-11-21 12:21:20'),
(96, 0, 'Poranny start w oddziale Lubin 3', '', 'dsc_0161-c324b857138ed00c151db3e122d73127.jpg', 'on', NULL, '2019-11-21 12:21:29', '2019-11-21 12:21:29'),
(97, 0, 'Szkolenie z firmą Prandelli w oddziale Lubin 1', '', 'img_20180605_090955-a71311327fa2d18a0943c952c8a7a995.jpg', 'on', '', '2019-11-21 12:22:00', '2019-11-21 12:22:31'),
(98, 0, 'Szkolenie z firmą Prandelli w oddziale Lubin 2', '', 'img_20180605_091024-004a6b370fb4c52d243584fe729722b6.jpg', 'on', '', '2019-11-21 12:22:25', '2019-11-21 12:22:38'),
(99, 0, 'Szkolenie z firmą Prandelli w oddziale Lubin 3', '', 'img_20180605_091339-85b188a2ec98a17d30278837bcc10ad1.jpg', 'on', NULL, '2019-11-21 12:22:51', '2019-11-21 12:22:51'),
(100, 0, 'Szkolenie z firmą Rain SPA - Zielona Góra 1', '', 'resized_20180301_085323-ffe1d0e44788a0f2566d4e0899825d61.jpeg', 'on', NULL, '2019-11-21 12:23:27', '2019-11-21 12:23:27'),
(101, 0, 'Szkolenie z firmą Rain SPA - Zielona Góra 2', '', 'resized_20180301_093450_1-f3a3895616e9eeaad6886459fdd84e6b.jpeg', 'on', NULL, '2019-11-21 12:23:35', '2019-11-21 12:23:35'),
(102, 0, 'Spotkanie przy grillu - Głogów 1', '', 'gl_0-04cbfc7c99d8d8e83ccb8e1f9eff32e1.jpg', 'on', NULL, '2019-11-21 12:23:58', '2019-11-21 12:23:58'),
(103, 0, 'Spotkanie przy grillu - Głogów 2', '', 'gl2_2-554fed14ad9936e306261b61bd483ed5.jpg', 'on', NULL, '2019-11-21 12:24:14', '2019-11-21 12:24:14'),
(104, 0, 'Strzelnica - Śrem 1', '', 'obraz-003_fotor-c2eb1b49fac681fedc127a2c3d904612.jpg', 'on', NULL, '2019-11-21 12:28:13', '2019-11-21 12:28:13'),
(105, 0, 'Strzelnica - Śrem 2', '', 'obraz-005_fotor-b5f84cfc1d7ec1d616af258286570a52.jpg', 'on', NULL, '2019-11-21 12:28:21', '2019-11-21 12:28:21'),
(106, 0, 'Strzelnica - Śrem 3', '', 'obraz-010_fotor-a54222870c024cb3646d169b59705c26.jpg', 'on', NULL, '2019-11-21 12:28:30', '2019-11-21 12:28:30'),
(107, 0, 'Strzelnica - Śrem 4', '', 'obraz-014_fotor-20e9fc51a482a41ac44abcc3cc19dc69.jpg', 'on', NULL, '2019-11-21 12:28:41', '2019-11-21 12:28:41'),
(108, 0, 'Szybowce - Jelenia Góra 1', '', '1_1-b80469d87ceb846c4874885ffd37e27c.jpg', 'on', NULL, '2019-11-21 12:29:05', '2019-11-21 12:29:05'),
(109, 0, 'Szybowce - Jelenia Góra 2', '', '4-6d13809aeef01a3fff49fd2999c3522f.jpg', 'on', NULL, '2019-11-21 12:29:14', '2019-11-21 12:29:14'),
(110, 0, 'Szybowce - Jelenia Góra 3', '', '20180519_103857-9b5adc6a0557fdc9f8e1454a683df8c9.jpg', 'on', NULL, '2019-11-21 12:29:21', '2019-11-21 12:29:21'),
(111, 0, 'Szybowce - Jelenia Góra 4', '', '20180519_103905-c6913f32b2ed871e24057194a9dc860d.jpg', 'on', NULL, '2019-11-21 12:29:31', '2019-11-21 12:29:31'),
(112, 0, 'Szybowce - Jelenia Góra 5', '', '20180519_111356-9e66f81488d6f495f9cf25b4289e3c0a.jpg', 'on', NULL, '2019-11-21 12:29:39', '2019-11-21 12:29:39'),
(113, 0, 'Forbs 2018', '', 'forbs-2018-97a7a7536fc453b521025f662617383a.png', 'on', NULL, '2019-11-21 12:30:08', '2019-11-21 12:30:08'),
(114, 0, 'Grillowanie w oddziale Głogów', '', 'grillowanie-glogow-c8f08bd64723152ac2263f594745998d.png', 'on', NULL, '2019-11-21 12:30:32', '2019-11-21 12:30:32'),
(115, 0, 'Letnie wyprzedaże - Głogów', '', 'letnie-wyprzedarze-glogow-a7bf347c6956f6fc4838f8ffcc9e5de2.jpg', 'on', NULL, '2019-11-21 12:31:19', '2019-11-21 12:31:19'),
(116, 0, 'Letnie wyprzedaże - Wrocław 2', '', 'letnie-wyprzedarze-wroclaw2-6c634740038f92f17e9e34d0a2a1549e.jpg', 'on', NULL, '2019-11-21 12:31:37', '2019-11-21 12:31:37'),
(117, 0, 'Spotkanie przy grillu - oddział Śrem', '', 'spotkanie-przy-grillu-srem-8034da2a68edc43144e4f42822fbc437.jpg', 'on', NULL, '2019-11-21 12:32:42', '2019-11-21 12:32:42'),
(118, 0, 'Wesołych Świąt Wielkanocnych', '', 'wesolych-swiat_0-73706854a57f1f5600d8eb9ceb2e5a26.jpg', 'on', NULL, '2019-11-21 12:33:22', '2019-11-21 12:33:22'),
(119, 0, 'Forbs 2017 1', '', 'mierzecin_forbes_fotonation-165-3494edcccc9b7cd0c09eb1df3549eddf.jpg', 'on', '', '2019-11-22 10:05:55', '2019-11-22 10:09:18'),
(120, 0, 'Forbs 2017 2', '', 'mierzecin_forbes_fotonation-193-d265cbbea01f2d153866ed5251da7618.jpg', 'on', NULL, '2019-11-22 10:06:16', '2019-11-22 10:06:16'),
(121, 0, 'Forbs 2017 3', '', 'mierzecin_forbes_fotonation-222-9fc6b2c8ab09163fdb4eb49ce97de537.jpg', 'on', NULL, '2019-11-22 10:06:30', '2019-11-22 10:06:30'),
(122, 0, 'Forbs 2017 4', '', 'beznazwy-1-c512d3f64a5a582a4423ec86dca9e92d.png', 'on', NULL, '2019-11-22 10:06:44', '2019-11-22 10:06:44'),
(123, 0, 'Akcja autokarowa 1', '', 'beznazwy-1_8-f843a29b2612b1d9a071531543e2f339.jpg', 'on', '', '2019-11-22 10:17:14', '2019-11-22 10:28:59'),
(124, 0, 'Akcja autokarowa 2', '', 'beznazwy-1_6-615700531101e22d693e828a8567e1ca.jpg', 'on', '', '2019-11-22 10:17:26', '2019-11-22 10:29:06'),
(125, 0, 'Integracja 1', '', '10b-5e4a5468408af679b7480cf8df0c9254.jpg', 'on', NULL, '2019-11-22 10:31:23', '2019-11-22 10:31:23'),
(126, 0, 'Integracja 2', '', '2a-66ab9a55b4f2550dbad22bffa00682c1.jpg', 'on', NULL, '2019-11-22 10:31:37', '2019-11-22 10:31:37'),
(127, 0, 'Integracja 3', '', '8-0d598a3edffee23bb752c791f5975156.jpg', 'on', NULL, '2019-11-22 10:31:49', '2019-11-22 10:31:49'),
(128, 0, 'Integracja 4', '', '18-1b3ce683793eba7053859acd527c7b34.jpg', 'on', NULL, '2019-11-22 10:32:03', '2019-11-22 10:32:03'),
(129, 0, 'Integracja 5', '', '20-eaef45035f7e8db4bc46347faa327368.jpg', 'on', NULL, '2019-11-22 10:32:18', '2019-11-22 10:32:18'),
(130, 0, 'Mecz koszykówki - Zielona Góra', '', 'dsc_0221-9de892b572b999d1c767ecb328321f5a.jpg', 'on', NULL, '2019-11-22 10:38:13', '2019-11-22 10:38:13'),
(131, 0, 'Przełaj 1', '', 'trasa1_0-dd0342f4e9116eabaa426744876c3f2a.jpg', 'on', NULL, '2019-11-22 10:40:20', '2019-11-22 10:40:20'),
(132, 0, 'Przełaj 2', '', 'trasa2-13b64f84609889dbdb8aa2e2c0ad8e73.jpg', 'on', NULL, '2019-11-22 10:40:30', '2019-11-22 10:40:30'),
(133, 0, 'Przełaj 3', '', 'trasa3-7b73dd4c903e8a88148c0f854374c14c.jpg', 'on', NULL, '2019-11-22 10:40:41', '2019-11-22 10:40:41'),
(134, 0, 'Przełaj 4', '', 'trasa4-bce191e31f601f24828333360842fe5a.jpg', 'on', NULL, '2019-11-22 10:40:51', '2019-11-22 10:40:51'),
(135, 0, 'Start 1', '', '106-abf82beaba7fe31d408aa34bd5fd511a.jpg', 'on', NULL, '2019-11-22 11:03:20', '2019-11-22 11:03:20'),
(136, 0, 'Start 2', '', '101-d4a7129d14662142862636b11ec66297.jpg', 'on', NULL, '2019-11-22 11:03:32', '2019-11-22 11:03:32'),
(137, 0, 'Start 3', '', '102-3a865ed148d8843b468a092a3ab1cb7b.jpg', 'on', NULL, '2019-11-22 11:03:45', '2019-11-22 11:03:45'),
(138, 0, 'Start 4', '', '104-f993e066dc3b776b516106128078a97f.jpg', 'on', NULL, '2019-11-22 11:03:58', '2019-11-22 11:03:58'),
(139, 0, 'Start 5', '', '105-db03196e2befbc1ba06c970a2cf4764c.jpg', 'on', NULL, '2019-11-22 11:04:10', '2019-11-22 11:04:10'),
(140, 0, 'Start 6', '', '107-3cdf083c89be284487229e80a04ddd95.jpg', 'on', NULL, '2019-11-22 11:04:24', '2019-11-22 11:04:24'),
(141, 0, 'Działalność społeczna - Start', '', '12-7fcb7014c01682e83601fdb88824c2dd.png', 'on', '', '2019-11-22 11:08:41', '2019-11-22 11:08:56'),
(142, 0, 'Działalność społeczna - Start', '', 'psd_0-b4626f445f0fc35fb4bcf9f6c0d28edb.jpg', 'on', NULL, '2019-11-22 11:09:32', '2019-11-22 11:09:32'),
(143, 0, 'Szkolenie/spotkanie z Klientami 1', '', 'img_7472-728a669595cebf28a038b59494602892.jpg', 'on', NULL, '2019-11-22 11:16:29', '2019-11-22 11:16:29'),
(144, 0, 'Szkolenie/spotkanie z Klientami 2', '', 'img_7475-1f77ba260d4b8fb152c5b1b1f4cd7e57.jpg', 'on', NULL, '2019-11-22 11:16:42', '2019-11-22 11:16:42'),
(145, 0, 'Szkolenie/spotkanie z Klientami 3', '', 'img_7491-c58f6d6109654a7252df8f16d531566c.jpg', 'on', NULL, '2019-11-22 11:16:52', '2019-11-22 11:16:52'),
(146, 0, 'Szkolenie/spotkanie z Klientami 4', '', 'img_7499-45fdee4d520315eeafb072d3869bad61.jpg', 'on', NULL, '2019-11-22 11:17:04', '2019-11-22 11:17:04'),
(147, 0, 'Wsparcie finansowe TURNIEJU TENISOWEGO DLA DZIECI', '', 'img_3288-1f2066df139c00f760fe7fce44032954.jpg', 'on', '', '2019-11-22 11:24:30', '2019-11-22 11:25:05'),
(148, 0, 'Wsparcie finansowe TURNIEJU TENISOWEGO DLA DZIECI', '', 'img_3305-f0416a9cf1623aafa8aed552b11c9c36.jpg', 'on', NULL, '2019-11-22 11:25:24', '2019-11-22 11:25:24'),
(149, 0, 'OGÓLNOPOLSKI WYŚCIG MTB 1', '', '12969404_1137671126272530_1272714634_n-fed81c2d1ebe625fe2ddaa85189e7d25.jpg', 'on', NULL, '2019-11-22 11:29:10', '2019-11-22 11:29:10'),
(150, 0, 'OGÓLNOPOLSKI WYŚCIG MTB 2', '', '12957138_1137671749605801_992106199_n-e3584059a7041f28efa3368412774695.jpg', 'on', NULL, '2019-11-22 11:29:22', '2019-11-22 11:29:22'),
(151, 0, 'OGÓLNOPOLSKI WYŚCIG MTB 3', '', '12969200_1137671576272485_874563321_n-a5e158f6fb6de62aadabe174ca42029a.jpg', 'on', NULL, '2019-11-22 11:29:34', '2019-11-22 11:29:34'),
(152, 0, 'OGÓLNOPOLSKI WYŚCIG MTB 4', '', '12969300_1137671779605798_257608856_n-ebe4a30b3ef57efbc01aa688338cd43e.jpg', 'on', NULL, '2019-11-22 11:29:51', '2019-11-22 11:29:51'),
(153, 0, 'OGÓLNOPOLSKI WYŚCIG MTB 5', '', '12980603_1137671259605850_133816997_n-a50421fa83f597f82ca71994a1491c32.jpg', 'on', NULL, '2019-11-22 11:30:06', '2019-11-22 11:30:06'),
(154, 0, 'OGÓLNOPOLSKI WYŚCIG MTB 6', '', '12992244_1137671672939142_1336788083_n-339470f3926c3fb098c18044959bfe7e.jpg', 'on', NULL, '2019-11-22 11:30:22', '2019-11-22 11:30:22'),
(155, 0, 'OGÓLNOPOLSKI WYŚCIG MTB 7', '', '12992934_1137671716272471_1053930766_n-c85e8bd422b18b1f623712a345af30fd.jpg', 'on', NULL, '2019-11-22 11:30:32', '2019-11-22 11:30:32'),
(156, 0, 'AQUA GRUPA SBS - wyjście z Klientami na mecz żużlowy', '', '20160522_191146-ac54b00e3585d267a3a556ff31126da0.jpg', 'on', NULL, '2019-11-22 11:36:49', '2019-11-22 11:36:49'),
(157, 0, 'AQUA GRUPA SBS - wyjście z Klientami na mecz żużlowy', '', '20160522_192019-c51e24db0e991efadca2ae181ad350c9.jpg', 'on', NULL, '2019-11-22 11:36:59', '2019-11-22 11:36:59'),
(158, 0, 'Gazele Biznesu 2016', '', 'gazele-biznesu-2016-0f20d3a70aba516e13ef1bf1e5586945.jpg', 'on', NULL, '2019-11-22 11:40:22', '2019-11-22 11:40:22'),
(159, 0, 'Oddział Jelenia Góra: mecz koszykówki i wyjście z klientami', '', 'koszykowka-jg-5b3383edb3d1270c09d4fab5be581e82.jpg', 'on', NULL, '2019-11-22 11:44:56', '2019-11-22 11:44:56'),
(160, 0, 'Nowa odsłona hurtowni w Zielonej Górze', '', 'nowa-odslona-hurtowni-057d7194ed996722eaffb85b5b48bfca.jpg', 'on', NULL, '2019-11-22 11:45:26', '2019-11-22 11:45:26'),
(161, 0, 'Programy partnerskie 2016', '', 'programy-partnerskie-2016-1947f697299d5fb4a00757e76d2aca46.jpg', 'on', NULL, '2019-11-22 11:54:17', '2019-11-22 11:54:17'),
(162, 0, 'Wsparcie Fundacji Wzajemnej Pomocy ARKA', '', 'sponsoring-darowizna_1-1d7007e3923e43019f9c0a8d4b854604.jpg', 'on', NULL, '2019-11-22 12:06:56', '2019-11-22 12:06:56'),
(163, 0, 'Spotkanie instalatorów', '', 'spotkanie-instalatorow-0ac6b22481e4b93f5031753706e7b532.jpg', 'on', NULL, '2019-11-22 12:14:54', '2019-11-22 12:14:54'),
(165, 0, 'Tłusty czwartek 2017', '', 'tlustyczwartek-3468f47cae192e77440a57fd02a9c3fc.png', 'on', '', '2019-11-22 12:19:05', '2019-11-22 12:19:35'),
(166, 0, 'Wyjazd integracyjny - Amalia 2015', '', 'wyjazd-amalia-ef268ffd084e758bd5e1bc0dc78cb1c4.jpg', 'on', NULL, '2019-11-22 12:25:44', '2019-11-22 12:25:44'),
(167, 0, 'Integris1', '', 'sbs_lojalnosciowy1-28954efb76e04864886346753f628ecc.gif', 'on', NULL, '2019-11-25 12:59:18', '2019-11-25 12:59:18'),
(168, 0, 'Integris2', '', 'sbs_lojalnosciowy2-deaca355e2c58357294970dea9dd0fa5.gif', 'on', NULL, '2019-11-25 12:59:59', '2019-11-25 12:59:59');

--
-- Wyzwalacze `im_image`
--
DROP TRIGGER IF EXISTS `im_image_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_image_insert_date_create` BEFORE INSERT ON `im_image` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_image_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_image_insert_date_modify` BEFORE INSERT ON `im_image` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_image_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_image_update_date_modify` BEFORE UPDATE ON `im_image` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_label`
--

DROP TABLE IF EXISTS `im_label`;
CREATE TABLE IF NOT EXISTS `im_label` (
  `label_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `system_name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_label`
--

INSERT INTO `im_label` (`label_id`, `name`, `system_name`, `description`, `date_create`, `date_modify`) VALUES
(3, 'Slider', 'slider', '', '2019-10-15 08:07:37', '2019-10-17 09:25:46'),
(6, 'Ikony na sliderze', 'slider-icon', NULL, '2019-10-15 08:18:05', '2019-10-15 08:18:05'),
(7, 'Zdanie pod sliderem', 'sentence-slider-bottom', NULL, '2019-10-15 08:18:46', '2019-10-15 08:18:46'),
(8, 'Góra strony', 'top', NULL, '2019-10-15 09:05:33', '2019-10-15 09:05:33'),
(9, 'Kategorie', 'category', NULL, '2019-10-15 12:54:52', '2019-10-15 12:54:52'),
(10, 'Na skróty', 'short', NULL, '2019-10-15 13:32:56', '2019-10-15 13:32:56'),
(12, 'Tytuł slidera', 'slider-title', NULL, '2019-10-17 09:22:12', '2019-10-17 09:22:12'),
(14, 'Logo', 'logo', NULL, '2019-10-17 13:36:12', '2019-10-17 13:36:12'),
(15, 'Menu głowne', 'main-menu', NULL, '2019-10-17 13:36:28', '2019-10-17 13:36:28'),
(16, 'Copyright', 'copyright', NULL, '2019-10-18 10:36:55', '2019-10-18 10:36:55'),
(17, 'Stopka', 'footer', NULL, '2019-10-18 10:55:11', '2019-10-18 10:55:11'),
(18, 'Treść na stronę', 'content', NULL, '2019-10-25 11:30:09', '2019-10-25 11:30:09'),
(19, 'Spis oddziałów', 'department', NULL, '2019-10-25 13:27:11', '2019-10-25 13:27:11'),
(21, 'Treść na stronę - praca', 'content-job', NULL, '2019-10-28 11:21:42', '2019-10-28 11:21:42'),
(22, 'Dół content', 'content-end', NULL, '2019-10-28 13:54:47', '2019-10-28 13:54:47'),
(25, 'Góra content', 'content-begin', NULL, '2019-10-31 10:21:13', '2019-10-31 10:21:13'),
(27, 'Treść na stronę - dostawcy', 'content-supplier', NULL, '2019-11-12 12:10:00', '2019-11-12 12:10:00'),
(28, 'Treść na stronę - wydarzenia', 'content-news', NULL, '2019-11-21 13:03:13', '2019-11-21 13:03:13'),
(29, 'Treść na stronę - faq', 'content-faq', NULL, '2019-11-22 13:09:00', '2019-11-22 13:09:00');

--
-- Wyzwalacze `im_label`
--
DROP TRIGGER IF EXISTS `im_label_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_label_insert_date_create` BEFORE INSERT ON `im_label` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_label_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_label_insert_date_modify` BEFORE INSERT ON `im_label` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_label_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_label_update_date_modify` BEFORE UPDATE ON `im_label` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_label_section`
--

DROP TABLE IF EXISTS `im_label_section`;
CREATE TABLE IF NOT EXISTS `im_label_section` (
  `label_section_id` int(11) NOT NULL AUTO_INCREMENT,
  `label_id` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `class` varchar(256) COLLATE utf8_polish_ci DEFAULT '',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`label_section_id`),
  KEY `label_id` (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_label_section`
--

INSERT INTO `im_label_section` (`label_section_id`, `label_id`, `section`, `class`, `description`, `date_create`, `date_modify`) VALUES
(1, 14, 0, 'col-3', NULL, '2019-10-18 08:24:54', '2019-10-18 08:24:54'),
(2, 15, 0, 'col-9', NULL, '2019-10-18 08:25:13', '2019-10-18 08:25:13'),
(3, 18, 0, 'col-12 col-lg-9', '', '2019-10-25 13:41:08', '2019-11-08 09:45:14'),
(4, 19, 0, 'col-12 col-lg-3 text-lg-left', '', '2019-10-25 13:41:26', '2019-11-08 10:01:51'),
(5, 21, 18, 'col-12 col-lg-9', '', '2019-10-28 11:28:34', '2019-11-12 12:17:29'),
(7, 18, 18, 'col-12', 'W sekcji \"kariera\" na samej górze content na całą szerokość', '2019-11-12 12:15:34', '2019-11-12 12:16:39'),
(9, 18, 30, 'col-12', NULL, '2019-11-21 10:23:07', '2019-11-21 10:23:07'),
(10, 18, 31, 'col-12', NULL, '2019-11-21 10:23:45', '2019-11-21 10:23:45'),
(11, 18, 13, 'col-12', NULL, '2019-11-22 12:47:27', '2019-11-22 12:47:27'),
(12, 18, 34, 'col-12', NULL, '2019-11-25 13:09:18', '2019-11-25 13:09:18');

--
-- Wyzwalacze `im_label_section`
--
DROP TRIGGER IF EXISTS `im_label_section_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_label_section_insert_date_create` BEFORE INSERT ON `im_label_section` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_label_section_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_label_section_insert_date_modify` BEFORE INSERT ON `im_label_section` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_label_section_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_label_section_update_date_modify` BEFORE UPDATE ON `im_label_section` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_language`
--

DROP TABLE IF EXISTS `im_language`;
CREATE TABLE IF NOT EXISTS `im_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `system_name` varchar(4) COLLATE utf8_polish_ci DEFAULT '',
  `url` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `position` int(11) DEFAULT '0',
  `status_default` varchar(3) COLLATE utf8_polish_ci DEFAULT 'off',
  `status` varchar(3) COLLATE utf8_polish_ci DEFAULT 'on',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_language`
--

INSERT INTO `im_language` (`language_id`, `name`, `system_name`, `url`, `position`, `status_default`, `status`, `description`, `date_create`, `date_modify`) VALUES
(1, 'Polish language', 'pl', 'pl.png', 1, 'on', 'on', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(2, 'English language', 'en', 'en.png', 2, 'off', 'on', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37');

--
-- Wyzwalacze `im_language`
--
DROP TRIGGER IF EXISTS `im_language_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_language_insert_date_create` BEFORE INSERT ON `im_language` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_language_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_language_insert_date_modify` BEFORE INSERT ON `im_language` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_language_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_language_update_date_modify` BEFORE UPDATE ON `im_language` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_movie`
--

DROP TABLE IF EXISTS `im_movie`;
CREATE TABLE IF NOT EXISTS `im_movie` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_polish_ci DEFAULT '',
  `content` text COLLATE utf8_polish_ci,
  `link` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `status` varchar(3) COLLATE utf8_polish_ci DEFAULT 'on',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Wyzwalacze `im_movie`
--
DROP TRIGGER IF EXISTS `im_movie_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_movie_insert_date_create` BEFORE INSERT ON `im_movie` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_movie_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_movie_insert_date_modify` BEFORE INSERT ON `im_movie` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_movie_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_movie_update_date_modify` BEFORE UPDATE ON `im_movie` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_object`
--

DROP TABLE IF EXISTS `im_object`;
CREATE TABLE IF NOT EXISTS `im_object` (
  `object_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  `section` int(11) DEFAULT '0',
  `system_name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `name` varchar(256) COLLATE utf8_polish_ci DEFAULT '',
  `content` text COLLATE utf8_polish_ci,
  `link` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `email` varchar(64) COLLATE utf8_polish_ci NOT NULL DEFAULT '',
  `form` varchar(64) COLLATE utf8_polish_ci NOT NULL DEFAULT '',
  `icon` varchar(64) COLLATE utf8_polish_ci NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '0',
  `status` varchar(3) COLLATE utf8_polish_ci DEFAULT 'on',
  `description` text COLLATE utf8_polish_ci,
  `date` varchar(32) COLLATE utf8_polish_ci DEFAULT '',
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`object_id`),
  KEY `type_id` (`type_id`),
  KEY `label_id` (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_object`
--

INSERT INTO `im_object` (`object_id`, `type_id`, `label_id`, `section`, `system_name`, `name`, `content`, `link`, `email`, `form`, `icon`, `position`, `status`, `description`, `date`, `date_create`, `date_modify`) VALUES
(7, 3, 3, 0, 'Slider', '', '', '', '', '', '', 1, 'on', '', '2019-10-15', '2019-10-15 08:07:37', '2019-10-25 11:38:31'),
(10, 6, 7, 0, 'Strona główna', '<i class=\'fad fa-bolt\'></i> 37 LAT W BRANŻY, 16 ODDZIAŁÓW, 60 DORADCÓW', NULL, 'http://aqua.net.pl', '', '', '', 1, 'on', '', '2019-10-15', '2019-10-15 09:03:32', '2019-10-25 11:40:10'),
(11, 7, 8, 0, 'Góra strony', '', '<div class=\"im-top\">\r\n<div class=\"row\">\r\n<div class=\"col-12 col-md-4 text-left\">\r\n<ul>\r\n<li><a href=\"tel:+48684567608\"> +48 68 456 76 08</a></li>\r\n<li><a href=\"mailto:sekretariat@aqua.net.pl\"> sekretariat@aqua.net.pl</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-12 col-md-8 text-right\">\r\n<ul>\r\n<li><a href=\"integris-plus\" title=\"Program Integris Plus\" style=\"padding-top: 3px;\"><img style=\"width: 128px;\" src=\"system/default/public/integris.png\" /></a></li>\r\n<li><a href=\"projekt-b2b\" title=\"Projekt B2B\" style=\"padding-top: 3px;\">Projekt B2B <img style=\"margin-left: 3px; width: 48px;\" src=\"system/default/public/eu-logo.jpg\" /> </a></li>\r\n<li><img src=\"system/default/public/forbes-2018.png\" /></li>\r\n<li><a href=\"system/default/public/gazele_2018-eed9be75a02d9e716d9026c3c5d15ccb.pdf\" title=\"Gazele Biznesu 2018\" download=\"gazele_2018-eed9be75a02d9e716d9026c3c5d15ccb.pdf\"><img src=\"system/default/public/gazele-2018.png\" /></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '', '', '', '', 1, 'on', '', '2019-10-15', '2019-10-15 09:06:35', '2019-11-25 13:32:23'),
(12, 8, 6, 0, 'Technika pompowa', 'Technika pompowa', NULL, '', '', '', '', 1, 'on', '', '2019-10-15', '2019-10-15 10:11:19', '2019-10-25 11:15:44'),
(13, 8, 6, 0, 'Technika grzewcza', 'Technika grzewcza', NULL, '', '', '', '', 2, 'on', '', '2019-10-15', '2019-10-15 10:30:04', '2019-10-25 11:15:44'),
(14, 8, 6, 0, 'Systemy nawadniające', 'Systemy nawadniające', NULL, '', '', '', '', 3, 'on', '', '2019-10-15', '2019-10-15 11:03:47', '2019-10-25 11:15:44'),
(15, 8, 6, 0, 'Uzdatnianie wody', 'Uzdatnianie wody', NULL, '', '', '', '', 4, 'on', '', '2019-10-15', '2019-10-15 11:07:13', '2019-10-25 11:15:44'),
(16, 8, 6, 0, 'Produkty specjalistyczne', 'Produkty specjalistyczne', NULL, '', '', '', '', 5, 'on', '', '2019-10-15', '2019-10-15 11:07:41', '2019-10-25 11:15:44'),
(18, 9, 9, 0, 'Technika pompowa', '', '<div class=\"front\"><img src=\"system/default/public/category/1.jpg\" alt=\"\" /><span style=\"font-size: 24px;\">Technika pompowa</span>\r\n<p>dom i ogr&oacute;d, przemysł, wodociągi, budownictwo mieszkaniowe i publiczne, rolnictwo, woda i ścieki, CO i CWU, zintegrowane, dozowanie i dezynfekcja, zestawy hydroforowe</p>\r\n</div>\r\n<div class=\"back\" style=\"display: none;\"><img src=\"system/default/public/category/1-hover.jpg\" alt=\"\" /> <span style=\"font-size: 24px;\">Technika pompowa</span>\r\n<div class=\"row back-content\">\r\n<div class=\"col-12\">\r\n<ul>\r\n<li><a class=\"btn btn-secondary\" href=\"#\">katalogi producent&oacute;w</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>E-sklepy</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.tylkopompy.pl\" target=\"_blank\" rel=\"noopener\">tylkopompy.pl</a></li>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.mac3.pl\" target=\"_blank\" rel=\"noopener\">mac3.pl</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>Strony informacyjne</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.iglofiltry.pl\" target=\"_blank\" rel=\"noopener\">igłofiltry.pl</a></li>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.elektropompki.pl\" target=\"_blank\" rel=\"noopener\">elektropompki.pl</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '', '', '', '', 1, 'on', '', '2019-10-15', '2019-10-15 12:56:34', '2019-10-24 14:32:52'),
(19, 9, 9, 0, 'Technika grzewcza', '', '<div class=\"front\"><img src=\"system/default/public/category/2.jpg\" alt=\"\" /><span style=\"font-size: 24px;\">Technika grzewcza</span>\r\n<p>instalacje, kotły gazowe i na paliwo stałe, podgrzewacze, grzejniki, wymienniki, pompy ciepła, solary, fotowoltaika, sterowniki, systemy kominowe, pompy CO i CUW, ogrzewanie podłogowe</p>\r\n</div>\r\n<div class=\"back\" style=\"display: none;\"><img src=\"system/default/public/category/2-hover.jpg\" alt=\"\" /> <span style=\"font-size: 24px;\">Technika grzewcza</span>\r\n<div class=\"row back-content\">\r\n<div class=\"col-12\">\r\n<ul>\r\n<li><a class=\"btn btn-secondary\" href=\"#\">katalogi producent&oacute;w</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>E-sklepy</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.wymienniki.pl\" target=\"_blank\" rel=\"noopener\">wymienniki.pl</a></li>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.grzewcza24.pl\" target=\"_blank\" rel=\"noopener\">grzewcza24.pl</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>Strony informacyjne</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.aqua.viessmann.pl\" target=\"_blank\" rel=\"noopener\">aqua.viessmann.pl</a></li>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.wymienniki.pl\" target=\"_blank\" rel=\"noopener\">wymienniki.pl</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '', '', '', '', 2, 'on', '', '2019-10-15', '2019-10-15 13:00:06', '2019-10-24 14:36:31'),
(20, 9, 9, 0, 'Systemy nawadniające', '', '<div class=\"front\"><img src=\"system/default/public/category/3.jpg\" alt=\"\" /><span style=\"font-size: 24px;\">Systemy nawadniające</span>\r\n<p>zraszacze rotacyjne i statyczne, sterowniki, elektrozawory, linie kroplujące i węże, rury, skrzynki zaworowe, emitery, kroplowniki, mikrozraszacze, zraszacze polowe, działka wodne, tr&oacute;jnogi</p>\r\n</div>\r\n<div class=\"back\" style=\"display: none;\"><img src=\"system/default/public/category/3-hover.jpg\" alt=\"\" /> <span style=\"font-size: 24px;\">Systemy nawadniające</span>\r\n<div class=\"row back-content\">\r\n<div class=\"col-12\">\r\n<ul>\r\n<li><a class=\"btn btn-secondary\" href=\"#\">katalogi producent&oacute;w</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>E-sklepy</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.zraszacze.pl\" target=\"_blank\" rel=\"noopener\">zraszacze.pl</a></li>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.ahs.pl\" target=\"_blank\" rel=\"noopener\">ahs.pl</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>Strony informacyjne</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.nawadnianie.eu\" target=\"_blank\" rel=\"noopener\">nawadnianie.eu</a></li>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.nodolini.pl\" target=\"_blank\" rel=\"noopener\">nodolini.pl</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '', '', '', '', 3, 'on', '', '2019-10-15', '2019-10-15 13:03:51', '2019-10-24 14:36:45'),
(21, 9, 9, 0, 'Uzdatnianie wody', '', '<div class=\"front\"><img src=\"system/default/public/category/4.jpg\" alt=\"\" /><span style=\"font-size: 24px;\">Uzdatnianie wody</span>\r\n<p>filtry mechaniczne - woda zimna i gorąca, zmiękczacze, odżelaziacze, odmanganiacze, osmoza domowa, osmoza przemysłowa, obudowy, wkłady, pompy dozujące, lampy UV, filtry specjalne</p>\r\n</div>\r\n<div class=\"back\" style=\"display: none;\"><img src=\"system/default/public/category/4-hover.jpg\" alt=\"\" /> <span style=\"font-size: 24px;\">Uzdatnianie wody</span>\r\n<div class=\"row back-content\">\r\n<div class=\"col-12\">\r\n<ul>\r\n<li><a class=\"btn btn-secondary\" href=\"#\">katalogi producent&oacute;w</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>E-sklepy</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.zaworyantyskazeniowe.pl\" target=\"_blank\" rel=\"noopener\">zaworyantyskazeniowe.pl</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>Strony informacyjne</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.uzdatnianiewody.eu\" target=\"_blank\" rel=\"noopener\">uzdatnianiewody.eu</a></li>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.technikabasenowa.pomp.pl\" target=\"_blank\" rel=\"noopener\">technikabasenowa.pl</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '', '', '', '', 4, 'on', '', '2019-10-15', '2019-10-15 13:05:25', '2019-10-24 14:53:17'),
(22, 9, 9, 0, 'Produkty specjalistyczne', '', '<div class=\"front\"><img src=\"system/default/public/category/5.jpg\" alt=\"\" /><span style=\"font-size: 24px;\">Produkty specjalistyczne</span>\r\n<p>zawory: elektromagnetyczne, bezpieczeństwa, antyskażeniowe i regulacyjne, odpowietrzniki, kosze ssawne, deszcz&oacute;wka, armatura przemysłowa, czujniki pływakowe</p>\r\n</div>\r\n<div class=\"back\" style=\"display: none;\"><img src=\"system/default/public/category/5-hover.jpg\" alt=\"\" /> <span style=\"font-size: 24px;\">Produkty specjalistyczne</span>\r\n<div class=\"row back-content\">\r\n<div class=\"col-12\">\r\n<ul>\r\n<li><a class=\"btn btn-secondary\" href=\"#\">katalogi producent&oacute;w</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>E-sklepy</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.elektrozawory.eu\" target=\"_blank\" rel=\"noopener\">elektrozawory.pl</a></li>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.elektrozawory.com.pl\" target=\"_blank\" rel=\"noopener\">elektrozawory.com.pl</a></li>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.sklep.elektrozawory.pl\" target=\"_blank\" rel=\"noopener\">sklep.elektrozawory.pl</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>Strony informacyjne</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.uzdatnianiewody.eu\" target=\"_blank\" rel=\"noopener\">wodociagi.aqua.net.pl</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '', '', '', '', 5, 'on', '', '2019-10-15', '2019-10-15 13:06:53', '2019-10-24 14:44:37'),
(23, 9, 9, 0, 'Kształtowanie wody', '', '<div class=\"front\"><img src=\"system/default/public/category/6.jpg\" alt=\"\" /><span style=\"font-size: 24px;\">Kształtowanie wody</span>\r\n<p>Od 15 lat dzięki naszej pasji nadajemy wodzie indywidualny charakter i kształt. Nasze fontanny i urządzenia nadają naturze nową formułę estetyczną i praktyczną</p>\r\n</div>\r\n<div class=\"back\" style=\"display: none;\"><img src=\"system/default/public/category/6-hover.jpg\" alt=\"\" /> <span style=\"font-size: 24px;\">Kształtowanie wody</span>\r\n<div class=\"row back-content\">\r\n<div class=\"col-12\">\r\n<ul>\r\n<li><a class=\"btn btn-secondary\" href=\"#\">katalogi producent&oacute;w</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>E-sklepy</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.kurtynawodna.pl\" target=\"_blank\" rel=\"noopener\">kurtynawodna.pl</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>Strony informacyjne</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.fontanny.pomp.pl\" target=\"_blank\" rel=\"noopener\">fontanny.pomp.pl</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '', '', '', '', 6, 'on', '', '2019-10-15', '2019-10-15 13:08:24', '2019-10-24 14:40:13'),
(24, 10, 10, 19, 'Programy partnerskie', '<i class=\'fad fa-handshake-alt fa-5x text-info\'></i>', '<p><span style=\"font-size: 24px;\">Programy partnerskie</span></p>\r\n<p>Zapraszamy do zapoznania się z aktualnymi Programami Partnerskimi na rok 2018.</p>', '', '', '', '', 1, 'on', '', '2019-10-15', '2019-10-15 13:34:09', '2019-11-25 09:54:19'),
(25, 10, 10, 30, 'Aktualności', '<i class=\'fad fa-newspaper fa-5x text-info\'></i>', '<p><span style=\"font-size: 24px;\">Aktualności</span></p>\r\n<p>Najświeższe informacje, aktualności&nbsp;i wydarzenia z życia naszej firmy</p>', '', '', '', '', 2, 'on', '', '2019-10-15', '2019-10-15 13:46:12', '2019-11-25 09:54:48'),
(26, 10, 10, 33, 'Promocje', '<i class=\'fad fa-piggy-bank fa-5x text-info\'></i>', '<p><span style=\"font-size: 24px;\">Promocje</span></p>\r\n<p>Akcje promocyjne, gazetki, wyprzedaże. Sam zaproponuj produkty do promocji!</p>', '', '', '', '', 3, 'on', '', '2019-10-15', '2019-10-15 13:48:05', '2019-11-25 09:58:29'),
(31, 12, 12, 0, 'Dwie linie', '', '<p><span style=\"font-size: 48px;\"><strong> 16 HURTOWNI BRANŻY</strong></span></p><p><span style=\"font-size: 30px;\"><strong>INSTALACYJNEJ, GRZEWCZEJ I POMPOWEJ</strong></span></p><p><br></p>', '', '', '', '', 1, 'on', '', '2019-10-17', '2019-10-17 10:48:29', '2019-10-17 12:30:22'),
(33, 16, 15, 0, 'Menu głowne', '', NULL, '', '', '', '', 1, 'on', '', '2019-10-17', '2019-10-17 13:38:29', '2019-11-25 13:07:28'),
(34, 15, 14, 0, 'Logo', '', NULL, '', '', '', '', 1, 'on', '', '2019-10-17', '2019-10-17 13:38:43', '2019-11-25 13:05:57'),
(35, 17, 16, 0, 'Pod stopką zdanie', '', '<p>&copy; Copyright 2019 aqua.net.pl - wszelkie prawa zastrzeżone</p>', '', '', '', '', 1, 'on', '', '2019-10-18', '2019-10-18 10:37:59', '2019-11-25 13:06:09'),
(36, 18, 17, 0, 'Strony informacyjne', '', '<p style=\"text-align: left;\"><span style=\"font-size: 24px;\">Strony informacyjne</span></p>\r\n<ul>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://elektrozawory.pl/\" target=\"_blank\" rel=\"noopener\">Elektrozawory</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://fontanny.pomp.pl/\" target=\"_blank\" rel=\"noopener\">Fontanny</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://pomp.pl/\" target=\"_blank\" rel=\"noopener\">Pompy</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://aquagrzewcza.pl/\" target=\"_blank\" rel=\"noopener\">Technika grzewcza</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://deszczowka.pl/\" target=\"_blank\" rel=\"noopener\">Deszcz&oacute;wka</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://iglofiltry.pl/\" target=\"_blank\" rel=\"noopener\">Igłofiltry</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://elektropompki.pl/\" target=\"_blank\" rel=\"noopener\">Elektropompki</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://aquasolar.pomp.pl/\" target=\"_blank\" rel=\"noopener\">AquaSolar</a></li>\r\n</ul>', '', '', '', '', 1, 'on', '', '2019-10-18', '2019-10-18 10:56:46', '2019-11-25 13:06:31'),
(37, 18, 17, 0, 'Strony informacyjne', '', '<p style=\"text-align: left;\"><span style=\"font-size: 18pt;\">Strony informacyjne</span></p>\r\n<ul>\r\n<li style=\"text-align: left;\"><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://nawadnianie.eu\" target=\"_blank\" rel=\"noopener\">Nawadnianie</a></li>\r\n<li style=\"text-align: left;\"><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://uzdatnianiewody.eu\" target=\"_blank\" rel=\"noopener\">Uzdatnianie wody</a></li>\r\n<li style=\"text-align: left;\"><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://nodolini.pl\" target=\"_blank\" rel=\"noopener\">Zraszacze dla przemysłu</a></li>\r\n<li style=\"text-align: left;\"><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://zaworybezpieczenstwa.pl\" target=\"_blank\" rel=\"noopener\">Zawory bezpieczeństwa</a></li>\r\n<li style=\"text-align: left;\"><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://technikabasenowa.pomp.pl\" target=\"_blank\" rel=\"noopener\">Technika basenowa</a></li>\r\n<li style=\"text-align: left;\"><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://www.viessmann.aqua.net.pl\" target=\"_blank\" rel=\"noopener\">Salon firmowy Viessmann w Gorzowie Wlkp.</a></li>\r\n</ul>', '', '', '', '', 2, 'on', '', '2019-10-18', '2019-10-18 10:57:00', '2019-11-25 13:06:38'),
(38, 18, 17, 0, 'Sklepy internetowe', '', '<p style=\"text-align: left;\"><span style=\"font-size: 24px;\">Sklepy internetowe</span></p>\r\n<ul>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://sklep.elektrozawory.pl\" target=\"_blank\" rel=\"noopener\">Elektrozawory 1</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a title=\"Profesjonalne zawory elektromagnetycznie w wyjątkowo niskich cenach\" href=\"http://elektrozawory.com.pl\" target=\"_blank\" rel=\"noopener\">Elektrozawory 2</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a title=\"Zawory antyskażeniowe, zwrotne, regulacyjne, kulowe\" href=\"https://zaworyantyskazeniowe.pl\" target=\"_blank\" rel=\"noopener\">Zawory antyskażeniowe</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"https://grzewcza24.pl\" target=\"_blank\" rel=\"noopener\">Technika grzewcza</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://tylkoelektropompki.pl\" target=\"_blank\" rel=\"noopener\">Elektropompki</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://mac3.pl\" target=\"_blank\" rel=\"noopener\">Wyłączniki pływakowe</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://wymienniki.pl\" target=\"_blank\" rel=\"noopener\">Wymienniki ciepła</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"https://przepompownie.pomp.pl\" target=\"_blank\" rel=\"noopener\">Przepompownie</a></li>\r\n</ul>', '', '', '', '', 3, 'on', '', '2019-10-18', '2019-10-18 10:57:50', '2019-11-25 13:06:46'),
(39, 18, 17, 0, 'Adres', '', '<h3 class=\"block-title\"><span style=\"font-size: 24px;\">\"AQUA - Grupa SBS\"</span></h3>\r\n<p>ul. Marii Skłodowskiej-Curie 25,<br />65-124 Zielona G&oacute;ra</p>\r\n<p><strong>Telefon:</strong> +48 68 456 76 08<br /><strong>Fax:</strong> +48 68 456 76 03<br /><strong>E-mail:</strong> <a href=\"mailto:sekretariat@aqua.net.pl\">sekretariat@aqua.net.pl</a></p>\r\n<p><strong>Godziny otwarcia</strong><br />pn-pt: 07:00 - 16:00<br />sob: 8.00-14.00 (od 01.04 do 30.10)</p>', '', '', 'test@test.pl', '', 4, 'on', '', '2019-10-18', '2019-10-18 10:57:58', '2019-11-25 13:06:54'),
(40, 19, 18, 0, 'Treść - Dlaczego my', '', '<p><span class=\"text-info\" style=\"font-size: 18pt;\">Nasza misja to:<br /></span></p>\r\n<p>\"Chcemy być najbardziej elastyczną siecią hurtowni branży instalacyjnej, grzewczej i pompowej, oferując rozwiązania wzmacniające konkurencyjność rynkową naszych Klient&oacute;w\".</p>\r\n<p><span class=\"text-info\" style=\"font-size: 18pt;\">Wartości:</span></p>\r\n<ul class=\"im-ul\">\r\n<li>UNIKATOWA ELASTYCZNOŚĆ<em> (pochylamy się nad każdym problemem).</em></li>\r\n<li>PONADCZASOWE RELACJE <em>(idea długofalowej wsp&oacute;łpracy z klientem).</em></li>\r\n<li>BEZWZGLĘDNA UCZCIWOŚĆ <em>(wobec Klienta i Klienta wobec nas).</em></li>\r\n<li>CIĄGŁY ROZW&Oacute;J <em>(w zakresie wiedzy technicznej, handlowej i relacji międzyludzkich).</em></li>\r\n<li>STAŁE PODNOSZENIE EFEKTYWNOŚCI <em>(w zakresie wiedzy technicznej, handlowej i relacji międzyludzkich).</em></li>\r\n<li>DĄŻENIE DO PROFESJONALIZMU<em> (doradztwo techniczne, sprzedaż, obsługa posprzedażowa).</em></li>\r\n<li>SAMODZIELNA INWESTYCJA <em>(kreatywne podejście do zadań).</em></li>\r\n</ul>\r\n<p><em></em></p>\r\n<p><strong>I do tego oferujemy rozwiązania wzmacniające Twoją konkurencyjność na runku...</strong></p>\r\n<p style=\"text-align: center;\"><span class=\"text-info\" style=\"font-size: 18pt;\">Nasze gł&oacute;wne zalety</span></p>', '', '', '', '', 1, 'on', '', '2019-10-25', '2019-10-25 11:32:27', '2019-11-08 13:37:41'),
(41, 6, 7, 0, 'Dlaczego my', 'Dlaczego warto wybrać naszą firmę?', NULL, '', '', '', '', 2, 'on', '', '2019-10-25', '2019-10-25 11:40:26', '2019-10-25 11:41:00'),
(42, 19, 18, 0, 'Treść - O firmie', '', '<p><span class=\"text-info\" style=\"font-size: 18pt;\">SZANOWNI PAŃSTWO</span></p>\r\n<div>\r\n<p><strong>...zasady są ważne, zasady prowadzą zar&oacute;wno przez życie zawodowe jak i prywatne. Każda organizacja powinna hołdować zasadą biznesu w celu budowania mądrej i partnerskiej polityki wsp&oacute;łpracy z Klientami.</strong></p>\r\n<p>Stosując jedną z nich \"czas to pieniądz\" w obsłudze Klienta przenosimy ją r&oacute;wnież na struktury informacyjne, aby stworzyć przekaz jak najbardziej czytelny, rzeczywisty i kr&oacute;tki w swojej formie. Dlatego w małej \"pigułce\" kilka sł&oacute;w o \"AQUA-Grupa SBS\" sp. z o.o.</p>\r\n<p>Już od ponad 37 lat nasza firma wsp&oacute;łtworzy historię branży instalacyjnej w Polsce Zachodniej. Od kilku lat skutecznie działamy<br />w całej Polsce jako dystrybutor europejskich producent&oacute;w (elektrozawory, czujniki poziomu, systemy nawadniające itp.)</p>\r\n<p><span class=\"text-info\" style=\"font-size: 18pt;\">MISJA FIRMY</span></p>\r\n<p><strong>...chcemy być najbardziej elastyczną siecią hurtowni branży instalacyjnej, grzewczej i pompowej, oferując rozwiązania wzmacniające konkurencyjność rynkową naszych Klient&oacute;w.</strong></p>\r\n<p><span class=\"text-info\" style=\"font-size: 18pt;\">OFERUJEMY</span></p>\r\n<p><strong>...w naszej ofercie znaleźć można wszystko to, co jest potrzebne do realizacji inwestycji na każdą skalę. Elastyczności oferty firmy dowodzi możliwość realizacji zam&oacute;wienia zgodnie ze ściśle określonymi, indywidualnymi potrzebami Klienta.</strong></p>\r\n<p>Ugruntowana i stabilna pozycja wynika między innymi z profesjonalnej obsługi Klienta oraz stosowania nowoczesnych rozwiązań. W naszej pracy skupiamy się przede wszystkim na najwyższej jakości produkt&oacute;w, szerokim wyborze asortymentu, skutecznej<br />i efektywnej logistyce, a także na możliwości kontaktu z wykwalifikowaną kadrą. Nasze działania to także wsparcie techniczne, konsultacje oraz szkolenia.</p>\r\n<p><strong>Zapewniamy doradztwo i produkty z zakresu:</strong></p>\r\n<ul class=\"list-3\" style=\"float: left; padding-right: 80px;\">\r\n<li>techniki instalacyjnej</li>\r\n<li>pompowej</li>\r\n<li>sanitarnej</li>\r\n<li>grzewczej</li>\r\n<li>system&oacute;w nawadniających</li>\r\n<li>sieci zewnętrznych</li>\r\n</ul>\r\n<ul class=\"list-3\" style=\"float: left;\">\r\n<li>automatyki przemysłowej</li>\r\n<li>techniki fontannowej</li>\r\n<li>przydomowych oczyszczalni ściek&oacute;w</li>\r\n<li>uzdatniania wody</li>\r\n<li>odnawialnych źr&oacute;deł energii</li>\r\n<li>klimatyzacji i wentylacji</li>\r\n</ul>\r\n<div style=\"clear: both;\">&nbsp;</div>\r\n<p>Zapraszamy do naszych 16 jednostek, w tym Działu Sprzedaży Krajowej oraz Salonu Viessmann.</p>\r\n</div>', '', '', '', '', 2, 'on', '', '2019-10-25', '2019-10-25 11:51:36', '2019-11-08 10:14:56'),
(43, 6, 7, 0, 'O firmie', 'Słów kilka o naszej firmie, naszej pasji, misji, ofercie', NULL, '', '', '', '', 3, 'on', '', '2019-10-25', '2019-10-25 12:47:22', '2019-10-25 12:49:34'),
(44, 6, 7, 0, 'Historia', 'Historia naszej firmy', NULL, '', '', '', '', 4, 'on', '', '2019-10-25', '2019-10-25 12:53:55', '2019-10-25 12:54:50'),
(45, 6, 7, 0, 'Zarząd firmy', 'Dział Zarządu i kadra Menedżerska', NULL, '', '', '', '', 5, 'on', '', '2019-10-25', '2019-10-25 12:55:26', '2019-10-25 12:56:19'),
(46, 6, 7, 0, 'Cenatrala', 'Siedziba naszej firmy', NULL, '', '', '', '', 6, 'on', '', '2019-10-25', '2019-10-25 12:56:59', '2019-10-25 12:57:25'),
(47, 6, 7, 0, 'Ogólne warunki sprzedaży (OWS)', 'Proszę pobrać i zapoznać się z dokumentem', NULL, '', '', '', '', 7, 'on', '', '2019-10-25', '2019-10-25 12:58:22', '2019-10-25 12:59:02'),
(48, 20, 18, 0, 'Ogólne warunki sprzedaży (OWS)', '', '<p><span style=\"font-size: 18pt;\" class=\"text-info\">Og&oacute;lne warunki sprzedaży</span></p>\r\n<p><span style=\"font-size: 12pt;\">Poniżej znajduje się dokument do pobrania, kt&oacute;ry zawiera wszelkie informacje dotyczące zasad i warunk&oacute;w sprzedaży w naszej firmie.</span></p>', '', '', '', '', 1, 'on', '', '2019-10-25', '2019-10-25 13:02:26', '2019-11-08 11:54:27'),
(49, 19, 18, 0, 'Treść - B2B', '', '<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\" class=\"text-info\">Automatyzacja proces&oacute;w biznesowych pomiędzy partnerami w zakresie logistyki i finans&oacute;w system B2B &bdquo;AQUA &ndash; Business flow platform&rdquo;</span></p>\r\n<p>Przedmiotem zam&oacute;wienia jest całościowa realizacja projektu polegająca na wdrożeniu platformy wymiany danych typu Business to Business, automatyzującej procesy wymiany informacji pomiędzy wnioskodawcą i jego Partnerami w zakresie określonych potrzeb biznesowych. Realizacja projektu przewiduje stworzenie środowiska systemowego dla potrzeb funkcjonowania platformy B2B i obejmie obszary proces&oacute;w biznesowych, kt&oacute;re zachodzą pomiędzy firmą \"AQUA-Grupa SBS\" Sp. z.o.o i jej partnerami.</p>\r\n<p>Pozwoli ponadto na powiązanie wsp&oacute;łpracy z partnerami w zakresie proces&oacute;w zachodzących w strukturze organizacyjnej wszystkich podmiot&oacute;w zaangażowanych w projekt. Celem przewidzianych do wdrożenia rozwiązań w zakresie B2B, jest usprawnienie wszystkich tych proces&oacute;w, kt&oacute;re wiążą się z wymianą między wnioskodawcą, a partnerami oraz ich efektywne połączenie w spos&oacute;b elektroniczny, co bezpośrednio i wymiernie podniesie efektywność wzajemnej wsp&oacute;łpracy. Sp&oacute;łka przewiduje, że elektroniczne rozwiązania platformy B2B zinformatyzują i zautomatyzują, dzięki narzędziom IT, wymianę biznesową oraz gospodarkę firmy, poprzez:</p>\r\n<ul class=\"im-ul\">\r\n<li>integrację (koordynację) 5 proces&oacute;w biznesowych za pomocą systemu informatycznego,</li>\r\n<li>integrację aplikacji pracujących na r&oacute;żnych platformach systemowych,</li>\r\n<li>integrację właściwości, funkcjonalności i zgromadzonej wiedzy zawartych w wielu aplikacjach,</li>\r\n<li>integrację zasob&oacute;w wewnętrznych przedsiębiorstwa z otoczeniem (Internet),</li>\r\n<li>integrację baz danych,</li>\r\n<li>integrację baz danych z aplikacjami.</li>\r\n</ul>\r\n<p></p>\r\n<p>Dzięki wykorzystaniu narzędzi platformy B2B, automatyzacji ulegnie przepływ informacji i proces&oacute;w biznesowych związanych z generowaniem przez odbiorc&oacute;w zam&oacute;wień, ich realizacją &ndash; w tym produkcją wyrob&oacute;w i ich sprzedażą do Partner&oacute;w. Poprzez zbudowanie mechanizm&oacute;w elektronicznej wymiany danych i informacji, połączone zostaną 3 systemy informatyczne, to jest system Streamsoft Prestiż \"AQUA-Grupa SBS\" Sp.z.o.o i systemy dw&oacute;ch partner&oacute;w, zwiększając tym samym efektywność przedsiębiorstwa w kluczowych obszarach takich jak: obsługa zam&oacute;wień i reklamacji, obsługa indywidualnych rabat&oacute;w dla zamawiających, wymiana dokument&oacute;w handlowych, śledzenie status&oacute;w zam&oacute;wień. Partnerami uczestniczącymi w realizacji projektu są kluczowi odbiorcy produkt&oacute;w Sp&oacute;łki, firmy: SBS sp. z o.o. oraz PSA sp. z o.o. System ten opr&oacute;cz usprawnienia i uproszczenia komunikacji pomiędzy zamawiającym a Partnerami, zapewnia także ograniczenie koszt&oacute;w obsługi zam&oacute;wień. R&oacute;wnie istotne jest zapewnienie wysokiej jakości informacji zarządczej, dzięki wykorzystaniu w ramach ERP modułu Business Intelligence i rozbudowanych możliwości raportowania.</p>\r\n<p>Platforma zawierać będzie 3 systemy B2B w postaci:</p>\r\n<ul class=\"im-ul\">\r\n<li>system ERP/B2B - moduł ERP jako zaawansowane oprogramowanie B2B wraz z interfejsami dla B2B tj. system ujednolicający bazy produktowe, analizujący optymalny zakup pod proces realizacji produkcji i zam&oacute;wień od odbiorc&oacute;w. W wyniku jego wdrożenia zostaną usprawnione następujące procesy biznesowe: proces realizacji zam&oacute;wień, proces sprzedaży, proces promocji, proces wymiany informacji. Wszystkie te działania prowadzą do przyśpieszenia procesu obsługi klienta zwiększając jego satysfakcję, jak r&oacute;wnież obniżenia koszt&oacute;w związanych z logistyczną obsługą firmy, czego wynikiem jest konkurencyjna cena końcowa produkt&oacute;w i usług.</li>\r\n<li>mechanizm elektronicznej wymiany danych EDI &ndash; jako uniwersalnego, wsp&oacute;lnego dla wszystkich partner&oacute;w handlowych rozwiązania EDI stanowiącego zar&oacute;wno medium komunikacji w zakresie elektronicznych dokument&oacute;w biznesowych, jak r&oacute;wnież swoiste archiwum dla handlowej korespondencji pomiędzy Wnioskodawcą a Partnerami.</li>\r\n<li>mechanizm realizacji zam&oacute;wień internetowych B2B, jako narzędzie umożliwiające wystawienie oraz udostępnienie do podglądu dokument&oacute;w Partnerom zarejestrowanym w bazie systemu ERP/B2B.</li>\r\n</ul>\r\n<hr />\r\n<p><span style=\"font-size: 18pt;\" class=\"text-info\">Projekt wsp&oacute;łfinansowany ze środk&oacute;w europejskich</span></p>\r\n<p>Firma \"AQUA - Grupa SBS\" sp. z o.o. otrzymała dofinansowanie na realizację projektu:</p>\r\n<p><strong>Automatyzacja proces&oacute;w biznesowych pomiędzy partnerami w zakresie logistyki i finans&oacute;w system B2B \"AQUA - Business flow platform\".</strong></p>\r\n<p>Wniosek o dofinansowanie nr WND-POIG.08.02.00-08-004/13 w ramach:</p>\r\n<ul class=\"im-ul\">\r\n<li>Programu Operacyjnego Innowacyjna Gospodarka 2007-2013</li>\r\n<li>Działanie 8.2: Wspieranie wdrażania elektronicznego biznesu typu B2B</li>\r\n<li>Oś priorytetowa 8 : Społeczeństwo informacyjne &ndash; zwiększenie innowacyjności gospodarki.</li>\r\n</ul>\r\n<p><img src=\"system/default/public/eu-fa606eeb696124076172bd9cc6b68b6b.jpg\" style=\"width: auto;\" /></p>\r\n<p><span style=\"font-size: 10pt;\">Projekt wsp&oacute;łfinansowany przez Unię Europejską ze środk&oacute;w Europejskiego Funduszu Rozwoju Regionalnego w ramach Programu Operacyjnego Innowacyjna Gospodarka. Fundusze europejskie &ndash; dla rozwoju Innowacyjnej Gospodarki. \"Dotacje na innowacje\" - \"Inwestujemy w waszą przyszłość\"</span></p>', '', '', '', '', 3, 'on', '', '2019-10-25', '2019-10-25 13:11:46', '2019-11-08 13:33:33'),
(50, 6, 7, 0, 'Projekt B2B', 'Projekt systemu B2B (dofinansowany z UE)', NULL, '', '', '', '', 8, 'on', '', '2019-10-25', '2019-10-25 13:13:49', '2019-10-25 13:14:46'),
(51, 21, 19, 0, 'Spis oddziałów', '', '<p><span style=\"font-size: 18pt;\">Nasze oddziały</span></p>\r\n<ul>\r\n<li><a href=\"http://zielonagora.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Zielona G&oacute;ra</a></li>\r\n<li><a href=\"http://wroclaw.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Wrocław - Mokronoska</a></li>\r\n<li><a href=\"http://wroclaw2.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Wrocław - Strzegomska</a></li>\r\n<li><a href=\"http://gorzow.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Gorz&oacute;w Wlkp.</a></li>\r\n<li><a href=\"http://legnica.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Legnica</a></li>\r\n<li><a href=\"http://walcz.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Wałcz</a></li>\r\n<li><a href=\"http://wolsztyn.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Wolsztyn</a></li>\r\n<li><a href=\"http://ap.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział AQUA POLSKA</a></li>\r\n<li><a href=\"http://racula.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Racula k/Zielonej G&oacute;ry</a></li>\r\n<li><a href=\"http://nowasol.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Nowa S&oacute;l</a></li>\r\n<li><a href=\"http://glogow.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Głog&oacute;w</a></li>\r\n<li><a href=\"http://lubin.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Lubin</a></li>\r\n<li><a href=\"http://jeleniagora.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Jelenia G&oacute;ra</a></li>\r\n<li><a href=\"http://srem.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Śrem</a></li>\r\n<li><a href=\"http://poznan.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Poznań</a></li>\r\n</ul>', '', '', '', '', 1, 'on', '', '2019-10-25', '2019-10-25 13:29:28', '2019-11-25 10:06:43'),
(52, 19, 18, 0, 'Treść - Historia', '', '<p><span class=\"text-info\" style=\"font-size: 18pt;\">o \"AQUA - Grupa SBS\" sp. z o.o. w skr&oacute;cie</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 1981</span></p>\r\n<p><span style=\"font-size: 10pt;\">W tymże roku powstaje zakład świadczący usługi serwisowe pomp i agregat&oacute;w silnikowych. Pierwszy rok działalności przynosi olbrzymi sukces w postaci zam&oacute;wień usług na prawie 2 lata. Firma dość szybko rozbudowuje zaplecze adoptując dodatkowe pomieszczenia. W kolejnych latach wprowadza do oferty sprzedaż urządzeń i części zamiennych. Chłonność rynku powoduje systematyczne poszerzanie oferty handlowej i jej przewagę w przychodach nad usługami.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 1991</span></p>\r\n<p><span style=\"font-size: 10pt;\">Firma już w nowej polskiej rzeczywistości polityczno-ustrojowej rozpoczyna budowę obecnej siedziby w Zielonej G&oacute;rze. Powstaje nowoczesna część serwisowa oraz rozbudowany dział handlowy. Z biegiem czasu zostaje w niej uruchomiona pierwsza samoobsługowa hurtownia/market branżowy w wojew&oacute;dztwie lubuskim.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 1992</span></p>\r\n<p><span style=\"font-size: 10pt;\">Dynamiczny rozw&oacute;j firmy pozwala właścicielom na realizację koncepcji budowy sieci hurtowni instalacyjno-sanitarnych w Zachodniej Polsce.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 1993</span></p>\r\n<p><span style=\"font-size: 10pt;\">Powstaje pierwszy oddział zamiejscowy w Wałczu.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 1996</span></p>\r\n<p><span style=\"font-size: 10pt;\">Po sukcesie oddziału w Wałczu przychodzi kolej na oddział w Gorzowie Wlkp., kt&oacute;ry okazuje się r&oacute;wnie trafną inwestycją.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 1997</span></p>\r\n<p><span style=\"font-size: 10pt;\">Firma idzie za ciosem i już rok p&oacute;źniej uruchamia swoją jednostkę w Legnicy. Obecnie jest to jedna z 3 największych jednostek firmy AQUA.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 1998</span></p>\r\n<p><span style=\"font-size: 10pt;\">Przyni&oacute;sł nową koncepcję jaką była konsolidacja polskich firm handlowych z branży instalacyjnej i sanitarnej SBS. Była to odpowiedź na ekspansję zagranicznych sieci na polski rynek. W 1998 zarejestrowano stowarzyszenie skupiające 20 czołowych firm handlowych, wyr&oacute;żniających się wiodącą pozycją na lokalnym rynku, rzetelnością kupiecką i wiarygodnością finansową. Firma AQUA była jednym z założycieli grupy, kt&oacute;ra na dzień dzisiejszy jest największą grupą zakupową branży instalacyjnej, grzewczej i sanitarnej w Polsce. Zrzesza ponad 90 firm, kt&oacute;re łącznie posiadają 170 punkt&oacute;w handlowych.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2002</span></p>\r\n<p><span style=\"font-size: 10pt;\">Powstaje początkowo niewielki oddział we Wrocławiu, z czasem jednostka zmienia lokalizacje aby stać się poważnym graczem na rynku wrocławskim.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2003</span></p>\r\n<p><span style=\"font-size: 10pt;\">Firma AQUA rozpoczyna import specjalistycznych produkt&oacute;w z branży techniki pompowej, system&oacute;w nawadniających oraz elektrozawor&oacute;w. To nowy etap w działalności firmy jako wyłączny dystrybutor na terytorium naszego kraju.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2004</span></p>\r\n<p><span style=\"font-size: 10pt;\">Powstaje kolejna inicjatywa silnych firm realizujących obsługę w zakresie sieci zewnętrznych. Powstaje ścisła dość hermetyczna grupa zakupowa Polskie Składy Armatury. I tym razem firma AQUA zaangażowała się we wsp&oacute;łtworzenie nowego podmiotu mającego stanowić przeciwwagę dla siły firm zagranicznych. Na dzień dzisiejszy P.S.A zrzesza 17 firm z całej Polski co daje 39 punkt&oacute;w handlowych.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2005</span></p>\r\n<p><span style=\"font-size: 10pt;\">Firma uruchamia pierwszą jednostkę w wojew&oacute;dztwie wielkopolskim. Nowy oddział w Wolsztynie powstaje na początku roku.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2007</span></p>\r\n<p><span style=\"font-size: 10pt;\">Powstaje jeszcze nie do końca wyklarowana struktura sprzedaży sieci zewnętrznych, kt&oacute;ra przekształci się w niedalekim czasie w oddział Racula (blisko Zielonej G&oacute;ry) jednego z czołowych graczy na rynku w branży sieci zewnętrznych.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2009</span></p>\r\n<p><span style=\"font-size: 10pt;\">To narodziny jednego z najbardziej efektywnych i spektakularnych projekt&oacute;w firmy AQUA. Oddział/dział sprzedaży og&oacute;lnopolskiej. Jednostka, kt&oacute;ra objęła swoim działaniem teren całej Polski, zar&oacute;wno w sprzedaży produkt&oacute;w tradycyjnych jak i importowanych.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2010</span></p>\r\n<p><span style=\"font-size: 10pt;\">Powstaje nieduży oddział w Poznaniu z czasem przekształcony w biuro handlowe skierowane gł&oacute;wnie na sektor inwestycji oraz obsługi wodociąg&oacute;w, ciepłowni, oczyszczalni i zakład&oacute;w przemysłowych.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2011</span></p>\r\n<p><span style=\"font-size: 10pt;\">To rok aż dw&oacute;ch projekt&oacute;w: oddział w Nowej Soli oraz oddział w Jeleniej G&oacute;rze - do kt&oacute;rego otwarcia firma przygotowywała się od kilku lat. Rok 2011 był początkiem zacieśnienia wsp&oacute;łpracy z firmą Viessmann i rozpoczęciem inwestycji jaką była budowa w Gorzowie Wlkp. nowoczesnego i jednego z największych salon&oacute;w firmowych Viessmann w regionie. Inwestycja został zakończona w 2012r.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2014</span></p>\r\n<p><span style=\"font-size: 10pt;\">To uruchomienie oddziału w Śremie, co stanowiło r&oacute;wnież zaplecze i wsparcie dla działalności biura handlowego w Poznaniu.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2015</span></p>\r\n<p><span style=\"font-size: 10pt;\">Milowy krok w historii firmy AQUA. Powstaje nowoczesny magazyn centralny o powierzchni ponad 2tys. mkw, 14 tys. mkw składu zewnętrznego i dysponujący ponad 12 tys. produkt&oacute;w naszej branży.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2017</span></p>\r\n<p><span style=\"font-size: 10pt;\">To otwarcie aż dw&oacute;ch nowych oddział&oacute;w. W Lubinie i Wrocławiu. Od tego momentu firma w samym Wrocławiu posiada już 2 oddziały.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> dzisiaj</span></p>\r\n<p><span style=\"font-size: 10pt;\">Firma oferuje praktycznie pełną paletę asortymentu techniki instalacyjnej, grzewczej, pompowej, sanitarnej, nawodnieniowej, fontannowej oraz armatury, sieci zewnętrznych, automatyki i produkt&oacute;w specjalistycznych. Oferujemy usługi serwisowe w zakresie pomp i mieszadeł, silnik&oacute;w do pomp oraz serwis gwarancyjny i pogwarancyjny firm Ebara i Lowara. Obsługujemy wszystkie grupy instalator&oacute;w firm wykonawczych, deweloper&oacute;w oraz wodociąg&oacute;w, ciepłowni, oczyszczalni ściek&oacute;w. Bardzo silną stroną naszych jednostek jest wsp&oacute;łpraca z zakładami przemysłowymi oraz jednostkami branży sadowniczej i hodowlanej.</span></p>\r\n<p style=\"text-align: center;\" class=\"text-info\"><i class=\"fad fa-handshake fa-2x\"></i><br />Zapraszamy Państwa z wielką przyjemnością i pasją branżową do wsp&oacute;łpracy.</p>', '', '', '', '', 4, 'on', '', '2019-10-25', '2019-10-25 13:46:14', '2019-11-08 11:12:42'),
(54, 19, 18, 0, 'Treść - Centrala', '', '<p><span style=\"font-size: 18pt;\" class=\"text-info\">AQUA Grupa SBS sp. z o.o.</span><br /><span style=\"font-size: 10pt;\" class=\"text-info\">ul. Marii Skłodowskiej-Curie 25, 65-124 Zielona G&oacute;ra</span></p>\r\n<p><img style=\"width: auto;\" src=\"http://repozytorium.aqua.net.pl/kontakt/zg.png\" alt=\"http://repozytorium.aqua.net.pl/kontakt/zg.png\" /></p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">Dział sprzedaży i ofert:</td>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">tel.: 68 451 11 83, e-mail: <a href=\"mailto:sprzedaz@aqua.net.pl\">sprzedaz@aqua.net.pl</a>, <a href=\"mailto:oferty@aqua.net.pl\">oferty@aqua.net.pl</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">Sekretariat:</td>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">tel.: 68 456 76 08, e-mail: <a href=\"mailto:sekretariat@aqua.net.pl\">sekretariat@aqua.net.pl</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">Dział Księgowości:</td>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">tel.: 68 456 76 07, e-mail: <a href=\"mailto:ksiegowosc@aqua.net.pl\">ksiegowosc@aqua.net.pl</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">Dział Zakup&oacute;w i Logistyki:</td>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">tel.: 68 451 11 85, e-mail: <a href=\"mailto:logistyka@aqua.net.pl\">logistyka@aqua.net.pl</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 5px;\">Dział Marketingu:</td>\r\n<td style=\"padding: 5px;\">tel.: 68 456 76 55, e-mail: <a href=\"mailto:marketing@aqua.net.pl\">marketing@aqua.net.pl</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">Koordynaty GPS:</td>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">N 51 94\'960\" E 15 52\'394\"</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">KRS:</td>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">0000122163</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">NIP:</td>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">929-005-38-76</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">REGON:</td>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">970032173</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 5px;\">Bank:</td>\r\n<td style=\"padding: 5px;\">PKO BP SA I O/ Zielona G&oacute;ra 78102054020000010200212589</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '', '', '', 5, 'on', '', '2019-10-25', '2019-10-25 13:51:38', '2019-11-12 11:04:20'),
(56, 20, 18, 0, 'Programy partnerskie', '', '<p><span style=\"font-size: 18pt;\" class=\"text-info\">Programy partnerskie</span></p>\r\n<p>Poniżej znajduje się dokument do pobrania, kt&oacute;ry zawiera regulamin naszego programu partnerskiego dla klient&oacute;w i katalog nagr&oacute;d.</p>', '', '', '', '', 2, 'on', '', '2019-10-25', '2019-10-25 14:04:27', '2019-11-08 12:00:56'),
(57, 6, 7, 0, 'Kariera', 'Aktualne oferty pracy', NULL, '', '', '', '', 9, 'on', '', '2019-10-25', '2019-10-25 14:25:08', '2019-10-25 14:25:50'),
(58, 6, 7, 0, 'Programy partnerskie', 'Programy partnerskie', NULL, '', '', '', '', 10, 'on', '', '2019-10-25', '2019-10-25 14:25:26', '2019-10-25 14:26:21'),
(59, 22, 21, 0, 'Zielona Góra', '', '<p><span style=\"font-size: 14pt;\">Centrala firmy - Zielona G&oacute;ra</span></p>', '', '', '', '', 1, 'on', '', '2019-10-25', '2019-10-25 14:34:10', '2019-10-28 12:58:47'),
(60, 22, 21, 0, 'Legnica', '', '<p><span style=\"font-size: 14pt;\">Oddział Legnica</span></p>', '', '', '', '', 2, 'on', '', '2019-10-25', '2019-10-25 14:45:44', '2019-10-28 12:58:58'),
(62, 22, 21, 0, 'Nowa Sól', '', '<p><span style=\"font-size: 14pt;\">Oddział Nowa S&oacute;l</span></p>', '', '', '', '', 3, 'on', '', '2019-10-28', '2019-10-28 13:00:04', '2019-10-28 13:04:14'),
(64, 22, 21, 0, 'Głogów', '', '<p><span style=\"font-size: 14pt;\">Oddział Głog&oacute;w</span></p>', '', '', '', '', 4, 'on', '', '2019-10-28', '2019-10-28 13:11:52', '2019-10-28 13:14:57'),
(65, 19, 18, 0, 'Treść - Kariera', '', '<p style=\"text-align: left;\"><span style=\"font-size: 18pt;\" class=\"text-info\">Dołącz do nas!</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 12pt;\">Poniżej znajdują się aktualne oferty pracy dla poszczeg&oacute;lnych oddział&oacute;w naszej firmy. Możesz r&oacute;wnież skorzystać z filtra po prawej stronie, aby wyświetlić oferty <strong>tylko danego oddziału</strong>.</span></p>', '', '', '', '', 6, 'on', '', '2019-10-28', '2019-10-28 13:22:41', '2019-11-08 11:59:12'),
(66, 22, 21, 0, 'Jelenia Góra', '', '<p><span style=\"font-size: 14pt;\">Oddział Jelenia G&oacute;ra</span></p>', '', '', '', '', 5, 'on', '', '2019-10-28', '2019-10-28 13:29:55', '2019-10-28 13:30:59'),
(67, 22, 21, 0, 'Śrem', '', '<p><span style=\"font-size: 14pt;\">Oddział Śrem</span></p>', '', '', '', '', 6, 'on', '', '2019-10-28', '2019-10-28 13:32:53', '2019-10-28 13:34:24'),
(68, 22, 21, 0, 'Wałcz', '', '<p><span style=\"font-size: 14pt;\">Oddział Wałcz</span></p>', '', '', '', '', 7, 'on', '', '2019-10-28', '2019-10-28 13:39:07', '2019-10-28 13:39:39'),
(69, 22, 21, 0, 'Wrocław (Mokronoska)', '', '<p><span style=\"font-size: 14pt;\">Oddział Wrocław (Mokronoska)</span></p>', '', '', '', '', 8, 'on', '', '2019-10-28', '2019-10-28 13:48:57', '2019-10-28 13:49:41'),
(70, 19, 22, 0, 'Klauzula', '', '<p>Pamiętaj, aby na końcu swojego CV dodać klauzulę:</p>\r\n<p><em>\"Wyrażam zgodę na przetwarzanie moich danych osobowych przez \"AQUA - Grupa SBS\" sp. z o.o. w celu prowadzenia rekrutacji na aplikowane przeze mnie stanowisko\"</em>.</p>', '', '', '', '', 7, 'on', '', '2019-10-28', '2019-10-28 13:55:48', '2019-11-04 15:19:02'),
(71, 23, 18, 0, 'Ulotki dla elektrociepłowni', '', '<p><span style=\"font-size: 14pt;\">Ulotki</span></p>', '', '', '', '', 1, 'on', '', '2019-10-31', '2019-10-31 10:03:51', '2019-10-31 13:46:36'),
(72, 23, 18, 0, 'Katalogi dla elektrociepłowni', '', '<p><span style=\"font-size: 14pt;\">Katalogi</span></p>', '', '', '', '', 2, 'on', '', '2019-10-31', '2019-10-31 10:07:51', '2019-10-31 13:46:36'),
(73, 6, 7, 0, 'Oferta dla elektrociepłowni', 'Oferta dla elektrociepłowni', NULL, '', '', '', '', 11, 'on', '', '2019-10-31', '2019-10-31 10:15:29', '2019-10-31 10:16:54'),
(75, 6, 7, 0, 'Oferta dla firm wykonawczych', 'Oferta dla firm wykonawczych', NULL, '', '', '', '', 12, 'on', '', '2019-10-31', '2019-10-31 10:59:05', '2019-10-31 10:59:31'),
(76, 23, 18, 0, 'Ulotki dla firm wykonawczych', '', '<p><span style=\"font-size: 14pt;\">Ulotki</span></p>', '', '', '', '', 3, 'on', '', '2019-10-31', '2019-10-31 11:09:36', '2019-10-31 13:46:36'),
(77, 23, 18, 0, 'Katalogi dla firm wykonawczych', '', '<p><span style=\"font-size: 14pt;\">Katalogi</span></p>', '', '', '', '', 4, 'on', '', '2019-10-31', '2019-10-31 11:12:47', '2019-10-31 13:46:36'),
(78, 23, 18, 0, 'Ulotki dla instalatorów', '', '<p><span style=\"font-size: 14pt;\">Ulotki</span></p>', '', '', '', '', 5, 'on', '', '2019-10-31', '2019-10-31 11:57:11', '2019-10-31 13:46:36'),
(79, 23, 18, 0, 'Katalogi dla instalatorów', '', '<p><span style=\"font-size: 14pt;\">Katalogi</span></p>', '', '', '', '', 6, 'on', '', '2019-10-31', '2019-10-31 11:57:36', '2019-10-31 13:46:36'),
(80, 6, 7, 0, 'Oferta dla instalatorów', 'Oferta dla instalatorów', NULL, '', '', '', '', 13, 'on', '', '2019-10-31', '2019-10-31 11:59:27', '2019-10-31 11:59:54'),
(81, 6, 7, 0, 'Oferta dla klientów indywidualnych', 'Oferta dla klientów indywidualnych', NULL, '', '', '', '', 14, 'on', '', '2019-10-31', '2019-10-31 12:09:55', '2019-10-31 12:13:40'),
(82, 23, 18, 0, 'Ulotki dla klientów indywidualnych', '', '<p><span style=\"font-size: 14pt;\">Ulotki</span></p>', '', '', '', '', 7, 'on', '', '2019-10-31', '2019-10-31 12:17:17', '2019-10-31 13:46:36'),
(83, 23, 18, 0, 'Katalogi dla klientów indywidualnych', '', '<p><span style=\"font-size: 14pt;\">Katalogi</span></p>', '', '', '', '', 8, 'on', '', '2019-10-31', '2019-10-31 12:17:40', '2019-10-31 13:46:36'),
(84, 6, 7, 0, 'Oferta dla przemysłu', 'Oferta dla przemysłu', NULL, '', '', '', '', 15, 'on', '', '2019-10-31', '2019-10-31 12:20:52', '2019-10-31 12:21:15'),
(86, 23, 18, 0, 'Katalogi dla przemysłu', '', '<p><span style=\"font-size: 14pt;\">Katalogi</span></p>', '', '', '', '', 9, 'on', '', '2019-10-31', '2019-10-31 12:22:12', '2019-10-31 13:46:36');
INSERT INTO `im_object` (`object_id`, `type_id`, `label_id`, `section`, `system_name`, `name`, `content`, `link`, `email`, `form`, `icon`, `position`, `status`, `description`, `date`, `date_create`, `date_modify`) VALUES
(88, 26, 18, 0, 'Treść na stronę \'\'dla przemysłu\'\'', '', '<p style=\"text-align: left;\"><span style=\"font-size: 14pt;\">Strony i sklepy internetowe</span></p>\r\n<ul>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a title=\"Pompy\" href=\"https://tylkopompy.pl\" target=\"_blank\" rel=\"noopener\">Pompy</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a title=\"Zawory antyskażeniowe, zwrotne, regulacyjne, kulowe\" href=\"https://zaworyantyskazeniowe.pl\" target=\"_blank\" rel=\"noopener\">Zawory antyskażeniowe</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://tylkoelektropompki.pl\" target=\"_blank\" rel=\"noopener\">Elektropompki</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://uzdatnianiewody.eu\" target=\"_blank\" rel=\"noopener\">Uzdatnianie wody</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"https://wymienniki.pl\" target=\"_blank\" rel=\"noopener\">Wymienniki ciepła</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"https://mac3.pl\" target=\"_blank\" rel=\"noopener\">Wyłączniki pływakowe</a></li>\r\n</ul>', '', '', '', '', 1, 'on', '', '2019-10-31', '2019-10-31 12:54:29', '2019-10-31 13:14:41'),
(89, 6, 7, 0, 'Oferta dla studniarzy', 'Oferta dla studniarzy', NULL, '', '', '', '', 16, 'on', '', '2019-10-31', '2019-10-31 13:17:02', '2019-10-31 13:17:21'),
(90, 23, 18, 0, 'Ulotki dla studniarzy', '', '<p><span style=\"font-size: 14pt;\">Ulotki</span></p>', '', '', '', '', 10, 'on', '', '2019-10-31', '2019-10-31 13:18:04', '2019-10-31 13:46:36'),
(91, 23, 18, 0, 'Katalogi dla studniarzy', '', '<p><span style=\"font-size: 14pt;\">Katalogi</span></p>', '', '', '', '', 11, 'on', '', '2019-10-31', '2019-10-31 13:18:23', '2019-10-31 13:46:36'),
(92, 6, 7, 0, 'Oferta dla wodociągów', 'Oferta dla wodociągów', NULL, '', '', '', '', 17, 'on', '', '2019-10-31', '2019-10-31 13:26:15', '2019-10-31 13:26:57'),
(93, 23, 18, 0, 'Katalogi dla wodociągów', '', '<p><span style=\"font-size: 14pt;\">Katalogi</span></p>', '', '', '', '', 12, 'on', '', '2019-10-31', '2019-10-31 13:28:04', '2019-10-31 13:46:36'),
(94, 26, 18, 0, 'Treść na stronę \'\'dla wodociągów\'', '', '<p style=\"text-align: left;\"><span style=\"font-size: 14pt;\">Strony i sklepy internetowe</span></p>\r\n<ul>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a title=\"Pompy\" href=\"https://tylkopompy.pl\" target=\"_blank\" rel=\"noopener\">Pompy</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a title=\"Zawory antyskażeniowe, zwrotne, regulacyjne, kulowe\" href=\"https://zaworyantyskazeniowe.pl\" target=\"_blank\" rel=\"noopener\">Zawory antyskażeniowe</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://uzdatnianiewody.eu\" target=\"_blank\" rel=\"noopener\">Uzdatnianie wody</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"https://mac3.pl\" target=\"_blank\" rel=\"noopener\">Wyłączniki pływakowe</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://przepompownie.pomp.pl\" target=\"_blank\" rel=\"noopener\">Przepompownie</a></li>\r\n</ul>', '', '', '', '', 2, 'on', '', '2019-10-31', '2019-10-31 13:28:47', '2019-10-31 13:38:01'),
(95, 23, 18, 0, 'Katalogi dla zakładów komunalnych', '', '<p><span style=\"font-size: 14pt;\">Katalogi</span></p>', '', '', '', '', 14, 'on', '', '2019-10-31', '2019-10-31 13:41:08', '2019-10-31 13:46:36'),
(96, 23, 18, 0, 'Ulotki dla zakładów komunalnych', '', '<p><span style=\"font-size: 14pt;\">Ulotki</span></p>', '', '', '', '', 13, 'on', '', '2019-10-31', '2019-10-31 13:41:31', '2019-10-31 13:46:36'),
(97, 6, 7, 0, 'Oferta dla zakładów komunalnych', 'Oferta dla zakładów komunalnych', NULL, '', '', '', '', 18, 'on', '', '2019-10-31', '2019-10-31 13:41:59', '2019-10-31 13:42:19'),
(99, 20, 18, 0, 'Spis katalogów', '', '<div>\r\n<p>Nasza firma oferuje szeroki wachlarz produkt&oacute;w branży instalacji sanitarnych. Oferujemy doradztwo oraz produkty z zakresu techniki instalacyjnej, pompowej, sanitarnej, grzewczej, fontannowej, system&oacute;w nawadniających. Tutaj znajdziesz spis jedynie podstawowych katalog&oacute;w, aby przeszukać wszystkie kilkaset katalog&oacute;w i kart katalogowych.</p>\r\n</div>', '', '', '', '', 3, 'on', '', '2019-10-31', '2019-10-31 13:52:09', '2019-10-31 13:59:18'),
(100, 6, 7, 0, 'Spis katalogów produktowych', 'Spis katalogów produktowych', NULL, '', '', '', '', 19, 'on', '', '2019-10-31', '2019-10-31 13:58:36', '2019-10-31 13:58:58'),
(101, 27, 18, 0, 'Jerzy Fularz', 'Jerzy Fularz', '<div><span style=\"font-size: 10pt;\"><em>Prezes Zarządu</em></span></div>', '', 'sekretariat@aqua.net.pl', '', '', 1, 'on', '', '2019-11-04', '2019-11-04 12:32:58', '2019-11-04 14:40:47'),
(102, 27, 18, 0, 'Sławomir Fularz', 'Sławomir Fularz', '<div><span style=\"font-size: 10pt;\"><em>Członek Zarządu</em></span></div>', '', 'sekretariat@aqua.net.pl', '', '', 2, 'on', '', '2019-11-04', '2019-11-04 14:26:35', '2019-11-04 14:40:47'),
(103, 27, 18, 0, 'Mariusz Pupin', 'Mariusz Pupin', '<div><span style=\"font-size: 10pt;\"><em>Dyrektor Zarządzający / Członek Zarządu</em></span></div>', '', 'sekretariat@aqua.net.pl', '', '', 3, 'on', '', '2019-11-04', '2019-11-04 14:28:34', '2019-11-04 14:40:47'),
(104, 27, 18, 0, 'Daniel Leśniak', 'Daniel Leśniak', '<div><span style=\"font-size: 10pt;\"><em>Dyrektor ds. Handlowych i Marketingu</em></span></div>', '', 'sekretariat@aqua.net.pl', '', '', 4, 'on', '', '2019-11-04', '2019-11-04 14:37:44', '2019-11-04 14:40:47'),
(105, 27, 18, 0, 'Witold Adamczak', 'Witold Adamczak', '<div><em><span style=\"font-size: 10pt;\">Dyrektor Regionu</span></em></div>', '', 'sekretariat@aqua.net.pl', '', '', 5, 'on', '', '2019-11-04', '2019-11-04 14:39:34', '2019-11-04 14:40:47'),
(107, 28, 18, 0, 'Elastyczność', '<i class=\"fad fa-expand-alt fa-3x\"></i>', '<p><span style=\"font-size: 18pt;\">Elastyczność</span></p>\r\n<p>Chcemy być najbardziej elastyczną siecią hurtowni branży instalacyjnej, grzewczej i pompowej...</p>', '', '', '', '', 1, 'on', 'W nazwie ikona fontawesome', '2019-11-07', '2019-11-07 13:06:31', '2019-11-08 09:31:17'),
(108, 28, 18, 0, 'Twój sukces', '<i class=\"fad fa-thumbs-up fa-3x\"></i>', '<p><span style=\"font-size: 18pt;\">Tw&oacute;j sukces<br /></span></p>\r\n<p>Pracujemy nad sukcesem rynkowym naszych klient&oacute;w oferując rozwiązania wzmacniające ich konkurencyjność rynkową.</p>', '', '', '', '', 2, 'on', 'W nazwie ikona fontawesome', '2019-11-07', '2019-11-07 13:50:13', '2019-11-08 09:31:47'),
(109, 28, 18, 0, 'Otwartość', '<i class=\"fad fa-hand-receiving fa-3x\"></i>', '<p><span style=\"font-size: 18pt;\">Otwartość<br /></span></p>\r\n<p>Jesteśmy zawsze otwarci na nowoczesne i ponadczasowe rozwiązania</p>', '', '', '', '', 3, 'on', 'W nazwie ikona fontawesome', '2019-11-07', '2019-11-07 13:55:27', '2019-11-08 09:32:07'),
(110, 28, 18, 0, 'Rozwój', '<i class=\"fad fa-chart-line fa-3x\"></i>', '<p><span style=\"font-size: 18pt;\">Rozw&oacute;j<br /></span></p>\r\n<p>Już od blisko 40 lat rozwijamy naszą ofertę dla Ciebie.</p>', '', '', '', '', 4, 'on', 'W nazwie ikona fontawesome', '2019-11-07', '2019-11-07 14:46:45', '2019-11-08 09:32:28'),
(111, 28, 18, 0, 'Nowoczesność', '<i class=\"fad fa-microchip fa-3x\"></i>', '<p><span style=\"font-size: 18pt;\">Nowoczesność<br /></span></p>\r\n<p>Naszym celem jest wdrażanie rozwiązań wzmacniających konkurencyjność rynkową naszych Klient&oacute;w.</p>', '', '', '', '', 5, 'on', 'W nazwie ikona fontawesome', '2019-11-07', '2019-11-07 14:51:44', '2019-11-08 09:32:42'),
(112, 28, 18, 0, 'Pomoc', '<i class=\"fad fa-life-ring fa-3x\"></i>', '<p><span style=\"font-size: 18pt;\">Pomoc<br /></span></p>\r\n<p>Pracujemy nad sukcesem rynkowym naszych klient&oacute;w pomagając im w doradztwie technicznym i handlowym.</p>', '', '', '', '', 6, 'on', 'W nazwie ikona fontawesome', '2019-11-07', '2019-11-07 14:55:34', '2019-11-08 09:33:01'),
(113, 28, 18, 0, 'Bogata oferta', '<i class=\"fad fa-clipboard-list-check fa-3x\"></i>', '<p><span style=\"font-size: 18pt;\">Bogata oferta<br /></span></p>\r\n<p>Ponad 19 tysięcy produkt&oacute;w z branży instalacyjnej, grzewczej, sieci zewnętrznych, pompowej i nawodnieniowej.</p>', '', '', '', '', 7, 'on', 'W nazwie ikona fontawesome', '2019-11-08', '2019-11-08 08:59:23', '2019-11-08 09:33:14'),
(114, 28, 18, 0, 'Sieć oddziałów', '<i class=\"fad fa-map-marked-alt fa-3x\"></i>', '<p><span style=\"font-size: 18pt;\">Sieć oddział&oacute;w<br /></span></p>\r\n<p>Już od ponad 30 lat nasza firma tworzy sieć kilkunastu oddział&oacute;w w całej Polsce Zachodniej.</p>', '', '', '', '', 8, 'on', 'W nazwie ikona fontawesome', '2019-11-08', '2019-11-08 09:03:41', '2019-11-08 09:33:27'),
(115, 6, 7, 0, 'Oddziały', 'Mapa naszych oddziałów', NULL, '', '', '', '', 20, 'on', '', '2019-11-12', '2019-11-12 10:32:00', '2019-11-12 10:32:30'),
(116, 6, 7, 0, 'Kontakt', 'Kontakt do poszczególnych działów centrali i formularz kontaktowy', NULL, '', '', '', '', 21, 'on', '', '2019-11-12', '2019-11-12 11:44:36', '2019-11-22 12:41:20'),
(117, 29, 27, 0, 'aco', 'ACO', '<div class=\"badge badge-secondary pb-1\">odwodnienia liniowe</div>', '', '', '', '', 1, 'on', '', '2019-11-12', '2019-11-12 12:02:19', '2019-11-15 14:40:12'),
(118, 29, 27, 0, 'afriso', 'Afriso', '<div class=\"badge badge-secondary pb-1\">manometry i termometry</div>', '', '', '', '', 2, 'on', '', '2019-11-12', '2019-11-12 12:26:14', '2019-11-15 14:40:13'),
(119, 6, 7, 0, 'Dostawcy', 'Dostawcy<br><small>użyte loga i nazwy firm są własnością ich prawnych właścicieli i zostały użyte tylko w celach informacyjnych</small>', NULL, '', '', '', '', 22, 'on', '', '2019-11-12', '2019-11-12 13:26:09', '2019-11-12 13:26:41'),
(120, 29, 27, 0, 'białogon', 'Białogon', '<div class=\"badge badge-secondary pb-1\">pompy</div>', '', '', '', '', 3, 'on', '', '2019-11-12', '2019-11-12 13:45:49', '2019-11-15 14:40:13'),
(121, 29, 27, 0, 'bwt', 'BWT', '<div class=\"badge badge-secondary pb-1\">uzdatnianie wody</div>\r\n<div class=\"badge badge-secondary pb-1\">chemia</div>', '', '', '', '', 4, 'on', '', '2019-11-12', '2019-11-12 13:54:13', '2019-11-15 14:40:13'),
(122, 29, 27, 0, 'crane', 'Crane', '<div class=\"badge badge-secondary pb-1\">pompy</div>', '', '', '', '', 5, 'on', '', '2019-11-14', '2019-11-14 14:11:45', '2019-11-15 14:40:13'),
(123, 29, 27, 0, 'armak', 'Armak', '<div class=\"badge badge-secondary pb-1\">zawory bezpieczeństwa</div>', '', '', '', '', 6, 'on', '', '2019-11-15', '2019-11-15 10:53:57', '2019-11-15 14:40:13'),
(124, 29, 27, 0, 'avk', 'AVK', '<div class=\"badge badge-secondary pb-1\">armatura</div>', '', '', '', '', 7, 'on', '', '2019-11-15', '2019-11-15 10:54:15', '2019-11-15 14:40:13'),
(125, 29, 27, 0, 'bewa', 'BEWA', '<div class=\"badge badge-secondary pb-1\">studnie betonowe</div>', '', '', '', '', 8, 'on', '', '2019-11-15', '2019-11-15 11:09:25', '2019-11-15 14:40:13'),
(126, 29, 27, 0, 'crane', 'Crane', '<div class=\"badge badge-secondary pb-1\">pompy</div>', '', '', '', '', 9, 'on', '', '2019-11-15', '2019-11-15 11:16:28', '2019-11-15 14:40:13'),
(127, 29, 27, 0, 'danfoss', 'Danfoss', '<div class=\"badge badge-secondary pb-1\">elektrozawory</div>', '', '', '', '', 10, 'on', '', '2019-11-15', '2019-11-15 11:17:42', '2019-11-15 14:40:13'),
(128, 29, 27, 0, 'eotech', 'Eotech', '<div class=\"badge badge-secondary pb-1\">studnie wodomierzowe</div>\r\n<div class=\"badge badge-secondary pb-1\">oczyszczalnie, szamba</div>', '', '', '', '', 11, 'on', '', '2019-11-15', '2019-11-15 11:18:54', '2019-11-15 14:40:13'),
(129, 29, 27, 0, 'ferro', 'Ferro', '<div class=\"badge badge-secondary pb-1\">armatura łazienkowa</div>', '', '', '', '', 12, 'on', '', '2019-11-15', '2019-11-15 12:28:23', '2019-11-15 14:40:13'),
(130, 29, 27, 0, 'fluidra', 'Fluidra', '<div class=\"badge badge-secondary pb-1\">fontanny, baseny</div>', '', '', '', '', 13, 'on', '', '2019-11-15', '2019-11-15 12:37:23', '2019-11-15 14:40:13'),
(131, 29, 27, 0, 'folimpex', 'Folimpex', '<div class=\"badge badge-secondary pb-1\">otulina</div>', '', '', '', '', 14, 'on', '', '2019-11-15', '2019-11-15 12:38:42', '2019-11-15 14:40:13'),
(132, 29, 27, 0, 'gazex', 'Gazex', '<div class=\"badge badge-secondary pb-1\">armatura gazowa</div>', '', '', '', '', 15, 'on', '', '2019-11-15', '2019-11-15 12:41:02', '2019-11-15 14:40:13'),
(133, 29, 27, 0, 'gf plus', 'Georg Fischer', '<div class=\"badge badge-secondary pb-1\">PP</div>', '', '', '', '', 16, 'on', '', '2019-11-15', '2019-11-15 12:42:12', '2019-11-15 14:40:13'),
(134, 29, 27, 0, 'gvr', 'GVR', '<div class=\"badge badge-secondary pb-1\">pompy</div>', '', '', '', '', 17, 'on', '', '2019-11-15', '2019-11-15 12:43:57', '2019-11-15 14:40:13'),
(135, 29, 27, 0, 'hunter', 'Hunter', '<div class=\"badge badge-secondary pb-1\">nawodnienia</div>', '', '', '', '', 18, 'on', '', '2019-11-15', '2019-11-15 13:02:13', '2019-11-15 14:40:13'),
(136, 29, 27, 0, 'idmar', 'Idmar', '<div class=\"badge badge-secondary pb-1\">armatura gazowa</div>', '', '', '', '', 19, 'on', '', '2019-11-15', '2019-11-15 13:06:51', '2019-11-15 14:40:13'),
(137, 29, 27, 0, 'jung pumpen', 'Jung Pumpen', '<div class=\"badge badge-secondary pb-1\">pompy</div>', '', '', '', '', 20, 'on', '', '2019-11-15', '2019-11-15 13:08:05', '2019-11-15 14:40:13'),
(138, 29, 27, 0, 'kaczmarek', 'Kaczmarek', '<div class=\"badge badge-secondary pb-1\">studnie wodomierzowe</div>\r\n<div class=\"badge badge-secondary pb-1\">kanalizacja zewnętrzna</div>\r\n<div class=\"badge badge-secondary pb-1\">PE</div>', '', '', '', '', 21, 'on', '', '2019-11-15', '2019-11-15 13:09:08', '2019-11-15 14:40:13'),
(139, 29, 27, 0, 'kanplast', 'Kanplast', '<div class=\"badge badge-secondary pb-1\">kanalizacja wewnętrzna</div>\r\n<div class=\"badge badge-secondary pb-1\">kanalizacja zewnętrzna</div>', '', '', '', '', 22, 'on', '', '2019-11-15', '2019-11-15 13:15:07', '2019-11-15 14:40:13'),
(140, 29, 27, 0, 'keller', 'Keller', '<div class=\"badge badge-secondary pb-1\">zawory instalacyjne</div>\r\n<div class=\"badge badge-secondary pb-1\">technika grzewcza</div>\r\n<div class=\"badge badge-secondary pb-1\">pex</div>\r\n<div class=\"badge badge-secondary pb-1\">kształtki stalowe</div>', '', '', '', '', 23, 'on', '', '2019-11-15', '2019-11-15 13:17:08', '2019-11-15 14:40:13'),
(141, 29, 27, 0, 'lowara', 'Lowara', '<div class=\"badge badge-secondary pb-1\">pompy</div>', '', '', '', '', 24, 'on', '', '2019-11-15', '2019-11-15 13:20:59', '2019-11-15 14:40:13'),
(142, 29, 27, 0, 'mac-3', 'MAC-3', '<div class=\"badge badge-secondary pb-1\">czujniki poziomu cieczy</div>', '', '', '', '', 25, 'on', '', '2019-11-15', '2019-11-15 13:22:42', '2019-11-15 14:40:13'),
(143, 29, 27, 0, 'magnaplast', 'Magnaplast', '<div class=\"badge badge-secondary pb-1\">kanalizacja wewnętrzna</div>\r\n<div class=\"badge badge-secondary pb-1\">kanalizacja zewnętrzna</div>\r\n<div class=\"badge badge-secondary pb-1\">studnie betonowe</div>\r\n<div class=\"badge badge-secondary pb-1\">pe</div>', '', '', '', '', 26, 'on', '', '2019-11-15', '2019-11-15 13:24:03', '2019-11-15 14:40:13'),
(144, 29, 27, 0, 'nanopanel', 'Nanopanel', '<div class=\"badge badge-secondary pb-1\">technika grzewcza</div>\r\n<div class=\"badge badge-secondary pb-1\">pp</div>', '', '', '', '', 27, 'on', '', '2019-11-15', '2019-11-15 13:26:10', '2019-11-15 14:40:13'),
(145, 29, 27, 0, 'nmc', 'NMC', '<div class=\"badge badge-secondary pb-1\">otulina</div>', '', '', '', '', 28, 'on', '', '2019-11-15', '2019-11-15 13:28:08', '2019-11-15 14:40:13'),
(146, 29, 27, 0, 'nocchi', 'Nocchi', '<div class=\"badge badge-secondary pb-1\">pompy</div>', '', '', '', '', 29, 'on', '', '2019-11-15', '2019-11-15 13:29:16', '2019-11-15 14:40:13'),
(147, 29, 27, 0, 'norson', 'Norson', '<div class=\"badge badge-secondary pb-1\">żeliwo</div>\r\n<div class=\"badge badge-secondary pb-1\">armatura</div>', '', '', '', '', 30, 'on', '', '2019-11-15', '2019-11-15 13:32:29', '2019-11-15 14:40:13'),
(148, 29, 27, 0, 'oase', 'Oase', '<div class=\"badge badge-secondary pb-1\">fontanny, baseny</div>', '', '', '', '', 31, 'on', '', '2019-11-15', '2019-11-15 13:40:26', '2019-11-15 14:40:13'),
(149, 29, 27, 0, 'ode', 'ODE', '<div class=\"badge badge-secondary pb-1\">elektrozawory</div>', '', '', '', '', 32, 'on', '', '2019-11-15', '2019-11-15 13:40:33', '2019-11-15 14:40:13'),
(150, 29, 27, 0, 'pamline', 'Pamline', '<div class=\"badge badge-secondary pb-1\">żeliwo</div>', '', '', '', '', 33, 'on', '', '2019-11-15', '2019-11-15 13:42:50', '2019-11-15 14:40:13'),
(151, 29, 27, 0, 'perfexim', 'Perfexim', '<div class=\"badge badge-secondary pb-1\">technika grzewcza</div>\r\n<div class=\"badge badge-secondary pb-1\">kształtki stalowe</div>\r\n<div class=\"badge badge-secondary pb-1\">zawory instalacyjne</div>', '', '', '', '', 34, 'on', '', '2019-11-15', '2019-11-15 13:45:29', '2019-11-15 14:40:13'),
(152, 29, 27, 0, 'rainbird', 'Rain Bird', '<div class=\"badge badge-secondary pb-1\">nawodnienia</div>', '', '', '', '', 35, 'on', '', '2019-11-15', '2019-11-15 13:45:37', '2019-11-15 14:40:13'),
(153, 29, 27, 0, 'rainspa', 'Rain SPA', '<div class=\"badge badge-secondary pb-1\">nawodnienia</div>', '', '', '', '', 36, 'on', '', '2019-11-15', '2019-11-15 13:48:49', '2019-11-15 14:40:13'),
(154, 29, 27, 0, 'rakoczy', 'Rakoczy', '<div class=\"badge badge-secondary pb-1\">technika grzewcza</div>', '', '', '', '', 37, 'on', '', '2019-11-15', '2019-11-15 13:51:49', '2019-11-15 14:40:13'),
(155, 29, 27, 0, 'reflex', 'Reflex', '<div class=\"badge badge-secondary pb-1\">zbiorniki przeponowe</div>', '', '', '', '', 38, 'on', '', '2019-11-15', '2019-11-15 13:58:17', '2019-11-15 14:40:13'),
(156, 29, 27, 0, 'sanha', 'Sanha', '<div class=\"badge badge-secondary pb-1\">miedź</div>', '', '', '', '', 39, 'on', '', '2019-11-15', '2019-11-15 14:00:53', '2019-11-15 14:40:13'),
(157, 29, 27, 0, 'socla', 'Socla', '<div class=\"badge badge-secondary pb-1\">armatura</div>', '', '', '', '', 40, 'on', '', '2019-11-15', '2019-11-15 14:02:28', '2019-11-15 14:40:13'),
(158, 29, 27, 0, 'solino', 'Solino', '<div class=\"badge badge-secondary pb-1\">chemia</div>', '', '', '', '', 41, 'on', '', '2019-11-15', '2019-11-15 14:02:41', '2019-11-15 14:40:13'),
(159, 29, 27, 0, 'sotlarentz', 'Sotlarentz', '<div class=\"badge badge-secondary pb-1\">chemia</div>', '', '', '', '', 42, 'on', '', '2019-11-15', '2019-11-15 14:05:36', '2019-11-15 14:40:13'),
(160, 29, 27, 0, 'speroni', 'Speroni', '<div class=\"badge badge-secondary pb-1\">pompy</div>\r\n<div class=\"badge badge-secondary pb-1\">elektropompki</div>', '', '', '', '', 43, 'on', '', '2019-11-15', '2019-11-15 14:06:47', '2019-11-15 14:40:13'),
(161, 29, 27, 0, 'spiroflex', 'Spiroflex', '<div class=\"badge badge-secondary pb-1\">kominy</div>', '', '', '', '', 44, 'on', '', '2019-11-15', '2019-11-15 14:08:16', '2019-11-15 14:40:13'),
(162, 29, 27, 0, 'techneu', 'Techneu', '<div class=\"badge badge-secondary pb-1\">oczyszczalnie, szamba</div>', '', '', '', '', 45, 'on', '', '2019-11-15', '2019-11-15 14:09:34', '2019-11-15 14:40:13'),
(163, 29, 27, 0, 'thermaflex', 'Thermaflex', '<div class=\"badge badge-secondary pb-1\">otulina</div>', '', '', '', '', 46, 'on', '', '2019-11-15', '2019-11-15 14:10:47', '2019-11-15 14:40:13'),
(164, 29, 27, 0, 'tweetop', 'Tweetop', '<div class=\"badge badge-secondary pb-1\">pex</div>', '', '', '', '', 47, 'on', '', '2019-11-15', '2019-11-15 14:12:05', '2019-11-15 14:40:13'),
(165, 29, 27, 0, 'watertop', 'Watertop', '<div class=\"badge badge-secondary pb-1\">elektrozawory</div>', '', '', '', '', 48, 'on', '', '2019-11-15', '2019-11-15 14:13:09', '2019-11-15 14:40:13'),
(166, 29, 27, 0, 'wavin', 'Wavin', '<div class=\"badge badge-secondary pb-1\">kanalizacja wewnętrzna</div>\r\n<div class=\"badge badge-secondary pb-1\">kanalizacja zewnętrzna</div>', '', '', '', '', 49, 'on', '', '2019-11-15', '2019-11-15 14:14:43', '2019-11-15 14:40:13'),
(167, 29, 27, 0, 'wika', 'Wika', '<div class=\"badge badge-secondary pb-1\">technika grzewcza</div>\r\n<div class=\"badge badge-secondary pb-1\">manometry i termometry</div>', '', '', '', '', 50, 'on', '', '2019-11-15', '2019-11-15 14:16:11', '2019-11-15 14:40:13'),
(168, 29, 27, 0, 'wobet-hydret', 'Wobet-hydret', '<div class=\"badge badge-secondary pb-1\">oczyszczalnie, szamba</div>', '', '', '', '', 51, 'on', '', '2019-11-15', '2019-11-15 14:18:08', '2019-11-15 14:40:13'),
(169, 29, 27, 0, 'zetkama', 'Zetkama', '<div class=\"badge badge-secondary pb-1\">armatura</div>', '', '', '', '', 52, 'on', '', '2019-11-15', '2019-11-15 14:18:20', '2019-11-15 14:40:13'),
(170, 29, 27, 0, 'grundfos', 'Grundfos', '<div class=\"badge badge-secondary pb-1\">pompy</div>', '', '', '', '', 54, 'on', '', '2019-11-15', '2019-11-15 14:23:56', '2019-11-15 14:40:13'),
(171, 29, 27, 0, 'wilo', 'Wilo', '<div class=\"badge badge-secondary pb-1\">pompy</div>', '', '', '', '', 53, 'on', '', '2019-11-15', '2019-11-15 14:24:51', '2019-11-15 14:40:13'),
(172, 30, 28, 30, 'Poranny start - Immergas', '\"AQUA - GRUPA SBS\", oddział WROCŁAW1 - PORANNY START z firmą IMMERGAS', '<p><span style=\"font-size: 18pt;\">\"AQUA - GRUPA SBS\", oddział WROCŁAW1 - PORANNY START z firmą IMMERGAS</span></p>\r\n<p><span style=\"font-size: 10pt;\">AQUA GRUPA SBS - oddział WROCŁAW- ul.Mokronoska 2 - zaprasza dnia 26 września na<strong> PORANNY STRAT z firmą IMMERGAS</strong>.</span></p>\r\n<p></p>\r\n<p><span style=\"font-size: 10pt;\">Startujemy o godzinie 9:00.</span></p>', '', '', '', '', 1, 'on', 'nowe', '2019-09-11', '2019-11-21 09:57:04', '2019-11-22 12:28:56'),
(173, 6, 7, 0, 'Wydarzenia najnowsze', 'W tym miejscu znajdują się najświeższe informacje z życia firmy', NULL, '', '', '', '', 23, 'on', '', '2019-11-21', '2019-11-21 10:32:00', '2019-11-21 10:52:55'),
(174, 6, 7, 0, 'Wydarzenia archiwalne', 'W tym miejscu znajdują się posty z życia firmy poprzednich lat', NULL, '', '', '', '', 24, 'on', '', '2019-11-21', '2019-11-21 10:35:49', '2019-11-21 10:52:28'),
(175, 30, 28, 0, 'Aeroklub Ziemi Lubuskiej - oddział Śrem', '', '<p><span style=\"font-size: 18pt;\">Spotkanie z Klientami oddziału Śrem - Aeroklub Ziemi Lubuskiej</span></p>\r\n<p>21 lipca wraz z Klientami naszego oddziału Śrem oraz dostawcami PENTAIR WATER i WOBET HYDRET gościliśmy w AEROKLUBIE ZIEMI LUBUSKIEJ (Przylep).</p>\r\n<p>Każdy z uczestnik&oacute;w miał możliwość skosztować nieco adrenaliny i odbyć lot szybowcem.</p>', '', '', '', '', 20, 'on', 'archiwalne', '2017-08-03', '2019-11-21 10:55:09', '2019-11-22 12:28:56'),
(176, 30, 28, 0, 'Poranny start - oddział NOWA SÓL', '', '<p><span style=\"font-size: 18pt;\">AQUA GRUPA SBS - oddział NOWA S&Oacute;L - PORANNY START </span></p>\r\n<p>Zapraszamy wszystkich klient&oacute;w na pyszny poczęstunek!</p>\r\n<p>Tym razem zapraszamy do oddziału AQUA GRUPA SBS - NOWA S&Oacute;L ul.Przemysłowa 34</p>', '', '', '', '', 2, 'on', 'nowe', '2018-09-10', '2019-11-21 12:36:03', '2019-11-22 12:28:56'),
(177, 30, 28, 0, 'AQUA GRUPA SBS - oddział GŁOGÓW - pogłębiamy letnie wyprzedaże', '', '<p><span style=\"font-size: 18pt;\">AQUA GRUPA SBS - oddział GŁOG&Oacute;W - pogłębiamy letnie wyprzedaże</span></p>\r\n<p>Kolejne produkty w promocji! Pogłebiamy letnią wyprzedaż!</p>\r\n<p>Promocja obowiązuje wyłącznie w oddziale AQUA-GRUPA SBS - GŁOG&Oacute;W - ul.Południowa 4 w dniach 01.08.-12.08.2018 lub do wyczerpania zapas&oacute;w.</p>\r\n<p>O szczeg&oacute;ły zapytaj naszych Doradc&oacute;w.</p>', '', '', '', '', 3, 'on', 'nowe', '2018-07-31', '2019-11-21 13:05:33', '2019-11-22 12:28:56'),
(178, 30, 28, 0, 'AQUA GRUPA SBS - oddział WROCŁAW 2 - wystartowały letnie wyprzedaże', '', '<p><span style=\"font-size: 18pt;\">AQUA GRUPA SBS - oddział WROCŁAW 2 - wystartowały letnie wyprzedaże </span></p>\r\n<p>Wystartowała letnia wyprzedaż!</p>\r\n<p>Promocja obowiązuje wyłącznie w oddziale AQUA-GRUPA SBS - WROCŁAW - ul.STRZEGOMSKA 141/145 w dniach 01.08 - 17.08.2018 lub do wyczerpania zapas&oacute;w.</p>\r\n<p>O szczeg&oacute;ły zapytaj naszych Doradc&oacute;w.</p>', '', '', '', '', 4, 'on', 'nowe', '2018-07-26', '2019-11-21 13:07:58', '2019-11-22 12:28:56'),
(179, 30, 28, 0, 'AQUA GRUPA SBS - oddział GŁOGÓW - wystartowały letnie wyprzedaże', '', '<p><span style=\"font-size: 18pt;\">AQUA GRUPA SBS - oddział GŁOG&Oacute;W - wystartowały letnie wyprzedaże</span></p>\r\n<p>Wystartowała letnia wyprzedaż!</p>\r\n<p>Promocja obowiązuje wyłącznie w oddziale AQUA-GRUPA SBS - GŁOG&Oacute;W - ul.Południowa 4 w dniach 18.07.-31.07.2018 lub do wyczerpania zapas&oacute;w.</p>\r\n<p>O szczeg&oacute;ły zapytaj naszych Doradc&oacute;w.</p>', '', '', '', '', 5, 'on', 'nowe', '2018-07-18', '2019-11-21 13:10:24', '2019-11-22 12:28:56'),
(180, 30, 28, 0, 'WIELKIE GRILLOWANIE- AQUA GRUPA oddział GŁOGÓW', '', '<p><span style=\"font-size: 18pt;\">WIELKIE GRILLOWANIE- AQUA GRUPA oddział GŁOG&Oacute;W</span></p>\r\n<p>Kolejny oddział zaprasza wszystkich klient&oacute;w na pyszny poczęstunek!</p>\r\n<p>Ponownie zapraszamy do oddziału AQUA GRUPA SBS - GŁOG&Oacute;W.</p>', '', '', '', '', 6, 'on', 'nowe', '2018-07-09', '2019-11-21 13:13:21', '2019-11-22 12:28:56'),
(181, 30, 28, 0, 'WIELKIE GRILLOWANIE- AQUA GRUPA oddział ŚREM', '', '<p><span style=\"font-size: 18pt;\">WIELKIE GRILLOWANIE- AQUA GRUPA oddział ŚREM</span></p>\r\n<p>ZAPRASZAMY NA WIELKIE GRILLOWANIE!</p>\r\n<p>STRATUJEMY 22 CZERWCA PRZY ULICY SIKORSKIEGO 72.</p>', '', '', '', '', 7, 'on', 'nowe', '2018-06-22', '2019-11-21 13:17:03', '2019-11-22 12:28:56'),
(182, 30, 28, 0, 'AQUA GRUPA SBS -oddział LUBIN - szkolenie z firmą Prandelli', '', '<p><span style=\"font-size: 18pt;\">AQUA GRUPA SBS -oddział LUBIN - szkolenie z firmą Prandelli </span></p>\r\n<p>AQUA GRUPA SBS -oddział LUBIN miał przyjemność gościć swoich Klient&oacute;w 8 czerwca na szkoleniu połączonym z poczęstunkiem z grilla.</p>\r\n<p>Tego dnia swoją prelekcje miała firma Prandelli, kt&oacute;rej serdecznie dziękujemy.</p>', '', '', '', '', 8, 'on', 'nowe', '2018-06-08', '2019-11-21 13:19:28', '2019-11-22 12:28:56'),
(183, 30, 28, 0, 'AQUA GRUPA SBS - oddział ŚREM - spotkanie na strzelnicy', '', '<p><span style=\"font-size: 18pt;\">AQUA GRUPA SBS - oddział ŚREM - spotkanie na strzelnicy</span></p>\r\n<p>Dnia 25 maja AQUA GRUPA SBS oddział ŚREM zorganizował spotkanie dla klient&oacute;w. Każdy m&oacute;gł spr&oacute;bować swoich sił w pobliskiej strzelnicy śremskiej.</p>\r\n<p>Tradycyjnie nie zabrakło pyszności z grilla.</p>', '', '', '', '', 9, 'on', 'nowe', '2018-05-29', '2019-11-21 13:22:17', '2019-11-22 12:28:56'),
(184, 30, 28, 0, 'AQUA GRUPA SBS - DIAMENTY FORBES 2018', '', '<p><span style=\"font-size: 18pt;\">AQUA GRUPA SBS - DIAMENTY FORBES 2018</span></p>\r\n<p>W czwartek 24 maja 2018 ponownie wręczono prestiżowe nagrody DIAMENTY FORBES dla wojew&oacute;dztwa lubuskiego. Tegoroczne Diamenty w naszym regionie przyznano 34 laureatom, wśr&oacute;d nich znalazła się nasza sp&oacute;łka \"AQUA-GRUPA SBS\".</p>\r\n<p>Jest nam niezmiernie miło po raz kolejny znaleźć się w takim gronie.</p>', '', '', '', '', 10, 'on', 'nowe', '2018-05-24', '2019-11-21 13:27:26', '2019-11-22 12:28:56'),
(185, 30, 28, 0, 'Szkolenie produktowe firmy GRUNDOFS dla Doradców AQUA-GRUPA SBS', '', '<p><span style=\"font-size: 18pt;\">Szkolenie produktowe firmy GRUNDOFS dla Doradc&oacute;w AQUA-GRUPA SBS</span></p>\r\n<p>W dniach 22-23 maj nasi Doradcy Techniczni wzięli udział w dwudniowym szkoleniu produkt&oacute;w firmy GRUNDFOS POMPY. Szkolenie odbyło się w siedzibie producenta pomp w Branowie.</p>\r\n<p>Serdecznie dziękujęmy za możliwość uczestnictwa.</p>', '', '', '', '', 11, 'on', 'nowe', '2018-05-22', '2019-11-21 13:30:00', '2019-11-22 12:28:56'),
(186, 30, 28, 0, 'AQUA GRUPA SBS - oddział JELENIA GÓRA - Aeroklub', '', '<p><span style=\"font-size: 18pt;\">AQUA GRUPA SBS - oddział JELENIA G&Oacute;RA -&nbsp;AEROKLUB</span></p>\r\n<p>19 maja oddział AQUA GRUPA SBS JELENIA G&Oacute;RA wraz z Klientami gościli w AEROKLUBIE JELENIOG&Oacute;RSKIM. Każdy z uczestnik&oacute;w odbył lot samolotem WILGA.</p>\r\n<p>Pogoda dopisała i pozwoliła na doświadczenie niesamowitych doznań widokowych w trakcie lotu.</p>', '', '', '', '', 12, 'on', 'nowe', '2018-05-19', '2019-11-21 13:31:44', '2019-11-22 12:28:56'),
(187, 30, 28, 0, 'NOWA SIEDZIBA - ODDZIAŁ LUBIN', '', '<p><span style=\"font-size: 18pt;\">NOWA SIEDZIBA - ODDZIAŁ LUBIN</span></p>\r\n<p>AQUA GRUPA SBS Lubin funkcjonuje pod nowym adresem - od 30 kwietnia zapraszamy na ulicę Marii Skłodowskiej Curie 91d w Lubinie. Oficjalne otwarcie nowej siedziby miało miejsce 11 maja, gdzie mieliśmy przyjemność gościć liczne grono klient&oacute;w.</p>', '', '', '', '', 13, 'on', 'nowe', '2018-05-11', '2019-11-21 13:34:21', '2019-11-22 12:28:56'),
(188, 30, 28, 0, 'WESOŁYCH ŚWIĄT WIELKANOCNYCH', '', '<p><span style=\"font-size: 18pt;\">WESOŁYCH ŚWIĄT WIELKANOCNYCH</span></p>', '', '', '', '', 14, 'on', 'nowe', '2018-03-29', '2019-11-21 13:35:55', '2019-11-22 12:28:56'),
(189, 30, 28, 0, '1-2 marzec 2018 - szkolenie w Centrali AQUA-GRUPA SBS', '', '<p><span style=\"font-size: 18pt;\">1 i 2 marca 2018 - szkolenie w Centrali AQUA-GRUPA SBS </span></p>\r\n<p>W dniach 1-2 marzec w centrali AQUA-GRUPA SBS odbyło sie szkolenie dla naszych Doradc&oacute;w technicznych. Szkolenie poprowadził Pan Matteo Candela z firmy Rain Spa z Włoch, firmy specjalizującej sie w systemach nawadniajacych.</p>', '', '', '', '', 15, 'on', 'nowe', '2018-03-19', '2019-11-21 13:41:13', '2019-11-22 12:28:56'),
(190, 30, 28, 0, 'Oddział LUBIN - spotkanie w ramach CYKLU PORANNY START', '', '<p><span style=\"font-size: 18pt;\">Oddział LUBIN- spotkanie w ramach CYKLU PORANNY START</span></p>\r\n<p>14 marca w AQUA-GRUPA SBS oddział LUBIN odbyło się spotanie w ramach cyklu spotkań - PORANNY START. Tym razem Klienci mogli pozyskać wiedzę o produktach firmy VARIO TERM.</p>', '', '', '', '', 16, 'on', 'nowe', '2018-03-19', '2019-11-21 13:43:19', '2019-11-22 12:28:56'),
(191, 30, 28, 0, 'Oddział Lubin - spotkanie na kręglach', '', '<p><span style=\"font-size: 18pt;\">Oddział Lubin - spotkanie na kręglach</span></p>\r\n<p>9 marca 2018 koledzy z oddziału Lubin wraz z grupą Klient&oacute;w pr&oacute;bowali swoich sił w grze w kręgle.</p>', '', '', '', '', 17, 'on', 'nowe', '2018-03-09', '2019-11-21 13:44:56', '2019-11-22 12:28:56'),
(192, 30, 28, 0, 'GAZELA BIZNESU 2017 DLA AQUA GRUPA SBS', '', '<p>GAZELA BIZNESU 2017 DLA AQUA GRUPA SBS</p>\r\n<p><strong> 31.01.2018 w hotelu IBB ANDERSIA HOTEL</strong> w Poznaniu odbyła się uroczysta gala wręczenia prestiżowych nagr&oacute;d <strong>GAZELE BIZNESU</strong>.</p>', '', '', '', '', 18, 'on', 'nowe', '2018-01-31', '2019-11-21 13:46:42', '2019-11-22 12:28:56'),
(193, 30, 28, 0, 'AQUA GRUPA SBS - NOWE ODDZIAŁY', '', '<p><span style=\"font-size: 18pt;\">AQUA GRUPA SBS - NOWE ODDZIAŁY </span></p>\r\n<p>Z końcem grudnia 2017 i początkiem stycznia 2018 roku nasza firma uruchomiła dwie nowe jednostki. Mogą Państwo dokonać zakup&oacute;w w mieście Lubin pod adresem Stefana Okrzei 3, a także we Wrocławiu pod adresem ul.Strzegomska 141/145</p>', '', '', '', '', 19, 'on', 'nowe', '2018-01-02', '2019-11-21 13:48:48', '2019-11-22 12:28:56'),
(194, 30, 28, 0, 'AQUA GRUPA SBS - DIAMENTY FORBES 2017', '', '<p><span style=\"font-size: 18pt;\">AQUA GRUPA SBS- DIAMENTY FORBES 2017</span></p>\r\n<p>25 maja w Pałacu Mierzęcin odbyła się Gala wręczenia Diament&oacute;w Forbesa. W tym roku na liście znalazło się 36 firm z wojew&oacute;dztwa lubuskiego, w tym także nasza sp&oacute;łka \"AQUA-GRUPA SBS\" Sp. z o.o. Jest nam niezmiernie miło znaleźć się w gronie tak prężnie rozwijających się firm.</p>', '', '', '', '', 21, 'on', 'archiwalne', '2017-06-06', '2019-11-21 14:38:25', '2019-11-22 12:28:56'),
(195, 30, 28, 0, 'AQUA GRUPA SBS - AKCJA AUTOKAROWA - TARGI INSTALACJE 2016 POZNAŃ', '', '<p><span style=\"font-size: 18pt;\">AQUA GRUPA SBS - AKCJA AUTOKAROWA - TARGI INSTALACJE 2016 POZNAŃ</span></p>\r\n<p>\"AQUA-Grupa SBS\" ponownie brała czynny udział w AKCJI AUTOKAROWEJ na TARGI INSTALACJE W POZNANIU.</p>\r\n<p>Kolejny już rok oddziały naszej firmy wraz z Klientami (przeszło 150 zaproszonych Klinet&oacute;w) odwiedzało TARGI INSTALACJE W POZNANIU.</p>', '', '', '', '', 29, 'on', 'archiwalne', '2016-04-25', '2019-11-22 10:16:30', '2019-11-22 12:28:56'),
(196, 30, 28, 0, 'Wyjazd integracyjny', '', '<p><span style=\"font-size: 18pt;\">WYJAZD INTEGRACYJNY</span></p>\r\n<p>Pracownicy AQUA-Grupa SBS po raz kolejny mieli możliwość wsp&oacute;lnej integracji.</p>\r\n<p>Tym razem pr&oacute;bowaliśmy swoich sił podczas manewr&oacute;w na terenie Międzyrzeckiego Rejonu Umocnionego.</p>', '', '', '', '', 26, 'on', 'archiwalne', '2016-09-16', '2019-11-22 10:33:03', '2019-11-22 12:28:56'),
(197, 30, 28, 0, 'Mecz koszykówki - Zielona Góra', '', '<p><span style=\"font-size: 18pt;\">Oddział Zielona G&oacute;ra: mecz koszyk&oacute;wki i wyjście z klientami</span></p>\r\n<p>Stelmet BC ZIELONA G&Oacute;RA przegrał na własnym parkiecie z MHP RIESEN LUDWIGSBURG 76:81. Klienci oraz handlowcy z oddziału Zielona G&oacute;ra mieli możlwiość dopingu naszej drużynie na żywo. Trzymamy kciuki za drużynę Stelmet w następnych rozgrywkach.</p>', '', '', '', '', 31, 'on', 'archiwalne', '2016-02-04', '2019-11-22 10:38:45', '2019-11-22 12:28:56'),
(198, 30, 28, 0, 'Wyścig przełajowy - V seria Pucharu Polski (Zielona Góra)', '', '<p><span style=\"font-size: 18pt;\">Wyścig przełajowy - V seria Pucharu Polski (Zielona G&oacute;ra)</span></p>\r\n<p>W ubiegłą niedzielę 8.11.2015r. odbył się Wyścig Przełajowy jako V seria Pucharu Polski o Puchar Prezydenta miasta Zielona G&oacute;ra. \"Aqua-Grupa SBS\" wsparła finansowo to przedsięwzięcie. Pogoda spowodowała, że wszyscy bawili się świetnie. Uczestnicy samego wyścigu, jak i wszyscy dopingujący.</p>', '', '', '', '', 35, 'on', 'archiwalne', '2015-11-08', '2019-11-22 10:52:55', '2019-11-22 12:28:56'),
(199, 30, 28, 0, 'WRĘCZENIE NAGRÓD DLA PARAOLIMPIJCZYKÓW ', '', '<p><span style=\"font-size: 18pt;\">ZSR START ZIELONA G&Oacute;RA- WRĘCZENIE NAGR&Oacute;D DLA PARAOLIMPIJCZYK&Oacute;W</span></p>\r\n<p>W dniu 10 października 2016r. podczas sesji sejmiku wojew&oacute;dztwa lubuskiego odbyła się uroczystość wręczenia nagr&oacute;d dla lubuskich medalist&oacute;w XV Letnich Igrzysk Paraolimpijskich.</p>', '', '', '', '', 25, 'on', 'archiwalne', '2016-10-10', '2019-11-22 11:05:39', '2019-11-22 12:28:56'),
(200, 30, 28, 0, 'Działalność społeczna AQUA-GRUPA SBS', '', '<p><span style=\"font-size: 18pt;\">Działalność społeczna \"AQUA - GRUPA SBS\"</span></p>\r\n<p>\"AQUA-GRUPA SBS\"od sierpnia tego roku zaangażowała się w działalność społeczną i jest sponsorem Zrzeszenia Sportowego-Rehabilitacyjno START ZIELONA G&Oacute;RA.</p>', '', '', '', '', 27, 'on', 'archiwalne', '2016-08-30', '2019-11-22 11:09:51', '2019-11-22 12:28:56'),
(201, 30, 28, 0, 'SZKOLENIE/SPOTKANIE Z KLIENTAMI', '', '<p><span style=\"font-size: 18pt;\">SZKOLENIE/SPOTKANIE Z KLIENTAMI</span></p>\r\n<p>W dniach 4-5 grudzień 2015 roku odbyło sie szkolenie dla Klient&oacute;w oraz naszych Doradc&oacute;w. Firmy jakie edukowały: Zetkama, Fondital, FEmot.</p>\r\n<p>Wiecz&oacute;r zakończyliśmy wsp&oacute;lną zabawą w Kasyno.</p>', '', '', '', '', 34, 'on', 'archiwalne', '2015-12-04', '2019-11-22 11:17:30', '2019-11-22 12:28:56'),
(202, 30, 28, 0, 'Wsparcie finansowe TURNIEJU TENISOWEGO DLA DZIECI', '', '<p><span style=\"font-size: 18pt;\">Wsparcie finansowe TURNIEJU TENISOWEGO DLA DZIECI DO LAT: 8, 9 i 10</span></p>\r\n<p>Dnia 16 stycznia 2016 roku w Wojew&oacute;dzkim Ośrodku Sportu i Rekreacji w Drzonkowie odbył się TURNIEJ TENISA ZIEMNEGO DLA DZIECI DO LAT: 8,9 i 10.</p>\r\n<p>\"AQUA-Grupa SBS\" Sp. z o.o. była jednym ze sponsor&oacute;w owego przedsięwzięcia.</p>', '', '', '', '', 32, 'on', 'archiwalne', '2016-01-16', '2019-11-22 11:25:44', '2019-11-22 12:28:56'),
(203, 30, 28, 0, 'OGÓLNOPOLSKI WYŚCIG MTB JAKO PIERWSZA SERIA PUCHARU POLSKI', '', '<p><span style=\"font-size: 18pt;\">OG&Oacute;LNOPOLSKI WYŚCIG MTB JAKO PIERWSZA SERIA PUCHARU POLSKI</span></p>', '', '', '', '', 30, 'on', 'archiwalne', '2016-04-10', '2019-11-22 11:31:08', '2019-11-22 12:28:56'),
(204, 30, 28, 0, 'Wyjście z Klientami na mecz żużlowy', '', '<p><span style=\"font-size: 18pt;\">Wyjście z Klientami na mecz żużlowy </span></p>\r\n<p>Dnia 22 maja 2016 roku Pracownicy AQUA-GRUPA SBS wraz z Klientami uczestniczyli w meczu żuzlowym na stadionie zielonog&oacute;rskim. Tego dnia obserwowalismy zaciętą walkę pomiędzy Ekantor.pl Falubaz Zielona G&oacute;ra a Stal Gorz&oacute;w.</p>\r\n<p>Zwyciętwo powędrowało do drużyny gorzowskiej.</p>', '', '', '', '', 28, 'on', 'archiwalne', '2016-05-23', '2019-11-22 11:37:16', '2019-11-22 12:28:56'),
(205, 30, 28, 0, 'GAZELA BIZNESU 2016 DLA AQUA-GRUPA SBS', '', '<p><span style=\"font-size: 18pt;\">GAZELA BIZNESU 2016 DLA AQUA-GRUPA SBS </span></p>\r\n<p>Miło nam poinformować, iż AQUA-GRUPA SBS otrzymała Gazele Biznesu 2016. 28 lutego br. w Poznaniu odbyła się Gala wręczenia Gazel Biznesu 2016, na kt&oacute;rej wręczano Gazele dla najbardziej dynamicznych małych i średnich firm.</p>', '', '', '', '', 22, 'on', 'archiwalne', '2017-03-17', '2019-11-22 11:40:45', '2019-11-22 12:28:56'),
(206, 30, 28, 0, 'Oddział Jelenia Góra: mecz koszykówki i wyjście z klientami', '', '<p><span style=\"font-size: 18pt;\">Oddział Jelenia G&oacute;ra: mecz koszyk&oacute;wki i wyjście z klientami</span></p>\r\n<p>26 listopada mieliśmy przyjemność uczestniczyć na meczu koszyk&oacute;wki</p>', '', '', '', '', 24, 'on', 'archiwalne', '2016-11-26', '2019-11-22 11:45:43', '2019-11-22 12:28:56'),
(207, 30, 28, 0, 'Nowa odsłona hurtowni w Zielonej Górze', '', '<p><span style=\"font-size: 18pt;\">Nowa odsłona hurtowni samoobsługowej w Zielonej G&oacute;rze</span></p>\r\n<p>Wraz z naszymi instalatorami stworzyliśmy nowy projekt hurtowni samoobsługowej instal-expert. Wiele cennych sugestii i racjonalizacji zgłoszonych przez naszych klient&oacute;w zostało wprowadzonych w celu usprawnienia obsługi i poszerzenia struktury asortymentowej.</p>', '', '', '', '', 36, 'on', 'archiwalne', '2015-09-27', '2019-11-22 11:49:46', '2019-11-22 12:28:56'),
(208, 30, 28, 0, 'Programy partnerskie 2016', '', '<p><span style=\"font-size: 18pt;\">Nowe Programy Partnerskie na 2016 rok</span></p>\r\n<p>Zapraszamy do zapoznania się z aktualnymi Programami Partnerskimi na rok 2016. Udział w takowych programach to dla Uczestnik&oacute;w pakiet wielu korzyści. Więcej informacji znajdą Państwo w zakładce Programy Partnerskie oraz w oddziałach AQUA-Grupa SBS Sp. z o.o.</p>', '', '', '', '', 33, 'on', 'archiwalne', '2016-01-01', '2019-11-22 11:55:03', '2019-11-22 12:28:56'),
(209, 30, 28, 0, 'Wsparcie Fundacji Wzajemnej Pomocy ARKA', '', '<p><span style=\"font-size: 18pt;\">Wsparcie Fundacji Wzajemnej Pomocy ARKA</span></p>\r\n<p>Niezmiernie miło Nam jest poinformować Państwa, iż przekazaliśmy na ręce przedstawicieli Fundacji Wzajemnej Pomocy ARKA darowiznę niezbędną do remontu \" Dom&oacute;w wsp&oacute;lnoty os&oacute;b, rodzin, samotnych matek z dziećmi\" w postaci grzejnik&oacute;w.</p>', '', '', '', '', 39, 'on', 'archiwalne', '2015-09-13', '2019-11-22 12:07:08', '2019-11-22 12:28:56'),
(210, 30, 28, 0, 'Spotkanie instalatorów', '', '<p><span style=\"font-size: 18pt;\">Oddział Wrocław: Spotkanie instalator&oacute;w </span></p>\r\n<p>25 września zorganizowaliśmy w jednym z Naszych oddział&oacute;w we Wrocławiu kolejne spotkanie dla Instalator&oacute;w połączone z rozdaniem nagr&oacute;d z programu Integris+.</p>', '', '', '', '', 37, 'on', 'archiwalne', '2015-09-25', '2019-11-22 12:16:26', '2019-11-22 12:28:56'),
(211, 30, 28, 0, 'Tłusty czwartek', '', '<p><span style=\"font-size: 18pt;\">TŁUSTY CZWARTEK Z SIECIĄ HURTOWNI AQUA-GRUPA SBS</span></p>\r\n<p>W czwartek 23 lutego zapraszamy do wszystkich punkt&oacute;w naszej sieci hurtowni branży instalacyjnej, grzewczej i pompowej AQUA-GRUPA SBS na słodki poczęstunek.</p>', '', '', '', '', 23, 'on', 'archiwalne', '2017-02-20', '2019-11-22 12:19:56', '2019-11-22 12:28:56'),
(212, 30, 28, 0, 'Wyjazd integracyjny - Amalia 2015', '', '<p><span style=\"font-size: 18pt;\">Wyjazd integracyjny - folwark Amalia 2015</span></p>\r\n<p>Załoga \"AQUA-Grupa SBS\" udała się na wsp&oacute;lny wyjazd do folwarku Amalia, gdzie atrakcji było co niemiara. Podczas spływu kajakowego uśmiech towarzyszył wszystkim uczestnikom.</p>', '', '', '', '', 38, 'on', 'archiwalne', '2015-09-19', '2019-11-22 12:26:17', '2019-11-22 12:28:56'),
(213, 31, 22, 0, 'Sekcja kontakt', '', NULL, '', '', 'd.krawiec@aqua.net.pl', '', 1, 'on', '', '2019-11-22', '2019-11-22 12:38:30', '2019-11-22 12:38:58'),
(214, 31, 22, 0, 'Sekcja FAQ', '', NULL, '', '', '', '', 2, 'on', NULL, '2019-11-22', '2019-11-22 12:49:29', '2019-11-22 12:49:29'),
(215, 6, 7, 0, 'FAQ', 'Odpowiedzi na najczęściej zadawane pytania', NULL, '', '', '', '', 25, 'on', '', '2019-11-22', '2019-11-22 13:04:33', '2019-11-22 13:07:10'),
(216, 32, 29, 0, 'Towar z napędem 230V', 'Chciałbym kupić zawór z napędem 230V, który będzie w pozycji zamkniętej gdy zabraknie zasilania. Jaki powinienem zastosować siłownik?', '<p>Należy zastosować siłownik ze sprężyną powrotną.</p>', '', '', '', 'fal fa-bolt', 1, 'on', '', '2019-11-22', '2019-11-22 13:32:51', '2019-11-22 13:51:17'),
(217, 32, 29, 0, 'Czy Państwa zawory elektromagnetyczne posiadają atest higieniczny PZH?', 'Czy Państwa zawory elektromagnetyczne posiadają atest higieniczny PZH?', '<p>Tak elektrozawory firmy ODE posiadają atest PZH.</p>', '', '', '', 'fal fa-bolt', 2, 'on', 'armatura', '2019-11-22', '2019-11-22 13:44:10', '2019-11-25 09:35:10'),
(218, 32, 29, 0, 'Co jest mi potrzebne do przyłącza gazowego?', 'Co jest mi potrzebne do przyłącza gazowego?', '<p>Aby zbudować gazociąg potrzebne są: rura gazowa DN32, skrzynka gazowa zewnętrzna, przejście PE/STAL, ogranicznik przepływu, zaw&oacute;r kulowy gazowy odcinający 1\", skrzynka gazowa mała na budynku, taśma ostrzegawcza.</p>', '', '', '', 'fal fa-burn', 3, 'on', '', '2019-11-22', '2019-11-22 13:49:25', '2019-11-22 13:50:34'),
(219, 32, 29, 0, 'Co to jest monozłącze i do czego służy?', 'Co to jest monozłącze i do czego służy?', '<p>Monozłacze jest to element niezbędny do podłączenia gazomierza w skrzynce gazowej do uchwytu.</p>', '', '', '', 'fal fa-burn', 4, 'on', '', '2019-11-22', '2019-11-22 13:51:47', '2019-11-22 13:52:59'),
(220, 32, 29, 0, 'Do czego służy ogranicznik przepływu gazu?', 'Do czego służy ogranicznik przepływu gazu?', '<p>Zgodnie z wytycznymi dla przyłączy gazowych mufy z ogranicznikiem przepływu gazu służą jako zawory bezpieczeństwa.</p>', '', '', '', 'fal fa-burn', 5, 'on', '', '2019-11-22', '2019-11-22 13:54:04', '2019-11-22 13:55:18'),
(221, 32, 29, 0, 'Jakiej skrzynki gazowej wymaga aktualnie gazownia?', 'Jakiej skrzynki gazowej wymaga aktualnie gazownia?', '<p>Aktualnie gazownia wymaga skrzynek o wym. 600x600x250 mm, wykonane z tworzywa w kolorze ż&oacute;łtym.</p>', '', '', '', 'fal fa-burn', 6, 'on', '', '2019-11-22', '2019-11-22 13:55:39', '2019-11-22 13:56:29'),
(222, 32, 29, 0, 'Czy muszę stosować reduktor ciśnienia w budynku?', 'Czy muszę stosować reduktor ciśnienia w budynku?', '<p>Tak, zabezpieczy instalację domową i prawidłowe działanie urządzeń pobierających wodę użytkową.</p>', '', '', '', 'fal fa-inbox-in', 7, 'on', '', '2019-11-22', '2019-11-22 14:05:33', '2019-11-22 14:15:18'),
(223, 32, 29, 0, 'Czym różni się zawór Keller od Keller plus?', 'Czym różni się zawór Keller od Keller plus?', '<p>Ciśnieniem i wykonaniem materiałowym.</p>', '', '', '', 'fal fa-inbox-in', 8, 'on', '', '2019-11-22', '2019-11-22 14:08:00', '2019-11-22 14:15:52'),
(224, 32, 29, 0, 'Czym różnią się elektrozawory pośredniego działania od bezpośredniego działania?', 'Czym różnią się elektrozawory pośredniego działania od bezpośredniego działania?', '<p>Gł&oacute;wna r&oacute;żnica jest taka, że elektrozawory pośredniego działania do prawidłowego działania potrzebują r&oacute;żnicy ciśnień, stosujemy je w układach otwartych. Natomiast zawory bezpośredniego działania są zaworami bardziej uniwersalnymi nie wymagającymi r&oacute;żnicy ciśnień do prawidłowego działania, stosujemy je w układach zamkniętych, spustowych.</p>', '', '', '', 'fal fa-inbox-in', 9, 'on', '', '2019-11-22', '2019-11-22 14:09:05', '2019-11-22 14:16:16'),
(225, 32, 29, 0, 'Jak zmienia się wydajność/ciśnienie w sieci przy zmianie wielkości hydroforu?', 'Jak zmienia się wydajność/ciśnienie w sieci przy zmianie wielkości hydroforu?', '<p>Ciśnienie/wydajność zależą nie od wielkości hydroforu a od mocy pompy.</p>', '', '', '', 'fal fa-inbox-in', 10, 'on', '', '2019-11-22', '2019-11-22 14:09:57', '2019-11-22 14:16:38'),
(226, 32, 29, 0, 'Jaka jest głębokość ssania pompy hydroforowej?', 'Jaka jest głębokość ssania pompy hydroforowej?', '<p>R&oacute;żnica między poziomem pompy a lustrem wody to max 7 metr&oacute;w</p>', '', '', '', 'fal fa-inbox-in', 11, 'on', '', '2019-11-22', '2019-11-22 14:10:57', '2019-11-22 14:17:31'),
(227, 32, 29, 0, 'Jaki wodomierz do domku jednorodzinnego?', 'Jaki wodomierz do domku jednorodzinnego?', '<p>Wodomierz o przyłączu 1\" niebieski o przepływie Q=2,5M3/H.</p>', '', '', '', 'fal fa-inbox-in', 12, 'on', '', '2019-11-22', '2019-11-22 14:11:55', '2019-11-22 14:17:55'),
(228, 32, 29, 0, 'Jakiej długości maksymalnej może być pętla (sekcja) przy ogrzewaniu podłogowym?', 'Jakiej długości maksymalnej może być pętla (sekcja) przy ogrzewaniu podłogowym?', '<p>Pętla nie powinna przekroczyć 120m długości. W przeciwnym razie straty ciśnienia w przewodzie będą zbyt duże.</p>', '', '', '', 'fal fa-inbox-in', 13, 'on', '', '2019-11-22', '2019-11-22 14:13:17', '2019-11-22 14:18:19'),
(229, 32, 29, 0, 'Potrzebuję  manometr do prób ciśnieniowych. Jaki powinienem zastosować?', 'Potrzebuję  manometr do prób ciśnieniowych. Jaki powinienem zastosować?', '<p>Manometr w klasie dokładności pomiaru 0,6 ze świadectwem wzorcowania.</p>', '', '', '', 'fal fa-inbox-in', 14, 'on', '', '2019-11-22', '2019-11-22 14:14:13', '2019-11-22 14:18:41'),
(230, 32, 29, 0, 'Czy Państwa zawory elektromagnetyczne posiadają atest higieniczny PZH?', 'Czy Państwa zawory elektromagnetyczne posiadają atest higieniczny PZH?', '<p>Tak elektrozawory firmy ODE posiadają atest PZH.</p>', '', '', '', 'fal fa-inbox-in', 15, 'on', 'instalacje wewnętrzne', '2019-11-22', '2019-11-22 14:21:14', '2019-11-25 09:34:49'),
(231, 32, 29, 0, 'Czy Państwa wyłączniki pływakowe posiadają atest higieniczny PZH?', 'Czy Państwa wyłączniki pływakowe posiadają atest higieniczny PZH?', '<p>Tak wyłączniki pływakowe firmy MAC posiadają atest PZH.</p>', '', '', '', 'fal fa-inbox-out', 16, 'on', '', '2019-11-25', '2019-11-25 09:31:47', '2019-11-25 09:33:05'),
(232, 32, 29, 0, 'Czy Państwa zawory elektromagnetyczne posiadają atest higieniczny PZH?', 'Czy Państwa zawory elektromagnetyczne posiadają atest higieniczny PZH?', '<p>Tak elektrozawory firmy ODE posiadają atest PZH.</p>', '', '', '', 'fal fa-inbox-out', 17, 'on', 'instalacje zewnętrzne', '2019-11-25', '2019-11-25 09:35:26', '2019-11-25 09:37:15'),
(233, 32, 29, 0, 'Czy potrzebuję zasuwę i nawiertkę , czy wystarczy sama nawiertka?', 'Czy potrzebuję zasuwę i nawiertkę , czy wystarczy sama nawiertka?', '<p>Do przyłącza domowego na rurę przyłączeniową wystarczy nawiertka, a zasuwa potrzebna jest przed budynkiem w celu zamykania i otwierania wody.</p>', '', '', '', 'fal fa-inbox-out', 18, 'on', '', '2019-11-25', '2019-11-25 09:37:35', '2019-11-25 09:38:25'),
(234, 32, 29, 0, 'Czy w drodze gruntowej mogę założyć właz z tworzywa PP?', 'Czy w drodze gruntowej mogę założyć właz z tworzywa PP?', '<p>W ciągach jezdnych należy stosować włazy o&nbsp; nośności nie mniejszej niż poruszające się po niej pojazdy.</p>', '', '', '', 'fal fa-inbox-out', 19, 'on', '', '2019-11-25', '2019-11-25 09:38:40', '2019-11-25 09:39:20'),
(235, 32, 29, 0, 'Czy w drodze mogę położyć rury SN 4?', 'Czy w drodze mogę położyć rury SN 4?', '<p>Nie. W drogach należy stosować rury min SN 8 o litych ściankach.</p>', '', '', '', 'fal fa-inbox-out', 20, 'on', '', '2019-11-25', '2019-11-25 09:39:39', '2019-11-25 09:40:18'),
(236, 32, 29, 0, 'Czym różni się przewód \"PVC\" od przewodu \"neoprenowego\" w wyłącznikach pływakowych?', 'Czym różni się przewód \"PVC\" od przewodu \"neoprenowego\" w wyłącznikach pływakowych?', '<p>Przew&oacute;d PVC jest przeznaczony do wody. Jeżeli medium w kt&oacute;rym ma pracować wyłącznik pływakowy zanieczyszczone jest olejem lub są to ścieki należy zastosować przew&oacute;d neoprenowy.</p>', '', '', '', 'fal fa-inbox-out', 21, 'on', '', '2019-11-25', '2019-11-25 09:40:35', '2019-11-25 09:41:15'),
(237, 32, 29, 0, 'Czym różni się rura SN 8 od  SN 4 i SN 2?', 'Czym różni się rura SN 8 od  SN 4 i SN 2?', '<p>Parametr SN jest to sztywność obwodowa rur. W skr&oacute;cie, im wyższy SN tym grubsza ścianka rury.</p>', '', '', '', 'fal fa-inbox-out', 22, 'on', '', '2019-11-25', '2019-11-25 09:41:35', '2019-11-25 09:42:20'),
(238, 32, 29, 0, 'Czym różnią się elektrozawory pośredniego działania od bezpośredniego działania?', 'Czym różnią się elektrozawory pośredniego działania od bezpośredniego działania?', '<p>Gł&oacute;wna r&oacute;żnica jest taka, że elektrozawory pośredniego działania do prawidłowego działania potrzebują r&oacute;żnicy ciśnień, stosujemy je w układach otwartych. Natomiast zawory bezpośredniego działania są zaworami bardziej uniwersalnymi nie wymagającymi r&oacute;żnicy ciśnień do prawidłowego działania, stosujemy je w układach zamkniętych, spustowych.</p>', '', '', '', 'fal fa-inbox-out', 23, 'on', 'instalacje zewnętrzne', '2019-11-25', '2019-11-25 09:42:41', '2019-11-25 09:43:42'),
(239, 32, 29, 0, 'Czym się różni rura lita od rury spienionej?', 'Czym się różni rura lita od rury spienionej?', '<p>Rura lita posiada jednorodną ściankę w przekroju, natomiast rura spieniona posiada warstwę spienionego PVC przez co jest lżejsza i tańsza od litej.</p>', '', '', '', 'fal fa-inbox-out', 24, 'on', '', '2019-11-25', '2019-11-25 09:43:58', '2019-11-25 09:44:41');
INSERT INTO `im_object` (`object_id`, `type_id`, `label_id`, `section`, `system_name`, `name`, `content`, `link`, `email`, `form`, `icon`, `position`, `status`, `description`, `date`, `date_create`, `date_modify`) VALUES
(240, 32, 29, 0, 'Czym się różni rura wodna SDR 17 od SDR 11?', 'Czym się różni rura wodna SDR 17 od SDR 11?', '<p>Grubością ścianki i ciśnieniem maksymalnej pracy.</p>', '', '', '', 'fal fa-inbox-out', 25, 'on', '', '2019-11-25', '2019-11-25 09:45:07', '2019-11-25 09:46:17'),
(241, 32, 29, 0, 'Do jakiej minusowej temperatury studnie EMROZ chronią zamontowaną w nich armaturę i wodomierz przed zamarzaniem?', 'Do jakiej minusowej temperatury studnie EMROZ chronią zamontowaną w nich armaturę i wodomierz przed zamarzaniem?', '<p>Studnie wodomierzowe typu EMROZ chronią armaturę przed zamarzaniem do -30 &deg;C.</p>', '', '', '', 'fal fa-inbox-out', 26, 'on', '', '2019-11-25', '2019-11-25 09:46:38', '2019-11-25 09:47:15'),
(242, 32, 29, 0, 'Jak zmienia się wydajność/ciśnienie w sieci przy zmianie wielkości hydroforu?', 'Jak zmienia się wydajność/ciśnienie w sieci przy zmianie wielkości hydroforu?', '<p>Ciśnienie/wydajność zależą nie od wielkości hydroforu a od mocy pompy.</p>', '', '', '', 'fal fa-inbox-out', 27, 'on', '', '2019-11-25', '2019-11-25 09:47:36', '2019-11-25 09:48:20'),
(243, 32, 29, 0, 'Jaka jest głębokość ssania pompy hydroforowej?', 'Jaka jest głębokość ssania pompy hydroforowej?', '<p>R&oacute;żnica między poziomem pompy a lustrem wody to max 7m.</p>', '', '', '', 'fal fa-inbox-out', 28, 'on', '', '2019-11-25', '2019-11-25 09:48:44', '2019-11-25 09:49:24'),
(244, 32, 29, 0, 'Po co mi studzienka kanalizacyjna na przyłączu?', 'Po co mi studzienka kanalizacyjna na przyłączu?', '<p>Przykanalik musi posiadać minimum jedną studzienkę rewizyjną. Dodatkowo należy stosować studnie na każdej zmianie kierunku sieci kanalizacyjnej.</p>', '', '', '', 'fal fa-inbox-out', 29, 'on', '', '2019-11-25', '2019-11-25 09:49:47', '2019-11-25 09:50:17'),
(245, 32, 29, 0, 'Po co mi zawór antyskażeniowy?', 'Po co mi zawór antyskażeniowy?', '<p>Urządzenie, kt&oacute;re umożliwia ochronę sieci wodociągowej przed zanieczyszczeniem w wyniku wystąpienia przepływu zwrotnego.</p>', '', '', '', 'fal fa-inbox-out', 30, 'on', '', '2019-11-25', '2019-11-25 09:50:39', '2019-11-25 09:51:24'),
(246, 33, 18, 0, 'Aktualne promocje', '', '<div>Poniżej znajdują się aktualne promocje w poszczeg&oacute;lnych oddziałach firmy</div>', '', '', '', '', 1, 'on', '', '2019-11-25', '2019-11-25 10:02:21', '2019-11-25 10:25:16'),
(249, 6, 7, 0, 'Promocje', 'Aktualne promocje w poszczególnych oddziałach', NULL, '', '', '', '', 26, 'on', '', '2019-11-25', '2019-11-25 10:10:06', '2019-11-25 10:28:07'),
(250, 32, 29, 0, 'Co daje automatyczne nawadnianie ogrodu?', 'Co daje automatyczne nawadnianie ogrodu?', '<p>Automatyczne nawadnianie ogrodu ułatwia pielęgnację teren&oacute;w zielonych na naszej działce, często urozmaiconych bogatą, r&oacute;żnorodną i wymagającą roślinnością. Uwalnia nas od codziennego podlewania i chodzenia z wężem po ogrodzie, oszczędza nasz czas i pamięta o podlewaniu gdy nie ma nas w domu. Dodatkowo automatyczny system nawadniania wyposażony w zraszacze, sterownik, elektrozawory i czujnik deszczu pomaga oszczędzać wodę i optymalnie ją wykorzystać przez rośliny.</p>', '', '', '', 'fal fa-tint', 31, 'on', '', '2019-11-25', '2019-11-25 10:44:36', '2019-11-25 10:48:28'),
(251, 32, 29, 0, 'Co to jest i czy warto stosować czujnik deszczu?', 'Co to jest i czy warto stosować czujnik deszczu?', '<p>Czujnik opadu jest urządzeniem, kt&oacute;re wyłącza nawadnianie w przypadku dużej wilgotności powietrza i w przypadku opad&oacute;w atmosferycznych. Urządzenie to oszczędza wodę oraz prąd w przypadku własnej studni i pompy.</p>', '', '', '', 'fal fa-tint', 32, 'on', '', '2019-11-25', '2019-11-25 10:48:51', '2019-11-25 10:50:24'),
(252, 32, 29, 0, 'Co zastosować do podlewania rabat i żywopłotów?', 'Co zastosować do podlewania rabat i żywopłotów?', '<p>Do podlewania rabat możemy zastosować mikrozraszacze lub linie kroplujące. Do żywopłot&oacute;w proponujemy linię kroplującą.</p>', '', '', '', 'fal fa-tint', 33, 'on', '', '2019-11-25', '2019-11-25 10:50:44', '2019-11-25 10:51:36'),
(253, 32, 29, 0, 'Co zrobić gdy pada deszcz?', 'Co zrobić gdy pada deszcz?', '<p>Należy zamontować czujnik opadu deszczu, kt&oacute;ry wyłączy nam system podczas intensywniejszych opad&oacute;w.</p>', '', '', '', 'fal fa-tint', 34, 'on', '', '2019-11-25', '2019-11-25 10:52:01', '2019-11-25 10:52:39'),
(254, 32, 29, 0, 'Czy mogę ręcznie włączać strefy systemu nawadniania?', 'Czy mogę ręcznie włączać strefy systemu nawadniania?', '<p>Tak, sterowniki mają funkcję ręcznego uruchomienia, można także użyć pilota jeśli mamy sterownik z możliwością podłączenia pilota.</p>', '', '', '', 'fal fa-tint', 35, 'on', '', '2019-11-25', '2019-11-25 10:53:07', '2019-11-25 10:58:49'),
(255, 32, 29, 0, 'Czy na jednej linii możemy zamontować korpusy zraszające i zraszacze obrotowe?', 'Czy na jednej linii możemy zamontować korpusy zraszające i zraszacze obrotowe?', '<p>Nie. Korpusy r&oacute;żnią się od zraszaczy budową , sposobem podlewania, czasem podlewania a przede wszystkim ilością wypływającej wody ( wartości dostępne na kartach katalogowych).</p>', '', '', '', 'fal fa-tint', 36, 'on', '', '2019-11-25', '2019-11-25 10:59:18', '2019-11-25 11:00:46'),
(256, 32, 29, 0, 'Czym różnią się zraszacze statyczne od rotacyjnych?', 'Czym różnią się zraszacze statyczne od rotacyjnych?', '<p>Zraszacze statyczne mają kr&oacute;tszy zasięg, stosuje się je na mniejszych trawnikach i bardziej skomplikowanym układzie ogrodu.</p>', '', '', '', 'fal fa-tint', 37, 'on', '', '2019-11-25', '2019-11-25 11:01:06', '2019-11-25 11:01:44'),
(257, 32, 29, 0, 'Jak podzielić zraszacze na sekcje?', 'Jak podzielić zraszacze na sekcje?', '<p>Mając dobrane zraszacze , sprawdzamy za pomocą kart katalogowych wydatek w czasie . Suma wydatk&oacute;w wody naszych zraszaczy nie może przekraczać wydajności naszego źr&oacute;dła wody ( wodociąg, ujęcie własne). Pamiętając, kt&oacute;rych zraszaczy nie możemy łączyć odpowiednio dzielimy na sekcje.</p>', '', '', '', 'fal fa-tint', 38, 'on', '', '2019-11-25', '2019-11-25 11:02:03', '2019-11-25 11:02:51'),
(258, 32, 29, 0, 'Jakich zraszaczy użyć do podlewania trawnika?', 'Jakich zraszaczy użyć do podlewania trawnika?', '<p>Wszystko zależy od wielkości trawnika, kt&oacute;ry Państwo posiadacie. Na małe powierzchnie polecamy korpusy zraszające połączone z odpowiednio dobranymi dyszami ( wielkość promienia ). Na obszary większe proponujemy zraszacze obrotowe o zasięgach od 6 do 15 metr&oacute;w.</p>', '', '', '', 'fal fa-tint', 39, 'on', '', '2019-11-25', '2019-11-25 11:03:09', '2019-11-25 11:03:46'),
(259, 32, 29, 0, 'Jakie występują linie kroplujące?', 'Jakie występują linie kroplujące?', '<p>Linie kroplujące dzielimy na linie z kompensacją i bez kompensacji. Najczęściej występują w średnicy rury DN16 i rozstawach kroplownik&oacute;w co 33 cm. Linie bez kompensacji służą do podlewania nasadzeń na r&oacute;wnych i niedługich odcinkach, do około 80 metr&oacute;w. Natomiast linie z kompensacją pozwalają nam na układanie ich na zr&oacute;żnicowanym poziomem terenie, na długościach do 140 metr&oacute;w oraz pozwalają uzyskać r&oacute;wnomierny wydatek wody na całej ich długości.</p>', '', '', '', 'fal fa-tint', 40, 'on', '', '2019-11-25', '2019-11-25 11:04:22', '2019-11-25 11:04:57'),
(260, 32, 29, 0, 'Jakie występują rodzaje zraszaczy?', 'Jakie występują rodzaje zraszaczy?', '<p>Zraszacze dzielimy na statyczne i dynamiczna (obrotowe, rotacyjne) i mikrozraszacze. Zraszacze statyczne są to z reguły zraszacze o małym zasięgu, od 1,2 do 5 metra. Charakteryzują się płynną regulacją kąta nawadniania, niskim ciśnieniem pracy, występują też w wersji podlewającej obszar o kształcie prostokąta. Zraszacze dynamiczne to zraszacze występujące w wersji młoteczkowej i turbinowej. Ich zasięgi podlewania to od 5 do nawet 30 metr&oacute;w. Mikrozraszacze, składające się najczęściej ze szpilki i głowicy zraszającej, służą do podlewania bylin, krzew&oacute;w, kwiat&oacute;w, zamgławiania roślin w szklarniach.</p>', '', '', '', 'fal fa-tint', 41, 'on', '', '2019-11-25', '2019-11-25 11:05:18', '2019-11-25 11:05:51'),
(261, 32, 29, 0, 'Kiedy najlepiej uruchamiać nawadnianie?', 'Kiedy najlepiej uruchamiać nawadnianie?', '<p>Najlepszą porą na nawadnianie trawnika są wczesne godziny poranne.</p>', '', '', '', 'fal fa-tint', 42, 'on', '', '2019-11-25', '2019-11-25 11:06:16', '2019-11-25 11:06:45'),
(262, 32, 29, 0, 'Na co zwrócić uwagę przy projektowaniu systemu nawadniającego?', 'Na co zwrócić uwagę przy projektowaniu systemu nawadniającego?', '<p>Przy projektowaniu systemu nawadniającego należy dokonać pomiaru ciśnienia źr&oacute;dła wody oraz jej wydajności. Jest to bardzo istotne przy dobieraniu rodzaju zraszaczy oraz ilości sekcji. Pominięcie tej czynności może spowodować, że zraszacze nie osiągną swoich parametr&oacute;w, bądź w og&oacute;le się nie wysuną ponad trawnik.</p>', '', '', '', 'fal fa-tint', 43, 'on', '', '2019-11-25', '2019-11-25 11:07:08', '2019-11-25 11:07:38'),
(263, 32, 29, 0, 'Z jakich elementów składa się system nawodnienia ogrodu?', 'Z jakich elementów składa się system nawodnienia ogrodu?', '<p>System nawodnienia składa się z kilku podstawowych element&oacute;w: Rury PE, służące do rozprowadzania wody po całym ogrodzie, na nich montuje się zraszacze. Złączki i kształtki połączeniowe, służące do złożenia instalacji w całość - połączenia zraszaczy, wyjścia z kolektora itp. Filtry - służą do oczyszczania wody z zanieczyszczeń stałych. Elektrozawory - służą do uruchamiania poszczeg&oacute;lnych sekcji nawadniania, uruchamiane poprzez sterownik. Sterowniki - urządzenia sterujące systemem nawadniania, włączające elektrozawory w określonym dniu, o określonej godzinie na zadany czas. Zraszacze - końcowe punkty odbioru i rozpryskiwania wody po ogrodzie. Linie kroplujące - rury z zainstalowanymi kroplownikami, służące najczęściej do podlewania nasadzeń, krzew&oacute;w i iglak&oacute;w.</p>', '', '', '', 'fal fa-tint', 44, 'on', '', '2019-11-25', '2019-11-25 11:07:59', '2019-11-25 11:08:31'),
(264, 32, 29, 0, 'Co to jest zawór bezpieczeństwa?', 'Co to jest zawór bezpieczeństwa?', '<p>Zaw&oacute;r bezpieczeństwa jest elementem armatury ochronnej dla instalacji. Jej zadaniem jest zabezpieczenie instalacji przed nadmiernym wzrostem ciśnienia. Zbyt wysokie ciśnienie w instalacji mogłoby spowodować nieodwracalne uszkodzenia najsłabszych element&oacute;w: armatury odcinającej, regulującej czy filtr&oacute;w. Zawory są umieszczane przy kotłach i innych źr&oacute;dłach ciepła po stronie zasilającej (wyższa temperatura powoduje rozszerzalność termiczną wody i dodatkowy wzrost ciśnienia).</p>', '', '', '', 'fal fa-fire-alt', 45, 'on', '', '2019-11-25', '2019-11-25 11:10:21', '2019-11-25 11:12:13'),
(265, 32, 29, 0, 'Czy do domu lepszy jest kocioł z zamkniętą czy otwartą komorą spalania?', 'Czy do domu lepszy jest kocioł z zamkniętą czy otwartą komorą spalania?', '<p>Kotły z zamkniętą komorą spalania nie potrzebują dodatkowej wentylacji w celu dostarczenia odpowiedniej ilości powietrza do spalania . Powietrze pobierane jest z zewnątrz bezpośrednio przez system kominowy typu \"rura w rurze\". Dzięki takiemu rozwiązaniu nie wychładzamy pomieszczenia w kt&oacute;rym kocioł się znajduje. Kotły tego typu są o wiele bardziej bezpieczne dla użytkownika.</p>', '', '', '', 'fal fa-fire-alt', 46, 'on', '', '2019-11-25', '2019-11-25 11:15:05', '2019-11-25 11:15:49'),
(266, 32, 29, 0, 'Czy pompę CO można montować na powrocie?', 'Czy pompę CO można montować na powrocie?', '<p>Pompę CO można montować na zasilaniu i na powrocie. W przypadku kotł&oacute;w stałopalnych pompka montowana na powrocie jest mniej wrażliwa na zagotowanie wody w instalacji CO.</p>', '', '', '', 'fal fa-fire-alt', 47, 'on', '', '2019-11-25', '2019-11-25 11:16:28', '2019-11-25 11:17:09'),
(267, 32, 29, 0, 'Czym różni się kocioł jednofunkcyjny od kotła dwufunkcyjnego?', 'Czym różni się kocioł jednofunkcyjny od kotła dwufunkcyjnego?', '<p>Podstawową r&oacute;żnicą jest spos&oacute;b przygotowania CWU. Kocioł jednofunkcyjny podgrzewa wodę w zasobniku CWU, a kocioł dwufunkcyjny podgrzewa wodę na bieżąco w spos&oacute;b przepływowy. Kocioł dwufunkcyjny może być użytkowany w układzie gdzie odległość do kranu jest nie większa niż 6mb. Niestety zakup zasobnika do kotła jednofunkcyjnego wiąże się z dodatkowym wydatkiem. Jeśli chodzi o instalacje centralnego ogrzewania to zasada działania jest taka sama.</p>', '', '', '', 'fal fa-fire-alt', 48, 'on', '', '2019-11-25', '2019-11-25 11:46:39', '2019-11-25 11:47:39'),
(268, 32, 29, 0, 'Czym się różni pompka do CO od pompki do CWU?', 'Czym się różni pompka do CO od pompki do CWU?', '<p>Podstawową r&oacute;żnicą jest materiał wykonania pomp. Pompy do CWU wykonane są z materiał&oacute;w szlachetnych w celu ochrony instalacji wody pitnej przed korozją.</p>', '', '', '', 'fal fa-fire-alt', 49, 'on', '', '2019-11-25', '2019-11-25 11:48:03', '2019-11-25 11:48:37'),
(269, 32, 29, 0, 'Dlaczego po zagotowaniu wody w CO pompa przestała działać?', 'Dlaczego po zagotowaniu wody w CO pompa przestała działać? ', '<p>Standardowe pompy do CO przeznaczone są do pracy w temp. do 100&deg;C, kr&oacute;tkotrwale do 110&deg;C, praca w takiej temperaturze może odkształcić wirnik i spowodować awarię.</p>', '', '', '', 'fal fa-fire-alt', 50, 'on', '', '2019-11-25', '2019-11-25 11:49:00', '2019-11-25 11:49:31'),
(270, 32, 29, 0, 'Dlaczego warto stosować zawory mieszające w kotłach na paliwa stałe?', 'Dlaczego warto stosować zawory mieszające w kotłach na paliwa stałe?', '<p>Zastosowanie zaworu mieszającego pozostaje najlepszym sposobem na zabezpieczenie i przedłużenie żywotności kotła na paliwo stałe. Powracająca do kotła zbyt chłodna woda (o temperaturze 40&deg;C lub mniej) może wyrządzić mu szkodę. Na ściankach wymiennika będzie dochodziło do wykroplenia wilgoci, a co za tym idzie do szybszej korozji kotła.</p>', '', '', '', 'fal fa-fire-alt', 51, 'on', '', '2019-11-25', '2019-11-25 11:49:52', '2019-11-25 11:50:30'),
(271, 32, 29, 0, 'Do czego służy naczynie przeponowe?', 'Do czego służy naczynie przeponowe?', '<p>Naczynie ciśnieniowe składa się z dw&oacute;ch kom&oacute;r &ndash; wodnej i powietrznej, przedzielonych elastyczną przeponą. Przy wzroście objętości wody, podczas jej podgrzewania, następuje sprężenie powietrza, a ciśnienie wody w instalacji nieco wzrasta. Dob&oacute;r wielkości naczynia wzbiorczego zależy przede wszystkim od pojemności wodnej instalacji. Przyjmuje się, że jego objętość powinna wynosić ok. 4% objętości wody znajdującej się w grzejnikach, rurach i kotle.</p>', '', '', '', 'fal fa-fire-alt', 52, 'on', '', '2019-11-25', '2019-11-25 11:50:49', '2019-11-25 11:52:15'),
(272, 32, 29, 0, 'Do czego służy pompa CO?', 'Do czego służy pompa CO?', '<p>Do wymuszenia obiegu w instalacjach centralnego ogrzewania.</p>', '', '', '', 'fal fa-fire-alt', 53, 'on', '', '2019-11-25', '2019-11-25 11:52:36', '2019-11-25 11:53:06'),
(273, 32, 29, 0, 'Jak dobrać moc grzejnika do wielkości pomieszczenia?', 'Jak dobrać moc grzejnika do wielkości pomieszczenia?', '<p>Generalnie zapotrzebowanie na ciepło wynosi od 60 do 200 W/m2. W domach dobrze izolowanych k = 0,3 W/m2K (10 cm styropianu przy ścianach wielowarstwowych lub ścianach jednowarstwowych - wykonanych z bloczk&oacute;w z gazobetonu odmiany 400 grubości 36,5 cm) zapotrzebowanie wyniesie 60 W/m2 dla dom&oacute;w piętrowych lub z użytkowym poddaszem, 70 W/m2 dla dom&oacute;w parterowych.</p>', '', '', '', 'fal fa-fire-alt', 54, 'on', '', '2019-11-25', '2019-11-25 11:53:29', '2019-11-25 11:54:01'),
(274, 32, 29, 0, 'Jak dobrać odpowiedni grzejnik?', 'Jak dobrać odpowiedni grzejnik?', '<p>Moc grzejnika zależy od zapotrzebowania pomieszczenia na moc grzewczą. I tak dla pomieszczeń bardzo dobrze izolowanych wynosi ona 70-100Wm2, dla pomieszczeń ze średnią izolacją 100-150Wm2 a dla pomieszczeń bardzo słabo izolowanych 150-200W/m2.</p>', '', '', '', 'fal fa-fire-alt', 55, 'on', '', '2019-11-25', '2019-11-25 11:54:21', '2019-11-25 11:54:54'),
(275, 32, 29, 0, 'Jak dobrać przekrój komina do rodzaju kotła?', 'Jak dobrać przekrój komina do rodzaju kotła?', '<p>Wraz ze wzrostem mocy kotła rośnie strumień masy spalin , dlatego im większa moc kotła tym większy musi być przekr&oacute;j i wysokość komina. Przekr&oacute;j komina powinien zapewnić przepływ wymaganego strumienia masy spalin lub objętości spalin z założoną prędkością, przy uwzględnieniu gęstości spalin w kominie.</p>', '', '', '', 'fal fa-fire-alt', 56, 'on', '', '2019-11-25', '2019-11-25 11:55:17', '2019-11-25 11:55:52'),
(276, 32, 29, 0, 'Jak obliczyć moc cieplną grzejnika?', 'Jak obliczyć moc cieplną grzejnika?', '<p>Odpowiednią temperaturę w pomieszczeniu w okresie grzewczym zapewni prawidłowo dobrany do instalacji grzejnik. Najważniejszym jego parametrem jest moc grzewcza, określająca zdolność grzejnika do oddawania ciepła pomieszczeniu. Moc grzewczą wyraża się w Watach [W] i dobiera tak, by była wyższa lub r&oacute;wna zapotrzebowaniu na ciepło w danym pomieszczeniu. Zapotrzebowanie na ciepło oblicza się na podstawie powierzchni domu oraz strat ciepła, jakie generują okna, ściany, dach czy położenie budynku.</p>', '', '', '', 'fal fa-fire-alt', 57, 'on', '', '2019-11-25', '2019-11-25 11:56:14', '2019-11-25 11:56:44'),
(277, 32, 29, 0, 'Jaka jest maksymalna długość jednego obwodu rury w ogrzewaniu podłogowym?', 'Jaka jest maksymalna długość jednego obwodu rury w ogrzewaniu podłogowym?', '<p>Długość rury w jednej sekcji ogrzewania podłogowego nie powinna przekroczyć 100 metr&oacute;w.</p>', '', '', '', 'fal fa-fire-alt', 58, 'on', '', '2019-11-25', '2019-11-25 11:57:08', '2019-11-25 11:57:46'),
(278, 32, 29, 0, 'Jakiej długości maksymalnej może być pętla (sekcja) przy ogrzewaniu podłogowym?', 'Jakiej długości maksymalnej może być pętla (sekcja) przy ogrzewaniu podłogowym?', '<p>Pętla nie powinna przekroczyć 120 metr&oacute;w długości. W przeciwnym razie straty ciśnienia w przewodzie będą zbyt duże.</p>', '', '', '', 'fal fa-fire-alt', 59, 'on', '', '2019-11-25', '2019-11-25 11:58:11', '2019-11-25 11:58:45'),
(279, 32, 29, 0, 'Który piec centralnego ogrzewania będzie sprawniejszy, oszczędniejszy?', 'Który piec centralnego ogrzewania będzie sprawniejszy, oszczędniejszy?', '<p>Z uwagi na sprawność urządzenia oszczędniejszy będzie piec kondensacyjny.</p>', '', '', '', 'fal fa-fire-alt', 60, 'on', '', '2019-11-25', '2019-11-25 11:59:02', '2019-11-25 11:59:31'),
(280, 32, 29, 0, 'Potrzebuję rozdzielacz do ogrzewania podłogowego. Jaki powinienem zastosować?', 'Potrzebuję rozdzielacz do ogrzewania podłogowego. Jaki powinienem zastosować?', '<p>W zależności od ilości obwod&oacute;w powinien Pan zastosować rozdzielacz z rotametrami w celu poprawnej regulacji przepływu na obwodach ogrzewania podłogowego.</p>', '', '', '', 'fal fa-fire-alt', 61, 'on', '', '2019-11-25', '2019-11-25 11:59:53', '2019-11-25 12:00:35'),
(281, 32, 29, 0, 'Co się stanie jeśli kupię złą (zbyt słabą) pompę obiegową do instalacji grzewczej?', 'Co się stanie jeśli kupię złą (zbyt słabą) pompę obiegową do instalacji grzewczej?', '<p>Stanisław Sowa, Product Manager z firmy Wilo &bdquo;Rozważmy dwa przypadki. Pierwszy, kiedy rzeczywisty punkt pracy leży znacznie powyżej charakterystyki pompy i drugi, kiedy punkt pracy znajduje się znacznie poniżej charakterystyki pompy. Gdy rzeczywisty punkt pracy leży powyżej charakterystyki urządzenia, pompa (zar&oacute;wno stałoobrotowa, jak elektroniczna) będzie &bdquo;za mała&rdquo; to znaczy, że w chłodniejszych dniach roku będziemy mieli problem z niedogrzewaniem pomieszczeń. Poza tym pompa przez znaczą część swojej pracy będzie pracowała na maksymalnym obciążeniu, przez co jej okres bezawaryjnej eksploatacji ulegnie znacznemu skr&oacute;ceniu. Problem możemy rozwiązać przez zastosowanie pompy o większych parametrach, kt&oacute;rej charakterystyka spełni wymagania punktu pracy, co zapewni uzyskanie odpowiednich temperatur w pomieszczeniach i długą, bezawaryjną pracę. Gdy rzeczywisty punkt pracy leży znacznie poniżej charakterystyki pomy stałoobrotowej w instalacji przy niskich obciążeniach (cieplejsze dni) może wystąpić znaczny wzrost ciśnienia, kt&oacute;ry powoduje znaczny hałas w instalacji (szumy przepływu) oraz wysokie koszty zużycia energii elektrycznej. Takie zakł&oacute;cenia pracy instalacji nie wystąpią, gdy zastosujemy pompę regulowaną. Przy niższym zapotrzebowaniu na ciepło będzie ona pracować na niższych obrotach.&rdquo;</p>', '', '', '', 'fal fa-dewpoint', 62, 'on', '', '2019-11-25', '2019-11-25 12:02:36', '2019-11-25 12:23:03'),
(282, 32, 29, 0, 'Czy Państwa wyłączniki pływakowe posiadają atest higieniczny PZH?', 'Czy Państwa wyłączniki pływakowe posiadają atest higieniczny PZH?', '<p>Tak wyłączniki pływakowe firmy MAC posiadają atest PZH.</p>', '', '', '', 'fal fa-dewpoint', 63, 'on', '', '2019-11-25', '2019-11-25 12:23:36', '2019-11-25 12:25:05'),
(283, 32, 29, 0, 'Czy Państwa zawory elektromagnetyczne posiadają atest higieniczny PZH?', 'Czy Państwa zawory elektromagnetyczne posiadają atest higieniczny PZH?', '<p>Tak elektrozawory firmy ODE posiadają atest PZH.</p>', '', '', '', 'fal fa-dewpoint', 64, 'on', '', '2019-11-25', '2019-11-25 12:25:30', '2019-11-25 12:26:18'),
(284, 32, 29, 0, 'Czy sprzedawane produkty posiadają gwarancję?', 'Czy sprzedawane produkty posiadają gwarancję?', '<p>Generalnie - tak. Gwarancję posiadają wszystkie produkty w ofercie. W razie konieczności przesłania towaru do Sprzedawcy Klient zobowiązany jest poinformować Sprzedawcę o takiej konieczności i ustalić kiedy towar zostanie przesłany. Wypełnić należy r&oacute;wnież formularz reklamacyjny. Koszt przesłania ponosi Klient, chyba, ze chodzi o konsumenta w rozumieniu ustawy o szczeg&oacute;lnych warunkach sprzedaży konsumenckiej oraz zmianie Kodeksu cywilnego.</p>', '', '', '', 'fal fa-dewpoint', 65, 'on', '', '2019-11-25', '2019-11-25 12:27:02', '2019-11-25 12:27:42'),
(285, 32, 29, 0, 'Czym różni się przewód \"PVC\" od przewodu \"neoprenowego\" w wyłącznikach pływakowych?', 'Czym różni się przewód \"PVC\" od przewodu \"neoprenowego\" w wyłącznikach pływakowych?', '<p>Przew&oacute;d PVC jest przeznaczony do wody. Jeżeli medium w kt&oacute;rym ma pracować wyłącznik pływakowy zanieczyszczone jest olejem lub są to ścieki należy zastosować przew&oacute;d neoprenowy.</p>', '', '', '', 'fal fa-dewpoint', 66, 'on', '', '2019-11-25', '2019-11-25 12:28:02', '2019-11-25 12:28:51'),
(286, 32, 29, 0, 'Czym różnią się elektrozawory pośredniego działania od bezpośredniego działania?', 'Czym różnią się elektrozawory pośredniego działania od bezpośredniego działania?', '<p>Gł&oacute;wna r&oacute;żnica jest taka, że elektrozawory pośredniego działania do prawidłowego działania potrzebują r&oacute;żnicy ciśnień, stosujemy je w układach otwartych. Natomiast zawory bezpośredniego działania są zaworami bardziej uniwersalnymi, nie wymagającymi r&oacute;żnicy ciśnień do prawidłowego działania, stosujemy je w układach zamkniętych, spustowych.</p>', '', '', '', 'fal fa-dewpoint', 67, 'on', '', '2019-11-25', '2019-11-25 12:29:13', '2019-11-25 12:29:49'),
(287, 32, 29, 0, 'Czym się różni pompka do CO od pompki do CWU?', 'Czym się różni pompka do CO od pompki do CWU?', '<p>Podstawową r&oacute;żnicą jest materiał wykonania pomp. Pompy do CWU wykonane są z materiał&oacute;w szlachetnych w celu ochrony instalacji wody pitnej przed korozją.</p>', '', '', '', 'fal fa-dewpoint', 68, 'on', '', '2019-11-25', '2019-11-25 12:30:09', '2019-11-25 12:30:45'),
(288, 32, 29, 0, 'Jak zmienia się wydajność/ciśnienie w sieci przy zmianie wielkości hydroforu?', 'Jak zmienia się wydajność/ciśnienie w sieci przy zmianie wielkości hydroforu?', '<p>Ciśnienie/wydajność zależą nie od wielkości hydroforu a od mocy pompy.</p>', '', '', '', 'fal fa-dewpoint', 69, 'on', '', '2019-11-25', '2019-11-25 12:31:06', '2019-11-25 12:31:47'),
(289, 32, 29, 0, 'Jaka jest głębokość ssania pompy hydroforowej?', 'Jaka jest głębokość ssania pompy hydroforowej?', '<p>R&oacute;żnica między poziomem pompy a lustrem wody to max 7 metr&oacute;w.</p>', '', '', '', 'fal fa-dewpoint', 70, 'on', '', '2019-11-25', '2019-11-25 12:32:13', '2019-11-25 12:32:52'),
(290, 32, 29, 0, 'Mam problem z zamówionym produktem. Co teraz?', 'Mam problem z zamówionym produktem. Co teraz?', '<div class=\"field-items\">\r\n<div class=\"field-item even\" property=\"content:encoded\">\r\n<p><span class=\"im\">Sprzedawca udziela gwarancji na sprzedany towar tylko i wyłącznie w przypadku jeśli wraz z wydaniem towaru wydano dokument będący tytułem do gwarancji. Należy więc bezwzględnie zachować dokumenty zakupu, inaczej roszczenia nie zostaną uznane.</span></p>\r\n<p>Reklamacje składane są za pośrednictwem formularza znajdującego się pod adresem (aby pobrać wz&oacute;r formularza reklamacyjnego &ndash; kliknij tutaj <a href=\"http://regulamin.aqua.net.pl/formularz_reklamacyjny.pdf\" target=\"_blank\" rel=\"noopener\">http://regulamin.aqua.net.pl/<wbr />formularz_reklamacyjny.pdf</a>) O fakcie wpływu reklamacji Klient informowany jest za pośrednictwem poczty elektronicznej. Klienci zgłaszający wady towaru obowiązani są wskazać, z kt&oacute;rych przysługujących im uprawnień korzystają, tj. czy korzystają z gwarancji czy z innych przysługujących im uprawnień wynikających z przepis&oacute;w szczeg&oacute;lnych. Jeśli Klient nie zgłosił żadnego oświadczenia w tym zakresie, a udzielono gwarancji, uważa się, że klient zgłasza swoje roszczenie w ramach gwarancji.</p>\r\n</div>\r\n</div>', '', '', '', 'fal fa-dewpoint', 71, 'on', '', '2019-11-25', '2019-11-25 12:33:17', '2019-11-25 12:34:25'),
(291, 32, 29, 0, 'Co zrobić, aby spożywać wodę z kranu bez konieczności gotowania?', 'Co zrobić, aby spożywać wodę z kranu bez konieczności gotowania?', '<p>Zastosować filtr odwr&oacute;conej osmozy.</p>', '', '', '', 'fal fa-hand-holding-water', 72, 'on', '', '2019-11-25', '2019-11-25 12:35:26', '2019-11-25 12:38:27'),
(292, 32, 29, 0, 'Co zrobić, gdy mamy twardą wodę?', 'Co zrobić, gdy mamy twardą wodę?', '<p>Zastosuj zmiękczacz do wody. Zmiękczacze mają w środku żywicę jonowymienną, kt&oacute;ra wymienia jony wapnia i magnezu na jony sodowe.</p>', '', '', '', 'fal fa-hand-holding-water', 73, 'on', '', '2019-11-25', '2019-11-25 12:39:32', '2019-11-25 12:41:46'),
(293, 32, 29, 0, 'Czy do fontanny potrzebny jest filtr i uzdatnianie skoro napełnię nieckę wodą wodociągową?', 'Czy do fontanny potrzebny jest filtr i uzdatnianie skoro napełnię nieckę wodą wodociągową?', '<p>W większości fontann woda krąży w obiegu zamkniętym, woda nagrzewa się i zanieczyszcza. W celu utrzymania jej w parametrach higienicznych niezbędne jest stosowanie filtra i uzdatnianie oraz dodatkowo wymiana kilka razy w sezonie.</p>', '', '', '', 'fal fa-hand-holding-water', 74, 'on', '', '2019-11-25', '2019-11-25 12:42:18', '2019-11-25 12:42:57'),
(294, 32, 29, 0, 'Czym różni się przewód \"PVC\" od przewodu \"neoprenowego\" w wyłącznikach pływakowych?', 'Czym różni się przewód \"PVC\" od przewodu \"neoprenowego\" w wyłącznikach pływakowych?', '<p>Przew&oacute;d PVC jest przeznaczony do wody. Jeżeli medium w kt&oacute;rym ma pracować wyłącznik pływakowy zanieczyszczone jest olejem lub są to ścieki należy zastosować przew&oacute;d neoprenowy.</p>', '', '', '', 'fal fa-hand-holding-water', 75, 'on', '', '2019-11-25', '2019-11-25 12:43:18', '2019-11-25 12:44:05'),
(295, 32, 29, 0, 'Jak wzbogacić wodę o mikroelementy?', 'Jak wzbogacić wodę o mikroelementy?', '<p>Zastosować wkład mineralizujący . Woda jest wzbogacona o minerały.</p>', '', '', '', 'fal fa-hand-holding-water', 76, 'on', '', '2019-11-25', '2019-11-25 12:44:25', '2019-11-25 12:45:04'),
(297, 34, 18, 0, 'O programie', '', '<p>Serdecznie zapraszamy do udziału w programie lojalnościowym INTEGRIS+. Program lojalnościowy INTEGRIS+ przygotowany jest dla instalator&oacute;w. Szczeg&oacute;ły programu znajdą Państwo w regulaminie: <a href=\"http://repozytorium.aqua.net.pl/pdf/Regulamin%20INTEGRIS+%202018.pdf\">REGULAMIN INTEGRIS+</a></p>', '', '', '', '', 1, 'on', '', '2019-11-25', '2019-11-25 13:03:26', '2019-11-25 13:03:58'),
(298, 6, 7, 0, 'IntegrisPlus', 'Program Integris+', NULL, '', '', '', '', 27, 'on', '', '2019-11-25', '2019-11-25 13:07:56', '2019-11-25 13:08:26');

--
-- Wyzwalacze `im_object`
--
DROP TRIGGER IF EXISTS `im_object_insert_date`;
DELIMITER $$
CREATE TRIGGER `im_object_insert_date` BEFORE INSERT ON `im_object` FOR EACH ROW set new.date = current_date()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_object_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_object_insert_date_create` BEFORE INSERT ON `im_object` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_object_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_object_insert_date_modify` BEFORE INSERT ON `im_object` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_object_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_object_update_date_modify` BEFORE UPDATE ON `im_object` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_object_category`
--

DROP TABLE IF EXISTS `im_object_category`;
CREATE TABLE IF NOT EXISTS `im_object_category` (
  `object_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`object_category_id`),
  KEY `object_id` (`object_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_object_category`
--

INSERT INTO `im_object_category` (`object_category_id`, `object_id`, `category_id`) VALUES
(13, 59, 5),
(14, 60, 4),
(16, 62, 6),
(17, 64, 7),
(19, 66, 8),
(21, 67, 9),
(22, 68, 10),
(23, 69, 11),
(38, 118, 13),
(39, 117, 12),
(40, 120, 14),
(46, 123, 44),
(47, 124, 20),
(49, 125, 36),
(50, 126, 14),
(51, 127, 15),
(52, 128, 16),
(53, 128, 30),
(55, 121, 17),
(56, 129, 17),
(57, 130, 18),
(58, 131, 19),
(59, 132, 24),
(60, 133, 33),
(62, 134, 14),
(63, 135, 50),
(64, 136, 24),
(65, 137, 14),
(66, 138, 16),
(67, 138, 26),
(68, 138, 31),
(69, 139, 25),
(70, 139, 26),
(71, 140, 28),
(72, 140, 32),
(73, 140, 39),
(74, 140, 45),
(75, 141, 14),
(76, 142, 22),
(77, 143, 25),
(78, 143, 26),
(79, 143, 31),
(80, 143, 36),
(83, 144, 33),
(84, 144, 39),
(85, 145, 19),
(86, 146, 14),
(89, 147, 47),
(90, 148, 18),
(92, 150, 47),
(93, 151, 28),
(94, 151, 39),
(95, 151, 45),
(97, 153, 50),
(98, 152, 50),
(99, 154, 39),
(102, 155, 46),
(103, 156, 29),
(104, 157, 20),
(105, 158, 21),
(106, 159, 21),
(107, 160, 14),
(108, 160, 23),
(109, 161, 27),
(110, 162, 30),
(111, 163, 19),
(112, 164, 32),
(113, 165, 15),
(116, 166, 25),
(117, 166, 26),
(118, 167, 13),
(119, 167, 39),
(120, 168, 30),
(121, 169, 20),
(124, 170, 14),
(125, 171, 14),
(126, 149, 15),
(133, 218, 52),
(134, 216, 51),
(136, 219, 52),
(137, 220, 52),
(138, 221, 52),
(151, 222, 53),
(152, 223, 53),
(153, 224, 53),
(154, 225, 53),
(155, 226, 53),
(156, 227, 53),
(157, 228, 53),
(158, 229, 53),
(162, 231, 54),
(163, 230, 53),
(164, 217, 51),
(165, 232, 54),
(166, 233, 54),
(167, 234, 54),
(168, 235, 54),
(169, 236, 54),
(170, 237, 54),
(171, 238, 54),
(172, 239, 54),
(173, 240, 54),
(174, 241, 54),
(175, 242, 54),
(176, 243, 54),
(177, 244, 54),
(178, 245, 54),
(179, 250, 55),
(180, 251, 55),
(181, 252, 55),
(182, 253, 55),
(183, 254, 55),
(184, 255, 55),
(185, 256, 55),
(186, 257, 55),
(187, 258, 55),
(188, 259, 55),
(189, 260, 55),
(190, 261, 55),
(191, 262, 55),
(192, 263, 55),
(193, 264, 56),
(194, 265, 56),
(195, 266, 56),
(196, 267, 56),
(197, 268, 56),
(198, 269, 56),
(199, 270, 56),
(200, 271, 56),
(201, 272, 56),
(202, 273, 56),
(203, 274, 56),
(204, 275, 56),
(205, 276, 56),
(206, 277, 56),
(207, 278, 56),
(208, 279, 56),
(209, 280, 56),
(210, 281, 57),
(211, 282, 57),
(212, 283, 57),
(213, 284, 57),
(214, 285, 57),
(215, 286, 57),
(216, 287, 57),
(217, 288, 57),
(218, 289, 57),
(219, 290, 57),
(222, 291, 58),
(223, 292, 58),
(224, 293, 58),
(225, 294, 58),
(226, 295, 58);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_object_file`
--

DROP TABLE IF EXISTS `im_object_file`;
CREATE TABLE IF NOT EXISTS `im_object_file` (
  `object_file_id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`object_file_id`),
  KEY `object_id` (`object_id`),
  KEY `file_id` (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=476 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_object_file`
--

INSERT INTO `im_object_file` (`object_file_id`, `object_id`, `file_id`, `position`) VALUES
(44, 59, 6, 0),
(45, 60, 7, 0),
(46, 60, 8, 0),
(47, 60, 9, 0),
(48, 62, 10, 0),
(49, 64, 11, 0),
(52, 66, 12, 0),
(53, 66, 13, 0),
(56, 67, 14, 0),
(57, 68, 15, 0),
(58, 69, 16, 0),
(59, 71, 17, 0),
(60, 71, 18, 0),
(61, 71, 19, 0),
(73, 72, 20, 0),
(74, 72, 21, 0),
(75, 72, 22, 0),
(76, 72, 23, 0),
(77, 72, 24, 0),
(78, 72, 25, 0),
(79, 72, 26, 0),
(80, 72, 27, 0),
(81, 72, 28, 0),
(82, 72, 29, 0),
(83, 72, 30, 0),
(84, 76, 17, 0),
(85, 76, 18, 0),
(86, 76, 31, 0),
(102, 77, 20, 0),
(103, 77, 21, 0),
(104, 77, 22, 0),
(105, 77, 23, 0),
(106, 77, 24, 0),
(107, 77, 25, 0),
(108, 77, 26, 0),
(109, 77, 27, 0),
(110, 77, 28, 0),
(111, 77, 29, 0),
(112, 77, 30, 0),
(113, 77, 32, 0),
(114, 77, 33, 0),
(115, 77, 34, 0),
(116, 77, 35, 0),
(117, 78, 17, 0),
(118, 78, 18, 0),
(128, 79, 20, 0),
(129, 79, 21, 0),
(130, 79, 24, 0),
(131, 79, 26, 0),
(132, 79, 27, 0),
(133, 79, 28, 0),
(134, 79, 29, 0),
(135, 79, 33, 0),
(136, 79, 34, 0),
(137, 79, 36, 0),
(138, 82, 17, 0),
(139, 82, 18, 0),
(140, 83, 24, 0),
(141, 83, 33, 0),
(142, 83, 34, 0),
(143, 83, 35, 0),
(144, 83, 36, 0),
(159, 86, 20, 0),
(160, 86, 21, 0),
(161, 86, 22, 0),
(162, 86, 23, 0),
(163, 86, 24, 0),
(164, 86, 25, 0),
(165, 86, 26, 0),
(166, 86, 27, 0),
(167, 86, 28, 0),
(168, 86, 29, 0),
(169, 86, 30, 0),
(170, 86, 33, 0),
(171, 86, 34, 0),
(172, 86, 35, 0),
(173, 86, 37, 0),
(174, 90, 17, 0),
(175, 90, 18, 0),
(176, 90, 19, 0),
(177, 90, 38, 0),
(178, 91, 20, 0),
(179, 91, 21, 0),
(180, 91, 22, 0),
(181, 91, 23, 0),
(182, 91, 24, 0),
(183, 91, 25, 0),
(184, 91, 26, 0),
(185, 91, 27, 0),
(186, 91, 28, 0),
(187, 91, 29, 0),
(188, 91, 30, 0),
(189, 91, 32, 0),
(190, 91, 33, 0),
(191, 91, 34, 0),
(192, 91, 35, 0),
(193, 91, 36, 0),
(194, 91, 37, 0),
(195, 93, 20, 0),
(196, 93, 21, 0),
(197, 93, 22, 0),
(198, 93, 23, 0),
(199, 93, 24, 0),
(200, 93, 25, 0),
(201, 93, 26, 0),
(202, 93, 27, 0),
(203, 93, 28, 0),
(204, 93, 29, 0),
(205, 93, 30, 0),
(206, 93, 32, 0),
(207, 93, 33, 0),
(208, 93, 34, 0),
(209, 93, 35, 0),
(210, 93, 36, 0),
(211, 93, 37, 0),
(229, 95, 20, 0),
(230, 95, 21, 0),
(231, 95, 22, 0),
(232, 95, 23, 0),
(233, 95, 24, 0),
(234, 95, 25, 0),
(235, 95, 26, 0),
(236, 95, 27, 0),
(237, 95, 28, 0),
(238, 95, 29, 0),
(239, 95, 30, 0),
(240, 95, 32, 0),
(241, 95, 33, 0),
(242, 95, 34, 0),
(243, 95, 35, 0),
(244, 95, 36, 0),
(245, 95, 37, 0),
(246, 96, 17, 0),
(247, 96, 18, 0),
(248, 96, 19, 0),
(361, 99, 20, 0),
(362, 99, 21, 0),
(363, 99, 22, 0),
(364, 99, 23, 0),
(365, 99, 24, 0),
(366, 99, 25, 0),
(367, 99, 26, 0),
(368, 99, 27, 0),
(369, 99, 28, 0),
(370, 99, 29, 0),
(371, 99, 32, 0),
(372, 99, 33, 0),
(373, 99, 34, 0),
(374, 99, 35, 0),
(375, 99, 36, 0),
(376, 99, 37, 0),
(381, 48, 4, 0),
(384, 56, 5, 0),
(401, 118, 40, 0),
(402, 117, 39, 0),
(403, 120, 41, 0),
(410, 122, 43, 0),
(412, 124, 50, 0),
(413, 126, 43, 0),
(414, 127, 44, 0),
(415, 128, 45, 0),
(417, 121, 42, 0),
(418, 129, 46, 0),
(419, 130, 47, 0),
(420, 132, 48, 0),
(421, 133, 49, 0),
(423, 134, 51, 0),
(424, 135, 52, 0),
(425, 136, 53, 0),
(426, 137, 54, 0),
(427, 138, 55, 0),
(428, 139, 56, 0),
(429, 140, 57, 0),
(430, 141, 58, 0),
(431, 142, 59, 0),
(432, 143, 60, 0),
(434, 144, 61, 0),
(435, 145, 62, 0),
(436, 146, 63, 0),
(438, 147, 83, 0),
(439, 148, 64, 0),
(441, 151, 66, 0),
(443, 153, 68, 0),
(444, 152, 67, 0),
(445, 154, 84, 0),
(446, 155, 85, 0),
(447, 156, 69, 0),
(448, 157, 70, 0),
(449, 158, 71, 0),
(450, 159, 72, 0),
(451, 160, 73, 0),
(452, 161, 74, 0),
(453, 162, 75, 0),
(454, 163, 76, 0),
(455, 164, 77, 0),
(456, 165, 78, 0),
(457, 166, 79, 0),
(458, 167, 80, 0),
(459, 168, 81, 0),
(460, 169, 82, 0),
(461, 170, 86, 0),
(462, 171, 87, 0),
(463, 149, 65, 0),
(474, 246, 88, 0),
(475, 246, 89, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_object_image`
--

DROP TABLE IF EXISTS `im_object_image`;
CREATE TABLE IF NOT EXISTS `im_object_image` (
  `object_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`object_image_id`),
  KEY `object_id` (`object_id`),
  KEY `image_id` (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=358 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_object_image`
--

INSERT INTO `im_object_image` (`object_image_id`, `object_id`, `image_id`, `position`) VALUES
(40, 14, 10, 0),
(41, 15, 12, 0),
(42, 16, 11, 0),
(59, 13, 9, 0),
(60, 12, 8, 0),
(62, 7, 7, 0),
(81, 118, 19, 0),
(82, 117, 18, 0),
(83, 120, 20, 0),
(90, 122, 22, 0),
(94, 123, 30, 0),
(95, 124, 52, 0),
(96, 125, 65, 0),
(97, 126, 22, 0),
(98, 127, 23, 0),
(99, 128, 24, 0),
(101, 121, 21, 0),
(102, 129, 25, 0),
(103, 130, 26, 0),
(104, 131, 27, 0),
(105, 132, 28, 0),
(106, 133, 29, 0),
(108, 134, 31, 0),
(109, 135, 32, 0),
(110, 136, 33, 0),
(111, 137, 34, 0),
(112, 138, 35, 0),
(113, 139, 36, 0),
(114, 140, 37, 0),
(115, 141, 38, 0),
(116, 142, 39, 0),
(117, 143, 40, 0),
(119, 144, 41, 0),
(120, 145, 42, 0),
(121, 146, 43, 0),
(123, 147, 66, 0),
(124, 148, 44, 0),
(126, 150, 46, 0),
(127, 151, 47, 0),
(129, 153, 49, 0),
(130, 152, 48, 0),
(131, 154, 67, 0),
(132, 155, 68, 0),
(133, 156, 50, 0),
(134, 157, 51, 0),
(135, 158, 53, 0),
(136, 159, 54, 0),
(137, 160, 55, 0),
(138, 161, 56, 0),
(139, 162, 57, 0),
(140, 163, 58, 0),
(141, 164, 59, 0),
(142, 165, 60, 0),
(143, 166, 61, 0),
(144, 167, 62, 0),
(145, 168, 63, 0),
(146, 169, 64, 0),
(147, 170, 70, 0),
(148, 171, 69, 0),
(149, 149, 45, 0),
(174, 172, 71, 0),
(175, 175, 72, 0),
(176, 175, 73, 0),
(177, 175, 74, 0),
(178, 175, 75, 0),
(179, 175, 76, 0),
(180, 175, 77, 0),
(181, 176, 78, 0),
(182, 177, 115, 0),
(184, 179, 115, 0),
(185, 178, 116, 0),
(186, 180, 102, 0),
(187, 180, 103, 0),
(188, 181, 117, 0),
(189, 182, 97, 0),
(190, 182, 98, 0),
(191, 182, 99, 0),
(200, 183, 104, 0),
(201, 183, 105, 0),
(202, 183, 106, 0),
(203, 183, 107, 0),
(206, 184, 113, 0),
(209, 185, 81, 0),
(210, 185, 82, 0),
(211, 186, 108, 0),
(212, 186, 109, 0),
(213, 186, 110, 0),
(214, 186, 111, 0),
(215, 186, 112, 0),
(216, 187, 90, 0),
(217, 187, 91, 0),
(218, 187, 92, 0),
(219, 187, 93, 0),
(220, 188, 118, 0),
(221, 189, 100, 0),
(222, 189, 101, 0),
(223, 190, 94, 0),
(224, 190, 95, 0),
(225, 190, 96, 0),
(230, 192, 79, 0),
(231, 192, 80, 0),
(232, 191, 83, 0),
(233, 191, 84, 0),
(234, 191, 85, 0),
(235, 191, 86, 0),
(236, 193, 87, 0),
(237, 193, 88, 0),
(238, 193, 89, 0),
(259, 194, 119, 0),
(260, 194, 120, 0),
(261, 194, 121, 0),
(262, 194, 122, 0),
(271, 195, 123, 0),
(272, 195, 124, 0),
(283, 196, 125, 0),
(284, 196, 126, 0),
(285, 196, 127, 0),
(286, 196, 128, 0),
(287, 196, 129, 0),
(289, 197, 130, 0),
(290, 198, 131, 0),
(291, 198, 132, 0),
(292, 198, 133, 0),
(293, 198, 134, 0),
(294, 199, 135, 0),
(295, 199, 136, 0),
(296, 199, 137, 0),
(297, 199, 138, 0),
(298, 199, 139, 0),
(299, 199, 140, 0),
(300, 200, 141, 0),
(301, 200, 142, 0),
(306, 201, 143, 0),
(307, 201, 144, 0),
(308, 201, 145, 0),
(309, 201, 146, 0),
(312, 202, 147, 0),
(313, 202, 148, 0),
(335, 203, 149, 0),
(336, 203, 150, 0),
(337, 203, 151, 0),
(338, 203, 152, 0),
(339, 203, 153, 0),
(340, 203, 154, 0),
(341, 203, 155, 0),
(342, 204, 156, 0),
(343, 204, 157, 0),
(345, 205, 158, 0),
(346, 206, 159, 0),
(348, 208, 161, 0),
(349, 207, 160, 0),
(350, 209, 162, 0),
(351, 210, 163, 0),
(352, 211, 165, 0),
(353, 212, 166, 0),
(355, 297, 167, 0),
(356, 297, 168, 0),
(357, 34, 16, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_object_movie`
--

DROP TABLE IF EXISTS `im_object_movie`;
CREATE TABLE IF NOT EXISTS `im_object_movie` (
  `object_movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`object_movie_id`),
  KEY `object_id` (`object_id`),
  KEY `movie_id` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_property`
--

DROP TABLE IF EXISTS `im_property`;
CREATE TABLE IF NOT EXISTS `im_property` (
  `property_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `system_name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_property`
--

INSERT INTO `im_property` (`property_id`, `name`, `system_name`, `description`, `date_create`, `date_modify`) VALUES
(1, 'Nazwa', 'name', '', '2019-11-12 08:51:54', '2019-11-12 08:51:54'),
(2, 'Tekst', 'content', '', '2019-11-12 08:51:54', '2019-11-12 08:51:54'),
(3, 'Data', 'date', '', '2019-11-12 08:51:54', '2019-11-12 08:51:54'),
(4, 'Zdjęcie', 'image', '', '2019-11-12 08:51:54', '2019-11-12 08:51:54'),
(5, 'Link wewnętrzny', 'section', '', '2019-11-12 08:51:54', '2019-11-12 08:51:54'),
(6, 'Plik', 'file', '', '2019-11-12 08:51:54', '2019-11-12 08:51:54'),
(7, 'Menu', 'menu', '', '2019-11-12 08:51:54', '2019-11-12 08:51:54'),
(8, 'Link zewnętrzny', 'link', '', '2019-11-12 08:51:54', '2019-11-12 08:51:54'),
(9, 'Adres e-mail', 'email', '', '2019-11-12 08:51:54', '2019-11-12 08:51:54'),
(10, 'Adres formularza kontaktowego', 'form', '', '2019-11-12 08:51:54', '2019-11-12 08:51:54'),
(11, 'Film', 'movie', '', '2019-11-12 08:51:54', '2019-11-12 08:51:54'),
(12, 'Ikona', 'icon', '', '2019-11-12 08:51:54', '2019-11-12 08:51:54');

--
-- Wyzwalacze `im_property`
--
DROP TRIGGER IF EXISTS `im_property_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_property_insert_date_create` BEFORE INSERT ON `im_property` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_property_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_property_insert_date_modify` BEFORE INSERT ON `im_property` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_property_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_property_update_date_modify` BEFORE UPDATE ON `im_property` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_section`
--

DROP TABLE IF EXISTS `im_section`;
CREATE TABLE IF NOT EXISTS `im_section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT '0',
  `name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `name_url` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `meta` varchar(512) COLLATE utf8_polish_ci DEFAULT '',
  `icon` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `position` int(11) DEFAULT '0',
  `status` varchar(3) COLLATE utf8_polish_ci DEFAULT 'on',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_section`
--

INSERT INTO `im_section` (`section_id`, `parent`, `name`, `name_url`, `meta`, `icon`, `position`, `status`, `description`, `date_create`, `date_modify`) VALUES
(1, 0, 'Strona główna', 'strona-glowna', 'Opis strony głownej', 'fal fa-home', 1, 'off', '', '2019-10-15 08:07:37', '2019-10-24 09:52:16'),
(2, 0, 'Kontakt', 'kontakt', 'Opis kontaktowy', 'fal fa-map-marked-alt', 8, 'on', '', '2019-10-15 08:07:37', '2019-10-24 09:51:42'),
(5, 0, 'Firma', 'firma', '', 'fal fa-building', 2, 'on', '', '2019-10-17 09:50:52', '2019-10-24 09:51:42'),
(6, 5, 'Dlaczego my', 'dlaczego-my', '', 'fad fa-map-marker-question', 1, 'on', '', '2019-10-17 09:52:56', '2019-10-24 09:14:40'),
(7, 5, 'O firmie', 'o-firmie', '', 'fad fa-comment-dots', 2, 'on', '', '2019-10-17 09:53:03', '2019-10-24 09:14:32'),
(8, 5, 'Historia', 'historia', '', 'fad fa-history', 3, 'on', '', '2019-10-17 09:54:06', '2019-10-24 09:14:22'),
(9, 0, 'Oferta', 'oferta', '', 'fal fa-sign-language', 3, 'on', '', '2019-10-24 08:46:54', '2019-10-24 09:51:42'),
(10, 0, 'Dostawcy', 'dostawcy', '', 'fal fa-truck', 4, 'on', '', '2019-10-24 08:53:13', '2019-10-24 09:51:42'),
(11, 0, 'Oddziały', 'oddzialy', '', 'fal fa-draw-circle', 5, 'on', '', '2019-10-24 08:54:25', '2019-10-24 09:51:42'),
(12, 0, 'Wydarzenia', 'wydarzenia', '', 'fal fa-comment-alt-lines', 6, 'on', '', '2019-10-24 08:56:40', '2019-10-24 09:51:42'),
(13, 0, 'FAQ', 'faq', '', 'fal fa-question', 7, 'on', '', '2019-10-24 08:56:47', '2019-10-24 09:51:42'),
(14, 5, 'Zarząd Spółki', 'zarzad-spolki', '', 'fad fa-users-crown', 4, 'on', '', '2019-10-24 09:10:24', '2019-10-24 09:14:01'),
(15, 5, 'Centrala', 'centrala', '', 'fad fa-door-open', 5, 'on', '', '2019-10-24 09:15:36', '2019-10-24 09:17:34'),
(16, 5, 'Ogólne warunki sprzedaży', 'ogolne-warunki-sprzedazy', '', 'fad fa-shopping-cart', 6, 'on', '', '2019-10-24 09:17:59', '2019-10-24 09:19:25'),
(17, 5, 'Projekt B2B', 'projekt-b2b', '', 'fad fa-laptop', 7, 'on', '', '2019-10-24 09:21:10', '2019-10-24 09:21:30'),
(18, 5, 'Kariera', 'kariera', '', 'fad fa-chart-line', 8, 'on', '', '2019-10-24 09:22:23', '2019-10-24 09:22:38'),
(19, 5, 'Programy partnerskie', 'programy-partnerskie', '', 'fad fa-handshake', 9, 'on', '', '2019-10-24 09:28:34', '2019-10-24 09:29:11'),
(20, 9, 'Dla elektrociepłowni', 'dla-elektrocieplowni', '', 'fad fa-bolt', 1, 'on', '', '2019-10-24 09:55:07', '2019-10-24 09:56:05'),
(21, 9, 'Dla firm wykonawczych', 'dla-firm-wykonawczych', '', 'fad fa-magic', 2, 'on', '', '2019-10-24 09:56:57', '2019-10-24 09:58:14'),
(22, 9, 'Dla instalatorów', 'dla-instalatorow', '', 'fad fa-wrench', 3, 'on', '', '2019-10-24 10:02:56', '2019-10-24 10:03:06'),
(23, 9, 'Dla klientów indywidualnych', 'dla-klientow-indywidualnych', '', 'fad fa-male', 4, 'on', '', '2019-10-24 10:03:39', '2019-10-31 12:14:15'),
(24, 9, 'Dla przemysłu', 'dla-przemyslu', '', 'fad fa-industry-alt', 5, 'on', '', '2019-10-24 10:06:27', '2019-10-24 10:06:53'),
(25, 9, 'Dla studniarzy', 'dla-studniarzy', '', 'fad fa-water-rise', 6, 'on', '', '2019-10-24 10:07:07', '2019-10-24 10:08:16'),
(26, 9, 'Dla wodociągów', 'dla-wodociagow', '', 'fad fa-tint', 7, 'on', '', '2019-10-24 10:08:49', '2019-10-24 10:10:02'),
(27, 9, 'Dla zakładów komunalnych', 'dla-zakladow-komunalnych', '', 'fad fa-industry', 8, 'on', '', '2019-10-24 10:10:33', '2019-10-24 10:11:32'),
(28, 9, 'Spis katalogów', 'spis-katalogow', '', 'fad fa-list-ul', 9, 'on', '', '2019-10-24 10:11:55', '2019-10-24 10:12:51'),
(30, 12, 'Najnowsze', 'wydarzenia-najnowsze', '', 'fad fa-scroll', 1, 'on', 'wydarzenia', '2019-11-21 09:32:36', '2019-11-21 10:05:09'),
(31, 12, 'Archiwalne', 'wydarzenia-archiwalne', '', 'fad fa-scroll-old', 2, 'on', 'wydarzenia', '2019-11-21 09:32:46', '2019-11-21 10:05:16'),
(32, 0, 'Sekcje ukryte', 'sekcje-ukryte', '', '', 9, 'off', NULL, '2019-11-25 09:56:39', '2019-11-25 09:56:42'),
(33, 32, 'Promocje', 'promocje', '', '', 1, 'on', NULL, '2019-11-25 09:56:53', '2019-11-25 09:56:53'),
(34, 32, 'IntegrisPlus', 'integris-plus', '', '', 2, 'on', '', '2019-11-25 12:57:22', '2019-11-25 12:57:51');

--
-- Wyzwalacze `im_section`
--
DROP TRIGGER IF EXISTS `im_section_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_section_insert_date_create` BEFORE INSERT ON `im_section` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_section_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_section_insert_date_modify` BEFORE INSERT ON `im_section` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_section_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_section_update_date_modify` BEFORE UPDATE ON `im_section` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_section_object`
--

DROP TABLE IF EXISTS `im_section_object`;
CREATE TABLE IF NOT EXISTS `im_section_object` (
  `section_object_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  PRIMARY KEY (`section_object_id`),
  KEY `section_id` (`section_id`),
  KEY `object_id` (`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2490 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_section_object`
--

INSERT INTO `im_section_object` (`section_object_id`, `section_id`, `object_id`) VALUES
(100, 1, 14),
(101, 1, 15),
(102, 1, 16),
(129, 1, 31),
(158, 1, 13),
(159, 1, 12),
(299, 1, 18),
(300, 1, 19),
(301, 1, 20),
(305, 1, 23),
(307, 1, 22),
(308, 1, 21),
(315, 1, 7),
(316, 1, 10),
(317, 6, 41),
(528, 7, 43),
(529, 8, 44),
(530, 14, 45),
(531, 15, 46),
(532, 16, 47),
(545, 17, 50),
(575, 18, 57),
(576, 19, 58),
(607, 18, 59),
(608, 18, 60),
(610, 18, 62),
(614, 18, 64),
(627, 18, 66),
(630, 18, 67),
(631, 18, 68),
(634, 18, 69),
(642, 18, 70),
(644, 20, 71),
(646, 20, 72),
(665, 20, 73),
(678, 21, 75),
(679, 21, 76),
(706, 21, 77),
(707, 22, 78),
(708, 22, 80),
(710, 22, 79),
(711, 23, 81),
(712, 23, 82),
(713, 23, 83),
(714, 24, 84),
(716, 24, 86),
(750, 24, 88),
(751, 25, 89),
(752, 25, 90),
(753, 25, 91),
(754, 26, 92),
(756, 26, 94),
(757, 26, 93),
(758, 27, 97),
(760, 27, 95),
(761, 27, 96),
(769, 28, 100),
(770, 28, 99),
(883, 14, 101),
(884, 14, 102),
(887, 14, 103),
(890, 14, 104),
(891, 14, 105),
(935, 6, 107),
(936, 6, 108),
(937, 6, 109),
(938, 6, 110),
(939, 6, 111),
(940, 6, 112),
(941, 6, 113),
(942, 6, 114),
(955, 7, 42),
(985, 8, 52),
(1001, 16, 48),
(1003, 18, 65),
(1005, 19, 56),
(1019, 17, 49),
(1025, 6, 40),
(1056, 11, 115),
(1106, 2, 54),
(1107, 15, 54),
(1161, 10, 119),
(1201, 10, 118),
(1202, 10, 117),
(1203, 10, 120),
(1210, 10, 122),
(1214, 10, 123),
(1215, 10, 124),
(1217, 10, 125),
(1218, 10, 126),
(1219, 10, 127),
(1220, 10, 128),
(1222, 10, 121),
(1223, 10, 129),
(1224, 10, 130),
(1225, 10, 131),
(1226, 10, 132),
(1227, 10, 133),
(1229, 10, 134),
(1231, 10, 135),
(1232, 10, 136),
(1233, 10, 137),
(1234, 10, 138),
(1235, 10, 139),
(1236, 10, 140),
(1237, 10, 141),
(1238, 10, 142),
(1239, 10, 143),
(1241, 10, 144),
(1242, 10, 145),
(1243, 10, 146),
(1246, 10, 147),
(1247, 10, 148),
(1249, 10, 150),
(1250, 10, 151),
(1252, 10, 153),
(1253, 10, 152),
(1254, 10, 154),
(1257, 10, 155),
(1258, 10, 156),
(1259, 10, 157),
(1260, 10, 158),
(1261, 10, 159),
(1262, 10, 160),
(1263, 10, 161),
(1264, 10, 162),
(1265, 10, 163),
(1266, 10, 164),
(1267, 10, 165),
(1269, 10, 166),
(1270, 10, 167),
(1271, 10, 168),
(1272, 10, 169),
(1275, 10, 170),
(1276, 10, 171),
(1277, 10, 149),
(1548, 31, 174),
(1549, 30, 173),
(1585, 30, 172),
(1586, 31, 175),
(1587, 30, 176),
(1588, 30, 177),
(1590, 30, 179),
(1591, 30, 178),
(1592, 30, 180),
(1593, 30, 181),
(1594, 30, 182),
(1597, 30, 183),
(1600, 30, 184),
(1602, 30, 185),
(1603, 30, 186),
(1604, 30, 187),
(1605, 30, 188),
(1606, 30, 189),
(1607, 30, 190),
(1609, 30, 192),
(1610, 30, 191),
(1611, 30, 193),
(1619, 31, 194),
(1623, 31, 195),
(1626, 31, 196),
(1628, 31, 197),
(1629, 31, 198),
(1630, 31, 199),
(1631, 31, 200),
(1633, 31, 201),
(1635, 31, 202),
(1639, 31, 203),
(1640, 31, 204),
(1642, 31, 205),
(1643, 31, 206),
(1645, 31, 208),
(1646, 31, 207),
(1647, 31, 209),
(1649, 31, 210),
(1650, 31, 211),
(1651, 31, 212),
(1652, 2, 213),
(1654, 2, 116),
(1678, 13, 215),
(1685, 13, 218),
(1686, 13, 216),
(1688, 13, 219),
(1689, 13, 220),
(1690, 13, 221),
(1701, 13, 222),
(1702, 13, 223),
(1703, 13, 224),
(1704, 13, 225),
(1705, 13, 226),
(1706, 13, 227),
(1707, 13, 228),
(1708, 13, 229),
(1734, 13, 231),
(1735, 13, 230),
(1736, 13, 217),
(1738, 13, 232),
(1739, 13, 233),
(1740, 13, 234),
(1741, 13, 235),
(1742, 13, 236),
(1743, 13, 237),
(1745, 13, 238),
(1746, 13, 239),
(1747, 13, 240),
(1748, 13, 241),
(1749, 13, 242),
(1750, 13, 243),
(1751, 13, 244),
(1752, 13, 245),
(1753, 1, 24),
(1754, 1, 25),
(1755, 1, 26),
(1758, 2, 51),
(1759, 5, 51),
(1760, 6, 51),
(1761, 7, 51),
(1762, 8, 51),
(1763, 9, 51),
(1764, 12, 51),
(1765, 14, 51),
(1766, 15, 51),
(1767, 16, 51),
(1768, 17, 51),
(1769, 18, 51),
(1770, 19, 51),
(1771, 20, 51),
(1772, 21, 51),
(1773, 22, 51),
(1774, 23, 51),
(1775, 24, 51),
(1776, 25, 51),
(1777, 26, 51),
(1778, 27, 51),
(1779, 28, 51),
(1780, 33, 51),
(2021, 33, 246),
(2022, 33, 249),
(2023, 13, 250),
(2024, 13, 251),
(2025, 13, 252),
(2026, 13, 253),
(2027, 13, 254),
(2028, 13, 255),
(2029, 13, 256),
(2030, 13, 257),
(2031, 13, 258),
(2032, 13, 259),
(2033, 13, 260),
(2034, 13, 261),
(2035, 13, 262),
(2036, 13, 263),
(2037, 13, 264),
(2038, 13, 265),
(2039, 13, 266),
(2040, 13, 267),
(2041, 13, 268),
(2042, 13, 269),
(2043, 13, 270),
(2044, 13, 271),
(2045, 13, 272),
(2046, 13, 273),
(2047, 13, 274),
(2048, 13, 275),
(2049, 13, 276),
(2050, 13, 277),
(2051, 13, 278),
(2052, 13, 279),
(2053, 13, 280),
(2054, 13, 281),
(2055, 13, 282),
(2056, 13, 283),
(2057, 13, 284),
(2058, 13, 285),
(2059, 13, 286),
(2060, 13, 287),
(2061, 13, 288),
(2062, 13, 289),
(2063, 13, 290),
(2066, 13, 291),
(2067, 13, 292),
(2068, 13, 293),
(2069, 13, 294),
(2070, 13, 295),
(2159, 34, 297),
(2219, 1, 34),
(2220, 2, 34),
(2221, 5, 34),
(2222, 6, 34),
(2223, 7, 34),
(2224, 8, 34),
(2225, 9, 34),
(2226, 10, 34),
(2227, 11, 34),
(2228, 12, 34),
(2229, 13, 34),
(2230, 14, 34),
(2231, 15, 34),
(2232, 16, 34),
(2233, 17, 34),
(2234, 18, 34),
(2235, 19, 34),
(2236, 20, 34),
(2237, 21, 34),
(2238, 22, 34),
(2239, 23, 34),
(2240, 24, 34),
(2241, 25, 34),
(2242, 26, 34),
(2243, 27, 34),
(2244, 28, 34),
(2245, 30, 34),
(2246, 31, 34),
(2247, 33, 34),
(2248, 34, 34),
(2249, 1, 35),
(2250, 2, 35),
(2251, 5, 35),
(2252, 6, 35),
(2253, 7, 35),
(2254, 8, 35),
(2255, 9, 35),
(2256, 10, 35),
(2257, 11, 35),
(2258, 12, 35),
(2259, 13, 35),
(2260, 14, 35),
(2261, 15, 35),
(2262, 16, 35),
(2263, 17, 35),
(2264, 18, 35),
(2265, 19, 35),
(2266, 20, 35),
(2267, 21, 35),
(2268, 22, 35),
(2269, 23, 35),
(2270, 24, 35),
(2271, 25, 35),
(2272, 26, 35),
(2273, 27, 35),
(2274, 28, 35),
(2275, 30, 35),
(2276, 31, 35),
(2277, 33, 35),
(2278, 34, 35),
(2279, 1, 36),
(2280, 2, 36),
(2281, 5, 36),
(2282, 6, 36),
(2283, 7, 36),
(2284, 8, 36),
(2285, 9, 36),
(2286, 10, 36),
(2287, 11, 36),
(2288, 12, 36),
(2289, 13, 36),
(2290, 14, 36),
(2291, 15, 36),
(2292, 16, 36),
(2293, 17, 36),
(2294, 18, 36),
(2295, 19, 36),
(2296, 20, 36),
(2297, 21, 36),
(2298, 22, 36),
(2299, 23, 36),
(2300, 24, 36),
(2301, 25, 36),
(2302, 26, 36),
(2303, 27, 36),
(2304, 28, 36),
(2305, 30, 36),
(2306, 31, 36),
(2307, 33, 36),
(2308, 34, 36),
(2309, 1, 37),
(2310, 2, 37),
(2311, 5, 37),
(2312, 6, 37),
(2313, 7, 37),
(2314, 8, 37),
(2315, 9, 37),
(2316, 10, 37),
(2317, 11, 37),
(2318, 12, 37),
(2319, 13, 37),
(2320, 14, 37),
(2321, 15, 37),
(2322, 16, 37),
(2323, 17, 37),
(2324, 18, 37),
(2325, 19, 37),
(2326, 20, 37),
(2327, 21, 37),
(2328, 22, 37),
(2329, 23, 37),
(2330, 24, 37),
(2331, 25, 37),
(2332, 26, 37),
(2333, 27, 37),
(2334, 28, 37),
(2335, 30, 37),
(2336, 31, 37),
(2337, 33, 37),
(2338, 34, 37),
(2339, 1, 38),
(2340, 2, 38),
(2341, 5, 38),
(2342, 6, 38),
(2343, 7, 38),
(2344, 8, 38),
(2345, 9, 38),
(2346, 10, 38),
(2347, 11, 38),
(2348, 12, 38),
(2349, 13, 38),
(2350, 14, 38),
(2351, 15, 38),
(2352, 16, 38),
(2353, 17, 38),
(2354, 18, 38),
(2355, 19, 38),
(2356, 20, 38),
(2357, 21, 38),
(2358, 22, 38),
(2359, 23, 38),
(2360, 24, 38),
(2361, 25, 38),
(2362, 26, 38),
(2363, 27, 38),
(2364, 28, 38),
(2365, 30, 38),
(2366, 31, 38),
(2367, 33, 38),
(2368, 34, 38),
(2369, 1, 39),
(2370, 2, 39),
(2371, 5, 39),
(2372, 6, 39),
(2373, 7, 39),
(2374, 8, 39),
(2375, 9, 39),
(2376, 10, 39),
(2377, 11, 39),
(2378, 12, 39),
(2379, 13, 39),
(2380, 14, 39),
(2381, 15, 39),
(2382, 16, 39),
(2383, 17, 39),
(2384, 18, 39),
(2385, 19, 39),
(2386, 20, 39),
(2387, 21, 39),
(2388, 22, 39),
(2389, 23, 39),
(2390, 24, 39),
(2391, 25, 39),
(2392, 26, 39),
(2393, 27, 39),
(2394, 28, 39),
(2395, 30, 39),
(2396, 31, 39),
(2397, 33, 39),
(2398, 34, 39),
(2399, 1, 33),
(2400, 2, 33),
(2401, 5, 33),
(2402, 6, 33),
(2403, 7, 33),
(2404, 8, 33),
(2405, 9, 33),
(2406, 10, 33),
(2407, 11, 33),
(2408, 12, 33),
(2409, 13, 33),
(2410, 14, 33),
(2411, 15, 33),
(2412, 16, 33),
(2413, 17, 33),
(2414, 18, 33),
(2415, 19, 33),
(2416, 20, 33),
(2417, 21, 33),
(2418, 22, 33),
(2419, 23, 33),
(2420, 24, 33),
(2421, 25, 33),
(2422, 26, 33),
(2423, 27, 33),
(2424, 28, 33),
(2425, 30, 33),
(2426, 31, 33),
(2427, 33, 33),
(2428, 34, 33),
(2429, 34, 298),
(2460, 1, 11),
(2461, 2, 11),
(2462, 5, 11),
(2463, 6, 11),
(2464, 7, 11),
(2465, 8, 11),
(2466, 9, 11),
(2467, 10, 11),
(2468, 11, 11),
(2469, 12, 11),
(2470, 13, 11),
(2471, 14, 11),
(2472, 15, 11),
(2473, 16, 11),
(2474, 17, 11),
(2475, 18, 11),
(2476, 19, 11),
(2477, 20, 11),
(2478, 21, 11),
(2479, 22, 11),
(2480, 23, 11),
(2481, 24, 11),
(2482, 25, 11),
(2483, 26, 11),
(2484, 27, 11),
(2485, 28, 11),
(2486, 30, 11),
(2487, 31, 11),
(2488, 33, 11),
(2489, 34, 11);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_setting`
--

DROP TABLE IF EXISTS `im_setting`;
CREATE TABLE IF NOT EXISTS `im_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `system_name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `content` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_setting`
--

INSERT INTO `im_setting` (`setting_id`, `name`, `system_name`, `content`, `description`, `date_create`, `date_modify`) VALUES
(1, 'System name', 'name', 'IM-CMS Engine', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37');

--
-- Wyzwalacze `im_setting`
--
DROP TRIGGER IF EXISTS `im_setting_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_setting_insert_date_create` BEFORE INSERT ON `im_setting` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_setting_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_setting_insert_date_modify` BEFORE INSERT ON `im_setting` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_setting_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_setting_update_date_modify` BEFORE UPDATE ON `im_setting` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_translation`
--

DROP TABLE IF EXISTS `im_translation`;
CREATE TABLE IF NOT EXISTS `im_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `target_table` varchar(32) COLLATE utf8_polish_ci DEFAULT '',
  `target_column` varchar(32) COLLATE utf8_polish_ci DEFAULT '',
  `target_record` int(11) NOT NULL,
  `content` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`translation_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_translation`
--

INSERT INTO `im_translation` (`translation_id`, `language_id`, `name`, `target_table`, `target_column`, `target_record`, `content`, `description`, `date_create`, `date_modify`) VALUES
(1, 2, 'First news', 'im_object', 'name', 1, 'First news on the main page', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(2, 2, 'Second news', 'im_object', 'name', 2, 'Second news on the main page', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(3, 2, 'In english image', 'im_image', 'content', 1, 'What are you doing in english really', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(4, 2, 'In english file', 'im_file', 'name', 1, 'Moon in english', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(5, 2, 'Back to home', 'im_section', 'name', 1, 'Home', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37');

--
-- Wyzwalacze `im_translation`
--
DROP TRIGGER IF EXISTS `im_translation_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_translation_insert_date_create` BEFORE INSERT ON `im_translation` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_translation_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_translation_insert_date_modify` BEFORE INSERT ON `im_translation` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_translation_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_translation_update_date_modify` BEFORE UPDATE ON `im_translation` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_translation_system`
--

DROP TABLE IF EXISTS `im_translation_system`;
CREATE TABLE IF NOT EXISTS `im_translation_system` (
  `translation_system_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `system_name` varchar(32) COLLATE utf8_polish_ci DEFAULT '',
  `content` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`translation_system_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_translation_system`
--

INSERT INTO `im_translation_system` (`translation_system_id`, `language_id`, `name`, `system_name`, `content`, `description`, `date_create`, `date_modify`) VALUES
(1, 1, 'All', 'show-all', 'Pokaż wszystko', '', '2019-11-14 08:44:07', '2019-11-14 08:44:07'),
(2, 2, 'All', 'show-all', 'Show all', '', '2019-11-14 08:44:07', '2019-11-14 08:44:07'),
(3, 1, 'More', 'more', 'Więcej...', '', '2019-11-14 08:44:07', '2019-11-14 08:44:07'),
(4, 2, 'More', 'more', 'More...', '', '2019-11-14 08:44:07', '2019-11-14 08:44:07'),
(5, 1, 'No data', 'no-data', 'Brak danych', '', '2019-11-14 08:44:07', '2019-11-14 08:44:07'),
(6, 2, 'No data', 'no-data', 'No data', '', '2019-11-14 08:44:07', '2019-11-14 08:44:07'),
(7, 1, 'Przycisk wyślij', 'send', 'Wyślij', '', '2019-11-14 08:44:07', '2019-11-14 08:44:07'),
(8, 1, 'Nazwa', 'name', 'Nazwa', '', '2019-11-14 08:44:07', '2019-11-14 08:44:07'),
(9, 1, 'Nadawca', 'source', 'Nadawca', '', '2019-11-14 08:44:07', '2019-11-14 08:44:07'),
(10, 2, 'Send button', 'send', 'Send now', '', '2019-11-14 08:44:07', '2019-11-14 08:44:07'),
(11, 2, 'Name', 'name', 'name', '', '2019-11-14 08:44:07', '2019-11-14 08:44:07'),
(12, 2, 'From', 'source', 'from', '', '2019-11-14 08:44:07', '2019-11-14 08:44:07'),
(13, 1, 'Formularz błąd', 'form-error', 'Błąd wysyłania wiadomości', '', '2019-11-14 08:44:07', '2019-11-14 08:44:07'),
(14, 1, 'Formularz poprawny', 'form-ok', 'Wiadomość wysłana', '', '2019-11-14 08:44:07', '2019-11-14 08:44:07'),
(15, 2, 'Form error', 'form-error', 'Error sending form', '', '2019-11-14 08:44:07', '2019-11-14 08:44:07'),
(16, 2, 'Form ok', 'form-ok', 'Form send', '', '2019-11-14 08:44:07', '2019-11-14 08:44:07'),
(17, 1, 'Błąd captcha', 'captcha-error', 'Błąd obrazka', '', '2019-11-14 08:44:07', '2019-11-14 08:44:07'),
(18, 2, 'Captcha error', 'captcha-error', 'Captcha error', '', '2019-11-14 08:44:07', '2019-11-14 08:44:07'),
(19, 1, 'Captcha', 'captcha-text', 'Wpisz znaki', '', '2019-11-14 08:44:07', '2019-11-14 08:44:07'),
(20, 2, 'Captcha', 'captcha-text', 'Insert captcha', '', '2019-11-14 08:44:07', '2019-11-14 08:44:07');

--
-- Wyzwalacze `im_translation_system`
--
DROP TRIGGER IF EXISTS `im_translation_system_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_translation_system_insert_date_create` BEFORE INSERT ON `im_translation_system` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_translation_system_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_translation_system_insert_date_modify` BEFORE INSERT ON `im_translation_system` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_translation_system_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_translation_system_update_date_modify` BEFORE UPDATE ON `im_translation_system` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_type`
--

DROP TABLE IF EXISTS `im_type`;
CREATE TABLE IF NOT EXISTS `im_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `class` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_type`
--

INSERT INTO `im_type` (`type_id`, `name`, `class`, `description`, `date_create`, `date_modify`) VALUES
(3, 'Slider', 'col-12', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(6, 'Zdanie pod sliderem', 'col-12 text-center', '', '2019-10-15 09:02:33', '2019-10-25 11:48:23'),
(7, 'Góra strony', 'col-12', '', '2019-10-15 09:05:55', '2019-10-15 10:56:19'),
(8, 'Ikony na sliderze', 'col-1-5', '5 boxów w rzędzie', '2019-10-15 10:06:22', '2019-10-31 12:49:55'),
(9, 'Kategorie', 'col-12 col-md-6 col-lg-4', '', '2019-10-15 12:55:43', '2019-10-24 11:36:15'),
(10, 'Na skróty', 'col-12 col-lg-4 text-center', '', '2019-10-15 13:33:19', '2019-10-15 14:15:47'),
(12, 'Tytuł slidera', 'col-12', '', '2019-10-17 09:26:10', '2019-10-25 11:18:58'),
(15, 'Logo', 'animated bounceIn', '', '2019-10-17 13:37:11', '2019-10-24 10:22:36'),
(16, 'Menu', '', '', '2019-10-17 13:37:22', '2019-10-17 13:45:11'),
(17, 'Copyright', 'col-12 text-center', '', '2019-10-18 10:37:14', '2019-10-18 10:53:12'),
(18, 'Stopka', 'col-12 col-md-6 col-lg-3', '', '2019-10-18 10:55:26', '2019-10-18 11:22:31'),
(19, 'Treść na stronę - cała szerokość', 'col-12 p-1', '', '2019-10-25 11:27:54', '2019-11-07 11:52:57'),
(20, 'Treść - cała szerokość + pliki', 'col-12 p-1', '', '2019-10-25 13:01:21', '2019-11-07 11:24:07'),
(21, 'Spis oddziałów', 'col-12', '', '2019-10-25 13:27:36', '2019-11-08 09:48:36'),
(22, 'Oferta pracy', 'col-12', '', '2019-10-25 14:32:34', '2019-10-25 14:32:47'),
(23, 'Ulotki i katalogi', 'col-6 p-1', '', '2019-10-31 10:01:29', '2019-10-31 10:18:00'),
(26, 'Treść na stronę - pół szerokości', 'col-6 p-1', '', '2019-10-31 12:52:43', '2019-10-31 13:06:24'),
(27, 'Zarząd Spółki', 'col-4 text-center p-1 bg-light border border-white animated bounceIn', '', '2019-11-04 09:05:50', '2019-11-04 14:52:00'),
(28, 'Zalety', 'col-12 col-lg-6 text-center p-3 bg-light animated bounceIn border border-white', 'Wyświetlane na firma => dlaczego my', '2019-11-07 12:25:53', '2019-11-08 09:40:45'),
(29, 'Dostawca', 'col-12 pb-3 border-bottom', '', '2019-11-12 12:00:12', '2019-11-14 14:53:08'),
(30, 'Wydarzenia', 'col-12 border-down', '', '2019-11-21 09:52:30', '2019-11-21 12:42:43'),
(31, 'Formularz kontaktowy', 'col-12 form', '', '2019-11-22 12:37:00', '2019-11-25 09:17:02'),
(32, 'FAQ', 'col-12', '', '2019-11-22 13:02:17', '2019-11-22 13:02:53'),
(33, 'Promocja', 'col-12 p-2', '', '2019-11-25 10:00:46', '2019-11-25 10:27:16'),
(34, 'Integris Plus', 'col-12', '', '2019-11-25 13:02:39', '2019-11-25 13:02:50');

--
-- Wyzwalacze `im_type`
--
DROP TRIGGER IF EXISTS `im_type_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_type_insert_date_create` BEFORE INSERT ON `im_type` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_type_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_type_insert_date_modify` BEFORE INSERT ON `im_type` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_type_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_type_update_date_modify` BEFORE UPDATE ON `im_type` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_type_property`
--

DROP TABLE IF EXISTS `im_type_property`;
CREATE TABLE IF NOT EXISTS `im_type_property` (
  `type_property_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `class` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `class_field` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `position` int(11) DEFAULT '0',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`type_property_id`),
  KEY `type_id` (`type_id`),
  KEY `property_id` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_type_property`
--

INSERT INTO `im_type_property` (`type_property_id`, `type_id`, `property_id`, `class`, `class_field`, `position`, `description`, `date_create`, `date_modify`) VALUES
(10, 3, 4, 'col-12', '', 1, '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(13, 6, 1, 'col-12 animated lightSpeedIn', '', 1, NULL, '2019-10-15 09:03:07', '2019-10-25 12:52:38'),
(14, 7, 2, 'col-12', '', 1, NULL, '2019-10-15 09:06:11', '2019-10-15 10:56:06'),
(15, 8, 4, 'col-12 animated rotateIn', '', 1, NULL, '2019-10-15 10:06:44', '2019-10-25 11:20:12'),
(17, 9, 2, 'col-12', '', 1, NULL, '2019-10-15 12:56:11', '2019-10-15 13:02:57'),
(19, 10, 2, 'col-12', '', 2, NULL, '2019-10-15 13:33:45', '2019-10-28 12:08:27'),
(20, 10, 5, 'col-12', 'text-info btn btn-outline-info', 3, NULL, '2019-10-15 14:00:06', '2019-10-28 12:08:27'),
(22, 12, 2, 'col-12 text-center text-white', '', 1, NULL, '2019-10-17 09:27:01', '2019-10-17 10:57:12'),
(26, 8, 1, 'col-12 h4 text-white', '', 2, NULL, '2019-10-17 11:20:04', '2019-10-17 11:23:33'),
(31, 16, 7, 'navbar navbar-expand-lg navbar-light', '', 1, NULL, '2019-10-17 13:38:12', '2019-10-17 13:40:13'),
(32, 17, 2, 'col-12', '', 1, NULL, '2019-10-18 10:37:37', '2019-10-18 10:52:17'),
(33, 18, 2, 'col-12', '', 1, NULL, '2019-10-18 10:56:16', '2019-10-18 11:07:44'),
(34, 19, 2, 'col-12', '', 1, NULL, '2019-10-25 11:28:23', '2019-10-31 10:25:56'),
(35, 20, 2, 'col-12', '', 1, NULL, '2019-10-25 13:01:41', '2019-10-31 13:53:39'),
(36, 20, 6, 'col-12', '', 2, NULL, '2019-10-25 13:01:46', '2019-10-31 13:53:47'),
(37, 21, 2, 'col-12', '', 1, '', '2019-10-25 13:29:06', '2019-11-08 09:55:11'),
(38, 22, 6, 'col-12', '', 2, NULL, '2019-10-25 14:33:12', '2019-10-28 12:25:33'),
(39, 22, 2, 'col-12', '', 1, NULL, '2019-10-25 14:33:33', '2019-10-28 12:25:00'),
(40, 10, 1, 'col-12', '', 1, NULL, '2019-10-28 12:08:22', '2019-10-28 12:08:47'),
(41, 23, 2, 'col-12', '', 1, NULL, '2019-10-31 10:02:06', '2019-10-31 10:10:05'),
(42, 23, 6, 'col-12', '', 2, NULL, '2019-10-31 10:02:14', '2019-10-31 10:10:37'),
(46, 26, 2, 'col-12', '', 1, NULL, '2019-10-31 12:53:32', '2019-10-31 12:58:13'),
(47, 27, 1, 'col-12 h5', '', 1, 'Imię i nazwisko', '2019-11-04 09:14:06', '2019-11-04 14:35:57'),
(50, 27, 2, 'col-12', '', 2, '', '2019-11-04 12:52:38', '2019-11-04 14:14:38'),
(51, 27, 10, 'col-12 small', '', 3, '', '2019-11-04 13:02:22', '2019-11-04 14:29:56'),
(53, 28, 1, 'text-info text-center w-100 p-3', '', 1, '', '2019-11-07 12:50:24', '2019-11-07 13:47:48'),
(54, 28, 2, 'text-center w-100', '', 2, '', '2019-11-07 13:01:01', '2019-11-08 09:30:36'),
(55, 29, 1, 'col-12 col-lg-2 text-right pt-3', '', 1, '', '2019-11-12 12:00:49', '2019-11-15 08:32:10'),
(56, 29, 6, 'col-12 col-lg-4 text-center text-lg-left', '', 3, 'Bezpośrednio karta katalogowa', '2019-11-12 12:01:09', '2019-11-14 14:58:33'),
(57, 29, 4, 'col-12 col-lg-2 text-center text-lg-left', '', 2, 'Logo', '2019-11-12 12:01:14', '2019-11-25 09:01:39'),
(59, 15, 4, '', '', 1, NULL, '2019-11-14 10:12:30', '2019-11-14 10:12:30'),
(60, 29, 2, 'col-12 col-lg-4 text-left pt-2', '', 4, 'Przypisane kategorie', '2019-11-14 14:29:11', '2019-11-25 09:01:52'),
(61, 30, 4, 'col-6', '', 2, '', '2019-11-21 09:53:01', '2019-11-21 10:25:01'),
(63, 30, 2, 'col-6', '', 4, '', '2019-11-21 09:53:18', '2019-11-21 10:26:54'),
(64, 30, 3, 'col-12 text-right p-2 h5 text-info pr-5', '', 1, '', '2019-11-21 09:53:32', '2019-11-21 12:47:38'),
(65, 31, 10, 'w-100', '', 1, 'Formularz kontaktowy do wysyłania wiadomości', '2019-11-22 12:37:24', '2019-11-22 12:43:06'),
(66, 32, 1, 'col-12 p-2 text-center text-info', '', 2, '', '2019-11-22 13:29:08', '2019-11-22 13:47:59'),
(67, 32, 2, 'col-12 text-center', '', 3, '', '2019-11-22 13:29:14', '2019-11-22 13:47:48'),
(68, 32, 12, 'col-12 text-center p-2', 'fa-2x', 1, '', '2019-11-22 13:29:27', '2019-11-22 13:46:37'),
(69, 33, 6, 'col-12', '', 2, '', '2019-11-25 10:00:53', '2019-11-25 10:25:38'),
(71, 34, 2, '', '', 1, NULL, '2019-11-25 13:02:59', '2019-11-25 13:02:59'),
(72, 34, 4, '', '', 2, NULL, '2019-11-25 13:03:03', '2019-11-25 13:03:03');

--
-- Wyzwalacze `im_type_property`
--
DROP TRIGGER IF EXISTS `im_type_property_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_type_property_insert_date_create` BEFORE INSERT ON `im_type_property` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_type_property_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_type_property_insert_date_modify` BEFORE INSERT ON `im_type_property` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_type_property_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_type_property_update_date_modify` BEFORE UPDATE ON `im_type_property` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `im_category`
--
ALTER TABLE `im_category`
  ADD CONSTRAINT `im_category_ibfk_1` FOREIGN KEY (`label_id`) REFERENCES `im_label` (`label_id`);

--
-- Ograniczenia dla tabeli `im_label_section`
--
ALTER TABLE `im_label_section`
  ADD CONSTRAINT `im_label_section_ibfk_1` FOREIGN KEY (`label_id`) REFERENCES `im_label` (`label_id`);

--
-- Ograniczenia dla tabeli `im_object`
--
ALTER TABLE `im_object`
  ADD CONSTRAINT `im_object_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `im_type` (`type_id`),
  ADD CONSTRAINT `im_object_ibfk_2` FOREIGN KEY (`label_id`) REFERENCES `im_label` (`label_id`);

--
-- Ograniczenia dla tabeli `im_object_category`
--
ALTER TABLE `im_object_category`
  ADD CONSTRAINT `im_object_category_ibfk_1` FOREIGN KEY (`object_id`) REFERENCES `im_object` (`object_id`),
  ADD CONSTRAINT `im_object_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `im_category` (`category_id`);

--
-- Ograniczenia dla tabeli `im_object_file`
--
ALTER TABLE `im_object_file`
  ADD CONSTRAINT `im_object_file_ibfk_1` FOREIGN KEY (`object_id`) REFERENCES `im_object` (`object_id`),
  ADD CONSTRAINT `im_object_file_ibfk_2` FOREIGN KEY (`file_id`) REFERENCES `im_file` (`file_id`);

--
-- Ograniczenia dla tabeli `im_object_image`
--
ALTER TABLE `im_object_image`
  ADD CONSTRAINT `im_object_image_ibfk_1` FOREIGN KEY (`object_id`) REFERENCES `im_object` (`object_id`),
  ADD CONSTRAINT `im_object_image_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `im_image` (`image_id`);

--
-- Ograniczenia dla tabeli `im_object_movie`
--
ALTER TABLE `im_object_movie`
  ADD CONSTRAINT `im_object_movie_ibfk_1` FOREIGN KEY (`object_id`) REFERENCES `im_object` (`object_id`),
  ADD CONSTRAINT `im_object_movie_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `im_movie` (`movie_id`);

--
-- Ograniczenia dla tabeli `im_section_object`
--
ALTER TABLE `im_section_object`
  ADD CONSTRAINT `im_section_object_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `im_section` (`section_id`),
  ADD CONSTRAINT `im_section_object_ibfk_2` FOREIGN KEY (`object_id`) REFERENCES `im_object` (`object_id`);

--
-- Ograniczenia dla tabeli `im_translation`
--
ALTER TABLE `im_translation`
  ADD CONSTRAINT `im_translation_ibfk_1` FOREIGN KEY (`language_id`) REFERENCES `im_language` (`language_id`);

--
-- Ograniczenia dla tabeli `im_translation_system`
--
ALTER TABLE `im_translation_system`
  ADD CONSTRAINT `im_translation_system_ibfk_1` FOREIGN KEY (`language_id`) REFERENCES `im_language` (`language_id`);

--
-- Ograniczenia dla tabeli `im_type_property`
--
ALTER TABLE `im_type_property`
  ADD CONSTRAINT `im_type_property_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `im_type` (`type_id`),
  ADD CONSTRAINT `im_type_property_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `im_property` (`property_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
