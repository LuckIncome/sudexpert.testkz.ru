-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: srv-pleskdb21.ps.kz:3306
-- Время создания: Май 29 2022 г., 13:03
-- Версия сервера: 10.2.41-MariaDB
-- Версия PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sudexpe1_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sort_id` int(11) DEFAULT 0,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `image`, `title`, `excerpt`, `content`, `slug`, `status`, `sort_id`, `seo_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'about\\April2022\\2ednhgTAbjyvwgN8eHhP.jpg', 'Прайс', NULL, '<table style=\"border-collapse: collapse; width: 104.572%; height: 372px;\" border=\"1\">\n<tbody>\n<tr style=\"height: 42px;\">\n<td style=\"width: 4.76734%; text-align: center; height: 10px;\">\n<h1 style=\"font-family: Roboto, sans-serif; font-weight: 500; margin: 0px 0px 30px; padding: 0px; box-sizing: border-box; line-height: 1; color: #000000;\"><strong><span lang=\"RU\" style=\"font-family: Roboto; margin: 0px; padding: 0px; box-sizing: border-box; font-size: 12pt; line-height: 18.4px;\">№</span>&nbsp;<span lang=\"RU\" style=\"font-family: Roboto; margin: 0px; padding: 0px; box-sizing: border-box; font-size: 12pt; line-height: 18.4px;\">п/н</span></strong></h1>\n</td>\n<td style=\"width: 30.1387%; text-align: center; height: 10px;\">\n<h1 style=\"font-family: Roboto, sans-serif; font-weight: 500; margin: 0px 0px 30px; padding: 0px; box-sizing: border-box; line-height: 1; color: #000000; text-align: center;\"><strong><span style=\"margin: 0px; padding: 0px; box-sizing: border-box;\"><span lang=\"RU\" style=\"font-family: Roboto; margin: 0px; padding: 0px; box-sizing: border-box; font-size: 12pt; line-height: 18.4px;\">Наименование услуг(экспертизы)</span></span></strong></h1>\n</td>\n<td style=\"width: 41.7218%; text-align: center; height: 10px;\">\n<h1 style=\"font-family: Roboto, sans-serif; font-weight: 500; margin: 0px 0px 30px; padding: 0px; box-sizing: border-box; line-height: 1; color: #000000;\"><strong><span style=\"margin: 0px; padding: 0px; box-sizing: border-box;\"><span lang=\"RU\" style=\"font-family: Roboto; margin: 0px; padding: 0px; box-sizing: border-box; font-size: 12pt; line-height: 18.4px;\">Стоимость</span></span></strong></h1>\n</td>\n</tr>\n<tr style=\"height: 42px;\">\n<td style=\"width: 4.76734%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Roboto; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">1</span></td>\n<td style=\"width: 30.1387%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Roboto; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Психолого-криминалистическая экспертиза</span></td>\n<td style=\"width: 41.7218%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Roboto; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">от 70 000 тенге и выше в зависимости от исследуемого объекта</span></td>\n</tr>\n<tr style=\"height: 42px;\">\n<td style=\"width: 4.76734%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Roboto; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">2</span></td>\n<td style=\"width: 30.1387%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Психолого-филологическая экспертиза</span></td>\n<td style=\"width: 41.7218%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Roboto; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">от 70 000 тенге и выше в зависимости от исследуемого объекта</span></td>\n</tr>\n<tr style=\"height: 42px;\">\n<td style=\"width: 4.76734%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Roboto; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">3</span></td>\n<td style=\"width: 30.1387%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Roboto; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Психологическая экспертиза</span></td>\n<td style=\"width: 41.7218%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Roboto; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">от 70 000 тенге и выше в зависимости от исследуемого объекта</span></td>\n</tr>\n<tr style=\"height: 42px;\">\n<td style=\"width: 4.76734%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Roboto; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">4</span></td>\n<td style=\"width: 30.1387%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Roboto; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Филологическая экспертиза</span></td>\n<td style=\"width: 41.7218%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Roboto; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">от 70 000 тенге и выше в зависимости от исследуемого объекта</span></td>\n</tr>\n<tr style=\"height: 42px;\">\n<td style=\"width: 4.76734%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Roboto; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">5</span></td>\n<td style=\"width: 30.1387%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Roboto; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Финансово-бюджетная экспертиза</span></td>\n<td style=\"width: 41.7218%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Roboto; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">от 70 000 тенге и выше в зависимости от исследуемого объекта</span></td>\n</tr>\n<tr style=\"height: 42px;\">\n<td style=\"width: 4.76734%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Roboto; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">6</span></td>\n<td style=\"width: 30.1387%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Roboto; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Автороведческая экспертиза&nbsp;</span></td>\n<td style=\"width: 41.7218%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Roboto; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">от 70 000 тенге и выше в зависимости от исследуемого объекта</span></td>\n</tr>\n<tr style=\"height: 42px;\">\n<td style=\"width: 4.76734%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Roboto; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">7</span></td>\n<td style=\"width: 30.1387%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Roboto; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Экспертиза почерка и подписи</span></td>\n<td style=\"width: 41.7218%; text-align: center; height: 42px;\"><span lang=\"RU\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Roboto; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: RU; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">от 70 000 тенге и выше в зависимости от исследуемого объекта</span></td>\n</tr>\n</tbody>\n</table>', 'price', 1, 0, 'Прайс', 'Прайс', 'Прайс', '2022-04-14 11:47:00', '2022-04-19 12:25:42'),
(2, NULL, 'Сотрудничество', NULL, '<p>Текст для сотрудничества</p>', 'partnership', 1, 0, 'Сотрудничество', 'Сотрудничество', 'Сотрудничество', NULL, '2022-04-19 12:06:05');

-- --------------------------------------------------------

--
-- Структура таблицы `about_contents`
--

CREATE TABLE `about_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `about_contents`
--

INSERT INTO `about_contents` (`id`, `image`, `title`, `excerpt`, `content`, `created_at`, `updated_at`) VALUES
(1, 'about-contents\\April2022\\wufBfl6yL6xZbUDskrTi.jpg', 'О нас', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2022-04-15 04:26:00', '2022-04-21 13:02:41');

-- --------------------------------------------------------

--
-- Структура таблицы `act`
--

CREATE TABLE `act` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sort_id` int(11) DEFAULT 0,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `act`
--

INSERT INTO `act` (`id`, `image`, `title`, `excerpt`, `content`, `slug`, `status`, `sort_id`, `seo_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'act\\April2022\\KcoI3UY4f9D71VvpjqZm.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p><img src=\"http://sudexpert.testkz.ru/storage/act/April2022/act-main.jpg\" alt=\"\" /></p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'lorem-ipsum-is-simply-dummy-text-of-the-printing-and-typesetting-industry', 1, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2022-04-13 09:25:00', '2022-04-13 09:37:21'),
(2, 'act\\April2022\\AeYaCnrrHVjSsguo04Od.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry 1', NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p><img src=\"http://sudexpert.testkz.ru/storage/act/April2022/act-main.jpg\" alt=\"\" /></p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'lorem-ipsum-is-simply-dummy-text-of-the-printing-and-typesetting-industry-1', 1, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry 1', '2022-04-13 09:26:00', '2022-04-13 09:37:07'),
(3, 'act\\April2022\\TqoGtGHIfXDN6N0HHa55.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry 2', NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p><img src=\"http://sudexpert.testkz.ru/storage/act/April2022/act-main.jpg\" alt=\"\" /></p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'lorem-ipsum-is-simply-dummy-text-of-the-printing-and-typesetting-industry-2', 1, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry 2', '2022-04-13 09:38:34', '2022-04-13 09:38:34'),
(4, 'act/April2022/ueoNmdOPfTgTmZ158w3O.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry 3', NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>&nbsp;</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'act5', 1, 0, '', '', '', '2022-04-19 12:29:00', '2022-04-19 12:46:50');

-- --------------------------------------------------------

--
-- Структура таблицы `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `banners`
--

INSERT INTO `banners` (`id`, `image`, `title`, `subtitle`, `created_at`, `updated_at`) VALUES
(1, 'banners\\April2022\\Dmbo5tpK66zcPmrzluno.jpg', 'Производство судебных экспертиз и специализированных исследований', 'в рамках всех видов судопроизводства, а также по запросам госорганов, физических и юридических лиц', '2022-04-15 10:25:54', '2022-04-15 10:25:54');

-- --------------------------------------------------------

--
-- Структура таблицы `block_abouts`
--

CREATE TABLE `block_abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_alt_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_alt_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `block_abouts`
--

INSERT INTO `block_abouts` (`id`, `icon`, `first_title`, `second_title`, `subtitle`, `first_image`, `first_alt_image`, `second_image`, `second_alt_image`, `created_at`, `updated_at`) VALUES
(1, 'block-abouts\\April2022\\16U7UEN1M9wLnHtl3mn8.svg', 'О компании', 'Судебные Эксперты №1', 'Текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн.', 'block-abouts\\April2022\\Ax6RAqkWPSINjZzD6nUS.jpg', 'ALT1', 'block-abouts\\April2022\\KdJFPkbcGItPrqWbDM8c.jpg', 'ALT2', '2022-04-15 10:38:45', '2022-04-15 10:38:45');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(2, NULL, 1, 'Category 2', 'category-2', '2022-04-10 21:58:36', '2022-04-10 21:58:36');

-- --------------------------------------------------------

--
-- Структура таблицы `consultations`
--

CREATE TABLE `consultations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_main` tinyint(1) NOT NULL DEFAULT 1,
  `type` enum('phone','graph','social','address','email','map') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'phone',
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `translate_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sort_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `is_main`, `type`, `icon`, `value`, `translate_value`, `link`, `status`, `sort_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'phone', NULL, '+7 771 451 81 33', NULL, '77714518133', 1, 1, '2022-04-11 09:34:05', '2022-04-11 09:34:05'),
(2, 1, 'phone', NULL, '+7 771 451 81 33', NULL, '77714518133', 1, 2, '2022-04-11 09:34:25', '2022-04-11 09:34:25'),
(3, 1, 'email', NULL, 'info@sudexpert1.kz', NULL, 'info@sudexpert1.kz', 1, 1, '2022-04-11 09:34:39', '2022-04-11 09:34:39'),
(4, 1, 'address', NULL, NULL, 'Казахстан, \r\n050060, г. Алматы,\r\nпр-т Аль-Фараби, 99, кв/офис 147', NULL, 1, 1, '2022-04-11 09:35:20', '2022-04-11 09:35:20'),
(5, 1, 'graph', NULL, NULL, '<p>Пн-пт: <strong>с 10:00 до 19:00</strong></p> \r\n<p>Суббота: <strong>с 10:00 до 15:00</strong></p> \r\n<p>Воскресенье: <strong>Выходной</strong></p>', NULL, 1, 1, '2022-04-11 09:36:15', '2022-04-11 09:36:15'),
(6, 1, 'map', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1454.0550202732588!2d76.91260225825779!3d43.207181249801714!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x388368b43680d501%3A0xeddad1d0b6ce6fa4!2z0L_RgNC-0YHQv9C10LrRgiBB0LvRjC3QpNCw0YDQsNCx0LggOTksINCQ0LvQvNCw0YLRiyAwNTAwNjA!5e0!3m2!1sru!2skz!4v1648532245876!5m2!1sru!2skz\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, NULL, 1, 1, '2022-04-11 09:36:37', '2022-04-11 09:36:37'),
(7, 1, 'social', 'contacts\\April2022\\HZJVlWYCTxrBTre0xQad.svg', 'Whatsapp', NULL, 'https://www.whatsapp.com', 1, 1, '2022-04-11 09:37:25', '2022-04-11 09:37:25'),
(8, 1, 'social', 'contacts\\April2022\\iUaqm24rlyw495VIyF9T.svg', 'Instagram', NULL, 'https://www.instagram.com/', 1, 2, '2022-04-11 09:38:12', '2022-04-11 09:38:12');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '{}', 4),
(47, 6, 'excerpt', 'text_area', 'Краткое описание', 0, 0, 0, 0, 0, 0, '{}', 6),
(48, 6, 'body', 'rich_text_box', 'Контент', 0, 0, 1, 1, 1, 1, '{}', 7),
(49, 6, 'slug', 'text', 'Ссылка (Уникальная)', 1, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"unique:pages,slug\"}}', 8),
(50, 6, 'meta_description', 'text_area', 'Meta Описание', 0, 0, 1, 1, 1, 1, '{}', 11),
(51, 6, 'meta_keywords', 'text_area', 'Meta Ключевые слова', 0, 0, 1, 1, 1, 1, '{}', 12),
(52, 6, 'status', 'select_dropdown', 'Статус', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"\\u041e\\u0422\\u041a\\u041b\\u042e\\u0427\\u0415\\u041d\\u041e\",\"ACTIVE\":\"\\u0412\\u041a\\u041b\\u042e\\u0427\\u0415\\u041d\\u041e\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 13),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(55, 6, 'image', 'image', 'Изображения', 0, 0, 0, 0, 0, 0, '{\"resize\":{\"width\":\"1200\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 5),
(56, 6, 'type', 'select_dropdown', 'Тип страницы ', 1, 1, 1, 1, 1, 1, '{\"default\":\"simple\",\"options\":{\"home\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\"contacts\":\"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\"faq\":\"\\u0427\\u0430\\u0441\\u0442\\u044b\\u0435 \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b\",\"reviews\":\"\\u041e\\u0442\\u0437\\u044b\\u0432\\u044b\",\"services\":\"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0438\",\"acts\":\"\\u041d\\u041f\\u0410\",\"about\":\"\\u041e \\u043d\\u0430\\u0441\",\"policy\":\"\\u041f\\u043e\\u043b\\u0438\\u0442\\u0438\\u043a\\u0430 \\u043a\\u043e\\u043d\\u0444\\u0435\\u0434\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438\",\"simple\":\"\\u0414\\u0440\\u0443\\u0433\\u043e\\u0435\"}}', 3),
(57, 6, 'seo_title', 'text', 'SEO Заголовок', 0, 0, 1, 1, 1, 1, '{}', 10),
(58, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(59, 7, 'is_main', 'checkbox', 'Главная', 1, 0, 1, 1, 1, 1, '{\"on\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u044b\\u0439\",\"off\":\"\\u0412\\u0442\\u043e\\u0440\\u043e\\u0441\\u0442\\u0435\\u043f\\u0435\\u043d\\u043d\\u044b\\u0439\",\"checked\":true}', 2),
(60, 7, 'type', 'select_dropdown', 'Тип', 1, 1, 1, 1, 1, 1, '{\"default\":\"phone\",\"options\":{\"phone\":\"\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\",\"graph\":\"\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b\",\"social\":\"\\u0421\\u043e\\u0446\\u0441\\u0435\\u0442\\u044c\",\"address\":\"\\u0410\\u0434\\u0440\\u0435\\u0441\",\"email\":\"Email\",\"map\":\"\\u041a\\u0430\\u0440\\u0442\\u0430 (JS)\"}}', 3),
(61, 7, 'icon', 'image', 'Иконка (svg)', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"100%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 4),
(62, 7, 'value', 'text_area', 'Значение', 0, 0, 1, 1, 1, 1, '{}', 5),
(63, 7, 'translate_value', 'text_area', 'Значение c Переводом', 0, 1, 1, 1, 1, 1, '{}', 6),
(64, 7, 'link', 'text', 'Ссылка', 0, 1, 1, 1, 1, 1, '{}', 7),
(65, 7, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"checked\":true}', 8),
(66, 7, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 9),
(67, 7, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 10),
(68, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(69, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 8, 'question', 'text_area', 'Вопрос', 0, 1, 1, 1, 1, 1, '{}', 2),
(71, 8, 'answer', 'rich_text_box', 'Ответ', 0, 0, 1, 1, 1, 1, '{}', 3),
(72, 8, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 1, 0, 1, '{}', 4),
(73, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(74, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(75, 9, 'image', 'image', 'Изображения', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1200\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 2),
(76, 9, 'name', 'text', 'Имя', 0, 1, 1, 1, 1, 1, '{}', 3),
(77, 9, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(78, 9, 'content', 'rich_text_box', 'Отзыв', 0, 0, 1, 1, 1, 1, '{}', 5),
(79, 9, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"checked\":true}', 6),
(80, 9, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 7),
(81, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(82, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(83, 10, 'phone', 'text', 'Телефон', 0, 1, 1, 1, 1, 1, '{}', 2),
(84, 10, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 1, 0, 1, '{}', 3),
(85, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(86, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(87, 11, 'image', 'image', 'Изображения', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1200\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 4),
(88, 11, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 5),
(89, 11, 'excerpt', 'text_area', 'Краткое описание', 0, 0, 1, 1, 1, 1, '{}', 6),
(90, 11, 'content', 'rich_text_box', 'Контент', 0, 0, 1, 1, 1, 1, '{}', 7),
(91, 11, 'slug', 'text', 'Ссылка (Уникальная)', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 8),
(92, 11, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"checked\":true}', 9),
(93, 11, 'sort_id', 'number', 'Порядковый номер', 0, 0, 0, 0, 0, 0, '{}', 10),
(94, 11, 'seo_title', 'text', 'SEO Заголовок', 0, 0, 1, 1, 1, 1, '{}', 11),
(95, 11, 'meta_description', 'text_area', 'Meta Описание', 0, 0, 1, 1, 1, 1, '{}', 12),
(96, 11, 'meta_keywords', 'text_area', 'Meta Ключевые слова', 0, 0, 1, 1, 1, 1, '{}', 13),
(97, 11, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 14),
(98, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15),
(99, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(100, 12, 'image', 'image', 'Изображения', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1200\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 2),
(101, 12, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 3),
(102, 12, 'excerpt', 'text_area', 'Краткое описание', 0, 0, 0, 0, 0, 0, '{}', 4),
(103, 12, 'content', 'rich_text_box', 'Контент', 0, 0, 1, 1, 1, 1, '{}', 5),
(104, 12, 'slug', 'text', 'Ссылка (Уникальная)', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(105, 12, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"checked\":true}', 7),
(106, 12, 'sort_id', 'number', 'Порядковый номер', 0, 0, 0, 0, 0, 0, '{}', 8),
(107, 12, 'seo_title', 'text', 'SEO Заголовок', 0, 0, 1, 1, 1, 1, '{}', 9),
(108, 12, 'meta_description', 'text_area', 'Meta Описание', 0, 0, 1, 1, 1, 1, '{}', 10),
(109, 12, 'meta_keywords', 'text_area', 'Meta Ключевые слова', 0, 0, 1, 1, 1, 1, '{}', 11),
(110, 12, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 12),
(111, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(112, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(113, 13, 'image', 'image', 'Изображения', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1200\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 2),
(114, 13, 'name', 'text', 'ФИО', 0, 1, 1, 1, 1, 1, '{}', 3),
(115, 13, 'position', 'text', 'Должность', 0, 1, 1, 1, 1, 1, '{}', 4),
(116, 13, 'experience', 'text', 'Стаж', 0, 1, 1, 1, 1, 1, '{}', 5),
(117, 13, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 6),
(118, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(119, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(120, 14, 'icon', 'image', 'Иконка (svg)', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"100%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 2),
(121, 14, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 3),
(122, 14, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 4),
(123, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(124, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(125, 15, 'image', 'image', 'Изображения', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1200\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 2),
(126, 15, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 3),
(127, 15, 'excerpt', 'text_area', 'Краткое описание', 0, 0, 0, 0, 0, 0, '{}', 4),
(128, 15, 'content', 'rich_text_box', 'Контент', 0, 0, 1, 1, 1, 1, '{}', 5),
(129, 15, 'slug', 'text', 'Ссылка (Уникальная)', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(130, 15, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"checked\":true}', 7),
(131, 15, 'sort_id', 'number', 'Порядковый номер', 0, 0, 0, 0, 0, 0, '{}', 8),
(132, 15, 'seo_title', 'text', 'SEO Заголовок', 0, 0, 1, 1, 1, 1, '{}', 9),
(133, 15, 'meta_description', 'text_area', 'Meta Описание', 0, 0, 1, 1, 1, 1, '{}', 10),
(134, 15, 'meta_keywords', 'text_area', 'Meta Ключевые слова', 0, 0, 1, 1, 1, 1, '{}', 11),
(135, 15, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 12),
(136, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(137, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(138, 16, 'image', 'image', 'Изображения', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1200\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 2),
(139, 16, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 3),
(140, 16, 'excerpt', 'text_area', 'Краткое описание', 0, 0, 1, 1, 1, 1, '{}', 4),
(141, 16, 'content', 'rich_text_box', 'Контент', 0, 0, 1, 1, 1, 1, '{}', 5),
(142, 16, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 1, 0, 1, '{}', 6),
(143, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(144, 11, 'icon_main_page', 'image', 'Иконка для Главной Стр.', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"100%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 2),
(145, 11, 'title_main_page', 'text', 'Заголовок для Главной Стр.', 0, 0, 1, 1, 1, 1, '{}', 3),
(146, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(147, 17, 'image', 'image', 'Изображения', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1200\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 2),
(148, 17, 'title', 'text_area', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 3),
(149, 17, 'subtitle', 'text_area', 'Подзаголовок', 0, 1, 1, 1, 1, 1, '{}', 4),
(150, 17, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 5),
(151, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(152, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(153, 18, 'icon', 'image', 'Иконка (svg)', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"100%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 2),
(154, 18, 'first_title', 'text', 'Заголовок №1', 0, 1, 1, 1, 1, 1, '{}', 3),
(155, 18, 'second_title', 'text', 'Заголовок №2', 0, 1, 1, 1, 1, 1, '{}', 4),
(156, 18, 'subtitle', 'text_area', 'Подзаголовок', 0, 0, 1, 1, 1, 1, '{}', 5),
(157, 18, 'first_image', 'image', 'Изображение №1', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1200\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 6),
(158, 18, 'first_alt_image', 'text', 'Alt Изображение №1', 0, 0, 1, 1, 1, 1, '{}', 7),
(159, 18, 'second_image', 'image', 'Изображение №2', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1200\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 8),
(160, 18, 'second_alt_image', 'text', 'Alt Изображение №2', 0, 0, 1, 1, 1, 1, '{}', 9),
(161, 18, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 10),
(162, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(6, 'pages', 'pages', 'Страница', 'Страницы', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-04-10 21:58:36', '2022-04-15 03:58:24'),
(7, 'contacts', 'contacts', 'Контакт', 'Контакты', 'voyager-location', 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-11 08:34:15', '2022-04-11 09:35:34'),
(8, 'f_a_q_s', 'f-a-q-s', 'F A Q', 'F A Q', 'voyager-question', 'App\\Models\\FAQ', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-04-12 05:45:37', '2022-04-12 05:45:37'),
(9, 'reviews', 'reviews', 'Отзыв', 'Отзывы', 'voyager-pen', 'App\\Models\\Review', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-04-12 06:20:58', '2022-04-12 06:20:58'),
(10, 'consultations', 'consultations', 'Консультация', 'Консультация', 'voyager-pen', 'App\\Models\\Consultation', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-13 03:03:50', '2022-04-13 03:06:09'),
(11, 'service', 'service', 'Услуга', 'Услуги', 'voyager-treasure', 'App\\Models\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-13 05:19:22', '2022-04-15 05:33:49'),
(12, 'act', 'act', 'НПА', 'НПА', 'voyager-file-text', 'App\\Models\\Act', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-13 09:15:35', '2022-04-13 09:35:51'),
(13, 'personals', 'personals', 'Эксперт', 'Эксперты', 'voyager-people', 'App\\Models\\Personal', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-14 09:39:51', '2022-04-14 09:43:39'),
(14, 'icons', 'icons', 'Иконка', 'Иконки', 'voyager-rocket', 'App\\Models\\Icon', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-14 10:20:46', '2022-04-15 10:37:04'),
(15, 'about', 'about', 'О нас', 'О нас', 'voyager-company', 'App\\Models\\About', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-14 11:42:41', '2022-04-15 05:52:04'),
(16, 'about_contents', 'about-contents', 'Контент', 'Контент', 'voyager-file-text', 'App\\Models\\AboutContent', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-04-15 04:25:14', '2022-04-15 04:25:14'),
(17, 'banners', 'banners', 'Баннер', 'Баннеры', 'voyager-character', 'App\\Models\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-15 10:22:58', '2022-04-15 10:35:53'),
(18, 'block_abouts', 'block-abouts', 'Блок О нас', 'Блок О нас', 'voyager-company', 'App\\Models\\BlockAbout', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-04-15 10:34:47', '2022-04-15 10:34:47');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `f_a_q_s`
--

CREATE TABLE `f_a_q_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `f_a_q_s`
--

INSERT INTO `f_a_q_s` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s?', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ea laborum molestias eius culpa dolorum placeat quis autem tempora doloribus, aliquid numquam doloremque quaerat amet, accusamus molestiae assumenda ipsum ipsa architecto.</p>', '2022-04-12 05:47:04', '2022-04-12 05:47:04'),
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s?', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ea laborum molestias eius culpa dolorum placeat quis autem tempora doloribus, aliquid numquam doloremque quaerat amet, accusamus molestiae assumenda ipsum ipsa architecto.</p>', '2022-04-12 05:47:26', '2022-04-12 05:47:26'),
(3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s?', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ea laborum molestias eius culpa dolorum placeat quis autem tempora doloribus, aliquid numquam doloremque quaerat amet, accusamus molestiae assumenda ipsum ipsa architecto.</p>', '2022-04-12 05:47:41', '2022-04-12 05:47:41'),
(4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s?', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ea laborum molestias eius culpa dolorum placeat quis autem tempora doloribus, aliquid numquam doloremque quaerat amet, accusamus molestiae assumenda ipsum ipsa architecto.</p>', '2022-04-12 05:47:00', '2022-04-12 05:57:45');

-- --------------------------------------------------------

--
-- Структура таблицы `icons`
--

CREATE TABLE `icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `icons`
--

INSERT INTO `icons` (`id`, `icon`, `title`, `created_at`, `updated_at`) VALUES
(1, 'icons\\April2022\\xoPNjw0ZwF2EdZ9zS4CA.svg', 'Высококвалифицированные специалисты', '2022-04-14 10:21:00', '2022-04-14 11:07:53'),
(2, 'icons\\April2022\\1HuPFbSwndYh9y4OfHJ1.svg', 'Большой опыт судебно-экспертной деятельности', '2022-04-14 10:21:58', '2022-04-14 10:21:58'),
(3, 'icons\\April2022\\aOepSGiXhTH21p9CEoUv.svg', 'Широкий спектр услуг', '2022-04-14 10:22:08', '2022-04-14 10:22:08'),
(4, 'icons\\April2022\\aXOGZT4mHMtpr92ilYCn.svg', 'Оперативность, мобильность, высокий уровень сервиса', '2022-04-14 10:22:21', '2022-04-14 10:22:21');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(2, 'header_menu', '2022-04-11 10:27:43', '2022-04-11 10:27:43'),
(4, 'footer_menu', '2022-04-15 06:24:44', '2022-04-15 06:24:44'),
(5, 'footer_expertise', '2022-04-15 06:31:25', '2022-04-15 06:31:25');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Панель Управления', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2022-04-10 21:58:36', '2022-04-11 04:15:04', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 5, 6, '2022-04-10 21:58:36', '2022-04-11 04:14:19', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 5, 5, '2022-04-10 21:58:36', '2022-04-11 04:14:19', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 5, 4, '2022-04-10 21:58:36', '2022-04-11 04:14:19', 'voyager.roles.index', NULL),
(5, 1, 'Инструменты', '', '_self', 'voyager-tools', '#000000', NULL, 10, '2022-04-10 21:58:36', '2022-04-15 10:35:13', NULL, ''),
(6, 1, 'Конструктор Меню', '', '_self', 'voyager-list', '#000000', NULL, 8, '2022-04-10 21:58:36', '2022-04-15 10:35:13', 'voyager.menus.index', 'null'),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 1, '2022-04-10 21:58:36', '2022-04-11 04:13:54', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 2, '2022-04-10 21:58:36', '2022-04-11 04:13:54', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 3, '2022-04-10 21:58:36', '2022-04-11 04:13:54', 'voyager.bread.index', NULL),
(10, 1, 'Настройки', '', '_self', 'voyager-settings', '#000000', 15, 3, '2022-04-10 21:58:36', '2022-04-11 08:35:44', 'voyager.settings.index', 'null'),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 5, 8, '2022-04-10 21:58:36', '2022-04-11 04:14:19', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, 5, 7, '2022-04-10 21:58:36', '2022-04-11 04:14:19', 'voyager.posts.index', NULL),
(13, 1, 'Страницы', '', '_self', 'voyager-file-text', '#000000', 15, 1, '2022-04-10 21:58:36', '2022-04-11 08:35:44', 'voyager.pages.index', 'null'),
(14, 1, 'Контакты', '', '_self', 'voyager-location', NULL, 15, 2, '2022-04-11 08:34:15', '2022-04-11 08:35:44', 'voyager.contacts.index', NULL),
(15, 1, 'Настройки', '', '_self', 'voyager-settings', '#000000', NULL, 9, '2022-04-11 08:35:24', '2022-04-15 10:35:13', NULL, ''),
(16, 2, 'Услуги', 'services', '_self', NULL, '#000000', NULL, 1, '2022-04-11 10:51:22', '2022-04-13 05:24:48', NULL, ''),
(17, 2, 'О нас', 'about', '_self', NULL, '#000000', NULL, 2, '2022-04-11 10:51:41', '2022-04-11 10:54:48', NULL, ''),
(18, 2, 'НПА', 'acts', '_self', NULL, '#000000', NULL, 3, '2022-04-11 10:52:27', '2022-04-11 10:54:48', NULL, ''),
(19, 2, 'FAQ', 'faq', '_self', NULL, '#000000', NULL, 4, '2022-04-11 10:52:42', '2022-04-11 10:54:48', NULL, ''),
(20, 2, 'Контакты', 'contacts', '_self', NULL, '#000000', NULL, 5, '2022-04-11 10:53:01', '2022-04-11 10:54:48', NULL, ''),
(21, 1, 'F A Q', '', '_self', 'voyager-question', NULL, NULL, 6, '2022-04-12 05:45:37', '2022-04-15 10:24:40', 'voyager.f-a-q-s.index', NULL),
(22, 1, 'Отзывы', '', '_self', 'voyager-pen', NULL, 23, 1, '2022-04-12 06:20:58', '2022-04-12 06:22:13', 'voyager.reviews.index', NULL),
(23, 1, 'Почта', '', '_self', 'voyager-mail', '#000000', NULL, 7, '2022-04-12 06:22:04', '2022-04-15 10:35:13', NULL, ''),
(24, 1, 'Консультация', '', '_self', 'voyager-pen', NULL, 23, 2, '2022-04-13 03:03:50', '2022-04-13 03:05:27', 'voyager.consultations.index', NULL),
(25, 1, 'Услуги', '', '_self', 'voyager-treasure', NULL, NULL, 5, '2022-04-13 05:19:22', '2022-04-15 10:24:43', 'voyager.service.index', NULL),
(26, 1, 'НПА', '', '_self', 'voyager-file-text', NULL, NULL, 4, '2022-04-13 09:15:35', '2022-04-15 10:24:43', 'voyager.act.index', NULL),
(27, 1, 'Эксперты', '', '_self', 'voyager-people', NULL, 30, 2, '2022-04-14 09:39:51', '2022-04-15 04:25:49', 'voyager.personals.index', NULL),
(28, 1, 'Иконки', '', '_self', 'voyager-rocket', NULL, 30, 3, '2022-04-14 10:20:46', '2022-04-15 04:25:49', 'voyager.icons.index', NULL),
(29, 1, 'О нас', '', '_self', 'voyager-company', NULL, 30, 4, '2022-04-14 11:42:41', '2022-04-15 04:25:49', 'voyager.about.index', NULL),
(30, 1, 'О нас', '', '_self', 'voyager-company', '#000000', NULL, 3, '2022-04-14 11:47:57', '2022-04-15 10:24:43', NULL, ''),
(31, 1, 'Контент', '', '_self', 'voyager-file-text', NULL, 30, 1, '2022-04-15 04:25:14', '2022-04-15 04:25:49', 'voyager.about-contents.index', NULL),
(32, 2, 'Средств компьютерных технологий', '/services/ekspertiza-sredstv-kompyuternyh-tehnologij', '_self', NULL, '#000000', 16, 1, '2022-04-15 05:54:16', '2022-04-15 05:54:27', NULL, ''),
(33, 2, 'Хозяйственных операций в рамках экономики ', '/services/ekspertiza-hozyajstvennyh-operacij-v-ramkah-ekonomiki', '_self', NULL, '#000000', 16, 2, '2022-04-15 06:16:45', '2022-04-15 06:16:48', NULL, ''),
(34, 2, 'Почерка и подписи', '/services/ekspertiza-pocherka-i-podpisi', '_self', NULL, '#000000', 16, 3, '2022-04-15 06:17:13', '2022-04-15 06:17:16', NULL, ''),
(35, 2, 'Финансово-бюджетная ', '/services/finansovo-byudzhetnaya-ekspertiza', '_self', NULL, '#000000', 16, 4, '2022-04-15 06:17:44', '2022-04-15 06:17:47', NULL, ''),
(36, 2, 'Религиоведческая ', '/services/religiovedcheskaya-ekspertiza', '_self', NULL, '#000000', 16, 5, '2022-04-15 06:18:04', '2022-04-15 06:18:07', NULL, ''),
(37, 2, 'Религиоведческо-политологическая', '/services/religiovedchesko-politologicheskaya-ekspertiza', '_self', NULL, '#000000', 16, 6, '2022-04-15 06:18:28', '2022-04-15 06:18:31', NULL, ''),
(38, 2, 'Психологическая ', '/services/psihologicheskaya-ekspertiza', '_self', NULL, '#000000', 16, 7, '2022-04-15 06:18:54', '2022-04-15 06:18:58', NULL, ''),
(39, 2, 'Психолого-криминалистическая ', '/services/psihologo-kriminalisticheskaya-ekspertiza', '_self', NULL, '#000000', 16, 8, '2022-04-15 06:19:23', '2022-04-15 06:19:26', NULL, ''),
(40, 2, 'Бухгалтерская ', '/services/buhgalterskaya-ekspertiza', '_self', NULL, '#000000', 16, 9, '2022-04-15 06:19:53', '2022-04-15 06:19:58', NULL, ''),
(41, 2, 'Автороведческая ', '/services/avtorovedcheskaya-ekspertiza', '_self', NULL, '#000000', 16, 10, '2022-04-15 06:20:24', '2022-04-15 06:20:34', NULL, ''),
(42, 2, 'Психолого-филологическая', '/services/psihologo-filologicheskaya-ekspertiza', '_self', NULL, '#000000', 16, 11, '2022-04-15 06:20:56', '2022-04-15 06:20:59', NULL, ''),
(43, 2, 'Прайс', '/about/price', '_self', NULL, '#000000', 17, 1, '2022-04-15 06:21:45', '2022-04-19 12:04:51', NULL, ''),
(44, 4, 'О компании', 'about', '_self', NULL, '#000000', NULL, 10, '2022-04-15 06:25:07', '2022-04-15 06:25:07', NULL, ''),
(45, 4, 'Сотрудничество', '#', '_self', NULL, '#000000', NULL, 11, '2022-04-15 06:26:17', '2022-04-15 06:26:17', NULL, ''),
(46, 4, 'НПА', 'acts', '_self', NULL, '#000000', NULL, 12, '2022-04-15 06:26:46', '2022-04-15 06:26:46', NULL, ''),
(47, 4, 'Отзывы', 'reviews', '_self', NULL, '#000000', NULL, 13, '2022-04-15 06:27:17', '2022-04-15 06:27:17', NULL, ''),
(48, 4, 'Частые вопросы', 'faqs', '_self', NULL, '#000000', NULL, 14, '2022-04-15 06:27:59', '2022-04-15 06:27:59', NULL, ''),
(49, 4, 'Контакты', 'contacts', '_self', NULL, '#000000', NULL, 15, '2022-04-15 06:28:32', '2022-04-15 06:28:32', NULL, ''),
(50, 5, 'Средств компьютерных технологий', '/services/ekspertiza-sredstv-kompyuternyh-tehnologij', '_self', NULL, '#000000', NULL, 16, '2022-04-15 06:32:52', '2022-04-15 06:32:52', NULL, ''),
(51, 5, 'Хозяйственных операций в рамках экономики ', '/services/ekspertiza-hozyajstvennyh-operacij-v-ramkah-ekonomiki', '_self', NULL, '#000000', NULL, 17, '2022-04-15 06:33:28', '2022-04-15 06:33:28', NULL, ''),
(52, 5, 'Почерка и подписи', '/services/ekspertiza-pocherka-i-podpisi', '_self', NULL, '#000000', NULL, 18, '2022-04-15 06:33:43', '2022-04-15 06:33:43', NULL, ''),
(53, 5, 'Финансово-бюджетная ', '/services/finansovo-byudzhetnaya-ekspertiza', '_self', NULL, '#000000', NULL, 19, '2022-04-15 06:33:59', '2022-04-15 06:33:59', NULL, ''),
(54, 5, 'Религиоведческая ', '/services/religiovedcheskaya-ekspertiza', '_self', NULL, '#000000', NULL, 20, '2022-04-15 06:34:13', '2022-04-15 06:34:13', NULL, ''),
(55, 5, 'Религиоведческо-политологическая', '/services/religiovedchesko-politologicheskaya-ekspertiza', '_self', NULL, '#000000', NULL, 21, '2022-04-15 06:34:25', '2022-04-15 06:34:25', NULL, ''),
(56, 5, 'Психологическая ', '/services/psihologicheskaya-ekspertiza', '_self', NULL, '#000000', NULL, 22, '2022-04-15 06:34:46', '2022-04-15 06:34:46', NULL, ''),
(57, 5, 'Психолого-криминалистическая ', '/services/psihologo-kriminalisticheskaya-ekspertiza', '_self', NULL, '#000000', NULL, 23, '2022-04-15 06:35:03', '2022-04-15 06:35:03', NULL, ''),
(58, 5, 'Бухгалтерская ', '/services/buhgalterskaya-ekspertiza', '_self', NULL, '#000000', NULL, 24, '2022-04-15 06:35:19', '2022-04-15 06:35:19', NULL, ''),
(59, 5, 'Автороведческая ', '/services/avtorovedcheskaya-ekspertiza', '_self', NULL, '#000000', NULL, 25, '2022-04-15 06:35:32', '2022-04-15 06:35:32', NULL, ''),
(60, 5, 'Психолого-филологическая', '/services/psihologo-filologicheskaya-ekspertiza', '_self', NULL, '#000000', NULL, 26, '2022-04-15 06:35:45', '2022-04-15 06:35:45', NULL, ''),
(61, 1, 'Баннеры', '', '_self', 'voyager-character', NULL, 62, 1, '2022-04-15 10:22:58', '2022-04-15 10:24:21', 'voyager.banners.index', NULL),
(62, 1, 'Главная стр.', '', '_self', 'voyager-home', '#000000', NULL, 2, '2022-04-15 10:23:56', '2022-04-15 10:24:43', NULL, ''),
(63, 1, 'Блок О нас', '', '_self', 'voyager-company', NULL, 62, 2, '2022-04-15 10:34:47', '2022-04-15 10:35:13', 'voyager.block-abouts.index', NULL),
(64, 2, 'Отзывы', 'reviews', '_self', NULL, '#000000', 17, 3, '2022-04-19 07:06:37', '2022-04-19 12:04:54', NULL, ''),
(65, 2, 'Сотрудничество', 'about/partnership', '_self', NULL, '#000000', 17, 2, '2022-04-19 07:07:17', '2022-04-19 12:04:54', NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(29, '2022_04_11_142754_create_contacts_table', 3),
(30, '2022_04_12_114116_create_f_a_q_s_table', 4),
(31, '2022_04_12_121510_create_reviews_table', 5),
(32, '2022_04_13_090028_create_consultations_table', 6),
(33, '2022_04_13_111208_create_service_table', 7),
(34, '2022_04_13_150857_create_act_table', 8),
(35, '2022_04_14_153510_create_personals_table', 9),
(36, '2022_04_14_155730_create_icons_table', 10),
(37, '2022_04_14_173735_create_about_table', 11),
(38, '2022_04_15_102152_create_about_contents_table', 12),
(39, '2022_04_15_113035_add_icon_main_page_to_service_table', 13),
(40, '2022_04_15_161936_create_banners_table', 14),
(41, '2022_04_15_162732_create_block_abouts_table', 15);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `type`, `title`, `excerpt`, `body`, `image`, `slug`, `seo_title`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'home', 'Главная страница', NULL, NULL, NULL, 'home', 'Главная страница', 'Главная страница', 'Главная страница', 'ACTIVE', '2022-04-11 04:13:29', '2022-04-11 04:13:29'),
(2, 1, 'contacts', 'Контакты', NULL, NULL, NULL, 'contacts', 'Контакты', 'Контакты', 'Контакты', 'ACTIVE', '2022-04-11 09:33:04', '2022-04-11 09:33:04'),
(3, 1, 'faq', 'Частые вопросы', NULL, NULL, NULL, 'faq', 'Частые вопросы', 'Частые вопросы', 'Частые вопросы', 'ACTIVE', '2022-04-12 05:48:00', '2022-04-12 11:29:15'),
(4, 1, 'reviews', 'Отзывы', NULL, NULL, NULL, 'reviews', 'Отзывы', 'Отзывы', 'Отзывы', 'ACTIVE', '2022-04-12 06:27:00', '2022-04-12 11:29:51'),
(5, 1, 'services', 'Услуги', NULL, NULL, NULL, 'services', 'Услуги', 'Услуги', 'Услуги', 'ACTIVE', '2022-04-13 05:22:24', '2022-04-13 05:22:24'),
(6, 1, 'acts', 'НПА', NULL, NULL, NULL, 'acts', 'НПА', 'НПА', 'НПА', 'ACTIVE', '2022-04-13 08:47:35', '2022-04-13 08:47:35'),
(7, 1, 'about', 'О нас', NULL, NULL, NULL, 'about', 'О нас', 'О нас', 'О нас', 'ACTIVE', '2022-04-14 09:21:53', '2022-04-14 09:21:53'),
(8, 1, 'policy', 'Политика конфедициальности', NULL, '<p><strong>Настоящее Пользовательское соглашение (далее также &ndash; &laquo;Соглашение&raquo;) регулирует отношения по использованию функций Сайта и общие условия возможного оказания Услуг между Исполнителем (далее также - &laquo;Владелец Сайта&raquo;), с одной стороны, и физическим или юридическим лицом Заказчиком, принявшим условия настоящего Соглашения путём присоединения к настоящему Соглашению в целом и безоговорочно (далее также &ndash; &laquo;Пользователь сайта&raquo;), с другой стороны, далее при совместном упоминании именуемые &laquo;Стороны&raquo;, а по отдельности &ndash; &laquo;Сторона&raquo;.</strong><br /><br />Настоящее Соглашение и отношения Сторон, возникшие из настоящего Соглашения, регулируются законодательством.<br /><br />&nbsp;<br /><br /><strong>Общие положения Пользовательского соглашения</strong><br /><br />В настоящем документе и вытекающих или связанным с ним отношениях Сторон применяются следующие термины и определения:<br /><br />а) Сайт Владельца/ Сайт &mdash; интернет-сайт, размещенные в домене Владельца сайта и его поддоменах.<br /><br />б) Соглашение &mdash; настоящее соглашение со всеми дополнениями и изменениями.<br /><br />в) Администрация/представитель Сайта, Владельца Сайта &ndash; лицо уполномоченное Владельцем сайта на действия предусмотренные Соглашением.<br /><br />г) Посетитель - любое лицо, которое перешло на Сайт и находится на нем, используя его свойства для ознакомления с контентом размещенным на Сайте.<br /><br />д) Пользователь &mdash; дееспособное физическое лицо, присоединившееся к настоящему Соглашению в собственном интересе либо выступающее от имени и в интересах представляемого им юридического лица.<br /><br />Любой посетитель Сайта по собственной воле может заполнить предоставленную для этого форму и стать Пользователем.<br /><br />Сайт содержит информацию и материалы о товарах и услугах, которые в последующем могут быть предоставлены Пользователю в случае заключения реального Договора. Если какое-то физическое лицо зарегистрировалось в качестве Пользователя от имени уполномочившего его на то юридического лица, это означает, что юридическое лицо принимает Соглашение в полном объеме с последующими из этого последствиями.<br /><br />В частности, при использовании Сайта, Пользователь не вправе выдавать себя за другого человека или представителя организации и/или сообщества без достаточных на то прав, в том числе за сотрудников Сайта, а также применять любые другие формы и способы незаконного представительства других лиц в сети Интернет, а также вводить Пользователей, Сайт и его представителей в заблуждение относительно свойств и характеристик каких- либо субъектов или объектов.<br /><br />В случае обнаружения нарушения прав и/или интересов в связи с использованием Сайта, в том числе иным Пользователем, следует сообщить об этом Владельцу сайта, путем направления письменного уведомления, сообщения по телефону с подробным изложением обстоятельств нарушения и/или гипертекстовой ссылкой на страницу, содержащую материалы, которыми нарушаются соответствующие права и/или интересы Сайта.<br /><br />&nbsp;<br /><br /><strong>Интеллектуальные права</strong><br /><br />Все объекты, доступные при помощи Сайта, в том числе элементы дизайна, текст, графические изображения, иллюстрации, видео, компьютерные программы, базы данных, музыка, звуки и другие объекты, размещенные в рамках Сайта, являются объектами исключительных прав Сайта и других правообладателей. Сайт предоставляет Пользователю право его функционального использования в пределах его общих функциональных возможностей.<br /><br />Использование Сайта иными способами, в том числе путем копирования (воспроизведения) размещенного на Сайте Контента, а также входящих в состав Сайта элементов дизайна, компьютерных программ и баз данных, их декомпиляция, модификация, и последующее распространение, публичный показ, доведение до всеобщего сведения, строго запрещены, если иное не предусмотрено настоящим Соглашением и заключенными Договорами.<br /><br />Пользователь не вправе воспроизводить, повторять и копировать, продавать, а также использовать для каких-либо коммерческих целей какие-либо части Сайта (включая Контент, доступный Пользователю посредством Приложений), или доступ к ним, кроме тех случаев, когда Пользователь получил такое разрешение от Сайта/Владельцев Сайта, либо когда это прямо предусмотрено дополнительными документами (Договорами, Приложениями и т.п.).<br /><br />Использование Пользователем Сайта, а также размещенного в нем Контента для личного некоммерческого использования допускается при условии соблюдения всех законов охраны авторского права, смежных прав, товарных знаков, других уведомлений об авторстве, сохранения имени (или псевдонима) автора/наименования правообладателя в неизменном виде, сохранении соответствующего объекта в неизменном виде. Исключение составляют случаи, прямо предусмотренные законодательством, регулирующее общую защиту данных или дополнительными документами на использование Сайта.<br /><br />Сайт может содержать ссылки на сайты в сети Интернет (сайты третьих лиц). Указанные третьи лица и их контент не проверяются Сайтом на соответствие тем или иным требованиям (достоверности, полноты и т.п.). Сайт не несет ответственности за любую информацию, материалы, размещенные на сайтах третьих лиц, к которым Пользователь получает доступ в связи с использованием Сайта, а также за доступность таких сайтов или информации и последствия их использования Пользователем.<br /><br />Ссылка (в любой форме) на любой сайт, продукт, услугу, любую информацию коммерческого или некоммерческого характера, размещенная на Сайте, не является одобрением или рекомендацией данных продуктов (услуг, деятельности) со стороны Сайта, за исключением случаев, когда Сайт на это прямо указывает.<br /><br />&nbsp;<br /><br /><strong>Уведомления</strong><br /><br />Владелец Сайта/Администрация/Представитель сайта и лица, представителями которых является Сайт, вправе посылать Пользователю на указанный им электронный адрес, телефон, ссылку на страничку в социальных сетях информационные электронные сообщения о событиях, происходящих в рамках Сайта или в связи с ним и лиц которых он представляет.<br /><br />&nbsp;<br /><br /><strong>Заключительные положения</strong><br /><br />Данное Соглашение регулируется и толкуется в соответствии с действующим законодательством, регулирующее общую защиту данных . Вопросы, не урегулированные настоящим Соглашением, подлежат разрешению в соответствии с законодательством. Все возможные споры, вытекающие из отношений, регулируемые настоящим Соглашением, разрешаются в порядке, установленном действующим законодательством.<br /><br />Если по тем или иным причинам одно или несколько положений настоящего Соглашения будут признаны недействительными или не имеющими юридической силы, это не означает что остальные положения Соглашения являются не действительными или не применимыми.<br /><br />Временное бездействие со стороны Сайта в случае нарушения Пользователем либо иными Пользователями положений Соглашений не лишает Сайт права предпринять соответствующие действия в защиту своих интересов позднее, а также не означает, что Сайт отказался от своих прав в случае совершения в последующем подобных либо сходных нарушений.<br /><br />Все споры по Соглашению или в связи с ним подлежат рассмотрению в суде по месту нахождения Сайта в соответствии с действующим законодательством.<br /><br />Данное ПОЛЬЗОВАТЕЛЬСКОЕ СОГЛАШЕНИЕ разработано и действует в рамках действующего Законодательства о защите физических лиц в отношении обработки персональных данных и о свободном перемещении таких данных.<br /><br />&nbsp;<br /><br /><strong>Политика конфиденциальности</strong><br /><br />Настоящая Политика является неотъемлемой частью Пользовательского соглашения (далее &mdash; &laquo;Соглашение&raquo;), размещенного и/или доступного в сети Интернет на домене Сайта, а также иных заключенных с Пользователем договоров, или договоров которые могут быть заключены с Пользователем.<br /><br />Пользуясь услугами Сайта, Пользователь выражает свое согласие с Политикой конфиденциальности персональных данных сайта (далее - Политикой Конфиденциальности), и по своей воле и в своих интересах дает письменное согласие на следующие способы обработки Персональной информации: сбор, запись, систематизация, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (распространение, предоставление, доступ), обезличивание, блокирование, удаление, уничтожение в установленных настоящей Политикой целях с использованием средств автоматизации или без использования таких средств по усмотрению. В случае несогласия с условиями Политики конфиденциальности Клиент/Пользователь не должен передавать персональные данные путем заполнения соответствующих форм.<br /><br />Политика конфиденциальности действует в отношении всей персональной информации, которую Сайт, может получить о Клиенте/Пользователе во время использования сайта, программ и продуктов сайта.<br /><br />&nbsp;<br /><br /><strong>Цели сбора персональной информации пользователя</strong><br /><br />Сайта может использовать персональные данные Клиента/Пользователя в целях:<br /><br />Идентификации Пользователя, зарегистрированного на Сайте.<br />Предоставления Пользователю доступа к ресурсам Сайта и партнеров Сайта.<br />Установления с Пользователем обратной связи, включая телефонный звонок, направление уведомлений, запросов, касающихся использования Сайта, оказания услуг, обработка запросов и заявок от Пользователя, направления рекламной и другой информации об акциях и других услугах Сайта.<br />Определения места нахождения Пользователя для обеспечения безопасности, предотвращения мошенничества.<br />Подтверждения достоверности и полноты персональных данных, предоставленных Пользователем.<br />Предоставления Пользователю эффективной клиентской и технической поддержки при возникновении проблем связанных с использованием Сайта.<br />Предоставления Пользователю обновлений услуг, специальных предложений, информации о ценах, новостной рассылки и иных сведений от имени Сайта или от имени партнеров Сайта.<br />Осуществления рекламной деятельности Сайта.<br />Предоставления доступа Пользователю на сайты или сервисы партнеров Сайта с целью получения продуктов, обновлений и услуг.<br /><br />&nbsp;<br /><br /><strong>Собираемая информация (Персональная информация)</strong><br /><br />Мы собираем следующую информацию:<br /><br />Техническая информация, автоматически собираемая программным обеспечением Сайта во время его посещения.<br />Персональная информация, предоставляемая Вами при заполнении соответствующей формы или информация получаемая Сайтом с использованием Пользователем социальных сетей.<br />Иная информация предоставляется пользователем на его усмотрение.<br /><br />&nbsp;<br /><br /><strong>Техническая информация</strong><br /><br />Во время посещения вами Сайта, администрации Сайта автоматически становится доступной информация из стандартных журналов регистрации сервера (server logs). Сюда включается IP-адрес Вашего компьютера (или прокси-сервера, если он используется для выхода в Интернет), имя Интернет-провайдера, имя домена, тип браузера и операционной системы, информация о сайте/странице в социальных сетях, с которого Вы совершили переход на Сайт, страницах Сайта, которые Вы посещаете, дате и времени этих посещений, файлах, Cookie. Это информация анализируется нами в агрегированном (обезличенном) виде для анализа посещаемости Сайта, и используется при разработке предложений по его улучшению и развитию. Связь между Вашим IP-адресом и Вашей персональной информацией никогда не раскрывается третьим лицам, за исключением тех случаев, когда это на это получено согласие и /или требует законодательство.<br /><br />Техническую информацию о посещении Сайта (обезличенную) также собирают установленные на сайте счетчики статистики.<br /><br />&nbsp;<br /><br /><strong>Лично предоставленная информация</strong><br /><br />В целях заключения Договоров Пользователь также может предоставить следующие персональные данные о себе или об организации и её представителях в интересах которой он действует: имя, отчество, фамилия, должность, телефонный номер, дополнительно могут предоставляться наименование, корпоративные регистрационные данные (код предприятия, налоговый номер, адрес регистрации и почтовый адрес такой организации, корпоративный телефонный номер, расчетный счет, наименование обслуживающего банка, и корреспондентский счет и т.п.).Указанные сведения об организации не относятся к персональным данным.<br /><br />&nbsp;<br /><br /><strong>Обязательства сторон</strong><br /><br />Пользователь обязан:<br /><br />Предоставить информацию о персональных данных, необходимую для пользования Сайтом в рамках Пользовательского соглашения или заключения Договора.<br /><br />В случае заключения Договора с Владельцем Сайта обновить, дополнить предоставленную информацию о персональных данных в случае изменения данной информации. Администрация/представитель Сайта / Владелец сайта обязан:<br /><br />Использовать полученную информацию исключительно для целей, указанных в настоящей Политики конфиденциальности.<br /><br />Обеспечить хранение конфиденциальной информации, не разглашать без предварительного разрешения Пользователя, а также не осуществлять продажу, обмен, опубликование, либо разглашение иными возможными способами переданных персональных данных Пользователя. Персональные данные Пользователя могут храниться в сроки и/или быть переданы уполномоченным органам государственной власти только по основаниям и в порядке, установленным законодательством.<br /><br />Принимать меры предосторожности для защиты конфиденциальности персональных данных Пользователя согласно порядку, обычно используемого для защиты такого рода информации в существующем деловом обороте.<br /><br />Осуществить уничтожение или блокирование персональных данных, относящихся к соответствующему Пользователю, с момента обращения или запроса Пользователя или его законного представителя либо уполномоченного органа по защите прав субъектов персональных данных на период проверки, в случае выявления недостоверных персональных данных или неправомерных действий.<br /><br />&nbsp;<br /><br /><strong>Защита собираемой информации.</strong><br /><br />Сайт принимает все необходимые и достаточно организационные, технические меры предосторожности для защиты конфиденциальности данных Пользователей.Только те сотрудники Сайта, которым необходимо выполнять рабочие функции, для которых требуется доступ к персональным данным, имеют доступ к информации о Пользователях.<br /><br />Пользователь признает, что в случае халатного отношения самим Пользователем к безопасному хранению персональных данных дающим доступ к ним, третьи лица могут получить несанкционированный доступ к ним. Сайт не несет ответственность за убытки причиненные таким доступом. Мы рекомендуем Пользователям использовать сложные пароли, состоящие из цифр и букв.<br /><br />&nbsp;<br /><br /><strong>Дополнительные условия</strong><br /><br />Администрация/представитель Сайта / Владелец сайта вправе вносить изменения в настоящую Политику конфиденциальности без согласия и без уведомления Пользователя. Пользователь берет на себя ответственность за ознакомление с обновленной версией Политики Конфиденциальности, в соответствии с которой регулируются правила пользования Сайтом. Изменения в Политику конфиденциальности вступает в силу с момента ее размещения на Сайте, если иное не предусмотрено новой редакцией Политики конфиденциальности.<br /><br />Действующая редакция Политики находится на Сайте Исполнителя и его поддоменах в сети Интернет.<br /><br />Данная ПОЛИТИКА КОНФИДЕНЦИАЛЬНОСТИ разработана и действует в рамках действующего Законодательства ЕС о защите физических лиц в отношении обработки персональных данных и о свободном перемещении таких данных.</p>', NULL, 'policy', 'Политика конфедициальности', 'Политика конфедициальности', 'Политика конфедициальности', 'ACTIVE', '2022-04-15 03:57:00', '2022-04-15 04:01:26');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(2, 'browse_bread', NULL, '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(3, 'browse_database', NULL, '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(4, 'browse_media', NULL, '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(5, 'browse_compass', NULL, '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(6, 'browse_menus', 'menus', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(7, 'read_menus', 'menus', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(8, 'edit_menus', 'menus', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(9, 'add_menus', 'menus', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(10, 'delete_menus', 'menus', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(11, 'browse_roles', 'roles', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(12, 'read_roles', 'roles', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(13, 'edit_roles', 'roles', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(14, 'add_roles', 'roles', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(15, 'delete_roles', 'roles', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(16, 'browse_users', 'users', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(17, 'read_users', 'users', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(18, 'edit_users', 'users', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(19, 'add_users', 'users', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(20, 'delete_users', 'users', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(21, 'browse_settings', 'settings', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(22, 'read_settings', 'settings', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(23, 'edit_settings', 'settings', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(24, 'add_settings', 'settings', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(25, 'delete_settings', 'settings', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(26, 'browse_categories', 'categories', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(27, 'read_categories', 'categories', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(28, 'edit_categories', 'categories', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(29, 'add_categories', 'categories', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(30, 'delete_categories', 'categories', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(31, 'browse_posts', 'posts', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(32, 'read_posts', 'posts', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(33, 'edit_posts', 'posts', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(34, 'add_posts', 'posts', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(35, 'delete_posts', 'posts', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(36, 'browse_pages', 'pages', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(37, 'read_pages', 'pages', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(38, 'edit_pages', 'pages', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(39, 'add_pages', 'pages', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(40, 'delete_pages', 'pages', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(41, 'browse_contacts', 'contacts', '2022-04-11 08:34:15', '2022-04-11 08:34:15'),
(42, 'read_contacts', 'contacts', '2022-04-11 08:34:15', '2022-04-11 08:34:15'),
(43, 'edit_contacts', 'contacts', '2022-04-11 08:34:15', '2022-04-11 08:34:15'),
(44, 'add_contacts', 'contacts', '2022-04-11 08:34:15', '2022-04-11 08:34:15'),
(45, 'delete_contacts', 'contacts', '2022-04-11 08:34:15', '2022-04-11 08:34:15'),
(46, 'browse_f_a_q_s', 'f_a_q_s', '2022-04-12 05:45:37', '2022-04-12 05:45:37'),
(47, 'read_f_a_q_s', 'f_a_q_s', '2022-04-12 05:45:37', '2022-04-12 05:45:37'),
(48, 'edit_f_a_q_s', 'f_a_q_s', '2022-04-12 05:45:37', '2022-04-12 05:45:37'),
(49, 'add_f_a_q_s', 'f_a_q_s', '2022-04-12 05:45:37', '2022-04-12 05:45:37'),
(50, 'delete_f_a_q_s', 'f_a_q_s', '2022-04-12 05:45:37', '2022-04-12 05:45:37'),
(51, 'browse_reviews', 'reviews', '2022-04-12 06:20:58', '2022-04-12 06:20:58'),
(52, 'read_reviews', 'reviews', '2022-04-12 06:20:58', '2022-04-12 06:20:58'),
(53, 'edit_reviews', 'reviews', '2022-04-12 06:20:58', '2022-04-12 06:20:58'),
(54, 'add_reviews', 'reviews', '2022-04-12 06:20:58', '2022-04-12 06:20:58'),
(55, 'delete_reviews', 'reviews', '2022-04-12 06:20:58', '2022-04-12 06:20:58'),
(56, 'browse_consultations', 'consultations', '2022-04-13 03:03:50', '2022-04-13 03:03:50'),
(57, 'read_consultations', 'consultations', '2022-04-13 03:03:50', '2022-04-13 03:03:50'),
(58, 'edit_consultations', 'consultations', '2022-04-13 03:03:50', '2022-04-13 03:03:50'),
(59, 'add_consultations', 'consultations', '2022-04-13 03:03:50', '2022-04-13 03:03:50'),
(60, 'delete_consultations', 'consultations', '2022-04-13 03:03:50', '2022-04-13 03:03:50'),
(61, 'browse_service', 'service', '2022-04-13 05:19:22', '2022-04-13 05:19:22'),
(62, 'read_service', 'service', '2022-04-13 05:19:22', '2022-04-13 05:19:22'),
(63, 'edit_service', 'service', '2022-04-13 05:19:22', '2022-04-13 05:19:22'),
(64, 'add_service', 'service', '2022-04-13 05:19:22', '2022-04-13 05:19:22'),
(65, 'delete_service', 'service', '2022-04-13 05:19:22', '2022-04-13 05:19:22'),
(66, 'browse_act', 'act', '2022-04-13 09:15:35', '2022-04-13 09:15:35'),
(67, 'read_act', 'act', '2022-04-13 09:15:35', '2022-04-13 09:15:35'),
(68, 'edit_act', 'act', '2022-04-13 09:15:35', '2022-04-13 09:15:35'),
(69, 'add_act', 'act', '2022-04-13 09:15:35', '2022-04-13 09:15:35'),
(70, 'delete_act', 'act', '2022-04-13 09:15:35', '2022-04-13 09:15:35'),
(71, 'browse_personals', 'personals', '2022-04-14 09:39:51', '2022-04-14 09:39:51'),
(72, 'read_personals', 'personals', '2022-04-14 09:39:51', '2022-04-14 09:39:51'),
(73, 'edit_personals', 'personals', '2022-04-14 09:39:51', '2022-04-14 09:39:51'),
(74, 'add_personals', 'personals', '2022-04-14 09:39:51', '2022-04-14 09:39:51'),
(75, 'delete_personals', 'personals', '2022-04-14 09:39:51', '2022-04-14 09:39:51'),
(76, 'browse_icons', 'icons', '2022-04-14 10:20:46', '2022-04-14 10:20:46'),
(77, 'read_icons', 'icons', '2022-04-14 10:20:46', '2022-04-14 10:20:46'),
(78, 'edit_icons', 'icons', '2022-04-14 10:20:46', '2022-04-14 10:20:46'),
(79, 'add_icons', 'icons', '2022-04-14 10:20:46', '2022-04-14 10:20:46'),
(80, 'delete_icons', 'icons', '2022-04-14 10:20:46', '2022-04-14 10:20:46'),
(81, 'browse_about', 'about', '2022-04-14 11:42:41', '2022-04-14 11:42:41'),
(82, 'read_about', 'about', '2022-04-14 11:42:41', '2022-04-14 11:42:41'),
(83, 'edit_about', 'about', '2022-04-14 11:42:41', '2022-04-14 11:42:41'),
(84, 'add_about', 'about', '2022-04-14 11:42:41', '2022-04-14 11:42:41'),
(85, 'delete_about', 'about', '2022-04-14 11:42:41', '2022-04-14 11:42:41'),
(86, 'browse_about_contents', 'about_contents', '2022-04-15 04:25:14', '2022-04-15 04:25:14'),
(87, 'read_about_contents', 'about_contents', '2022-04-15 04:25:14', '2022-04-15 04:25:14'),
(88, 'edit_about_contents', 'about_contents', '2022-04-15 04:25:14', '2022-04-15 04:25:14'),
(89, 'add_about_contents', 'about_contents', '2022-04-15 04:25:14', '2022-04-15 04:25:14'),
(90, 'delete_about_contents', 'about_contents', '2022-04-15 04:25:14', '2022-04-15 04:25:14'),
(91, 'browse_banners', 'banners', '2022-04-15 10:22:58', '2022-04-15 10:22:58'),
(92, 'read_banners', 'banners', '2022-04-15 10:22:58', '2022-04-15 10:22:58'),
(93, 'edit_banners', 'banners', '2022-04-15 10:22:58', '2022-04-15 10:22:58'),
(94, 'add_banners', 'banners', '2022-04-15 10:22:58', '2022-04-15 10:22:58'),
(95, 'delete_banners', 'banners', '2022-04-15 10:22:58', '2022-04-15 10:22:58'),
(96, 'browse_block_abouts', 'block_abouts', '2022-04-15 10:34:47', '2022-04-15 10:34:47'),
(97, 'read_block_abouts', 'block_abouts', '2022-04-15 10:34:47', '2022-04-15 10:34:47'),
(98, 'edit_block_abouts', 'block_abouts', '2022-04-15 10:34:47', '2022-04-15 10:34:47'),
(99, 'add_block_abouts', 'block_abouts', '2022-04-15 10:34:47', '2022-04-15 10:34:47'),
(100, 'delete_block_abouts', 'block_abouts', '2022-04-15 10:34:47', '2022-04-15 10:34:47');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `personals`
--

CREATE TABLE `personals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-04-10 21:58:36', '2022-04-10 21:58:36');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `image`, `name`, `email`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'reviews\\April2022\\BPvngnVEED3jwfSzvAcG.jpg', 'Иван Иванов', NULL, '<p>В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов.</p>', 1, '2022-04-15 10:50:38', '2022-04-15 10:50:38'),
(2, 'reviews\\April2022\\PNH013c4jXplsSD4BWvi.jpg', 'Иван Иванов', NULL, '<p>В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов.</p>', 1, '2022-04-15 10:51:03', '2022-04-15 10:51:03'),
(3, 'reviews\\April2022\\ndCornhFRmkgt7BXmi4q.jpg', 'Иван Иванов', NULL, '<p>В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов.</p>', 1, '2022-04-15 10:51:20', '2022-04-15 10:51:20');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(2, 'user', 'Normal User', '2022-04-10 21:58:36', '2022-04-10 21:58:36');

-- --------------------------------------------------------

--
-- Структура таблицы `service`
--

CREATE TABLE `service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sort_id` int(11) DEFAULT 0,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon_main_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_main_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `service`
--

INSERT INTO `service` (`id`, `image`, `title`, `excerpt`, `content`, `slug`, `status`, `sort_id`, `seo_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `icon_main_page`, `title_main_page`) VALUES
(1, 'service\\April2022\\owUeOaSuI0qXalp0kFjE.jpg', 'Психолого-филологическая экспертиза', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'psihologo-filologicheskaya-ekspertiza', 1, 0, 'Психолого-филологическая экспертиза', 'Психолого-филологическая экспертиза', 'Психолого-филологическая экспертиза', '2022-04-13 05:42:00', '2022-04-15 05:40:18', 'service\\April2022\\vdDB49FNBoFDX53rrpc6.svg', 'Психолого-филологическая'),
(2, 'service\\April2022\\VeC8Vgk2JnhS8jJ7PNdS.jpg', 'Автороведческая экспертиза', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'avtorovedcheskaya-ekspertiza', 1, 0, 'Автороведческая экспертиза', 'Автороведческая экспертиза', 'Автороведческая экспертиза', '2022-04-13 05:43:00', '2022-04-15 05:39:46', 'service\\April2022\\GizZwzfJI6bxCoSNy50m.svg', 'Автороведческая'),
(3, 'service\\April2022\\q8XrCENHdMmEGAZgqgXN.jpg', 'Бухгалтерская экспертиза', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'buhgalterskaya-ekspertiza', 1, 0, 'Бухгалтерская экспертиза', 'Бухгалтерская экспертиза', 'Бухгалтерская экспертиза', '2022-04-13 05:50:00', '2022-04-15 05:39:26', 'service\\April2022\\RHxtwaoVtEDKmKftzgQa.svg', 'Бухгалтерская'),
(4, 'service\\April2022\\q02GW1eYCPPtxW6wrQek.jpg', 'Психологическая экспертиза', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'psihologicheskaya-ekspertiza', 1, 0, 'Психологическая экспертиза', 'Психологическая экспертиза', 'Психологическая экспертиза', '2022-04-13 06:16:00', '2022-04-15 05:39:05', 'service\\April2022\\d2kdzDrik6jAFKSfsxXR.svg', 'Психологическая'),
(5, 'service\\April2022\\5zLcNdvMX4tdJmokjA7X.jpg', 'Психолого-криминалистическая экспертиза', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'psihologo-kriminalisticheskaya-ekspertiza', 1, 0, 'Психолого-криминалистическая экспертиза', 'Психолого-криминалистическая экспертиза', 'Психолого-криминалистическая экспертиза', '2022-04-13 06:16:00', '2022-04-15 05:38:26', 'service\\April2022\\hICR16kukrdZZpE1xskE.svg', 'Психолого-криминалистическая'),
(7, 'service\\April2022\\OHk4x2pjckHwAlf2a36c.jpg', 'Религиоведческая экспертиза', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'religiovedcheskaya-ekspertiza', 1, 0, 'Религиоведческая экспертиза', 'Религиоведческая экспертиза', 'Религиоведческая экспертиза', '2022-04-13 06:19:00', '2022-04-15 05:37:39', 'service\\April2022\\0tjAPrXjCs5f1JegzjPZ.svg', 'Религиоведческая'),
(8, 'service\\April2022\\6hNTxsWgtAhdOiNfIhjk.jpg', 'Религиоведческо-политологическая экспертиза', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'religiovedchesko-politologicheskaya-ekspertiza', 1, 0, 'Религиоведческо-политологическая экспертиза', 'Религиоведческо-политологическая экспертиза', 'Религиоведческо-политологическая экспертиза', '2022-04-13 06:19:00', '2022-04-15 05:36:51', 'service\\April2022\\nAIQAU9g9TwD6UnpDo5y.svg', 'Религиоведческо-политологическая'),
(9, 'service\\April2022\\LyP4NPctPW1I7xMVtgEB.jpg', 'Финансово-бюджетная экспертиза', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'finansovo-byudzhetnaya-ekspertiza', 1, 0, 'Финансово-бюджетная экспертиза', 'Финансово-бюджетная экспертиза', 'Финансово-бюджетная экспертиза', '2022-04-13 06:20:00', '2022-04-15 05:36:24', 'service\\April2022\\AYE2zo9Fsm0caWR4NHlF.svg', 'Финансово-бюджетная экспертиза'),
(10, 'service\\April2022\\RVeXcOrfAeEIC0UmlXuc.jpg', 'Экспертиза Почерка и подписи', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'ekspertiza-pocherka-i-podpisi', 1, 0, 'Экспертиза Почерка и подписи', 'Экспертиза Почерка и подписи', 'Экспертиза Почерка и подписи', '2022-04-13 06:38:00', '2022-04-15 05:35:49', 'service\\April2022\\zROPvsGx0QiwF4Su6JTC.svg', 'Почерка и подписи'),
(11, 'service\\April2022\\vpleZMXWtdlMvI83RDQq.jpg', 'Экспертиза Средств компьютерных технологий', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'ekspertiza-sredstv-kompyuternyh-tehnologij', 1, 0, 'Экспертиза Средств компьютерных технологий', 'Экспертиза Средств компьютерных технологий', 'Экспертиза Средств компьютерных технологий', '2022-04-13 06:39:00', '2022-04-15 05:35:14', 'service\\April2022\\TWf5FU5T10Zp8fhU1mt2.svg', 'Средств компьютерных технологий'),
(12, 'service\\April2022\\GIJNycZfPneeDufrtiIf.jpg', 'Экспертиза Хозяйственных операций в рамках экономики ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'ekspertiza-hozyajstvennyh-operacij-v-ramkah-ekonomiki', 1, 0, 'Экспертиза Хозяйственных операций в рамках экономики ', 'Экспертиза Хозяйственных операций в рамках экономики ', 'Экспертиза Хозяйственных операций в рамках экономики ', '2022-04-13 06:39:00', '2022-04-15 05:34:38', 'service\\April2022\\qbBKQdBlHwFmg16bVmfn.svg', 'Хозяйственных операций в рамках экономики');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\April2022\\1m0vhlCFR6GJYqQ7Q1Pg.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'SUDEXPERT', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Судебные эксперты', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\April2022\\khDk14U8Q0ZRBvf1dW5g.svg', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\April2022\\hgCzZyCwCGX4HJzVaHnb.svg', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.favicon', 'Логотип сайта', 'settings\\April2022\\Eh6fEEYhiHHqKr5IILMg.svg', NULL, 'image', 6, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-04-10 21:58:36', '2022-04-10 21:58:36'),
(31, 'data_rows', 'display_name', 44, 'en', 'ID', '2022-04-11 04:11:30', '2022-04-11 04:11:30'),
(32, 'data_rows', 'display_name', 45, 'en', 'Author', '2022-04-11 04:11:30', '2022-04-11 04:11:30'),
(33, 'data_rows', 'display_name', 46, 'en', 'Title', '2022-04-11 04:11:30', '2022-04-11 04:11:30'),
(34, 'data_rows', 'display_name', 47, 'en', 'Excerpt', '2022-04-11 04:11:30', '2022-04-11 04:11:30'),
(35, 'data_rows', 'display_name', 48, 'en', 'Body', '2022-04-11 04:11:30', '2022-04-11 04:11:30'),
(36, 'data_rows', 'display_name', 55, 'en', 'Page Image', '2022-04-11 04:11:30', '2022-04-11 04:11:30'),
(37, 'data_rows', 'display_name', 49, 'en', 'Slug', '2022-04-11 04:11:30', '2022-04-11 04:11:30'),
(38, 'data_rows', 'display_name', 50, 'en', 'Meta Description', '2022-04-11 04:11:30', '2022-04-11 04:11:30'),
(39, 'data_rows', 'display_name', 51, 'en', 'Meta Keywords', '2022-04-11 04:11:30', '2022-04-11 04:11:30'),
(40, 'data_rows', 'display_name', 52, 'en', 'Status', '2022-04-11 04:11:30', '2022-04-11 04:11:30'),
(41, 'data_rows', 'display_name', 53, 'en', 'Created At', '2022-04-11 04:11:30', '2022-04-11 04:11:30'),
(42, 'data_rows', 'display_name', 54, 'en', 'Updated At', '2022-04-11 04:11:30', '2022-04-11 04:11:30'),
(43, 'data_types', 'display_name_singular', 6, 'en', 'Page', '2022-04-11 04:11:30', '2022-04-11 04:11:30'),
(44, 'data_types', 'display_name_plural', 6, 'en', 'Pages', '2022-04-11 04:11:30', '2022-04-11 04:11:30'),
(45, 'pages', 'title', 1, 'kz', 'Басты бет', '2022-04-11 04:13:29', '2022-04-11 04:13:29'),
(46, 'pages', 'title', 1, 'en', 'Home page', '2022-04-11 04:13:29', '2022-04-11 04:13:29'),
(47, 'pages', 'seo_title', 1, 'kz', 'Басты бет', '2022-04-11 04:13:29', '2022-04-11 04:13:29'),
(48, 'pages', 'seo_title', 1, 'en', 'Home page', '2022-04-11 04:13:29', '2022-04-11 04:13:29'),
(49, 'pages', 'meta_description', 1, 'kz', 'Басты бет', '2022-04-11 04:13:29', '2022-04-11 04:13:29'),
(50, 'pages', 'meta_description', 1, 'en', 'Home page', '2022-04-11 04:13:29', '2022-04-11 04:13:29'),
(51, 'pages', 'meta_keywords', 1, 'kz', 'Басты бет', '2022-04-11 04:13:29', '2022-04-11 04:13:29'),
(52, 'pages', 'meta_keywords', 1, 'en', 'Home page', '2022-04-11 04:13:29', '2022-04-11 04:13:29'),
(53, 'menu_items', 'title', 5, 'en', 'Tools', '2022-04-11 04:14:31', '2022-04-11 04:14:31'),
(54, 'menu_items', 'title', 10, 'en', 'Settings', '2022-04-11 04:14:39', '2022-04-11 04:14:39'),
(55, 'menu_items', 'title', 6, 'en', 'Menu Builder', '2022-04-11 04:14:47', '2022-04-11 04:14:47'),
(56, 'menu_items', 'title', 13, 'en', 'Pages', '2022-04-11 04:14:56', '2022-04-11 04:14:56'),
(57, 'menu_items', 'title', 1, 'en', 'Dashboard', '2022-04-11 04:15:04', '2022-04-11 04:15:04'),
(58, 'data_rows', 'display_name', 44, 'kz', 'ID', '2022-04-11 09:30:56', '2022-04-11 09:30:56'),
(59, 'data_rows', 'display_name', 45, 'kz', 'Author', '2022-04-11 09:30:56', '2022-04-11 09:30:56'),
(60, 'data_rows', 'display_name', 56, 'en', 'Тип страницы ', '2022-04-11 09:30:56', '2022-04-11 09:30:56'),
(61, 'data_rows', 'display_name', 46, 'kz', 'Title', '2022-04-11 09:30:56', '2022-04-11 09:30:56'),
(62, 'data_rows', 'display_name', 47, 'kz', 'Excerpt', '2022-04-11 09:30:56', '2022-04-11 09:30:56'),
(63, 'data_rows', 'display_name', 48, 'kz', 'Body', '2022-04-11 09:30:56', '2022-04-11 09:30:56'),
(64, 'data_rows', 'display_name', 55, 'kz', 'Page Image', '2022-04-11 09:30:56', '2022-04-11 09:30:56'),
(65, 'data_rows', 'display_name', 49, 'kz', 'Slug', '2022-04-11 09:30:56', '2022-04-11 09:30:56'),
(66, 'data_rows', 'display_name', 57, 'en', 'SEO Заголовок', '2022-04-11 09:30:56', '2022-04-11 09:30:56'),
(67, 'data_rows', 'display_name', 50, 'kz', 'Meta Description', '2022-04-11 09:30:56', '2022-04-11 09:30:56'),
(68, 'data_rows', 'display_name', 51, 'kz', 'Meta Keywords', '2022-04-11 09:30:56', '2022-04-11 09:30:56'),
(69, 'data_rows', 'display_name', 52, 'kz', 'Status', '2022-04-11 09:30:56', '2022-04-11 09:30:56'),
(70, 'data_rows', 'display_name', 53, 'kz', 'Created At', '2022-04-11 09:30:56', '2022-04-11 09:30:56'),
(71, 'data_rows', 'display_name', 54, 'kz', 'Updated At', '2022-04-11 09:30:56', '2022-04-11 09:30:56'),
(72, 'data_types', 'display_name_singular', 6, 'kz', 'Page', '2022-04-11 09:30:56', '2022-04-11 09:30:56'),
(73, 'data_types', 'display_name_plural', 6, 'kz', 'Pages', '2022-04-11 09:30:56', '2022-04-11 09:30:56'),
(74, 'pages', 'title', 2, 'kz', 'Байланыстар', '2022-04-11 09:33:04', '2022-04-11 09:33:04'),
(75, 'pages', 'title', 2, 'en', 'Contacts', '2022-04-11 09:33:04', '2022-04-11 09:33:04'),
(76, 'pages', 'seo_title', 2, 'kz', 'Байланыстар', '2022-04-11 09:33:04', '2022-04-11 09:33:04'),
(77, 'pages', 'seo_title', 2, 'en', 'Contacts', '2022-04-11 09:33:04', '2022-04-11 09:33:04'),
(78, 'pages', 'meta_description', 2, 'kz', 'Байланыстар', '2022-04-11 09:33:04', '2022-04-11 09:33:04'),
(79, 'pages', 'meta_description', 2, 'en', 'Contacts', '2022-04-11 09:33:04', '2022-04-11 09:33:04'),
(80, 'pages', 'meta_keywords', 2, 'kz', 'Байланыстар', '2022-04-11 09:33:04', '2022-04-11 09:33:04'),
(81, 'pages', 'meta_keywords', 2, 'en', 'Contacts', '2022-04-11 09:33:04', '2022-04-11 09:33:04'),
(82, 'data_rows', 'display_name', 58, 'en', 'Id', '2022-04-11 09:35:34', '2022-04-11 09:35:34'),
(83, 'data_rows', 'display_name', 59, 'en', 'Главная', '2022-04-11 09:35:34', '2022-04-11 09:35:34'),
(84, 'data_rows', 'display_name', 60, 'en', 'Тип', '2022-04-11 09:35:34', '2022-04-11 09:35:34'),
(85, 'data_rows', 'display_name', 61, 'en', 'Иконка (svg)', '2022-04-11 09:35:34', '2022-04-11 09:35:34'),
(86, 'data_rows', 'display_name', 62, 'en', 'Значение', '2022-04-11 09:35:34', '2022-04-11 09:35:34'),
(87, 'data_rows', 'display_name', 63, 'en', 'Значение c Переводом', '2022-04-11 09:35:34', '2022-04-11 09:35:34'),
(88, 'data_rows', 'display_name', 64, 'en', 'Ссылка', '2022-04-11 09:35:34', '2022-04-11 09:35:34'),
(89, 'data_rows', 'display_name', 65, 'en', 'Статус', '2022-04-11 09:35:34', '2022-04-11 09:35:34'),
(90, 'data_rows', 'display_name', 66, 'en', 'Порядковый номер', '2022-04-11 09:35:34', '2022-04-11 09:35:34'),
(91, 'data_rows', 'display_name', 67, 'en', 'Дата создания', '2022-04-11 09:35:34', '2022-04-11 09:35:34'),
(92, 'data_rows', 'display_name', 68, 'en', 'Updated At', '2022-04-11 09:35:34', '2022-04-11 09:35:34'),
(93, 'data_types', 'display_name_singular', 7, 'en', 'Контакт', '2022-04-11 09:35:34', '2022-04-11 09:35:34'),
(94, 'data_types', 'display_name_plural', 7, 'en', 'Контакты', '2022-04-11 09:35:34', '2022-04-11 09:35:34'),
(95, 'menu_items', 'title', 16, 'en', 'Services', '2022-04-11 10:51:53', '2022-04-11 10:55:40'),
(96, 'menu_items', 'title', 17, 'en', 'About us', '2022-04-11 10:51:58', '2022-04-11 10:56:04'),
(97, 'menu_items', 'title', 16, 'kz', 'Қызметтер', '2022-04-11 10:55:40', '2022-04-11 10:55:40'),
(98, 'menu_items', 'title', 17, 'kz', 'Біз туралы', '2022-04-11 10:56:04', '2022-04-11 10:56:04'),
(99, 'menu_items', 'title', 18, 'kz', 'НПА', '2022-04-11 10:56:27', '2022-04-11 10:56:27'),
(100, 'menu_items', 'title', 18, 'en', 'ACTS', '2022-04-11 10:56:27', '2022-04-11 10:56:27'),
(101, 'menu_items', 'title', 19, 'kz', 'FAQ', '2022-04-11 10:56:36', '2022-04-11 10:56:36'),
(102, 'menu_items', 'title', 19, 'en', 'FAQ', '2022-04-11 10:56:36', '2022-04-11 10:56:36'),
(103, 'menu_items', 'title', 20, 'kz', 'Байланыстар', '2022-04-11 10:56:59', '2022-04-11 10:56:59'),
(104, 'menu_items', 'title', 20, 'en', 'Contacts', '2022-04-11 10:56:59', '2022-04-11 10:56:59'),
(105, 'data_rows', 'display_name', 56, 'kz', 'Тип страницы ', '2022-04-12 05:48:36', '2022-04-12 05:48:36'),
(106, 'data_rows', 'display_name', 57, 'kz', 'SEO Заголовок', '2022-04-12 05:48:36', '2022-04-12 05:48:36'),
(107, 'f_a_q_s', 'question', 4, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s?', '2022-04-12 05:57:13', '2022-04-12 05:57:13'),
(108, 'f_a_q_s', 'answer', 4, 'en', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ea laborum molestias eius culpa dolorum placeat quis autem tempora doloribus, aliquid numquam doloremque quaerat amet, accusamus molestiae assumenda ipsum ipsa architecto.</p>', '2022-04-12 05:57:13', '2022-04-12 05:57:13'),
(109, 'f_a_q_s', 'question', 4, 'kz', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s?', '2022-04-12 05:57:45', '2022-04-12 05:57:45'),
(110, 'f_a_q_s', 'answer', 4, 'kz', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ea laborum molestias eius culpa dolorum placeat quis autem tempora doloribus, aliquid numquam doloremque quaerat amet, accusamus molestiae assumenda ipsum ipsa architecto.</p>', '2022-04-12 05:57:45', '2022-04-12 05:57:45'),
(111, 'pages', 'title', 3, 'kz', 'Жиі қойылатын сұрақтар', '2022-04-12 11:29:15', '2022-04-12 11:29:15'),
(112, 'pages', 'title', 3, 'en', 'Frequent questions', '2022-04-12 11:29:15', '2022-04-12 11:29:15'),
(113, 'pages', 'seo_title', 3, 'kz', 'Жиі қойылатын сұрақтар', '2022-04-12 11:29:15', '2022-04-12 11:29:15'),
(114, 'pages', 'seo_title', 3, 'en', 'Frequent questions', '2022-04-12 11:29:15', '2022-04-12 11:29:15'),
(115, 'pages', 'meta_description', 3, 'kz', 'Жиі қойылатын сұрақтар', '2022-04-12 11:29:15', '2022-04-12 11:29:15'),
(116, 'pages', 'meta_description', 3, 'en', 'Frequent questions', '2022-04-12 11:29:15', '2022-04-12 11:29:15'),
(117, 'pages', 'meta_keywords', 3, 'kz', 'Жиі қойылатын сұрақтар', '2022-04-12 11:29:15', '2022-04-12 11:29:15'),
(118, 'pages', 'meta_keywords', 3, 'en', 'Frequent questions', '2022-04-12 11:29:15', '2022-04-12 11:29:15'),
(119, 'pages', 'title', 4, 'kz', 'Пікірлер', '2022-04-12 11:29:51', '2022-04-12 11:29:51'),
(120, 'pages', 'title', 4, 'en', 'Reviews', '2022-04-12 11:29:51', '2022-04-12 11:29:51'),
(121, 'pages', 'seo_title', 4, 'kz', 'Пікірлер', '2022-04-12 11:29:51', '2022-04-12 11:29:51'),
(122, 'pages', 'seo_title', 4, 'en', 'Reviews', '2022-04-12 11:29:51', '2022-04-12 11:29:51'),
(123, 'pages', 'meta_description', 4, 'kz', 'Пікірлер', '2022-04-12 11:29:51', '2022-04-12 11:29:51'),
(124, 'pages', 'meta_description', 4, 'en', 'Reviews', '2022-04-12 11:29:51', '2022-04-12 11:29:51'),
(125, 'pages', 'meta_keywords', 4, 'kz', 'Пікірлер', '2022-04-12 11:29:51', '2022-04-12 11:29:51'),
(126, 'pages', 'meta_keywords', 4, 'en', 'Reviews', '2022-04-12 11:29:51', '2022-04-12 11:29:51'),
(127, 'data_rows', 'display_name', 82, 'en', 'Id', '2022-04-13 03:06:09', '2022-04-13 03:06:09'),
(128, 'data_rows', 'display_name', 83, 'en', 'Телефон', '2022-04-13 03:06:09', '2022-04-13 03:06:09'),
(129, 'data_rows', 'display_name', 84, 'en', 'Дата создания', '2022-04-13 03:06:09', '2022-04-13 03:06:09'),
(130, 'data_rows', 'display_name', 85, 'en', 'Updated At', '2022-04-13 03:06:09', '2022-04-13 03:06:09'),
(131, 'data_types', 'display_name_singular', 10, 'en', 'Консультация', '2022-04-13 03:06:09', '2022-04-13 03:06:09'),
(132, 'data_types', 'display_name_plural', 10, 'en', 'Консультация', '2022-04-13 03:06:09', '2022-04-13 03:06:09'),
(133, 'pages', 'title', 5, 'kz', 'Қызметтер', '2022-04-13 05:22:24', '2022-04-13 05:22:24'),
(134, 'pages', 'title', 5, 'en', 'Services', '2022-04-13 05:22:24', '2022-04-13 05:22:24'),
(135, 'pages', 'seo_title', 5, 'kz', 'Қызметтер', '2022-04-13 05:22:24', '2022-04-13 05:22:24'),
(136, 'pages', 'seo_title', 5, 'en', 'Services', '2022-04-13 05:22:24', '2022-04-13 05:22:24'),
(137, 'pages', 'meta_description', 5, 'kz', 'Қызметтер', '2022-04-13 05:22:24', '2022-04-13 05:22:24'),
(138, 'pages', 'meta_description', 5, 'en', 'Services', '2022-04-13 05:22:24', '2022-04-13 05:22:24'),
(139, 'pages', 'meta_keywords', 5, 'kz', 'Қызметтер', '2022-04-13 05:22:24', '2022-04-13 05:22:24'),
(140, 'pages', 'meta_keywords', 5, 'en', 'Services', '2022-04-13 05:22:24', '2022-04-13 05:22:24'),
(153, 'pages', 'title', 6, 'kz', 'НПА', '2022-04-13 08:47:35', '2022-04-13 08:47:35'),
(154, 'pages', 'title', 6, 'en', 'Acts', '2022-04-13 08:47:35', '2022-04-13 08:47:35'),
(155, 'pages', 'seo_title', 6, 'kz', 'НПА', '2022-04-13 08:47:35', '2022-04-13 08:47:35'),
(156, 'pages', 'seo_title', 6, 'en', 'Acts', '2022-04-13 08:47:35', '2022-04-13 08:47:35'),
(157, 'pages', 'meta_description', 6, 'kz', 'НПА', '2022-04-13 08:47:35', '2022-04-13 08:47:35'),
(158, 'pages', 'meta_description', 6, 'en', 'Acts', '2022-04-13 08:47:35', '2022-04-13 08:47:35'),
(159, 'pages', 'meta_keywords', 6, 'kz', 'НПА', '2022-04-13 08:47:35', '2022-04-13 08:47:35'),
(160, 'pages', 'meta_keywords', 6, 'en', 'Acts', '2022-04-13 08:47:35', '2022-04-13 08:47:35'),
(161, 'data_rows', 'display_name', 99, 'en', 'Id', '2022-04-13 09:23:37', '2022-04-13 09:23:37'),
(162, 'data_rows', 'display_name', 100, 'en', 'Изображения', '2022-04-13 09:23:37', '2022-04-13 09:23:37'),
(163, 'data_rows', 'display_name', 101, 'en', 'Заголовок', '2022-04-13 09:23:37', '2022-04-13 09:23:37'),
(164, 'data_rows', 'display_name', 102, 'en', 'Краткое описание', '2022-04-13 09:23:37', '2022-04-13 09:23:37'),
(165, 'data_rows', 'display_name', 103, 'en', 'Контент', '2022-04-13 09:23:37', '2022-04-13 09:23:37'),
(166, 'data_rows', 'display_name', 104, 'en', 'Ссылка (Уникальная)', '2022-04-13 09:23:37', '2022-04-13 09:23:37'),
(167, 'data_rows', 'display_name', 105, 'en', 'Статус', '2022-04-13 09:23:37', '2022-04-13 09:23:37'),
(168, 'data_rows', 'display_name', 106, 'en', 'Порядковый номер', '2022-04-13 09:23:37', '2022-04-13 09:23:37'),
(169, 'data_rows', 'display_name', 107, 'en', 'SEO Заголовок', '2022-04-13 09:23:37', '2022-04-13 09:23:37'),
(170, 'data_rows', 'display_name', 108, 'en', 'Meta Описание', '2022-04-13 09:23:37', '2022-04-13 09:23:37'),
(171, 'data_rows', 'display_name', 109, 'en', 'Meta Ключевые слова', '2022-04-13 09:23:37', '2022-04-13 09:23:37'),
(172, 'data_rows', 'display_name', 110, 'en', 'Дата создания', '2022-04-13 09:23:37', '2022-04-13 09:23:37'),
(173, 'data_rows', 'display_name', 111, 'en', 'Updated At', '2022-04-13 09:23:37', '2022-04-13 09:23:37'),
(174, 'data_types', 'display_name_singular', 12, 'en', 'НПА', '2022-04-13 09:23:37', '2022-04-13 09:23:37'),
(175, 'data_types', 'display_name_plural', 12, 'en', 'НПА', '2022-04-13 09:23:37', '2022-04-13 09:23:37'),
(176, 'data_rows', 'display_name', 99, 'kz', 'Id', '2022-04-13 09:25:52', '2022-04-13 09:25:52'),
(177, 'data_rows', 'display_name', 100, 'kz', 'Изображения', '2022-04-13 09:25:52', '2022-04-13 09:25:52'),
(178, 'data_rows', 'display_name', 101, 'kz', 'Заголовок', '2022-04-13 09:25:52', '2022-04-13 09:25:52'),
(179, 'data_rows', 'display_name', 102, 'kz', 'Краткое описание', '2022-04-13 09:25:52', '2022-04-13 09:25:52'),
(180, 'data_rows', 'display_name', 103, 'kz', 'Контент', '2022-04-13 09:25:52', '2022-04-13 09:25:52'),
(181, 'data_rows', 'display_name', 104, 'kz', 'Ссылка (Уникальная)', '2022-04-13 09:25:52', '2022-04-13 09:25:52'),
(182, 'data_rows', 'display_name', 105, 'kz', 'Статус', '2022-04-13 09:25:52', '2022-04-13 09:25:52'),
(183, 'data_rows', 'display_name', 106, 'kz', 'Порядковый номер', '2022-04-13 09:25:52', '2022-04-13 09:25:52'),
(184, 'data_rows', 'display_name', 107, 'kz', 'SEO Заголовок', '2022-04-13 09:25:52', '2022-04-13 09:25:52'),
(185, 'data_rows', 'display_name', 108, 'kz', 'Meta Описание', '2022-04-13 09:25:52', '2022-04-13 09:25:52'),
(186, 'data_rows', 'display_name', 109, 'kz', 'Meta Ключевые слова', '2022-04-13 09:25:52', '2022-04-13 09:25:52'),
(187, 'data_rows', 'display_name', 110, 'kz', 'Дата создания', '2022-04-13 09:25:52', '2022-04-13 09:25:52'),
(188, 'data_rows', 'display_name', 111, 'kz', 'Updated At', '2022-04-13 09:25:52', '2022-04-13 09:25:52'),
(189, 'data_types', 'display_name_singular', 12, 'kz', 'НПА', '2022-04-13 09:25:52', '2022-04-13 09:25:52'),
(190, 'data_types', 'display_name_plural', 12, 'kz', 'НПА', '2022-04-13 09:25:52', '2022-04-13 09:25:52'),
(191, 'act', 'title', 1, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2022-04-13 09:26:03', '2022-04-13 09:26:03'),
(192, 'act', 'content', 1, 'en', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p><img src=\"http://sudexpert.testkz.ru/storage/act/April2022/act-main.jpg\" alt=\"\" /></p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2022-04-13 09:26:03', '2022-04-13 09:26:03'),
(193, 'act', 'seo_title', 1, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2022-04-13 09:26:03', '2022-04-13 09:26:03'),
(194, 'act', 'meta_description', 1, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2022-04-13 09:26:03', '2022-04-13 09:26:03'),
(195, 'act', 'meta_keywords', 1, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2022-04-13 09:26:03', '2022-04-13 09:26:03'),
(196, 'act', 'title', 1, 'kz', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2022-04-13 09:36:08', '2022-04-13 09:36:08'),
(197, 'act', 'content', 1, 'kz', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p><img src=\"http://sudexpert.testkz.ru/storage/act/April2022/act-main.jpg\" alt=\"\" /></p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2022-04-13 09:36:08', '2022-04-13 09:36:08'),
(198, 'act', 'seo_title', 1, 'kz', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2022-04-13 09:36:08', '2022-04-13 09:36:08'),
(199, 'act', 'meta_description', 1, 'kz', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2022-04-13 09:36:08', '2022-04-13 09:36:08'),
(200, 'act', 'meta_keywords', 1, 'kz', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2022-04-13 09:36:08', '2022-04-13 09:36:08'),
(201, 'act', 'title', 2, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry 1', '2022-04-13 09:36:17', '2022-04-13 09:36:17'),
(202, 'act', 'content', 2, 'en', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p><img src=\"http://sudexpert.testkz.ru/storage/act/April2022/act-main.jpg\" alt=\"\" /></p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2022-04-13 09:36:17', '2022-04-13 09:36:17'),
(203, 'act', 'seo_title', 2, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry 1', '2022-04-13 09:36:17', '2022-04-13 09:36:17'),
(204, 'act', 'meta_description', 2, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry 1', '2022-04-13 09:36:17', '2022-04-13 09:36:17'),
(205, 'act', 'meta_keywords', 2, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry 1', '2022-04-13 09:36:17', '2022-04-13 09:36:17'),
(206, 'act', 'title', 2, 'kz', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry 1', '2022-04-13 09:37:07', '2022-04-13 09:37:07'),
(207, 'act', 'content', 2, 'kz', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p><img src=\"http://sudexpert.testkz.ru/storage/act/April2022/act-main.jpg\" alt=\"\" /></p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2022-04-13 09:37:07', '2022-04-13 09:37:07'),
(208, 'act', 'seo_title', 2, 'kz', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry 1', '2022-04-13 09:37:07', '2022-04-13 09:37:07'),
(209, 'act', 'meta_description', 2, 'kz', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry 1', '2022-04-13 09:37:07', '2022-04-13 09:37:07'),
(210, 'act', 'meta_keywords', 2, 'kz', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry 1', '2022-04-13 09:37:07', '2022-04-13 09:37:07'),
(211, 'pages', 'title', 7, 'kz', 'Біз туралы', '2022-04-14 09:21:53', '2022-04-14 09:21:53'),
(212, 'pages', 'title', 7, 'en', 'About', '2022-04-14 09:21:53', '2022-04-14 09:21:53'),
(213, 'pages', 'seo_title', 7, 'kz', 'Біз туралы', '2022-04-14 09:21:53', '2022-04-14 09:21:53'),
(214, 'pages', 'seo_title', 7, 'en', 'About', '2022-04-14 09:21:53', '2022-04-14 09:21:53'),
(215, 'pages', 'meta_description', 7, 'kz', 'Біз туралы', '2022-04-14 09:21:53', '2022-04-14 09:21:53'),
(216, 'pages', 'meta_description', 7, 'en', 'About', '2022-04-14 09:21:53', '2022-04-14 09:21:53'),
(217, 'pages', 'meta_keywords', 7, 'kz', 'Біз туралы', '2022-04-14 09:21:53', '2022-04-14 09:21:53'),
(218, 'pages', 'meta_keywords', 7, 'en', 'About', '2022-04-14 09:21:53', '2022-04-14 09:21:53'),
(219, 'data_rows', 'display_name', 112, 'en', 'Id', '2022-04-14 09:43:39', '2022-04-14 09:43:39'),
(220, 'data_rows', 'display_name', 113, 'en', 'Изображения', '2022-04-14 09:43:39', '2022-04-14 09:43:39'),
(221, 'data_rows', 'display_name', 114, 'en', 'ФИО', '2022-04-14 09:43:39', '2022-04-14 09:43:39'),
(222, 'data_rows', 'display_name', 115, 'en', 'Должность', '2022-04-14 09:43:39', '2022-04-14 09:43:39'),
(223, 'data_rows', 'display_name', 116, 'en', 'Стаж', '2022-04-14 09:43:39', '2022-04-14 09:43:39'),
(224, 'data_rows', 'display_name', 117, 'en', 'Дата создания', '2022-04-14 09:43:39', '2022-04-14 09:43:39'),
(225, 'data_rows', 'display_name', 118, 'en', 'Updated At', '2022-04-14 09:43:39', '2022-04-14 09:43:39'),
(226, 'data_types', 'display_name_singular', 13, 'en', 'Эксперт', '2022-04-14 09:43:39', '2022-04-14 09:43:39'),
(227, 'data_types', 'display_name_plural', 13, 'en', 'Эксперты', '2022-04-14 09:43:39', '2022-04-14 09:43:39'),
(228, 'icons', 'title', 1, 'en', 'Высококвалифицированные специалисты', '2022-04-14 11:07:45', '2022-04-14 11:07:45'),
(229, 'icons', 'title', 1, 'kz', 'Высококвалифицированные специалисты', '2022-04-14 11:07:53', '2022-04-14 11:07:53'),
(230, 'data_types', 'display_name_singular', 15, 'en', 'О нас', '2022-04-14 11:46:11', '2022-04-14 11:46:11'),
(231, 'data_types', 'display_name_plural', 15, 'en', 'О нас', '2022-04-14 11:46:11', '2022-04-14 11:46:11'),
(232, 'data_rows', 'display_name', 124, 'en', 'Id', '2022-04-14 11:46:54', '2022-04-14 11:46:54'),
(233, 'data_rows', 'display_name', 125, 'en', 'Изображения', '2022-04-14 11:46:54', '2022-04-14 11:46:54'),
(234, 'data_rows', 'display_name', 126, 'en', 'Заголовок', '2022-04-14 11:46:54', '2022-04-14 11:46:54'),
(235, 'data_rows', 'display_name', 127, 'en', 'Краткое описание', '2022-04-14 11:46:54', '2022-04-14 11:46:54'),
(236, 'data_rows', 'display_name', 128, 'en', 'Контент', '2022-04-14 11:46:54', '2022-04-14 11:46:54'),
(237, 'data_rows', 'display_name', 129, 'en', 'Ссылка (Уникальная)', '2022-04-14 11:46:54', '2022-04-14 11:46:54'),
(238, 'data_rows', 'display_name', 130, 'en', 'Статус', '2022-04-14 11:46:54', '2022-04-14 11:46:54'),
(239, 'data_rows', 'display_name', 131, 'en', 'Порядковый номер', '2022-04-14 11:46:54', '2022-04-14 11:46:54'),
(240, 'data_rows', 'display_name', 132, 'en', 'SEO Заголовок', '2022-04-14 11:46:54', '2022-04-14 11:46:54'),
(241, 'data_rows', 'display_name', 133, 'en', 'Meta Описание', '2022-04-14 11:46:54', '2022-04-14 11:46:54'),
(242, 'data_rows', 'display_name', 134, 'en', 'Meta Ключевые слова', '2022-04-14 11:46:54', '2022-04-14 11:46:54'),
(243, 'data_rows', 'display_name', 135, 'en', 'Дата создания', '2022-04-14 11:46:54', '2022-04-14 11:46:54'),
(244, 'data_rows', 'display_name', 136, 'en', 'Updated At', '2022-04-14 11:46:54', '2022-04-14 11:46:54'),
(245, 'data_types', 'display_name_singular', 15, 'kz', 'О нас', '2022-04-14 11:46:54', '2022-04-14 11:46:54'),
(246, 'data_types', 'display_name_plural', 15, 'kz', 'О нас', '2022-04-14 11:46:54', '2022-04-14 11:46:54'),
(247, 'pages', 'title', 8, 'kz', 'Құпиялылық саясаты', '2022-04-15 03:57:15', '2022-04-15 03:57:15'),
(248, 'pages', 'title', 8, 'en', 'Privacy Policy', '2022-04-15 03:57:15', '2022-04-15 03:57:15'),
(249, 'pages', 'seo_title', 8, 'kz', 'Құпиялылық саясаты', '2022-04-15 03:57:15', '2022-04-15 03:57:15'),
(250, 'pages', 'seo_title', 8, 'en', 'Privacy Policy', '2022-04-15 03:57:15', '2022-04-15 03:57:15'),
(251, 'pages', 'meta_description', 8, 'kz', 'Құпиялылық саясаты', '2022-04-15 03:57:15', '2022-04-15 03:57:15'),
(252, 'pages', 'meta_description', 8, 'en', 'Privacy Policy', '2022-04-15 03:57:15', '2022-04-15 03:57:15'),
(253, 'pages', 'meta_keywords', 8, 'kz', 'Құпиялылық саясаты', '2022-04-15 03:57:15', '2022-04-15 03:57:15'),
(254, 'pages', 'meta_keywords', 8, 'en', 'Privacy Policy', '2022-04-15 03:57:15', '2022-04-15 03:57:15'),
(255, 'about_contents', 'title', 1, 'en', 'Контакты', '2022-04-15 04:34:52', '2022-04-15 04:34:52'),
(256, 'about_contents', 'excerpt', 1, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2022-04-15 04:34:52', '2022-04-15 04:34:52'),
(257, 'about_contents', 'content', 1, 'en', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2022-04-15 04:34:52', '2022-04-15 04:34:52'),
(258, 'about_contents', 'title', 1, 'kz', 'Контакты', '2022-04-15 04:34:59', '2022-04-15 04:34:59'),
(259, 'about_contents', 'excerpt', 1, 'kz', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2022-04-15 04:34:59', '2022-04-15 04:34:59'),
(260, 'about_contents', 'content', 1, 'kz', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2022-04-15 04:34:59', '2022-04-15 04:34:59'),
(261, 'data_rows', 'display_name', 86, 'en', 'Id', '2022-04-15 05:33:49', '2022-04-15 05:33:49'),
(262, 'data_rows', 'display_name', 87, 'en', 'Изображения', '2022-04-15 05:33:49', '2022-04-15 05:33:49'),
(263, 'data_rows', 'display_name', 88, 'en', 'Заголовок', '2022-04-15 05:33:49', '2022-04-15 05:33:49'),
(264, 'data_rows', 'display_name', 89, 'en', 'Краткое описание', '2022-04-15 05:33:49', '2022-04-15 05:33:49'),
(265, 'data_rows', 'display_name', 90, 'en', 'Контент', '2022-04-15 05:33:49', '2022-04-15 05:33:49'),
(266, 'data_rows', 'display_name', 91, 'en', 'Ссылка (Уникальная)', '2022-04-15 05:33:49', '2022-04-15 05:33:49'),
(267, 'data_rows', 'display_name', 92, 'en', 'Статус', '2022-04-15 05:33:49', '2022-04-15 05:33:49'),
(268, 'data_rows', 'display_name', 93, 'en', 'Порядковый номер', '2022-04-15 05:33:49', '2022-04-15 05:33:49'),
(269, 'data_rows', 'display_name', 94, 'en', 'SEO Заголовок', '2022-04-15 05:33:49', '2022-04-15 05:33:49'),
(270, 'data_rows', 'display_name', 95, 'en', 'Meta Описание', '2022-04-15 05:33:49', '2022-04-15 05:33:49'),
(271, 'data_rows', 'display_name', 96, 'en', 'Meta Ключевые слова', '2022-04-15 05:33:49', '2022-04-15 05:33:49'),
(272, 'data_rows', 'display_name', 97, 'en', 'Дата создания', '2022-04-15 05:33:49', '2022-04-15 05:33:49'),
(273, 'data_rows', 'display_name', 98, 'en', 'Updated At', '2022-04-15 05:33:49', '2022-04-15 05:33:49'),
(274, 'data_types', 'display_name_singular', 11, 'en', 'Услуга', '2022-04-15 05:33:49', '2022-04-15 05:33:49'),
(275, 'data_types', 'display_name_plural', 11, 'en', 'Услуги', '2022-04-15 05:33:49', '2022-04-15 05:33:49'),
(276, 'service', 'title', 12, 'en', 'Экспертиза Хозяйственных операций в рамках экономики ', '2022-04-15 05:34:38', '2022-04-15 05:34:38'),
(277, 'service', 'excerpt', 12, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2022-04-15 05:34:38', '2022-04-15 05:34:38'),
(278, 'service', 'content', 12, 'en', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2022-04-15 05:34:38', '2022-04-15 05:34:38'),
(279, 'service', 'seo_title', 12, 'en', 'Экспертиза Хозяйственных операций в рамках экономики ', '2022-04-15 05:34:38', '2022-04-15 05:34:38'),
(280, 'service', 'meta_description', 12, 'en', 'Экспертиза Хозяйственных операций в рамках экономики ', '2022-04-15 05:34:38', '2022-04-15 05:34:38'),
(281, 'service', 'meta_keywords', 12, 'en', 'Экспертиза Хозяйственных операций в рамках экономики ', '2022-04-15 05:34:38', '2022-04-15 05:34:38'),
(282, 'service', 'title', 11, 'en', 'Экспертиза Средств компьютерных технологий', '2022-04-15 05:35:14', '2022-04-15 05:35:14'),
(283, 'service', 'excerpt', 11, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2022-04-15 05:35:14', '2022-04-15 05:35:14'),
(284, 'service', 'content', 11, 'en', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2022-04-15 05:35:14', '2022-04-15 05:35:14'),
(285, 'service', 'seo_title', 11, 'en', 'Экспертиза Средств компьютерных технологий', '2022-04-15 05:35:14', '2022-04-15 05:35:14'),
(286, 'service', 'meta_description', 11, 'en', 'Экспертиза Средств компьютерных технологий', '2022-04-15 05:35:14', '2022-04-15 05:35:14'),
(287, 'service', 'meta_keywords', 11, 'en', 'Экспертиза Средств компьютерных технологий', '2022-04-15 05:35:14', '2022-04-15 05:35:14'),
(288, 'service', 'title', 10, 'en', 'Экспертиза Почерка и подписи', '2022-04-15 05:35:49', '2022-04-15 05:35:49'),
(289, 'service', 'excerpt', 10, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2022-04-15 05:35:49', '2022-04-15 05:35:49'),
(290, 'service', 'content', 10, 'en', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2022-04-15 05:35:49', '2022-04-15 05:35:49'),
(291, 'service', 'seo_title', 10, 'en', 'Экспертиза Почерка и подписи', '2022-04-15 05:35:49', '2022-04-15 05:35:49'),
(292, 'service', 'meta_description', 10, 'en', 'Экспертиза Почерка и подписи', '2022-04-15 05:35:49', '2022-04-15 05:35:49'),
(293, 'service', 'meta_keywords', 10, 'en', 'Экспертиза Почерка и подписи', '2022-04-15 05:35:49', '2022-04-15 05:35:49'),
(294, 'service', 'title', 9, 'en', 'Финансово-бюджетная экспертиза', '2022-04-15 05:36:24', '2022-04-15 05:36:24'),
(295, 'service', 'excerpt', 9, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2022-04-15 05:36:24', '2022-04-15 05:36:24');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(296, 'service', 'content', 9, 'en', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2022-04-15 05:36:24', '2022-04-15 05:36:24'),
(297, 'service', 'seo_title', 9, 'en', 'Финансово-бюджетная экспертиза', '2022-04-15 05:36:24', '2022-04-15 05:36:24'),
(298, 'service', 'meta_description', 9, 'en', 'Финансово-бюджетная экспертиза', '2022-04-15 05:36:24', '2022-04-15 05:36:24'),
(299, 'service', 'meta_keywords', 9, 'en', 'Финансово-бюджетная экспертиза', '2022-04-15 05:36:24', '2022-04-15 05:36:24'),
(300, 'service', 'title', 8, 'en', 'Религиоведческо-политологическая экспертиза', '2022-04-15 05:36:51', '2022-04-15 05:36:51'),
(301, 'service', 'excerpt', 8, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2022-04-15 05:36:51', '2022-04-15 05:36:51'),
(302, 'service', 'content', 8, 'en', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2022-04-15 05:36:51', '2022-04-15 05:36:51'),
(303, 'service', 'seo_title', 8, 'en', 'Религиоведческо-политологическая экспертиза', '2022-04-15 05:36:51', '2022-04-15 05:36:51'),
(304, 'service', 'meta_description', 8, 'en', 'Религиоведческо-политологическая экспертиза', '2022-04-15 05:36:51', '2022-04-15 05:36:51'),
(305, 'service', 'meta_keywords', 8, 'en', 'Религиоведческо-политологическая экспертиза', '2022-04-15 05:36:51', '2022-04-15 05:36:51'),
(306, 'service', 'title', 7, 'en', 'Религиоведческая экспертиза', '2022-04-15 05:37:39', '2022-04-15 05:37:39'),
(307, 'service', 'excerpt', 7, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2022-04-15 05:37:39', '2022-04-15 05:37:39'),
(308, 'service', 'content', 7, 'en', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2022-04-15 05:37:39', '2022-04-15 05:37:39'),
(309, 'service', 'seo_title', 7, 'en', 'Религиоведческая экспертиза', '2022-04-15 05:37:39', '2022-04-15 05:37:39'),
(310, 'service', 'meta_description', 7, 'en', 'Религиоведческая экспертиза', '2022-04-15 05:37:39', '2022-04-15 05:37:39'),
(311, 'service', 'meta_keywords', 7, 'en', 'Религиоведческая экспертиза', '2022-04-15 05:37:39', '2022-04-15 05:37:39'),
(312, 'service', 'title', 5, 'en', 'Психолого-криминалистическая экспертиза', '2022-04-15 05:38:26', '2022-04-15 05:38:26'),
(313, 'service', 'excerpt', 5, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2022-04-15 05:38:26', '2022-04-15 05:38:26'),
(314, 'service', 'content', 5, 'en', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2022-04-15 05:38:26', '2022-04-15 05:38:26'),
(315, 'service', 'seo_title', 5, 'en', 'Психолого-криминалистическая экспертиза', '2022-04-15 05:38:26', '2022-04-15 05:38:26'),
(316, 'service', 'meta_description', 5, 'en', 'Психолого-криминалистическая экспертиза', '2022-04-15 05:38:26', '2022-04-15 05:38:26'),
(317, 'service', 'meta_keywords', 5, 'en', 'Психолого-криминалистическая экспертиза', '2022-04-15 05:38:26', '2022-04-15 05:38:26'),
(318, 'service', 'title', 4, 'en', 'Психологическая экспертиза', '2022-04-15 05:39:05', '2022-04-15 05:39:05'),
(319, 'service', 'excerpt', 4, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2022-04-15 05:39:05', '2022-04-15 05:39:05'),
(320, 'service', 'content', 4, 'en', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2022-04-15 05:39:05', '2022-04-15 05:39:05'),
(321, 'service', 'seo_title', 4, 'en', 'Психологическая экспертиза', '2022-04-15 05:39:05', '2022-04-15 05:39:05'),
(322, 'service', 'meta_description', 4, 'en', 'Психологическая экспертиза', '2022-04-15 05:39:05', '2022-04-15 05:39:05'),
(323, 'service', 'meta_keywords', 4, 'en', 'Психологическая экспертиза', '2022-04-15 05:39:05', '2022-04-15 05:39:05'),
(324, 'service', 'title', 3, 'en', 'Бухгалтерская экспертиза', '2022-04-15 05:39:26', '2022-04-15 05:39:26'),
(325, 'service', 'excerpt', 3, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2022-04-15 05:39:26', '2022-04-15 05:39:26'),
(326, 'service', 'content', 3, 'en', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2022-04-15 05:39:26', '2022-04-15 05:39:26'),
(327, 'service', 'seo_title', 3, 'en', 'Бухгалтерская экспертиза', '2022-04-15 05:39:26', '2022-04-15 05:39:26'),
(328, 'service', 'meta_description', 3, 'en', 'Бухгалтерская экспертиза', '2022-04-15 05:39:26', '2022-04-15 05:39:26'),
(329, 'service', 'meta_keywords', 3, 'en', 'Бухгалтерская экспертиза', '2022-04-15 05:39:26', '2022-04-15 05:39:26'),
(330, 'service', 'title', 2, 'en', 'Автороведческая экспертиза', '2022-04-15 05:39:46', '2022-04-15 05:39:46'),
(331, 'service', 'excerpt', 2, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-04-15 05:39:46', '2022-04-15 05:39:46'),
(332, 'service', 'content', 2, 'en', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2022-04-15 05:39:46', '2022-04-15 05:39:46'),
(333, 'service', 'seo_title', 2, 'en', 'Автороведческая экспертиза', '2022-04-15 05:39:46', '2022-04-15 05:39:46'),
(334, 'service', 'meta_description', 2, 'en', 'Автороведческая экспертиза', '2022-04-15 05:39:46', '2022-04-15 05:39:46'),
(335, 'service', 'meta_keywords', 2, 'en', 'Автороведческая экспертиза', '2022-04-15 05:39:46', '2022-04-15 05:39:46'),
(336, 'service', 'title', 1, 'en', 'Психолого-филологическая экспертиза', '2022-04-15 05:40:18', '2022-04-15 05:40:18'),
(337, 'service', 'excerpt', 1, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2022-04-15 05:40:18', '2022-04-15 05:40:18'),
(338, 'service', 'content', 1, 'en', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h4>Кому может понадобиться:</h4>\n<ul>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n<li>Lorem Ipsum is simply dummy</li>\n</ul>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2022-04-15 05:40:18', '2022-04-15 05:40:18'),
(339, 'service', 'seo_title', 1, 'en', 'Психолого-филологическая экспертиза', '2022-04-15 05:40:18', '2022-04-15 05:40:18'),
(340, 'service', 'meta_description', 1, 'en', 'Психолого-филологическая экспертиза', '2022-04-15 05:40:18', '2022-04-15 05:40:18'),
(341, 'service', 'meta_keywords', 1, 'en', 'Психолого-филологическая экспертиза', '2022-04-15 05:40:18', '2022-04-15 05:40:18'),
(342, 'about', 'title', 1, 'en', 'О нас', '2022-04-15 05:51:35', '2022-04-15 05:51:35'),
(343, 'about', 'content', 1, 'en', '<p>О нас</p>', '2022-04-15 05:51:35', '2022-04-15 05:51:35'),
(344, 'about', 'seo_title', 1, 'en', 'О нас', '2022-04-15 05:51:35', '2022-04-15 05:51:35'),
(345, 'about', 'meta_description', 1, 'en', 'О нас', '2022-04-15 05:51:35', '2022-04-15 05:51:35'),
(346, 'about', 'meta_keywords', 1, 'en', 'О нас', '2022-04-15 05:51:35', '2022-04-15 05:51:35'),
(347, 'data_rows', 'display_name', 124, 'kz', 'Id', '2022-04-15 05:52:04', '2022-04-15 05:52:04'),
(348, 'data_rows', 'display_name', 125, 'kz', 'Изображения', '2022-04-15 05:52:04', '2022-04-15 05:52:04'),
(349, 'data_rows', 'display_name', 126, 'kz', 'Заголовок', '2022-04-15 05:52:04', '2022-04-15 05:52:04'),
(350, 'data_rows', 'display_name', 127, 'kz', 'Краткое описание', '2022-04-15 05:52:04', '2022-04-15 05:52:04'),
(351, 'data_rows', 'display_name', 128, 'kz', 'Контент', '2022-04-15 05:52:04', '2022-04-15 05:52:04'),
(352, 'data_rows', 'display_name', 129, 'kz', 'Ссылка (Уникальная)', '2022-04-15 05:52:04', '2022-04-15 05:52:04'),
(353, 'data_rows', 'display_name', 130, 'kz', 'Статус', '2022-04-15 05:52:04', '2022-04-15 05:52:04'),
(354, 'data_rows', 'display_name', 131, 'kz', 'Порядковый номер', '2022-04-15 05:52:04', '2022-04-15 05:52:04'),
(355, 'data_rows', 'display_name', 132, 'kz', 'SEO Заголовок', '2022-04-15 05:52:04', '2022-04-15 05:52:04'),
(356, 'data_rows', 'display_name', 133, 'kz', 'Meta Описание', '2022-04-15 05:52:04', '2022-04-15 05:52:04'),
(357, 'data_rows', 'display_name', 134, 'kz', 'Meta Ключевые слова', '2022-04-15 05:52:04', '2022-04-15 05:52:04'),
(358, 'data_rows', 'display_name', 135, 'kz', 'Дата создания', '2022-04-15 05:52:04', '2022-04-15 05:52:04'),
(359, 'data_rows', 'display_name', 136, 'kz', 'Updated At', '2022-04-15 05:52:04', '2022-04-15 05:52:04'),
(360, 'about', 'title', 1, 'kz', 'О нас', '2022-04-15 05:53:07', '2022-04-15 05:53:07'),
(361, 'about', 'content', 1, 'kz', '<p>О нас</p>', '2022-04-15 05:53:07', '2022-04-15 05:53:07'),
(362, 'about', 'seo_title', 1, 'kz', 'О нас', '2022-04-15 05:53:07', '2022-04-15 05:53:07'),
(363, 'about', 'meta_description', 1, 'kz', 'О нас', '2022-04-15 05:53:07', '2022-04-15 05:53:07'),
(364, 'about', 'meta_keywords', 1, 'kz', 'О нас', '2022-04-15 05:53:07', '2022-04-15 05:53:07'),
(365, 'menu_items', 'title', 32, 'en', 'Средств компьютерных технологий', '2022-04-15 05:54:23', '2022-04-15 05:54:23'),
(366, 'menu_items', 'title', 44, 'kz', 'Компания туралы', '2022-04-15 06:25:43', '2022-04-15 06:25:43'),
(367, 'menu_items', 'title', 44, 'en', 'About the company', '2022-04-15 06:25:43', '2022-04-15 06:25:43'),
(368, 'menu_items', 'title', 45, 'kz', 'Ынтымақтастық', '2022-04-15 06:26:17', '2022-04-15 06:26:17'),
(369, 'menu_items', 'title', 45, 'en', 'Cooperation', '2022-04-15 06:26:17', '2022-04-15 06:26:17'),
(370, 'menu_items', 'title', 46, 'kz', 'НПА', '2022-04-15 06:26:46', '2022-04-15 06:26:46'),
(371, 'menu_items', 'title', 46, 'en', 'Acts', '2022-04-15 06:26:46', '2022-04-15 06:26:46'),
(372, 'menu_items', 'title', 47, 'kz', 'Пікірлер', '2022-04-15 06:27:17', '2022-04-15 06:27:17'),
(373, 'menu_items', 'title', 47, 'en', 'Reviews', '2022-04-15 06:27:17', '2022-04-15 06:27:17'),
(374, 'menu_items', 'title', 48, 'kz', 'Жиі қойылатын сұрақтар', '2022-04-15 06:27:59', '2022-04-15 06:27:59'),
(375, 'menu_items', 'title', 48, 'en', 'Frequent questions', '2022-04-15 06:27:59', '2022-04-15 06:27:59'),
(376, 'menu_items', 'title', 49, 'kz', 'Байланыстар', '2022-04-15 06:28:32', '2022-04-15 06:28:32'),
(377, 'menu_items', 'title', 49, 'en', 'Contacts', '2022-04-15 06:28:32', '2022-04-15 06:28:32'),
(378, 'data_rows', 'display_name', 146, 'en', 'Id', '2022-04-15 10:35:53', '2022-04-15 10:35:53'),
(379, 'data_rows', 'display_name', 147, 'en', 'Изображения', '2022-04-15 10:35:53', '2022-04-15 10:35:53'),
(380, 'data_rows', 'display_name', 148, 'en', 'Заголовок', '2022-04-15 10:35:53', '2022-04-15 10:35:53'),
(381, 'data_rows', 'display_name', 149, 'en', 'Подзаголовок', '2022-04-15 10:35:53', '2022-04-15 10:35:53'),
(382, 'data_rows', 'display_name', 150, 'en', 'Дата создания', '2022-04-15 10:35:53', '2022-04-15 10:35:53'),
(383, 'data_rows', 'display_name', 151, 'en', 'Updated At', '2022-04-15 10:35:53', '2022-04-15 10:35:53'),
(384, 'data_types', 'display_name_singular', 17, 'en', 'Баннер', '2022-04-15 10:35:53', '2022-04-15 10:35:53'),
(385, 'data_types', 'display_name_plural', 17, 'en', 'Баннеры', '2022-04-15 10:35:53', '2022-04-15 10:35:53'),
(386, 'data_rows', 'display_name', 119, 'en', 'Id', '2022-04-15 10:37:04', '2022-04-15 10:37:04'),
(387, 'data_rows', 'display_name', 120, 'en', 'Иконка (svg)', '2022-04-15 10:37:04', '2022-04-15 10:37:04'),
(388, 'data_rows', 'display_name', 121, 'en', 'Заголовок', '2022-04-15 10:37:04', '2022-04-15 10:37:04'),
(389, 'data_rows', 'display_name', 122, 'en', 'Дата создания', '2022-04-15 10:37:04', '2022-04-15 10:37:04'),
(390, 'data_rows', 'display_name', 123, 'en', 'Updated At', '2022-04-15 10:37:04', '2022-04-15 10:37:04'),
(391, 'data_types', 'display_name_singular', 14, 'en', 'Иконка', '2022-04-15 10:37:04', '2022-04-15 10:37:04'),
(392, 'data_types', 'display_name_plural', 14, 'en', 'Иконки', '2022-04-15 10:37:04', '2022-04-15 10:37:04'),
(393, 'menu_items', 'title', 65, 'en', 'Прайс', '2022-04-19 07:07:52', '2022-04-19 07:07:52'),
(394, 'menu_items', 'title', 43, 'en', 'Price', '2022-04-19 07:08:11', '2022-04-21 13:24:01'),
(395, 'menu_items', 'title', 43, 'kz', 'Прайс', '2022-04-19 07:08:19', '2022-04-21 13:24:01'),
(396, 'menu_items', 'title', 64, 'en', 'Отзывы', '2022-04-19 07:08:59', '2022-04-19 07:08:59'),
(397, 'menu_items', 'title', 65, 'kz', 'Прайс', '2022-04-19 07:10:49', '2022-04-19 07:10:49'),
(398, 'about', 'title', 2, 'en', 'Сотрудничество', '2022-04-19 07:13:46', '2022-04-19 07:13:46'),
(399, 'about', 'content', 2, 'en', '<p>Сотрудничество</p>', '2022-04-19 07:13:46', '2022-04-19 07:13:46'),
(400, 'about', 'seo_title', 2, 'en', 'Сотрудничество', '2022-04-19 07:13:46', '2022-04-19 07:13:46'),
(401, 'about', 'meta_description', 2, 'en', 'Сотрудничество', '2022-04-19 07:13:46', '2022-04-19 07:13:46'),
(402, 'about', 'meta_keywords', 2, 'en', 'Сотрудничество', '2022-04-19 07:13:46', '2022-04-19 07:13:46'),
(403, 'about', 'title', 2, 'kz', 'Сотрудничество', '2022-04-19 07:20:59', '2022-04-19 07:20:59'),
(404, 'about', 'content', 2, 'kz', '<p>Сотрудничество</p>', '2022-04-19 07:20:59', '2022-04-19 07:20:59'),
(405, 'about', 'seo_title', 2, 'kz', 'Сотрудничество', '2022-04-19 07:20:59', '2022-04-19 07:20:59'),
(406, 'about', 'meta_description', 2, 'kz', 'Сотрудничество', '2022-04-19 07:20:59', '2022-04-19 07:20:59'),
(407, 'about', 'meta_keywords', 2, 'kz', 'Сотрудничество', '2022-04-19 07:20:59', '2022-04-19 07:20:59'),
(414, 'act', 'title', 4, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry 2', '2022-04-19 12:46:50', '2022-04-19 12:46:50'),
(415, 'act', 'content', 4, 'en', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2022-04-19 12:46:50', '2022-04-19 12:46:50');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$yV8x.mmbtv50AA7R3cPONOoIzdqnoY/rZM8zQ0Pia34QDtjTwu1FK', 'iwN6ZAZ7IBDeRNok8cERdMqSsrPZVbFCmZ6EHXb13Rn5VNTj5jlnfUHQZksn', '{\"locale\":\"ru\"}', '2022-04-10 21:58:36', '2022-04-11 04:03:56');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `about_contents`
--
ALTER TABLE `about_contents`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `act`
--
ALTER TABLE `act`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `block_abouts`
--
ALTER TABLE `block_abouts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Индексы таблицы `consultations`
--
ALTER TABLE `consultations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `personals`
--
ALTER TABLE `personals`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `about_contents`
--
ALTER TABLE `about_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `act`
--
ALTER TABLE `act`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `block_abouts`
--
ALTER TABLE `block_abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `consultations`
--
ALTER TABLE `consultations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `icons`
--
ALTER TABLE `icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT для таблицы `personals`
--
ALTER TABLE `personals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `service`
--
ALTER TABLE `service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=416;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
