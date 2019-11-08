-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Czas generowania: 08 Lis 2019, 13:06
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(11, 21, 'Oddział Wrocław (Mokronoska)', '', 8, 'on', NULL, '2019-10-28 13:42:36', '2019-10-28 13:42:36');

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(38, 'Oferta dla studniarzy', '', 'of_studniarze-f9ef21441da60008a2a8e8e66ce03b92.pdf', 'on', NULL, '2019-10-31 13:21:01', '2019-10-31 13:21:01');

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(17, 0, 'eu', '', 'eu-fa606eeb696124076172bd9cc6b68b6b.jpg', 'on', NULL, '2019-11-08 12:51:15', '2019-11-08 12:51:15');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(25, 'Góra content', 'content-begin', NULL, '2019-10-31 10:21:13', '2019-10-31 10:21:13');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_label_section`
--

INSERT INTO `im_label_section` (`label_section_id`, `label_id`, `section`, `class`, `description`, `date_create`, `date_modify`) VALUES
(1, 14, 0, 'col-3', NULL, '2019-10-18 08:24:54', '2019-10-18 08:24:54'),
(2, 15, 0, 'col-9', NULL, '2019-10-18 08:25:13', '2019-10-18 08:25:13'),
(3, 18, 0, 'col-12 col-lg-9', '', '2019-10-25 13:41:08', '2019-11-08 09:45:14'),
(4, 19, 0, 'col-12 col-lg-3 text-lg-left', '', '2019-10-25 13:41:26', '2019-11-08 10:01:51'),
(5, 21, 0, 'col-12 col-lg-9', '', '2019-10-28 11:28:34', '2019-11-08 09:45:29'),
(6, 18, 18, 'col-12', NULL, '2019-10-28 13:46:02', '2019-10-28 13:46:02');

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
  `position` int(11) DEFAULT '0',
  `status` varchar(3) COLLATE utf8_polish_ci DEFAULT 'on',
  `description` text COLLATE utf8_polish_ci,
  `date` varchar(32) COLLATE utf8_polish_ci DEFAULT '',
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`object_id`),
  KEY `type_id` (`type_id`),
  KEY `label_id` (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_object`
--

INSERT INTO `im_object` (`object_id`, `type_id`, `label_id`, `section`, `system_name`, `name`, `content`, `link`, `email`, `position`, `status`, `description`, `date`, `date_create`, `date_modify`) VALUES
(7, 3, 3, 0, 'Slider', '', '', '', '', 1, 'on', '', '2019-10-15', '2019-10-15 08:07:37', '2019-10-25 11:38:31'),
(10, 6, 7, 0, 'Strona główna', '<i class=\'fad fa-bolt\'></i> 37 LAT W BRANŻY, 16 ODDZIAŁÓW, 60 DORADCÓW', NULL, 'http://aqua.net.pl', '', 1, 'on', '', '2019-10-15', '2019-10-15 09:03:32', '2019-10-25 11:40:10'),
(11, 7, 8, 0, 'Góra strony', '', '<div class=\"im-top\">\r\n<div class=\"row\">\r\n<div class=\"col-12 col-md-4 text-left\">\r\n<ul>\r\n<li><a href=\"tel:+48684567608\"> +48 68 456 76 08</a></li>\r\n<li><a href=\"mailto:sekretariat@aqua.net.pl\"> sekretariat@aqua.net.pl</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-12 col-md-8 text-right\">\r\n<ul>\r\n<li><img style=\"width: 128px;\" src=\"system/default/public/integris.png\" /></li>\r\n<li>\r\n<p style=\"float: left; padding-top: 3px;\">Projekt B2B</p>\r\n<img style=\"margin-left: 3px; width: 48px;\" src=\"system/default/public/eu-logo.jpg\" /></li>\r\n<li><img src=\"system/default/public/forbes-2018.png\" /></li>\r\n<li><img src=\"system/default/public/gazele-2018.png\" /></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '', '', 1, 'on', '', '2019-10-15', '2019-10-15 09:06:35', '2019-10-25 12:13:26'),
(12, 8, 6, 0, 'Technika pompowa', 'Technika pompowa', NULL, '', '', 1, 'on', '', '2019-10-15', '2019-10-15 10:11:19', '2019-10-25 11:15:44'),
(13, 8, 6, 0, 'Technika grzewcza', 'Technika grzewcza', NULL, '', '', 2, 'on', '', '2019-10-15', '2019-10-15 10:30:04', '2019-10-25 11:15:44'),
(14, 8, 6, 0, 'Systemy nawadniające', 'Systemy nawadniające', NULL, '', '', 3, 'on', '', '2019-10-15', '2019-10-15 11:03:47', '2019-10-25 11:15:44'),
(15, 8, 6, 0, 'Uzdatnianie wody', 'Uzdatnianie wody', NULL, '', '', 4, 'on', '', '2019-10-15', '2019-10-15 11:07:13', '2019-10-25 11:15:44'),
(16, 8, 6, 0, 'Produkty specjalistyczne', 'Produkty specjalistyczne', NULL, '', '', 5, 'on', '', '2019-10-15', '2019-10-15 11:07:41', '2019-10-25 11:15:44'),
(18, 9, 9, 0, 'Technika pompowa', '', '<div class=\"front\"><img src=\"system/default/public/category/1.jpg\" alt=\"\" /><span style=\"font-size: 24px;\">Technika pompowa</span>\r\n<p>dom i ogr&oacute;d, przemysł, wodociągi, budownictwo mieszkaniowe i publiczne, rolnictwo, woda i ścieki, CO i CWU, zintegrowane, dozowanie i dezynfekcja, zestawy hydroforowe</p>\r\n</div>\r\n<div class=\"back\" style=\"display: none;\"><img src=\"system/default/public/category/1-hover.jpg\" alt=\"\" /> <span style=\"font-size: 24px;\">Technika pompowa</span>\r\n<div class=\"row back-content\">\r\n<div class=\"col-12\">\r\n<ul>\r\n<li><a class=\"btn btn-secondary\" href=\"#\">katalogi producent&oacute;w</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>E-sklepy</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.tylkopompy.pl\" target=\"_blank\" rel=\"noopener\">tylkopompy.pl</a></li>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.mac3.pl\" target=\"_blank\" rel=\"noopener\">mac3.pl</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>Strony informacyjne</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.iglofiltry.pl\" target=\"_blank\" rel=\"noopener\">igłofiltry.pl</a></li>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.elektropompki.pl\" target=\"_blank\" rel=\"noopener\">elektropompki.pl</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '', '', 1, 'on', '', '2019-10-15', '2019-10-15 12:56:34', '2019-10-24 14:32:52'),
(19, 9, 9, 0, 'Technika grzewcza', '', '<div class=\"front\"><img src=\"system/default/public/category/2.jpg\" alt=\"\" /><span style=\"font-size: 24px;\">Technika grzewcza</span>\r\n<p>instalacje, kotły gazowe i na paliwo stałe, podgrzewacze, grzejniki, wymienniki, pompy ciepła, solary, fotowoltaika, sterowniki, systemy kominowe, pompy CO i CUW, ogrzewanie podłogowe</p>\r\n</div>\r\n<div class=\"back\" style=\"display: none;\"><img src=\"system/default/public/category/2-hover.jpg\" alt=\"\" /> <span style=\"font-size: 24px;\">Technika grzewcza</span>\r\n<div class=\"row back-content\">\r\n<div class=\"col-12\">\r\n<ul>\r\n<li><a class=\"btn btn-secondary\" href=\"#\">katalogi producent&oacute;w</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>E-sklepy</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.wymienniki.pl\" target=\"_blank\" rel=\"noopener\">wymienniki.pl</a></li>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.grzewcza24.pl\" target=\"_blank\" rel=\"noopener\">grzewcza24.pl</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>Strony informacyjne</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.aqua.viessmann.pl\" target=\"_blank\" rel=\"noopener\">aqua.viessmann.pl</a></li>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.wymienniki.pl\" target=\"_blank\" rel=\"noopener\">wymienniki.pl</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '', '', 2, 'on', '', '2019-10-15', '2019-10-15 13:00:06', '2019-10-24 14:36:31'),
(20, 9, 9, 0, 'Systemy nawadniające', '', '<div class=\"front\"><img src=\"system/default/public/category/3.jpg\" alt=\"\" /><span style=\"font-size: 24px;\">Systemy nawadniające</span>\r\n<p>zraszacze rotacyjne i statyczne, sterowniki, elektrozawory, linie kroplujące i węże, rury, skrzynki zaworowe, emitery, kroplowniki, mikrozraszacze, zraszacze polowe, działka wodne, tr&oacute;jnogi</p>\r\n</div>\r\n<div class=\"back\" style=\"display: none;\"><img src=\"system/default/public/category/3-hover.jpg\" alt=\"\" /> <span style=\"font-size: 24px;\">Systemy nawadniające</span>\r\n<div class=\"row back-content\">\r\n<div class=\"col-12\">\r\n<ul>\r\n<li><a class=\"btn btn-secondary\" href=\"#\">katalogi producent&oacute;w</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>E-sklepy</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.zraszacze.pl\" target=\"_blank\" rel=\"noopener\">zraszacze.pl</a></li>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.ahs.pl\" target=\"_blank\" rel=\"noopener\">ahs.pl</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>Strony informacyjne</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.nawadnianie.eu\" target=\"_blank\" rel=\"noopener\">nawadnianie.eu</a></li>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.nodolini.pl\" target=\"_blank\" rel=\"noopener\">nodolini.pl</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '', '', 3, 'on', '', '2019-10-15', '2019-10-15 13:03:51', '2019-10-24 14:36:45'),
(21, 9, 9, 0, 'Uzdatnianie wody', '', '<div class=\"front\"><img src=\"system/default/public/category/4.jpg\" alt=\"\" /><span style=\"font-size: 24px;\">Uzdatnianie wody</span>\r\n<p>filtry mechaniczne - woda zimna i gorąca, zmiękczacze, odżelaziacze, odmanganiacze, osmoza domowa, osmoza przemysłowa, obudowy, wkłady, pompy dozujące, lampy UV, filtry specjalne</p>\r\n</div>\r\n<div class=\"back\" style=\"display: none;\"><img src=\"system/default/public/category/4-hover.jpg\" alt=\"\" /> <span style=\"font-size: 24px;\">Uzdatnianie wody</span>\r\n<div class=\"row back-content\">\r\n<div class=\"col-12\">\r\n<ul>\r\n<li><a class=\"btn btn-secondary\" href=\"#\">katalogi producent&oacute;w</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>E-sklepy</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.zaworyantyskazeniowe.pl\" target=\"_blank\" rel=\"noopener\">zaworyantyskazeniowe.pl</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>Strony informacyjne</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.uzdatnianiewody.eu\" target=\"_blank\" rel=\"noopener\">uzdatnianiewody.eu</a></li>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.technikabasenowa.pomp.pl\" target=\"_blank\" rel=\"noopener\">technikabasenowa.pl</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '', '', 4, 'on', '', '2019-10-15', '2019-10-15 13:05:25', '2019-10-24 14:53:17'),
(22, 9, 9, 0, 'Produkty specjalistyczne', '', '<div class=\"front\"><img src=\"system/default/public/category/5.jpg\" alt=\"\" /><span style=\"font-size: 24px;\">Produkty specjalistyczne</span>\r\n<p>zawory: elektromagnetyczne, bezpieczeństwa, antyskażeniowe i regulacyjne, odpowietrzniki, kosze ssawne, deszcz&oacute;wka, armatura przemysłowa, czujniki pływakowe</p>\r\n</div>\r\n<div class=\"back\" style=\"display: none;\"><img src=\"system/default/public/category/5-hover.jpg\" alt=\"\" /> <span style=\"font-size: 24px;\">Produkty specjalistyczne</span>\r\n<div class=\"row back-content\">\r\n<div class=\"col-12\">\r\n<ul>\r\n<li><a class=\"btn btn-secondary\" href=\"#\">katalogi producent&oacute;w</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>E-sklepy</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.elektrozawory.eu\" target=\"_blank\" rel=\"noopener\">elektrozawory.pl</a></li>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.elektrozawory.com.pl\" target=\"_blank\" rel=\"noopener\">elektrozawory.com.pl</a></li>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.sklep.elektrozawory.pl\" target=\"_blank\" rel=\"noopener\">sklep.elektrozawory.pl</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>Strony informacyjne</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.uzdatnianiewody.eu\" target=\"_blank\" rel=\"noopener\">wodociagi.aqua.net.pl</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '', '', 5, 'on', '', '2019-10-15', '2019-10-15 13:06:53', '2019-10-24 14:44:37'),
(23, 9, 9, 0, 'Kształtowanie wody', '', '<div class=\"front\"><img src=\"system/default/public/category/6.jpg\" alt=\"\" /><span style=\"font-size: 24px;\">Kształtowanie wody</span>\r\n<p>Od 15 lat dzięki naszej pasji nadajemy wodzie indywidualny charakter i kształt. Nasze fontanny i urządzenia nadają naturze nową formułę estetyczną i praktyczną</p>\r\n</div>\r\n<div class=\"back\" style=\"display: none;\"><img src=\"system/default/public/category/6-hover.jpg\" alt=\"\" /> <span style=\"font-size: 24px;\">Kształtowanie wody</span>\r\n<div class=\"row back-content\">\r\n<div class=\"col-12\">\r\n<ul>\r\n<li><a class=\"btn btn-secondary\" href=\"#\">katalogi producent&oacute;w</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>E-sklepy</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.kurtynawodna.pl\" target=\"_blank\" rel=\"noopener\">kurtynawodna.pl</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\"><small>Strony informacyjne</small>\r\n<ul>\r\n<li><a class=\"btn btn-outline-info\" href=\"http://www.fontanny.pomp.pl\" target=\"_blank\" rel=\"noopener\">fontanny.pomp.pl</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '', '', 6, 'on', '', '2019-10-15', '2019-10-15 13:08:24', '2019-10-24 14:40:13'),
(24, 10, 10, 1, 'Programy partnerskie', '<i class=\'fad fa-handshake-alt fa-5x text-info\'></i>', '<p><span style=\"font-size: 24px;\">Programy partnerskie</span></p>\r\n<p>Zapraszamy do zapoznania się z aktualnymi Programami Partnerskimi na rok 2018.</p>', '', '', 1, 'on', '', '2019-10-15', '2019-10-15 13:34:09', '2019-10-28 12:11:49'),
(25, 10, 10, 12, 'Aktualności', '<i class=\'fad fa-newspaper fa-5x text-info\'></i>', '<p><span style=\"font-size: 24px;\">Aktualności</span></p>\r\n<p>Najświeższe informacje, aktualności&nbsp;i wydarzenia z życia naszej firmy</p>', '', '', 2, 'on', '', '2019-10-15', '2019-10-15 13:46:12', '2019-10-28 12:19:31'),
(26, 10, 10, 1, 'Promocje', '<i class=\'fad fa-piggy-bank fa-5x text-info\'></i>', '<p><span style=\"font-size: 24px;\">Promocje</span></p>\r\n<p>Akcje promocyjne, gazetki, wyprzedaże. Sam zaproponuj produkty do promocji!</p>', '', '', 3, 'on', '', '2019-10-15', '2019-10-15 13:48:05', '2019-10-28 12:17:36'),
(31, 12, 12, 0, 'Dwie linie', '', '<p><span style=\"font-size: 48px;\"><strong> 16 HURTOWNI BRANŻY</strong></span></p><p><span style=\"font-size: 30px;\"><strong>INSTALACYJNEJ, GRZEWCZEJ I POMPOWEJ</strong></span></p><p><br></p>', '', '', 1, 'on', '', '2019-10-17', '2019-10-17 10:48:29', '2019-10-17 12:30:22'),
(33, 16, 15, 0, 'Menu głowne', '', NULL, '', '', 1, 'on', '', '2019-10-17', '2019-10-17 13:38:29', '2019-10-25 12:12:06'),
(34, 15, 14, 0, 'Logo', '', NULL, '', '', 1, 'on', '', '2019-10-17', '2019-10-17 13:38:43', '2019-10-25 12:12:35'),
(35, 17, 16, 0, 'Pod stopką zdanie', '', '<p>&copy; Copyright 2019 aqua.net.pl - wszelkie prawa zastrzeżone</p>', '', '', 1, 'on', '', '2019-10-18', '2019-10-18 10:37:59', '2019-10-25 12:11:42'),
(36, 18, 17, 0, 'Strony informacyjne', '', '<p style=\"text-align: left;\"><span style=\"font-size: 24px;\">Strony informacyjne</span></p>\r\n<ul>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://elektrozawory.pl/\" target=\"_blank\" rel=\"noopener\">Elektrozawory</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://fontanny.pomp.pl/\" target=\"_blank\" rel=\"noopener\">Fontanny</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://pomp.pl/\" target=\"_blank\" rel=\"noopener\">Pompy</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://aquagrzewcza.pl/\" target=\"_blank\" rel=\"noopener\">Technika grzewcza</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://deszczowka.pl/\" target=\"_blank\" rel=\"noopener\">Deszcz&oacute;wka</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://iglofiltry.pl/\" target=\"_blank\" rel=\"noopener\">Igłofiltry</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://elektropompki.pl/\" target=\"_blank\" rel=\"noopener\">Elektropompki</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://aquasolar.pomp.pl/\" target=\"_blank\" rel=\"noopener\">AquaSolar</a></li>\r\n</ul>', '', '', 1, 'on', '', '2019-10-18', '2019-10-18 10:56:46', '2019-10-25 12:01:10'),
(37, 18, 17, 0, 'Strony informacyjne', '', '<p style=\"text-align: left;\"><span style=\"font-size: 18pt;\">Strony informacyjne</span></p>\r\n<ul>\r\n<li style=\"text-align: left;\"><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://nawadnianie.eu\" target=\"_blank\" rel=\"noopener\">Nawadnianie</a></li>\r\n<li style=\"text-align: left;\"><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://uzdatnianiewody.eu\" target=\"_blank\" rel=\"noopener\">Uzdatnianie wody</a></li>\r\n<li style=\"text-align: left;\"><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://nodolini.pl\" target=\"_blank\" rel=\"noopener\">Zraszacze dla przemysłu</a></li>\r\n<li style=\"text-align: left;\"><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://zaworybezpieczenstwa.pl\" target=\"_blank\" rel=\"noopener\">Zawory bezpieczeństwa</a></li>\r\n<li style=\"text-align: left;\"><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://technikabasenowa.pomp.pl\" target=\"_blank\" rel=\"noopener\">Technika basenowa</a></li>\r\n<li style=\"text-align: left;\"><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://www.viessmann.aqua.net.pl\" target=\"_blank\" rel=\"noopener\">Salon firmowy Viessmann w Gorzowie Wlkp.</a></li>\r\n</ul>', '', '', 2, 'on', '', '2019-10-18', '2019-10-18 10:57:00', '2019-10-31 14:02:06'),
(38, 18, 17, 0, 'Sklepy internetowe', '', '<p style=\"text-align: left;\"><span style=\"font-size: 24px;\">Sklepy internetowe</span></p>\r\n<ul>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://sklep.elektrozawory.pl\" target=\"_blank\" rel=\"noopener\">Elektrozawory 1</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a title=\"Profesjonalne zawory elektromagnetycznie w wyjątkowo niskich cenach\" href=\"http://elektrozawory.com.pl\" target=\"_blank\" rel=\"noopener\">Elektrozawory 2</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a title=\"Zawory antyskażeniowe, zwrotne, regulacyjne, kulowe\" href=\"https://zaworyantyskazeniowe.pl\" target=\"_blank\" rel=\"noopener\">Zawory antyskażeniowe</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"https://grzewcza24.pl\" target=\"_blank\" rel=\"noopener\">Technika grzewcza</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://tylkoelektropompki.pl\" target=\"_blank\" rel=\"noopener\">Elektropompki</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://mac3.pl\" target=\"_blank\" rel=\"noopener\">Wyłączniki pływakowe</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://wymienniki.pl\" target=\"_blank\" rel=\"noopener\">Wymienniki ciepła</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"https://przepompownie.pomp.pl\" target=\"_blank\" rel=\"noopener\">Przepompownie</a></li>\r\n</ul>', '', '', 3, 'on', '', '2019-10-18', '2019-10-18 10:57:50', '2019-10-31 14:03:08'),
(39, 18, 17, 0, 'Adres', '', '<h3 class=\"block-title\"><span style=\"font-size: 24px;\">\"AQUA - Grupa SBS\"</span></h3>\r\n<p>ul. Marii Skłodowskiej-Curie 25,<br />65-124 Zielona G&oacute;ra</p>\r\n<p><strong>Telefon:</strong> +48 68 456 76 08<br /><strong>Fax:</strong> +48 68 456 76 03<br /><strong>E-mail:</strong> <a href=\"mailto:sekretariat@aqua.net.pl\">sekretariat@aqua.net.pl</a></p>\r\n<p><strong>Godziny otwarcia</strong><br />pn-pt: 07:00 - 16:00<br />sob: 8.00-14.00 (od 01.04 do 30.10)</p>', '', '', 4, 'on', '', '2019-10-18', '2019-10-18 10:57:58', '2019-10-31 14:05:10'),
(40, 19, 18, 0, 'Treść - Dlaczego my', '', '<p><span class=\"text-info\" style=\"font-size: 18pt;\">Nasza misja to:<br /></span></p>\r\n<p>\"Chcemy być najbardziej elastyczną siecią hurtowni branży instalacyjnej, grzewczej i pompowej, oferując rozwiązania wzmacniające konkurencyjność rynkową naszych Klient&oacute;w\".</p>\r\n<p><span class=\"text-info\" style=\"font-size: 18pt;\">Wartości:</span></p>\r\n<ul class=\"im-ul\">\r\n<li>UNIKATOWA ELASTYCZNOŚĆ<em> (pochylamy się nad każdym problemem).</em></li>\r\n<li>PONADCZASOWE RELACJE <em>(idea długofalowej wsp&oacute;łpracy z klientem).</em></li>\r\n<li>BEZWZGLĘDNA UCZCIWOŚĆ <em>(wobec Klienta i Klienta wobec nas).</em></li>\r\n<li>CIĄGŁY ROZW&Oacute;J <em>(w zakresie wiedzy technicznej, handlowej i relacji międzyludzkich).</em></li>\r\n<li>STAŁE PODNOSZENIE EFEKTYWNOŚCI <em>(w zakresie wiedzy technicznej, handlowej i relacji międzyludzkich).</em></li>\r\n<li>DĄŻENIE DO PROFESJONALIZMU<em> (doradztwo techniczne, sprzedaż, obsługa posprzedażowa).</em></li>\r\n<li>SAMODZIELNA INWESTYCJA <em>(kreatywne podejście do zadań).</em></li>\r\n</ul>\r\n<p><em></em></p>\r\n<p><strong>I do tego oferujemy rozwiązania wzmacniające Twoją konkurencyjność na runku...</strong></p>\r\n<p style=\"text-align: center;\"><span class=\"text-info\" style=\"font-size: 18pt;\">Nasze gł&oacute;wne zalety</span></p>', '', '', 1, 'on', '', '2019-10-25', '2019-10-25 11:32:27', '2019-11-08 13:37:41'),
(41, 6, 7, 0, 'Dlaczego my', 'Dlaczego warto wybrać naszą firmę?', NULL, '', '', 2, 'on', '', '2019-10-25', '2019-10-25 11:40:26', '2019-10-25 11:41:00'),
(42, 19, 18, 0, 'Treść - O firmie', '', '<p><span class=\"text-info\" style=\"font-size: 18pt;\">SZANOWNI PAŃSTWO</span></p>\r\n<div>\r\n<p><strong>...zasady są ważne, zasady prowadzą zar&oacute;wno przez życie zawodowe jak i prywatne. Każda organizacja powinna hołdować zasadą biznesu w celu budowania mądrej i partnerskiej polityki wsp&oacute;łpracy z Klientami.</strong></p>\r\n<p>Stosując jedną z nich \"czas to pieniądz\" w obsłudze Klienta przenosimy ją r&oacute;wnież na struktury informacyjne, aby stworzyć przekaz jak najbardziej czytelny, rzeczywisty i kr&oacute;tki w swojej formie. Dlatego w małej \"pigułce\" kilka sł&oacute;w o \"AQUA-Grupa SBS\" sp. z o.o.</p>\r\n<p>Już od ponad 37 lat nasza firma wsp&oacute;łtworzy historię branży instalacyjnej w Polsce Zachodniej. Od kilku lat skutecznie działamy<br />w całej Polsce jako dystrybutor europejskich producent&oacute;w (elektrozawory, czujniki poziomu, systemy nawadniające itp.)</p>\r\n<p><span class=\"text-info\" style=\"font-size: 18pt;\">MISJA FIRMY</span></p>\r\n<p><strong>...chcemy być najbardziej elastyczną siecią hurtowni branży instalacyjnej, grzewczej i pompowej, oferując rozwiązania wzmacniające konkurencyjność rynkową naszych Klient&oacute;w.</strong></p>\r\n<p><span class=\"text-info\" style=\"font-size: 18pt;\">OFERUJEMY</span></p>\r\n<p><strong>...w naszej ofercie znaleźć można wszystko to, co jest potrzebne do realizacji inwestycji na każdą skalę. Elastyczności oferty firmy dowodzi możliwość realizacji zam&oacute;wienia zgodnie ze ściśle określonymi, indywidualnymi potrzebami Klienta.</strong></p>\r\n<p>Ugruntowana i stabilna pozycja wynika między innymi z profesjonalnej obsługi Klienta oraz stosowania nowoczesnych rozwiązań. W naszej pracy skupiamy się przede wszystkim na najwyższej jakości produkt&oacute;w, szerokim wyborze asortymentu, skutecznej<br />i efektywnej logistyce, a także na możliwości kontaktu z wykwalifikowaną kadrą. Nasze działania to także wsparcie techniczne, konsultacje oraz szkolenia.</p>\r\n<p><strong>Zapewniamy doradztwo i produkty z zakresu:</strong></p>\r\n<ul class=\"list-3\" style=\"float: left; padding-right: 80px;\">\r\n<li>techniki instalacyjnej</li>\r\n<li>pompowej</li>\r\n<li>sanitarnej</li>\r\n<li>grzewczej</li>\r\n<li>system&oacute;w nawadniających</li>\r\n<li>sieci zewnętrznych</li>\r\n</ul>\r\n<ul class=\"list-3\" style=\"float: left;\">\r\n<li>automatyki przemysłowej</li>\r\n<li>techniki fontannowej</li>\r\n<li>przydomowych oczyszczalni ściek&oacute;w</li>\r\n<li>uzdatniania wody</li>\r\n<li>odnawialnych źr&oacute;deł energii</li>\r\n<li>klimatyzacji i wentylacji</li>\r\n</ul>\r\n<div style=\"clear: both;\">&nbsp;</div>\r\n<p>Zapraszamy do naszych 16 jednostek, w tym Działu Sprzedaży Krajowej oraz Salonu Viessmann.</p>\r\n</div>', '', '', 2, 'on', '', '2019-10-25', '2019-10-25 11:51:36', '2019-11-08 10:14:56'),
(43, 6, 7, 0, 'O firmie', 'Słów kilka o naszej firmie, naszej pasji, misji, ofercie', NULL, '', '', 3, 'on', '', '2019-10-25', '2019-10-25 12:47:22', '2019-10-25 12:49:34'),
(44, 6, 7, 0, 'Historia', 'Historia naszej firmy', NULL, '', '', 4, 'on', '', '2019-10-25', '2019-10-25 12:53:55', '2019-10-25 12:54:50'),
(45, 6, 7, 0, 'Zarząd firmy', 'Dział Zarządu i kadra Menedżerska', NULL, '', '', 5, 'on', '', '2019-10-25', '2019-10-25 12:55:26', '2019-10-25 12:56:19'),
(46, 6, 7, 0, 'Cenatrala', 'Siedziba naszej firmy', NULL, '', '', 6, 'on', '', '2019-10-25', '2019-10-25 12:56:59', '2019-10-25 12:57:25'),
(47, 6, 7, 0, 'Ogólne warunki sprzedaży (OWS)', 'Proszę pobrać i zapoznać się z dokumentem', NULL, '', '', 7, 'on', '', '2019-10-25', '2019-10-25 12:58:22', '2019-10-25 12:59:02'),
(48, 20, 18, 0, 'Ogólne warunki sprzedaży (OWS)', '', '<p><span style=\"font-size: 18pt;\" class=\"text-info\">Og&oacute;lne warunki sprzedaży</span></p>\r\n<p><span style=\"font-size: 12pt;\">Poniżej znajduje się dokument do pobrania, kt&oacute;ry zawiera wszelkie informacje dotyczące zasad i warunk&oacute;w sprzedaży w naszej firmie.</span></p>', '', '', 1, 'on', '', '2019-10-25', '2019-10-25 13:02:26', '2019-11-08 11:54:27'),
(49, 19, 18, 0, 'Treść - B2B', '', '<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\" class=\"text-info\">Automatyzacja proces&oacute;w biznesowych pomiędzy partnerami w zakresie logistyki i finans&oacute;w system B2B &bdquo;AQUA &ndash; Business flow platform&rdquo;</span></p>\r\n<p>Przedmiotem zam&oacute;wienia jest całościowa realizacja projektu polegająca na wdrożeniu platformy wymiany danych typu Business to Business, automatyzującej procesy wymiany informacji pomiędzy wnioskodawcą i jego Partnerami w zakresie określonych potrzeb biznesowych. Realizacja projektu przewiduje stworzenie środowiska systemowego dla potrzeb funkcjonowania platformy B2B i obejmie obszary proces&oacute;w biznesowych, kt&oacute;re zachodzą pomiędzy firmą \"AQUA-Grupa SBS\" Sp. z.o.o i jej partnerami.</p>\r\n<p>Pozwoli ponadto na powiązanie wsp&oacute;łpracy z partnerami w zakresie proces&oacute;w zachodzących w strukturze organizacyjnej wszystkich podmiot&oacute;w zaangażowanych w projekt. Celem przewidzianych do wdrożenia rozwiązań w zakresie B2B, jest usprawnienie wszystkich tych proces&oacute;w, kt&oacute;re wiążą się z wymianą między wnioskodawcą, a partnerami oraz ich efektywne połączenie w spos&oacute;b elektroniczny, co bezpośrednio i wymiernie podniesie efektywność wzajemnej wsp&oacute;łpracy. Sp&oacute;łka przewiduje, że elektroniczne rozwiązania platformy B2B zinformatyzują i zautomatyzują, dzięki narzędziom IT, wymianę biznesową oraz gospodarkę firmy, poprzez:</p>\r\n<ul class=\"im-ul\">\r\n<li>integrację (koordynację) 5 proces&oacute;w biznesowych za pomocą systemu informatycznego,</li>\r\n<li>integrację aplikacji pracujących na r&oacute;żnych platformach systemowych,</li>\r\n<li>integrację właściwości, funkcjonalności i zgromadzonej wiedzy zawartych w wielu aplikacjach,</li>\r\n<li>integrację zasob&oacute;w wewnętrznych przedsiębiorstwa z otoczeniem (Internet),</li>\r\n<li>integrację baz danych,</li>\r\n<li>integrację baz danych z aplikacjami.</li>\r\n</ul>\r\n<p></p>\r\n<p>Dzięki wykorzystaniu narzędzi platformy B2B, automatyzacji ulegnie przepływ informacji i proces&oacute;w biznesowych związanych z generowaniem przez odbiorc&oacute;w zam&oacute;wień, ich realizacją &ndash; w tym produkcją wyrob&oacute;w i ich sprzedażą do Partner&oacute;w. Poprzez zbudowanie mechanizm&oacute;w elektronicznej wymiany danych i informacji, połączone zostaną 3 systemy informatyczne, to jest system Streamsoft Prestiż \"AQUA-Grupa SBS\" Sp.z.o.o i systemy dw&oacute;ch partner&oacute;w, zwiększając tym samym efektywność przedsiębiorstwa w kluczowych obszarach takich jak: obsługa zam&oacute;wień i reklamacji, obsługa indywidualnych rabat&oacute;w dla zamawiających, wymiana dokument&oacute;w handlowych, śledzenie status&oacute;w zam&oacute;wień. Partnerami uczestniczącymi w realizacji projektu są kluczowi odbiorcy produkt&oacute;w Sp&oacute;łki, firmy: SBS sp. z o.o. oraz PSA sp. z o.o. System ten opr&oacute;cz usprawnienia i uproszczenia komunikacji pomiędzy zamawiającym a Partnerami, zapewnia także ograniczenie koszt&oacute;w obsługi zam&oacute;wień. R&oacute;wnie istotne jest zapewnienie wysokiej jakości informacji zarządczej, dzięki wykorzystaniu w ramach ERP modułu Business Intelligence i rozbudowanych możliwości raportowania.</p>\r\n<p>Platforma zawierać będzie 3 systemy B2B w postaci:</p>\r\n<ul class=\"im-ul\">\r\n<li>system ERP/B2B - moduł ERP jako zaawansowane oprogramowanie B2B wraz z interfejsami dla B2B tj. system ujednolicający bazy produktowe, analizujący optymalny zakup pod proces realizacji produkcji i zam&oacute;wień od odbiorc&oacute;w. W wyniku jego wdrożenia zostaną usprawnione następujące procesy biznesowe: proces realizacji zam&oacute;wień, proces sprzedaży, proces promocji, proces wymiany informacji. Wszystkie te działania prowadzą do przyśpieszenia procesu obsługi klienta zwiększając jego satysfakcję, jak r&oacute;wnież obniżenia koszt&oacute;w związanych z logistyczną obsługą firmy, czego wynikiem jest konkurencyjna cena końcowa produkt&oacute;w i usług.</li>\r\n<li>mechanizm elektronicznej wymiany danych EDI &ndash; jako uniwersalnego, wsp&oacute;lnego dla wszystkich partner&oacute;w handlowych rozwiązania EDI stanowiącego zar&oacute;wno medium komunikacji w zakresie elektronicznych dokument&oacute;w biznesowych, jak r&oacute;wnież swoiste archiwum dla handlowej korespondencji pomiędzy Wnioskodawcą a Partnerami.</li>\r\n<li>mechanizm realizacji zam&oacute;wień internetowych B2B, jako narzędzie umożliwiające wystawienie oraz udostępnienie do podglądu dokument&oacute;w Partnerom zarejestrowanym w bazie systemu ERP/B2B.</li>\r\n</ul>\r\n<hr />\r\n<p><span style=\"font-size: 18pt;\" class=\"text-info\">Projekt wsp&oacute;łfinansowany ze środk&oacute;w europejskich</span></p>\r\n<p>Firma \"AQUA - Grupa SBS\" sp. z o.o. otrzymała dofinansowanie na realizację projektu:</p>\r\n<p><strong>Automatyzacja proces&oacute;w biznesowych pomiędzy partnerami w zakresie logistyki i finans&oacute;w system B2B \"AQUA - Business flow platform\".</strong></p>\r\n<p>Wniosek o dofinansowanie nr WND-POIG.08.02.00-08-004/13 w ramach:</p>\r\n<ul class=\"im-ul\">\r\n<li>Programu Operacyjnego Innowacyjna Gospodarka 2007-2013</li>\r\n<li>Działanie 8.2: Wspieranie wdrażania elektronicznego biznesu typu B2B</li>\r\n<li>Oś priorytetowa 8 : Społeczeństwo informacyjne &ndash; zwiększenie innowacyjności gospodarki.</li>\r\n</ul>\r\n<p><img src=\"system/default/public/eu-fa606eeb696124076172bd9cc6b68b6b.jpg\" style=\"width: auto;\" /></p>\r\n<p><span style=\"font-size: 10pt;\">Projekt wsp&oacute;łfinansowany przez Unię Europejską ze środk&oacute;w Europejskiego Funduszu Rozwoju Regionalnego w ramach Programu Operacyjnego Innowacyjna Gospodarka. Fundusze europejskie &ndash; dla rozwoju Innowacyjnej Gospodarki. \"Dotacje na innowacje\" - \"Inwestujemy w waszą przyszłość\"</span></p>', '', '', 3, 'on', '', '2019-10-25', '2019-10-25 13:11:46', '2019-11-08 13:33:33'),
(50, 6, 7, 0, 'Projekt B2B', 'Projekt systemu B2B (dofinansowany z UE)', NULL, '', '', 8, 'on', '', '2019-10-25', '2019-10-25 13:13:49', '2019-10-25 13:14:46'),
(51, 21, 19, 0, 'Spis oddziałów', '', '<p><span style=\"font-size: 18pt;\">Nasze oddziały</span></p>\r\n<ul>\r\n<li><a href=\"http://zielonagora.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Zielona G&oacute;ra</a></li>\r\n<li><a href=\"http://wroclaw.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Wrocław - Mokronoska</a></li>\r\n<li><a href=\"http://wroclaw2.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Wrocław - Strzegomska</a></li>\r\n<li><a href=\"http://gorzow.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Gorz&oacute;w Wlkp.</a></li>\r\n<li><a href=\"http://legnica.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Legnica</a></li>\r\n<li><a href=\"http://walcz.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Wałcz</a></li>\r\n<li><a href=\"http://wolsztyn.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Wolsztyn</a></li>\r\n<li><a href=\"http://ap.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział AQUA POLSKA</a></li>\r\n<li><a href=\"http://racula.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Racula k/Zielonej G&oacute;ry</a></li>\r\n<li><a href=\"http://nowasol.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Nowa S&oacute;l</a></li>\r\n<li><a href=\"http://glogow.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Głog&oacute;w</a></li>\r\n<li><a href=\"http://lubin.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Lubin</a></li>\r\n<li><a href=\"http://jeleniagora.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Jelenia G&oacute;ra</a></li>\r\n<li><a href=\"http://srem.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Śrem</a></li>\r\n<li><a href=\"http://poznan.aqua.net.pl/\" target=\"_blank\" rel=\"noopener\">Oddział Poznań</a></li>\r\n</ul>', '', '', 1, 'on', '', '2019-10-25', '2019-10-25 13:29:28', '2019-10-31 11:11:43'),
(52, 19, 18, 0, 'Treść - Historia', '', '<p><span class=\"text-info\" style=\"font-size: 18pt;\">o \"AQUA - Grupa SBS\" sp. z o.o. w skr&oacute;cie</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 1981</span></p>\r\n<p><span style=\"font-size: 10pt;\">W tymże roku powstaje zakład świadczący usługi serwisowe pomp i agregat&oacute;w silnikowych. Pierwszy rok działalności przynosi olbrzymi sukces w postaci zam&oacute;wień usług na prawie 2 lata. Firma dość szybko rozbudowuje zaplecze adoptując dodatkowe pomieszczenia. W kolejnych latach wprowadza do oferty sprzedaż urządzeń i części zamiennych. Chłonność rynku powoduje systematyczne poszerzanie oferty handlowej i jej przewagę w przychodach nad usługami.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 1991</span></p>\r\n<p><span style=\"font-size: 10pt;\">Firma już w nowej polskiej rzeczywistości polityczno-ustrojowej rozpoczyna budowę obecnej siedziby w Zielonej G&oacute;rze. Powstaje nowoczesna część serwisowa oraz rozbudowany dział handlowy. Z biegiem czasu zostaje w niej uruchomiona pierwsza samoobsługowa hurtownia/market branżowy w wojew&oacute;dztwie lubuskim.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 1992</span></p>\r\n<p><span style=\"font-size: 10pt;\">Dynamiczny rozw&oacute;j firmy pozwala właścicielom na realizację koncepcji budowy sieci hurtowni instalacyjno-sanitarnych w Zachodniej Polsce.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 1993</span></p>\r\n<p><span style=\"font-size: 10pt;\">Powstaje pierwszy oddział zamiejscowy w Wałczu.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 1996</span></p>\r\n<p><span style=\"font-size: 10pt;\">Po sukcesie oddziału w Wałczu przychodzi kolej na oddział w Gorzowie Wlkp., kt&oacute;ry okazuje się r&oacute;wnie trafną inwestycją.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 1997</span></p>\r\n<p><span style=\"font-size: 10pt;\">Firma idzie za ciosem i już rok p&oacute;źniej uruchamia swoją jednostkę w Legnicy. Obecnie jest to jedna z 3 największych jednostek firmy AQUA.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 1998</span></p>\r\n<p><span style=\"font-size: 10pt;\">Przyni&oacute;sł nową koncepcję jaką była konsolidacja polskich firm handlowych z branży instalacyjnej i sanitarnej SBS. Była to odpowiedź na ekspansję zagranicznych sieci na polski rynek. W 1998 zarejestrowano stowarzyszenie skupiające 20 czołowych firm handlowych, wyr&oacute;żniających się wiodącą pozycją na lokalnym rynku, rzetelnością kupiecką i wiarygodnością finansową. Firma AQUA była jednym z założycieli grupy, kt&oacute;ra na dzień dzisiejszy jest największą grupą zakupową branży instalacyjnej, grzewczej i sanitarnej w Polsce. Zrzesza ponad 90 firm, kt&oacute;re łącznie posiadają 170 punkt&oacute;w handlowych.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2002</span></p>\r\n<p><span style=\"font-size: 10pt;\">Powstaje początkowo niewielki oddział we Wrocławiu, z czasem jednostka zmienia lokalizacje aby stać się poważnym graczem na rynku wrocławskim.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2003</span></p>\r\n<p><span style=\"font-size: 10pt;\">Firma AQUA rozpoczyna import specjalistycznych produkt&oacute;w z branży techniki pompowej, system&oacute;w nawadniających oraz elektrozawor&oacute;w. To nowy etap w działalności firmy jako wyłączny dystrybutor na terytorium naszego kraju.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2004</span></p>\r\n<p><span style=\"font-size: 10pt;\">Powstaje kolejna inicjatywa silnych firm realizujących obsługę w zakresie sieci zewnętrznych. Powstaje ścisła dość hermetyczna grupa zakupowa Polskie Składy Armatury. I tym razem firma AQUA zaangażowała się we wsp&oacute;łtworzenie nowego podmiotu mającego stanowić przeciwwagę dla siły firm zagranicznych. Na dzień dzisiejszy P.S.A zrzesza 17 firm z całej Polski co daje 39 punkt&oacute;w handlowych.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2005</span></p>\r\n<p><span style=\"font-size: 10pt;\">Firma uruchamia pierwszą jednostkę w wojew&oacute;dztwie wielkopolskim. Nowy oddział w Wolsztynie powstaje na początku roku.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2007</span></p>\r\n<p><span style=\"font-size: 10pt;\">Powstaje jeszcze nie do końca wyklarowana struktura sprzedaży sieci zewnętrznych, kt&oacute;ra przekształci się w niedalekim czasie w oddział Racula (blisko Zielonej G&oacute;ry) jednego z czołowych graczy na rynku w branży sieci zewnętrznych.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2009</span></p>\r\n<p><span style=\"font-size: 10pt;\">To narodziny jednego z najbardziej efektywnych i spektakularnych projekt&oacute;w firmy AQUA. Oddział/dział sprzedaży og&oacute;lnopolskiej. Jednostka, kt&oacute;ra objęła swoim działaniem teren całej Polski, zar&oacute;wno w sprzedaży produkt&oacute;w tradycyjnych jak i importowanych.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2010</span></p>\r\n<p><span style=\"font-size: 10pt;\">Powstaje nieduży oddział w Poznaniu z czasem przekształcony w biuro handlowe skierowane gł&oacute;wnie na sektor inwestycji oraz obsługi wodociąg&oacute;w, ciepłowni, oczyszczalni i zakład&oacute;w przemysłowych.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2011</span></p>\r\n<p><span style=\"font-size: 10pt;\">To rok aż dw&oacute;ch projekt&oacute;w: oddział w Nowej Soli oraz oddział w Jeleniej G&oacute;rze - do kt&oacute;rego otwarcia firma przygotowywała się od kilku lat. Rok 2011 był początkiem zacieśnienia wsp&oacute;łpracy z firmą Viessmann i rozpoczęciem inwestycji jaką była budowa w Gorzowie Wlkp. nowoczesnego i jednego z największych salon&oacute;w firmowych Viessmann w regionie. Inwestycja został zakończona w 2012r.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2014</span></p>\r\n<p><span style=\"font-size: 10pt;\">To uruchomienie oddziału w Śremie, co stanowiło r&oacute;wnież zaplecze i wsparcie dla działalności biura handlowego w Poznaniu.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2015</span></p>\r\n<p><span style=\"font-size: 10pt;\">Milowy krok w historii firmy AQUA. Powstaje nowoczesny magazyn centralny o powierzchni ponad 2tys. mkw, 14 tys. mkw składu zewnętrznego i dysponujący ponad 12 tys. produkt&oacute;w naszej branży.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> rok 2017</span></p>\r\n<p><span style=\"font-size: 10pt;\">To otwarcie aż dw&oacute;ch nowych oddział&oacute;w. W Lubinie i Wrocławiu. Od tego momentu firma w samym Wrocławiu posiada już 2 oddziały.</span></p>\r\n<p><span class=\"text-info\" style=\"font-size: 12pt;\"><i class=\"fad fa-calendar-alt\"></i> dzisiaj</span></p>\r\n<p><span style=\"font-size: 10pt;\">Firma oferuje praktycznie pełną paletę asortymentu techniki instalacyjnej, grzewczej, pompowej, sanitarnej, nawodnieniowej, fontannowej oraz armatury, sieci zewnętrznych, automatyki i produkt&oacute;w specjalistycznych. Oferujemy usługi serwisowe w zakresie pomp i mieszadeł, silnik&oacute;w do pomp oraz serwis gwarancyjny i pogwarancyjny firm Ebara i Lowara. Obsługujemy wszystkie grupy instalator&oacute;w firm wykonawczych, deweloper&oacute;w oraz wodociąg&oacute;w, ciepłowni, oczyszczalni ściek&oacute;w. Bardzo silną stroną naszych jednostek jest wsp&oacute;łpraca z zakładami przemysłowymi oraz jednostkami branży sadowniczej i hodowlanej.</span></p>\r\n<p style=\"text-align: center;\" class=\"text-info\"><i class=\"fad fa-handshake fa-2x\"></i><br />Zapraszamy Państwa z wielką przyjemnością i pasją branżową do wsp&oacute;łpracy.</p>', '', '', 4, 'on', '', '2019-10-25', '2019-10-25 13:46:14', '2019-11-08 11:12:42'),
(54, 19, 18, 0, 'Treść - Centrala', '', '<p><span style=\"font-size: 18pt;\" class=\"text-info\">AQUA Grupa SBS sp. z o.o.</span><br /><span style=\"font-size: 10pt;\" class=\"text-info\">ul. Marii Skłodowskiej-Curie 25, 65-124 Zielona G&oacute;ra</span></p>\r\n<p><img style=\"width: auto;\" src=\"http://repozytorium.aqua.net.pl/kontakt/zg.png\" alt=\"http://repozytorium.aqua.net.pl/kontakt/zg.png\" /></p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">Dział sprzedaży i ofert:</td>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">tel.: 68 451 11 83, e-mail: <a href=\"mailto:sprzedaz@aqua.net.pl\">sprzedaz@aqua.net.pl</a>, <a href=\"mailto:oferty@aqua.net.pl\">oferty@aqua.net.pl</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">Sekretariat:</td>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">tel.: 68 456 76 08, e-mail: <a href=\"mailto:sekretariat@aqua.net.pl\">sekretariat@aqua.net.pl</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">Dział Księgowości:</td>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">tel.: 68 456 76 07, e-mail: <a href=\"mailto:ksiegowosc@aqua.net.pl\">ksiegowosc@aqua.net.pl</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">Dział Zakup&oacute;w i Logistyki:</td>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">tel.: 68 451 11 85, e-mail: <a href=\"mailto:logistyka@aqua.net.pl\">logistyka@aqua.net.pl</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 5px;\">Dział Marketingu:</td>\r\n<td style=\"padding: 5px;\">tel.: 68 456 76 55, e-mail: <a href=\"mailto:marketing@aqua.net.pl\">marketing@aqua.net.pl</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">Koordynaty GPS:</td>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">N 51 94\'960\" E 15 52\'394\"</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">KRS:</td>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">0000122163</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">NIP:</td>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">929-005-38-76</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">REGON:</td>\r\n<td style=\"border-bottom: 1px solid #eee; padding: 5px;\">970032173</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 5px;\">Bank:</td>\r\n<td style=\"padding: 5px;\">PKO BP SA I O/ Zielona G&oacute;ra 78102054020000010200212589</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '', 5, 'on', '', '2019-10-25', '2019-10-25 13:51:38', '2019-11-08 11:39:11'),
(56, 20, 18, 0, 'Programy partnerskie', '', '<p><span style=\"font-size: 18pt;\" class=\"text-info\">Programy partnerskie</span></p>\r\n<p>Poniżej znajduje się dokument do pobrania, kt&oacute;ry zawiera regulamin naszego programu partnerskiego dla klient&oacute;w i katalog nagr&oacute;d.</p>', '', '', 2, 'on', '', '2019-10-25', '2019-10-25 14:04:27', '2019-11-08 12:00:56'),
(57, 6, 7, 0, 'Kariera', 'Aktualne oferty pracy', NULL, '', '', 9, 'on', '', '2019-10-25', '2019-10-25 14:25:08', '2019-10-25 14:25:50'),
(58, 6, 7, 0, 'Programy partnerskie', 'Programy partnerskie', NULL, '', '', 10, 'on', '', '2019-10-25', '2019-10-25 14:25:26', '2019-10-25 14:26:21'),
(59, 22, 21, 0, 'Zielona Góra', '', '<p><span style=\"font-size: 14pt;\">Centrala firmy - Zielona G&oacute;ra</span></p>', '', '', 1, 'on', '', '2019-10-25', '2019-10-25 14:34:10', '2019-10-28 12:58:47'),
(60, 22, 21, 0, 'Legnica', '', '<p><span style=\"font-size: 14pt;\">Oddział Legnica</span></p>', '', '', 2, 'on', '', '2019-10-25', '2019-10-25 14:45:44', '2019-10-28 12:58:58'),
(62, 22, 21, 0, 'Nowa Sól', '', '<p><span style=\"font-size: 14pt;\">Oddział Nowa S&oacute;l</span></p>', '', '', 3, 'on', '', '2019-10-28', '2019-10-28 13:00:04', '2019-10-28 13:04:14'),
(64, 22, 21, 0, 'Głogów', '', '<p><span style=\"font-size: 14pt;\">Oddział Głog&oacute;w</span></p>', '', '', 4, 'on', '', '2019-10-28', '2019-10-28 13:11:52', '2019-10-28 13:14:57'),
(65, 19, 18, 0, 'Treść - Kariera', '', '<p style=\"text-align: left;\"><span style=\"font-size: 18pt;\" class=\"text-info\">Dołącz do nas!</span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 12pt;\">Poniżej znajdują się aktualne oferty pracy dla poszczeg&oacute;lnych oddział&oacute;w naszej firmy. Możesz r&oacute;wnież skorzystać z filtra po prawej stronie, aby wyświetlić oferty <strong>tylko danego oddziału</strong>.</span></p>', '', '', 6, 'on', '', '2019-10-28', '2019-10-28 13:22:41', '2019-11-08 11:59:12'),
(66, 22, 21, 0, 'Jelenia Góra', '', '<p><span style=\"font-size: 14pt;\">Oddział Jelenia G&oacute;ra</span></p>', '', '', 5, 'on', '', '2019-10-28', '2019-10-28 13:29:55', '2019-10-28 13:30:59'),
(67, 22, 21, 0, 'Śrem', '', '<p><span style=\"font-size: 14pt;\">Oddział Śrem</span></p>', '', '', 6, 'on', '', '2019-10-28', '2019-10-28 13:32:53', '2019-10-28 13:34:24'),
(68, 22, 21, 0, 'Wałcz', '', '<p><span style=\"font-size: 14pt;\">Oddział Wałcz</span></p>', '', '', 7, 'on', '', '2019-10-28', '2019-10-28 13:39:07', '2019-10-28 13:39:39'),
(69, 22, 21, 0, 'Wrocław (Mokronoska)', '', '<p><span style=\"font-size: 14pt;\">Oddział Wrocław (Mokronoska)</span></p>', '', '', 8, 'on', '', '2019-10-28', '2019-10-28 13:48:57', '2019-10-28 13:49:41'),
(70, 19, 22, 0, 'Klauzula', '', '<p>Pamiętaj, aby na końcu swojego CV dodać klauzulę:</p>\r\n<p><em>\"Wyrażam zgodę na przetwarzanie moich danych osobowych przez \"AQUA - Grupa SBS\" sp. z o.o. w celu prowadzenia rekrutacji na aplikowane przeze mnie stanowisko\"</em>.</p>', '', '', 7, 'on', '', '2019-10-28', '2019-10-28 13:55:48', '2019-11-04 15:19:02'),
(71, 23, 18, 0, 'Ulotki dla elektrociepłowni', '', '<p><span style=\"font-size: 14pt;\">Ulotki</span></p>', '', '', 1, 'on', '', '2019-10-31', '2019-10-31 10:03:51', '2019-10-31 13:46:36'),
(72, 23, 18, 0, 'Katalogi dla elektrociepłowni', '', '<p><span style=\"font-size: 14pt;\">Katalogi</span></p>', '', '', 2, 'on', '', '2019-10-31', '2019-10-31 10:07:51', '2019-10-31 13:46:36'),
(73, 6, 7, 0, 'Oferta dla elektrociepłowni', 'Oferta dla elektrociepłowni', NULL, '', '', 11, 'on', '', '2019-10-31', '2019-10-31 10:15:29', '2019-10-31 10:16:54'),
(75, 6, 7, 0, 'Oferta dla firm wykonawczych', 'Oferta dla firm wykonawczych', NULL, '', '', 12, 'on', '', '2019-10-31', '2019-10-31 10:59:05', '2019-10-31 10:59:31'),
(76, 23, 18, 0, 'Ulotki dla firm wykonawczych', '', '<p><span style=\"font-size: 14pt;\">Ulotki</span></p>', '', '', 3, 'on', '', '2019-10-31', '2019-10-31 11:09:36', '2019-10-31 13:46:36'),
(77, 23, 18, 0, 'Katalogi dla firm wykonawczych', '', '<p><span style=\"font-size: 14pt;\">Katalogi</span></p>', '', '', 4, 'on', '', '2019-10-31', '2019-10-31 11:12:47', '2019-10-31 13:46:36'),
(78, 23, 18, 0, 'Ulotki dla instalatorów', '', '<p><span style=\"font-size: 14pt;\">Ulotki</span></p>', '', '', 5, 'on', '', '2019-10-31', '2019-10-31 11:57:11', '2019-10-31 13:46:36'),
(79, 23, 18, 0, 'Katalogi dla instalatorów', '', '<p><span style=\"font-size: 14pt;\">Katalogi</span></p>', '', '', 6, 'on', '', '2019-10-31', '2019-10-31 11:57:36', '2019-10-31 13:46:36'),
(80, 6, 7, 0, 'Oferta dla instalatorów', 'Oferta dla instalatorów', NULL, '', '', 13, 'on', '', '2019-10-31', '2019-10-31 11:59:27', '2019-10-31 11:59:54'),
(81, 6, 7, 0, 'Oferta dla klientów indywidualnych', 'Oferta dla klientów indywidualnych', NULL, '', '', 14, 'on', '', '2019-10-31', '2019-10-31 12:09:55', '2019-10-31 12:13:40'),
(82, 23, 18, 0, 'Ulotki dla klientów indywidualnych', '', '<p><span style=\"font-size: 14pt;\">Ulotki</span></p>', '', '', 7, 'on', '', '2019-10-31', '2019-10-31 12:17:17', '2019-10-31 13:46:36'),
(83, 23, 18, 0, 'Katalogi dla klientów indywidualnych', '', '<p><span style=\"font-size: 14pt;\">Katalogi</span></p>', '', '', 8, 'on', '', '2019-10-31', '2019-10-31 12:17:40', '2019-10-31 13:46:36'),
(84, 6, 7, 0, 'Oferta dla przemysłu', 'Oferta dla przemysłu', NULL, '', '', 15, 'on', '', '2019-10-31', '2019-10-31 12:20:52', '2019-10-31 12:21:15'),
(86, 23, 18, 0, 'Katalogi dla przemysłu', '', '<p><span style=\"font-size: 14pt;\">Katalogi</span></p>', '', '', 9, 'on', '', '2019-10-31', '2019-10-31 12:22:12', '2019-10-31 13:46:36'),
(88, 26, 18, 0, 'Treść na stronę \'\'dla przemysłu\'\'', '', '<p style=\"text-align: left;\"><span style=\"font-size: 14pt;\">Strony i sklepy internetowe</span></p>\r\n<ul>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a title=\"Pompy\" href=\"https://tylkopompy.pl\" target=\"_blank\" rel=\"noopener\">Pompy</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a title=\"Zawory antyskażeniowe, zwrotne, regulacyjne, kulowe\" href=\"https://zaworyantyskazeniowe.pl\" target=\"_blank\" rel=\"noopener\">Zawory antyskażeniowe</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://tylkoelektropompki.pl\" target=\"_blank\" rel=\"noopener\">Elektropompki</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://uzdatnianiewody.eu\" target=\"_blank\" rel=\"noopener\">Uzdatnianie wody</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"https://wymienniki.pl\" target=\"_blank\" rel=\"noopener\">Wymienniki ciepła</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"https://mac3.pl\" target=\"_blank\" rel=\"noopener\">Wyłączniki pływakowe</a></li>\r\n</ul>', '', '', 1, 'on', '', '2019-10-31', '2019-10-31 12:54:29', '2019-10-31 13:14:41'),
(89, 6, 7, 0, 'Oferta dla studniarzy', 'Oferta dla studniarzy', NULL, '', '', 16, 'on', '', '2019-10-31', '2019-10-31 13:17:02', '2019-10-31 13:17:21'),
(90, 23, 18, 0, 'Ulotki dla studniarzy', '', '<p><span style=\"font-size: 14pt;\">Ulotki</span></p>', '', '', 10, 'on', '', '2019-10-31', '2019-10-31 13:18:04', '2019-10-31 13:46:36'),
(91, 23, 18, 0, 'Katalogi dla studniarzy', '', '<p><span style=\"font-size: 14pt;\">Katalogi</span></p>', '', '', 11, 'on', '', '2019-10-31', '2019-10-31 13:18:23', '2019-10-31 13:46:36');
INSERT INTO `im_object` (`object_id`, `type_id`, `label_id`, `section`, `system_name`, `name`, `content`, `link`, `email`, `position`, `status`, `description`, `date`, `date_create`, `date_modify`) VALUES
(92, 6, 7, 0, 'Oferta dla wodociągów', 'Oferta dla wodociągów', NULL, '', '', 17, 'on', '', '2019-10-31', '2019-10-31 13:26:15', '2019-10-31 13:26:57'),
(93, 23, 18, 0, 'Katalogi dla wodociągów', '', '<p><span style=\"font-size: 14pt;\">Katalogi</span></p>', '', '', 12, 'on', '', '2019-10-31', '2019-10-31 13:28:04', '2019-10-31 13:46:36'),
(94, 26, 18, 0, 'Treść na stronę \'\'dla wodociągów\'', '', '<p style=\"text-align: left;\"><span style=\"font-size: 14pt;\">Strony i sklepy internetowe</span></p>\r\n<ul>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a title=\"Pompy\" href=\"https://tylkopompy.pl\" target=\"_blank\" rel=\"noopener\">Pompy</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a title=\"Zawory antyskażeniowe, zwrotne, regulacyjne, kulowe\" href=\"https://zaworyantyskazeniowe.pl\" target=\"_blank\" rel=\"noopener\">Zawory antyskażeniowe</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://uzdatnianiewody.eu\" target=\"_blank\" rel=\"noopener\">Uzdatnianie wody</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"https://mac3.pl\" target=\"_blank\" rel=\"noopener\">Wyłączniki pływakowe</a></li>\r\n<li><em class=\"fa fa-angle-right\">&nbsp;</em><a href=\"http://przepompownie.pomp.pl\" target=\"_blank\" rel=\"noopener\">Przepompownie</a></li>\r\n</ul>', '', '', 2, 'on', '', '2019-10-31', '2019-10-31 13:28:47', '2019-10-31 13:38:01'),
(95, 23, 18, 0, 'Katalogi dla zakładów komunalnych', '', '<p><span style=\"font-size: 14pt;\">Katalogi</span></p>', '', '', 14, 'on', '', '2019-10-31', '2019-10-31 13:41:08', '2019-10-31 13:46:36'),
(96, 23, 18, 0, 'Ulotki dla zakładów komunalnych', '', '<p><span style=\"font-size: 14pt;\">Ulotki</span></p>', '', '', 13, 'on', '', '2019-10-31', '2019-10-31 13:41:31', '2019-10-31 13:46:36'),
(97, 6, 7, 0, 'Oferta dla zakładów komunalnych', 'Oferta dla zakładów komunalnych', NULL, '', '', 18, 'on', '', '2019-10-31', '2019-10-31 13:41:59', '2019-10-31 13:42:19'),
(99, 20, 18, 0, 'Spis katalogów', '', '<div>\r\n<p>Nasza firma oferuje szeroki wachlarz produkt&oacute;w branży instalacji sanitarnych. Oferujemy doradztwo oraz produkty z zakresu techniki instalacyjnej, pompowej, sanitarnej, grzewczej, fontannowej, system&oacute;w nawadniających. Tutaj znajdziesz spis jedynie podstawowych katalog&oacute;w, aby przeszukać wszystkie kilkaset katalog&oacute;w i kart katalogowych.</p>\r\n</div>', '', '', 3, 'on', '', '2019-10-31', '2019-10-31 13:52:09', '2019-10-31 13:59:18'),
(100, 6, 7, 0, 'Spis katalogów produktowych', 'Spis katalogów produktowych', NULL, '', '', 19, 'on', '', '2019-10-31', '2019-10-31 13:58:36', '2019-10-31 13:58:58'),
(101, 27, 18, 0, 'Jerzy Fularz', 'Jerzy Fularz', '<div><span style=\"font-size: 10pt;\"><em>Prezes Zarządu</em></span></div>', '', 'sekretariat@aqua.net.pl', 1, 'on', '', '2019-11-04', '2019-11-04 12:32:58', '2019-11-04 14:40:47'),
(102, 27, 18, 0, 'Sławomir Fularz', 'Sławomir Fularz', '<div><span style=\"font-size: 10pt;\"><em>Członek Zarządu</em></span></div>', '', 'sekretariat@aqua.net.pl', 2, 'on', '', '2019-11-04', '2019-11-04 14:26:35', '2019-11-04 14:40:47'),
(103, 27, 18, 0, 'Mariusz Pupin', 'Mariusz Pupin', '<div><span style=\"font-size: 10pt;\"><em>Dyrektor Zarządzający / Członek Zarządu</em></span></div>', '', 'sekretariat@aqua.net.pl', 3, 'on', '', '2019-11-04', '2019-11-04 14:28:34', '2019-11-04 14:40:47'),
(104, 27, 18, 0, 'Daniel Leśniak', 'Daniel Leśniak', '<div><span style=\"font-size: 10pt;\"><em>Dyrektor ds. Handlowych i Marketingu</em></span></div>', '', 'sekretariat@aqua.net.pl', 4, 'on', '', '2019-11-04', '2019-11-04 14:37:44', '2019-11-04 14:40:47'),
(105, 27, 18, 0, 'Witold Adamczak', 'Witold Adamczak', '<div><em><span style=\"font-size: 10pt;\">Dyrektor Regionu</span></em></div>', '', 'sekretariat@aqua.net.pl', 5, 'on', '', '2019-11-04', '2019-11-04 14:39:34', '2019-11-04 14:40:47'),
(106, 19, 18, 0, 'Mapa z oddziałami', '', '<?php echo file_get_contents(\"http://repozytorium.aqua.net.pl/mapa-rwd\"); ?>', '', 'd@d', 8, 'on', '', '2019-11-04', '2019-11-04 15:18:38', '2019-11-08 14:04:59'),
(107, 28, 18, 0, 'Elastyczność', '<i class=\"fad fa-expand-alt fa-3x\"></i>', '<p><span style=\"font-size: 18pt;\">Elastyczność</span></p>\r\n<p>Chcemy być najbardziej elastyczną siecią hurtowni branży instalacyjnej, grzewczej i pompowej...</p>', '', '', 1, 'on', 'W nazwie ikona fontawesome', '2019-11-07', '2019-11-07 13:06:31', '2019-11-08 09:31:17'),
(108, 28, 18, 0, 'Twój sukces', '<i class=\"fad fa-thumbs-up fa-3x\"></i>', '<p><span style=\"font-size: 18pt;\">Tw&oacute;j sukces<br /></span></p>\r\n<p>Pracujemy nad sukcesem rynkowym naszych klient&oacute;w oferując rozwiązania wzmacniające ich konkurencyjność rynkową.</p>', '', '', 2, 'on', 'W nazwie ikona fontawesome', '2019-11-07', '2019-11-07 13:50:13', '2019-11-08 09:31:47'),
(109, 28, 18, 0, 'Otwartość', '<i class=\"fad fa-hand-receiving fa-3x\"></i>', '<p><span style=\"font-size: 18pt;\">Otwartość<br /></span></p>\r\n<p>Jesteśmy zawsze otwarci na nowoczesne i ponadczasowe rozwiązania</p>', '', '', 3, 'on', 'W nazwie ikona fontawesome', '2019-11-07', '2019-11-07 13:55:27', '2019-11-08 09:32:07'),
(110, 28, 18, 0, 'Rozwój', '<i class=\"fad fa-chart-line fa-3x\"></i>', '<p><span style=\"font-size: 18pt;\">Rozw&oacute;j<br /></span></p>\r\n<p>Już od blisko 40 lat rozwijamy naszą ofertę dla Ciebie.</p>', '', '', 4, 'on', 'W nazwie ikona fontawesome', '2019-11-07', '2019-11-07 14:46:45', '2019-11-08 09:32:28'),
(111, 28, 18, 0, 'Nowoczesność', '<i class=\"fad fa-microchip fa-3x\"></i>', '<p><span style=\"font-size: 18pt;\">Nowoczesność<br /></span></p>\r\n<p>Naszym celem jest wdrażanie rozwiązań wzmacniających konkurencyjność rynkową naszych Klient&oacute;w.</p>', '', '', 5, 'on', 'W nazwie ikona fontawesome', '2019-11-07', '2019-11-07 14:51:44', '2019-11-08 09:32:42'),
(112, 28, 18, 0, 'Pomoc', '<i class=\"fad fa-life-ring fa-3x\"></i>', '<p><span style=\"font-size: 18pt;\">Pomoc<br /></span></p>\r\n<p>Pracujemy nad sukcesem rynkowym naszych klient&oacute;w pomagając im w doradztwie technicznym i handlowym.</p>', '', '', 6, 'on', 'W nazwie ikona fontawesome', '2019-11-07', '2019-11-07 14:55:34', '2019-11-08 09:33:01'),
(113, 28, 18, 0, 'Bogata oferta', '<i class=\"fad fa-clipboard-list-check fa-3x\"></i>', '<p><span style=\"font-size: 18pt;\">Bogata oferta<br /></span></p>\r\n<p>Ponad 19 tysięcy produkt&oacute;w z branży instalacyjnej, grzewczej, sieci zewnętrznych, pompowej i nawodnieniowej.</p>', '', '', 7, 'on', 'W nazwie ikona fontawesome', '2019-11-08', '2019-11-08 08:59:23', '2019-11-08 09:33:14'),
(114, 28, 18, 0, 'Sieć oddziałów', '<i class=\"fad fa-map-marked-alt fa-3x\"></i>', '<p><span style=\"font-size: 18pt;\">Sieć oddział&oacute;w<br /></span></p>\r\n<p>Już od ponad 30 lat nasza firma tworzy sieć kilkunastu oddział&oacute;w w całej Polsce Zachodniej.</p>', '', '', 8, 'on', 'W nazwie ikona fontawesome', '2019-11-08', '2019-11-08 09:03:41', '2019-11-08 09:33:27');

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(23, 69, 11);

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
) ENGINE=InnoDB AUTO_INCREMENT=385 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(384, 56, 5, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(63, 34, 16, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_property`
--

INSERT INTO `im_property` (`property_id`, `name`, `system_name`, `description`, `date_create`, `date_modify`) VALUES
(1, 'Nazwa', 'name', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(2, 'Tekst', 'content', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(3, 'Data', 'date', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(4, 'Zdjęcie', 'image', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(5, 'Link wewnętrzny', 'section', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(6, 'Plik', 'file', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(7, 'Menu', 'menu', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(8, 'Link zewnętrzny', 'link', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(9, 'Film', 'movie', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(10, 'E-mail', 'email', '', '2019-11-04 12:56:44', '2019-11-04 12:57:02');

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
) ENGINE=InnoDB AUTO_INCREMENT=1032 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(680, 2, 51),
(681, 5, 51),
(682, 6, 51),
(683, 7, 51),
(684, 8, 51),
(685, 9, 51),
(686, 10, 51),
(687, 11, 51),
(688, 12, 51),
(689, 13, 51),
(690, 14, 51),
(691, 15, 51),
(692, 16, 51),
(693, 17, 51),
(694, 18, 51),
(695, 19, 51),
(696, 20, 51),
(697, 21, 51),
(698, 22, 51),
(699, 23, 51),
(700, 24, 51),
(701, 25, 51),
(702, 26, 51),
(703, 27, 51),
(704, 28, 51),
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
(849, 1, 39),
(850, 2, 39),
(851, 5, 39),
(852, 6, 39),
(853, 7, 39),
(854, 8, 39),
(855, 9, 39),
(856, 10, 39),
(857, 11, 39),
(858, 12, 39),
(859, 13, 39),
(860, 14, 39),
(861, 15, 39),
(862, 16, 39),
(863, 17, 39),
(864, 18, 39),
(865, 19, 39),
(866, 20, 39),
(867, 21, 39),
(868, 22, 39),
(869, 23, 39),
(870, 24, 39),
(871, 25, 39),
(872, 26, 39),
(873, 27, 39),
(874, 28, 39),
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
(1000, 15, 54),
(1001, 16, 48),
(1003, 18, 65),
(1005, 19, 56),
(1019, 17, 49),
(1025, 6, 40),
(1031, 11, 106);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_setting`
--

INSERT INTO `im_setting` (`setting_id`, `name`, `system_name`, `content`, `description`, `date_create`, `date_modify`) VALUES
(1, 'System name', 'name', 'IM-CMS Engine', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(2, 'Logo', 'logo', 'logo.png', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_translation_system`
--

INSERT INTO `im_translation_system` (`translation_system_id`, `language_id`, `name`, `system_name`, `content`, `description`, `date_create`, `date_modify`) VALUES
(1, 1, 'All', 'show-all', 'Wyświetl wszystko', '', '2019-10-15 08:07:37', '2019-10-28 13:50:45'),
(2, 2, 'All', 'show-all', 'Display all', '', '2019-10-15 08:07:37', '2019-10-28 13:51:06'),
(3, 1, 'More', 'more', 'Więcej...', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(4, 2, 'More', 'more', 'More...', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(5, 1, 'No data', 'no-data', 'Brak danych', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37'),
(6, 2, 'No data', 'no-data', 'No data', '', '2019-10-15 08:07:37', '2019-10-15 08:07:37');

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(28, 'Zalety', 'col-12 col-lg-6 text-center p-3 bg-light animated bounceIn border border-white', 'Wyświetlane na firma => dlaczego my', '2019-11-07 12:25:53', '2019-11-08 09:40:45');

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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(30, 15, 4, '', '', 1, NULL, '2019-10-17 13:37:57', '2019-10-17 13:37:57'),
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
(54, 28, 2, 'text-center w-100', '', 2, '', '2019-11-07 13:01:01', '2019-11-08 09:30:36');

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
