-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Czas generowania: 19 Lis 2019, 08:03
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(50, 27, 'Nawodnienia', '', 47, 'on', NULL, '2019-11-15 13:05:44', '2019-11-15 13:05:44');

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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(87, 'Karta katalogowa', '', 'gama-wilo-residential-a6ddd42fb294cf19cfd6545655e0764b.pdf', 'on', 'Wilo', '2019-11-15 14:34:02', '2019-11-15 14:34:13');

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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(70, 0, 'Grundfos', '', 'logo_grundfos2-2faa1575a0776d35f22554ddd1719eb3.jpg', 'on', '', '2019-11-15 14:30:50', '2019-11-15 14:36:15');

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(27, 'Treść na stronę - dostawcy', 'content-supplier', NULL, '2019-11-12 12:10:00', '2019-11-12 12:10:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(8, 27, 10, 'col-12 col-lg-9', NULL, '2019-11-12 12:18:27', '2019-11-12 12:18:27');

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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_object`
--

INSERT INTO `im_object` (`object_id`, `type_id`, `label_id`, `section`, `system_name`, `name`, `content`, `link`, `email`, `form`, `icon`, `position`, `status`, `description`, `date`, `date_create`, `date_modify`) VALUES
(7, 3, 3, 0, 'Slider', '', '', '', '', '', '', 1, 'on', '', '2019-10-15', '2019-10-15 08:07:37', '2019-10-25 11:38:31'),
(10, 6, 7, 0, 'Strona główna', '<i class=\'fad fa-bolt\'></i> 37 LAT W BRANŻY, 16 ODDZIAŁÓW, 60 DORADCÓW', NULL, 'http://aqua.net.pl', '', '', '', 1, 'on', '', '2019-10-15', '2019-10-15 09:03:32', '2019-10-25 11:40:10'),
(11, 7, 8, 0, 'Góra strony', '', '<div class=\"im-top\">\r\n<div class=\"row\">\r\n<div class=\"col-12 col-md-4 text-left\">\r\n<ul>\r\n<li><a href=\"tel:+48684567608\"> +48 68 456 76 08</a></li>\r\n<li><a href=\"mailto:sekretariat@aqua.net.pl\"> sekretariat@aqua.net.pl</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-12 col-md-8 text-right\">\r\n<ul>\r\n<li><img style=\"width: 128px;\" src=\"system/default/public/integris.png\" /></li>\r\n<li>\r\n<p style=\"float: left; padding-top: 3px;\">Projekt B2B</p>\r\n<img style=\"margin-left: 3px; width: 48px;\" src=\"system/default/public/eu-logo.jpg\" /></li>\r\n<li><img src=\"system/default/public/forbes-2018.png\" /></li>\r\n<li><img src=\"system/default/public/gazele-2018.png\" /></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '', '', '', '', 1, 'on', '', '2019-10-15', '2019-10-15 09:06:35', '2019-10-25 12:13:26'),
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
(24, 10, 10, 1, 'Programy partnerskie', '<i class=\'fad fa-handshake-alt fa-5x text-info\'></i>', '<p><span style=\"font-size: 24px;\">Programy partnerskie</span></p>\r\n<p>Zapraszamy do zapoznania się z aktualnymi Programami Partnerskimi na rok 2018.</p>', '', '', '', '', 1, 'on', '', '2019-10-15', '2019-10-15 13:34:09', '2019-10-28 12:11:49'),
(25, 10, 10, 12, 'Aktualności', '<i class=\'fad fa-newspaper fa-5x text-info\'></i>', '<p><span style=\"font-size: 24px;\">Aktualności</span></p>\r\n<p>Najświeższe informacje, aktualności&nbsp;i wydarzenia z życia naszej firmy</p>', '', '', '', '', 2, 'on', '', '2019-10-15', '2019-10-15 13:46:12', '2019-10-28 12:19:31'),
(26, 10, 10, 1, 'Promocje', '<i class=\'fad fa-piggy-bank fa-5x text-info\'></i>', '<p><span style=\"font-size: 24px;\">Promocje</span></p>\r\n<p>Akcje promocyjne, gazetki, wyprzedaże. Sam zaproponuj produkty do promocji!</p>', '', '', '', '', 3, 'on', '', '2019-10-15', '2019-10-15 13:48:05', '2019-10-28 12:17:36'),
(31, 12, 12, 0, 'Dwie linie', '', '<p><span style=\"font-size: 48px;\"><strong> 16 HURTOWNI BRANŻY</strong></span></p><p><span style=\"font-size: 30px;\"><strong>INSTALACYJNEJ, GRZEWCZEJ I POMPOWEJ</strong></span></p><p><br></p>', '', '', '', '', 1, 'on', '', '2019-10-17', '2019-10-17 10:48:29', '2019-10-17 12:30:22'),
(33, 16, 15, 0, 'Menu głowne', '', NULL, '', '', '', '', 1, 'on', '', '2019-10-17', '2019-10-17 13:38:29', '2019-10-25 12:12:06'),
(34, 15, 14, 0, 'Logo', '', NULL, '', '', '', '', 1, 'on', '', '2019-10-17', '2019-10-17 13:38:43', '2019-10-25 12:12:35'),
(35, 17, 16, 0, 'Pod stopką zdanie', '', '<p>&copy; Copyright 2019 aqua.net.pl - wszelkie prawa zastrzeżone</p>', '', '', '', '', 1, 'on', '', '2019-10-18', '2019-10-18 10:37:59', '2019-10-25 12:11:42'),
(36, 18, 17, 0, 'Strony informacyjne', '', '<p style=\"text-align: left;\"><span style=\"font-size: 24px;\">Strony informacyjne</span></p>\r\n<ul>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://elektrozawory.pl/\" target=\"_blank\" rel=\"noopener\">Elektrozawory</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://fontanny.pomp.pl/\" target=\"_blank\" rel=\"noopener\">Fontanny</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://pomp.pl/\" target=\"_blank\" rel=\"noopener\">Pompy</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://aquagrzewcza.pl/\" target=\"_blank\" rel=\"noopener\">Technika grzewcza</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://deszczowka.pl/\" target=\"_blank\" rel=\"noopener\">Deszcz&oacute;wka</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://iglofiltry.pl/\" target=\"_blank\" rel=\"noopener\">Igłofiltry</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://elektropompki.pl/\" target=\"_blank\" rel=\"noopener\">Elektropompki</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://aquasolar.pomp.pl/\" target=\"_blank\" rel=\"noopener\">AquaSolar</a></li>\r\n</ul>', '', '', '', '', 1, 'on', '', '2019-10-18', '2019-10-18 10:56:46', '2019-10-25 12:01:10'),
(37, 18, 17, 0, 'Strony informacyjne', '', '<p style=\"text-align: left;\"><span style=\"font-size: 18pt;\">Strony informacyjne</span></p>\r\n<ul>\r\n<li style=\"text-align: left;\"><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://nawadnianie.eu\" target=\"_blank\" rel=\"noopener\">Nawadnianie</a></li>\r\n<li style=\"text-align: left;\"><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://uzdatnianiewody.eu\" target=\"_blank\" rel=\"noopener\">Uzdatnianie wody</a></li>\r\n<li style=\"text-align: left;\"><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://nodolini.pl\" target=\"_blank\" rel=\"noopener\">Zraszacze dla przemysłu</a></li>\r\n<li style=\"text-align: left;\"><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://zaworybezpieczenstwa.pl\" target=\"_blank\" rel=\"noopener\">Zawory bezpieczeństwa</a></li>\r\n<li style=\"text-align: left;\"><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://technikabasenowa.pomp.pl\" target=\"_blank\" rel=\"noopener\">Technika basenowa</a></li>\r\n<li style=\"text-align: left;\"><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://www.viessmann.aqua.net.pl\" target=\"_blank\" rel=\"noopener\">Salon firmowy Viessmann w Gorzowie Wlkp.</a></li>\r\n</ul>', '', '', '', '', 2, 'on', '', '2019-10-18', '2019-10-18 10:57:00', '2019-10-31 14:02:06'),
(38, 18, 17, 0, 'Sklepy internetowe', '', '<p style=\"text-align: left;\"><span style=\"font-size: 24px;\">Sklepy internetowe</span></p>\r\n<ul>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://sklep.elektrozawory.pl\" target=\"_blank\" rel=\"noopener\">Elektrozawory 1</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a title=\"Profesjonalne zawory elektromagnetycznie w wyjątkowo niskich cenach\" href=\"http://elektrozawory.com.pl\" target=\"_blank\" rel=\"noopener\">Elektrozawory 2</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a title=\"Zawory antyskażeniowe, zwrotne, regulacyjne, kulowe\" href=\"https://zaworyantyskazeniowe.pl\" target=\"_blank\" rel=\"noopener\">Zawory antyskażeniowe</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"https://grzewcza24.pl\" target=\"_blank\" rel=\"noopener\">Technika grzewcza</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://tylkoelektropompki.pl\" target=\"_blank\" rel=\"noopener\">Elektropompki</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://mac3.pl\" target=\"_blank\" rel=\"noopener\">Wyłączniki pływakowe</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://wymienniki.pl\" target=\"_blank\" rel=\"noopener\">Wymienniki ciepła</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"https://przepompownie.pomp.pl\" target=\"_blank\" rel=\"noopener\">Przepompownie</a></li>\r\n</ul>', '', '', '', '', 3, 'on', '', '2019-10-18', '2019-10-18 10:57:50', '2019-10-31 14:03:08'),
(39, 18, 17, 0, 'Adres', '', '<h3 class=\"block-title\"><span style=\"font-size: 24px;\">\"AQUA - Grupa SBS\"</span></h3>\r\n<p>ul. Marii Skłodowskiej-Curie 25,<br />65-124 Zielona G&oacute;ra</p>\r\n<p><strong>Telefon:</strong> +48 68 456 76 08<br /><strong>Fax:</strong> +48 68 456 76 03<br /><strong>E-mail:</strong> <a href=\"mailto:sekretariat@aqua.net.pl\">sekretariat@aqua.net.pl</a></p>\r\n<p><strong>Godziny otwarcia</strong><br />pn-pt: 07:00 - 16:00<br />sob: 8.00-14.00 (od 01.04 do 30.10)</p>', '', '', 'test@test.pl', '', 4, 'on', '', '2019-10-18', '2019-10-18 10:57:58', '2019-11-14 09:17:40'),
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
(51, 21, 19, 0, 'Spis oddziałów', '', '<p><span style=\"font-size: 18pt;\">Nasze oddziały</span></p>\r\n<ul>\r\n<li><a href=\"http://zielonagora.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Zielona G&oacute;ra</a></li>\r\n<li><a href=\"http://wroclaw.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Wrocław - Mokronoska</a></li>\r\n<li><a href=\"http://wroclaw2.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Wrocław - Strzegomska</a></li>\r\n<li><a href=\"http://gorzow.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Gorz&oacute;w Wlkp.</a></li>\r\n<li><a href=\"http://legnica.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Legnica</a></li>\r\n<li><a href=\"http://walcz.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Wałcz</a></li>\r\n<li><a href=\"http://wolsztyn.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Wolsztyn</a></li>\r\n<li><a href=\"http://ap.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział AQUA POLSKA</a></li>\r\n<li><a href=\"http://racula.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Racula k/Zielonej G&oacute;ry</a></li>\r\n<li><a href=\"http://nowasol.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Nowa S&oacute;l</a></li>\r\n<li><a href=\"http://glogow.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Głog&oacute;w</a></li>\r\n<li><a href=\"http://lubin.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Lubin</a></li>\r\n<li><a href=\"http://jeleniagora.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Jelenia G&oacute;ra</a></li>\r\n<li><a href=\"http://srem.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Śrem</a></li>\r\n<li><a href=\"http://poznan.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Poznań</a></li>\r\n</ul>', '', '', '', '', 1, 'on', '', '2019-10-25', '2019-10-25 13:29:28', '2019-11-12 11:29:18'),
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
(116, 6, 7, 0, 'Kontakt', 'Kontakt do poszczególnych działów centrali i mapa oddziałów firmy', NULL, '', '', '', '', 21, 'on', '', '2019-11-12', '2019-11-12 11:44:36', '2019-11-12 11:45:21'),
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
(171, 29, 27, 0, 'wilo', 'Wilo', '<div class=\"badge badge-secondary pb-1\">pompy</div>', '', '', '', '', 53, 'on', '', '2019-11-15', '2019-11-15 14:24:51', '2019-11-15 14:40:13');

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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(126, 149, 15);

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
) ENGINE=InnoDB AUTO_INCREMENT=464 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(463, 149, 65, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(63, 34, 16, 0),
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
(149, 149, 45, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(28, 9, 'Spis katalogów', 'spis-katalogow', '', 'fad fa-list-ul', 9, 'on', '', '2019-10-24 10:11:55', '2019-10-24 10:12:51');

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
) ENGINE=InnoDB AUTO_INCREMENT=1278 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(320, 1, 36),
(321, 2, 36),
(322, 5, 36),
(323, 6, 36),
(324, 7, 36),
(325, 8, 36),
(326, 9, 36),
(327, 10, 36),
(328, 11, 36),
(329, 12, 36),
(330, 13, 36),
(331, 14, 36),
(332, 15, 36),
(333, 16, 36),
(334, 17, 36),
(335, 18, 36),
(336, 19, 36),
(337, 20, 36),
(338, 21, 36),
(339, 22, 36),
(340, 23, 36),
(341, 24, 36),
(342, 25, 36),
(343, 26, 36),
(344, 27, 36),
(345, 28, 36),
(424, 1, 35),
(425, 2, 35),
(426, 5, 35),
(427, 6, 35),
(428, 7, 35),
(429, 8, 35),
(430, 9, 35),
(431, 10, 35),
(432, 11, 35),
(433, 12, 35),
(434, 13, 35),
(435, 14, 35),
(436, 15, 35),
(437, 16, 35),
(438, 17, 35),
(439, 18, 35),
(440, 19, 35),
(441, 20, 35),
(442, 21, 35),
(443, 22, 35),
(444, 23, 35),
(445, 24, 35),
(446, 25, 35),
(447, 26, 35),
(448, 27, 35),
(449, 28, 35),
(450, 1, 33),
(451, 2, 33),
(452, 5, 33),
(453, 6, 33),
(454, 7, 33),
(455, 8, 33),
(456, 9, 33),
(457, 10, 33),
(458, 11, 33),
(459, 12, 33),
(460, 13, 33),
(461, 14, 33),
(462, 15, 33),
(463, 16, 33),
(464, 17, 33),
(465, 18, 33),
(466, 19, 33),
(467, 20, 33),
(468, 21, 33),
(469, 22, 33),
(470, 23, 33),
(471, 24, 33),
(472, 25, 33),
(473, 26, 33),
(474, 27, 33),
(475, 28, 33),
(476, 1, 34),
(477, 2, 34),
(478, 5, 34),
(479, 6, 34),
(480, 7, 34),
(481, 8, 34),
(482, 9, 34),
(483, 10, 34),
(484, 11, 34),
(485, 12, 34),
(486, 13, 34),
(487, 14, 34),
(488, 15, 34),
(489, 16, 34),
(490, 17, 34),
(491, 18, 34),
(492, 19, 34),
(493, 20, 34),
(494, 21, 34),
(495, 22, 34),
(496, 23, 34),
(497, 24, 34),
(498, 25, 34),
(499, 26, 34),
(500, 27, 34),
(501, 28, 34),
(502, 1, 11),
(503, 2, 11),
(504, 5, 11),
(505, 6, 11),
(506, 7, 11),
(507, 8, 11),
(508, 9, 11),
(509, 10, 11),
(510, 11, 11),
(511, 12, 11),
(512, 13, 11),
(513, 14, 11),
(514, 15, 11),
(515, 16, 11),
(516, 17, 11),
(517, 18, 11),
(518, 19, 11),
(519, 20, 11),
(520, 21, 11),
(521, 22, 11),
(522, 23, 11),
(523, 24, 11),
(524, 25, 11),
(525, 26, 11),
(526, 27, 11),
(527, 28, 11),
(528, 7, 43),
(529, 8, 44),
(530, 14, 45),
(531, 15, 46),
(532, 16, 47),
(545, 17, 50),
(575, 18, 57),
(576, 19, 58),
(597, 1, 24),
(601, 1, 26),
(602, 1, 25),
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
(771, 1, 37),
(772, 2, 37),
(773, 5, 37),
(774, 6, 37),
(775, 7, 37),
(776, 8, 37),
(777, 9, 37),
(778, 10, 37),
(779, 11, 37),
(780, 12, 37),
(781, 13, 37),
(782, 14, 37),
(783, 15, 37),
(784, 16, 37),
(785, 17, 37),
(786, 18, 37),
(787, 19, 37),
(788, 20, 37),
(789, 21, 37),
(790, 22, 37),
(791, 23, 37),
(792, 24, 37),
(793, 25, 37),
(794, 26, 37),
(795, 27, 37),
(796, 28, 37),
(797, 1, 38),
(798, 2, 38),
(799, 5, 38),
(800, 6, 38),
(801, 7, 38),
(802, 8, 38),
(803, 9, 38),
(804, 10, 38),
(805, 11, 38),
(806, 12, 38),
(807, 13, 38),
(808, 14, 38),
(809, 15, 38),
(810, 16, 38),
(811, 17, 38),
(812, 18, 38),
(813, 19, 38),
(814, 20, 38),
(815, 21, 38),
(816, 22, 38),
(817, 23, 38),
(818, 24, 38),
(819, 25, 38),
(820, 26, 38),
(821, 27, 38),
(822, 28, 38),
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
(1132, 2, 51),
(1133, 5, 51),
(1134, 6, 51),
(1135, 7, 51),
(1136, 8, 51),
(1137, 9, 51),
(1138, 10, 51),
(1139, 12, 51),
(1140, 13, 51),
(1141, 14, 51),
(1142, 15, 51),
(1143, 16, 51),
(1144, 17, 51),
(1145, 18, 51),
(1146, 19, 51),
(1147, 20, 51),
(1148, 21, 51),
(1149, 22, 51),
(1150, 23, 51),
(1151, 24, 51),
(1152, 25, 51),
(1153, 26, 51),
(1154, 27, 51),
(1155, 28, 51),
(1156, 2, 116),
(1161, 10, 119),
(1165, 1, 39),
(1166, 2, 39),
(1167, 5, 39),
(1168, 6, 39),
(1169, 7, 39),
(1170, 8, 39),
(1171, 9, 39),
(1172, 10, 39),
(1173, 11, 39),
(1174, 12, 39),
(1175, 13, 39),
(1176, 14, 39),
(1177, 15, 39),
(1178, 16, 39),
(1179, 17, 39),
(1180, 18, 39),
(1181, 19, 39),
(1182, 20, 39),
(1183, 21, 39),
(1184, 22, 39),
(1185, 23, 39),
(1186, 24, 39),
(1187, 25, 39),
(1188, 26, 39),
(1189, 27, 39),
(1190, 28, 39),
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
(1277, 10, 149);

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(29, 'Dostawca', 'col-12 pb-3 border-bottom', '', '2019-11-12 12:00:12', '2019-11-14 14:53:08');

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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(57, 29, 4, 'col-12 col-lg-3 text-center text-lg-left', '', 2, 'Logo', '2019-11-12 12:01:14', '2019-11-14 14:58:01'),
(59, 15, 4, '', '', 1, NULL, '2019-11-14 10:12:30', '2019-11-14 10:12:30'),
(60, 29, 2, 'col-12 col-lg-3 text-left pt-2', '', 4, 'Przypisane kategorie', '2019-11-14 14:29:11', '2019-11-15 08:32:50');

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
