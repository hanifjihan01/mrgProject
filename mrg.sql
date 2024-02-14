-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Feb 2024 pada 11.00
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mrg`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `uuid`, `name`, `amount`, `userId`, `createdAt`, `updatedAt`) VALUES
(8, '260c4fcd-b0d9-46d3-b3ee-59dff2c5346d', 'komputer', 2, 3, '2024-02-12 07:04:46', '2024-02-14 06:19:26'),
(10, 'c72c358b-ceab-464e-8da0-614183713650', 'komputer', 2, 3, '2024-02-12 08:07:31', '2024-02-12 08:07:31'),
(11, '1bd145dd-fb36-4379-a4dd-4ecfe2d46161', 'Printer', 2, 3, '2024-02-13 20:12:44', '2024-02-13 20:12:44'),
(12, 'e240901f-ed6c-48ce-aa4c-816fd1526865', 'Kabel', 3, 3, '2024-02-14 04:03:00', '2024-02-14 04:03:00'),
(13, '55911f39-2176-4502-9917-f1b2303682a5', 'Laptop ', 4, 3, '2024-02-14 04:48:47', '2024-02-14 04:48:47'),
(14, '43456eed-7818-4bcd-8ecd-af8b6e7ec937', 'dsds', 2, 3, '2024-02-14 06:03:38', '2024-02-14 06:03:38'),
(15, '45a7e20c-daed-4fec-b2d9-326762628f9f', 'Laptop', 10, 3, '2024-02-14 08:01:30', '2024-02-14 08:01:30'),
(16, 'd076722c-176b-4f98-bf3f-a35b5f24f3cc', 'Komptuer', 2, 4, '2024-02-14 09:28:30', '2024-02-14 09:28:30'),
(17, 'dde53ebc-d8e4-4ba5-93c5-41f04b191387', 'samurai', 2, 3, '2024-02-14 09:34:59', '2024-02-14 09:34:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('03L_loPfjrdl5eLiDEmPkWDDo24vHrBR', '2024-02-14 18:46:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-13 18:46:52', '2024-02-13 18:46:52'),
('0BdHvKMPX1vsaIvc3auLu1TXPFaxvyOg', '2024-02-15 04:34:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 04:34:30', '2024-02-14 04:34:30'),
('0uJdV-c6qnPpkP0dN50xOOIjfuQzTq9A', '2024-02-15 09:50:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:50:28', '2024-02-14 09:50:28'),
('0YY4il698sKaW8sBFjIaCHDfo0DvN5hU', '2024-02-14 18:48:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-13 18:48:40', '2024-02-13 18:48:40'),
('11nBITJYbgABxZWHX_AqV5L3GfwmPQpu', '2024-02-15 02:33:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 02:33:40', '2024-02-14 02:33:40'),
('19T1L_ImXKkbE-fTH7hn3gaYrwnw4KVj', '2024-02-15 03:13:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:13:51', '2024-02-14 03:13:51'),
('1HOz4oNBcpqAqTL7fTYEaZ_spMKQyzvO', '2024-02-15 06:03:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 06:03:38', '2024-02-14 06:03:38'),
('1SMv62VKVnDfltqhk99MZw8uhhMrHPEF', '2024-02-15 09:56:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:56:10', '2024-02-14 09:56:10'),
('1tPYZMbyGqrGlGWdFIgQG7vrAlpzPYLt', '2024-02-15 09:34:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:34:59', '2024-02-14 09:34:59'),
('20hYoYClVatbEEhdkmEJmLNOnL3jARUh', '2024-02-15 03:13:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:13:48', '2024-02-14 03:13:48'),
('27lBEUuUej43soiq38mco1X7jJ8OEG97', '2024-02-15 09:19:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:19:48', '2024-02-14 09:19:48'),
('2BOqCfARR6oUbq9-zGrWrPCYX9N_S0QL', '2024-02-15 09:21:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:21:28', '2024-02-14 09:21:28'),
('2LI1kfyCGMbWrVlIL_kh4aVhvXvY_Lys', '2024-02-15 09:34:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:34:45', '2024-02-14 09:34:45'),
('2VsfFN9N4079vt2mUDRteiEsvtGwP8e8', '2024-02-14 19:02:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-13 19:02:58', '2024-02-13 19:02:58'),
('2XTr0CorkTW4LaojVt4Hpats1xF_FF72', '2024-02-15 04:12:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 04:12:21', '2024-02-14 04:12:21'),
('3Cyok3nF-plzJ8BCy_ZME0NrUAtAX_Ux', '2024-02-15 04:45:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 04:45:22', '2024-02-14 04:45:22'),
('4Cr9bi4vQDrkL_oEPiJYMQM2bFD_KDRg', '2024-02-15 07:01:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 07:01:50', '2024-02-14 07:01:50'),
('4rv_ek0f4PJ7ojerh7nneH7v8QxotBv1', '2024-02-15 04:31:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 04:31:46', '2024-02-14 04:31:46'),
('4Xb1Mm_cGIjsh3QIGN7aE_S5rMA667Ow', '2024-02-14 18:49:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-13 18:49:01', '2024-02-13 18:49:01'),
('4xpOqlHthvpGzQL92M-NcLOm34Tk446B', '2024-02-15 02:21:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 02:21:30', '2024-02-14 02:21:30'),
('67kLABR8ypeFgx8_HHKLmFbrfM0IjWpc', '2024-02-15 02:36:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 02:36:51', '2024-02-14 02:36:51'),
('6fmi-WtKFvuc2cvW0vod1z6-nn8NfonM', '2024-02-15 09:46:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:46:00', '2024-02-14 09:46:00'),
('6r_tnUsOOPt3kbkrnQkx74fOHGxqqEte', '2024-02-15 09:15:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:15:24', '2024-02-14 09:15:24'),
('7kCDtWGNrbGwi1aieboecOQLQ3FjI5ht', '2024-02-15 07:17:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 07:17:29', '2024-02-14 07:17:29'),
('8gDZqVQipafoQfuqso2nEAni2lBMHS7V', '2024-02-14 18:47:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-13 18:47:03', '2024-02-13 18:47:03'),
('8h0vnv70M8aBznhYrhtpPz_hE5nV7VYc', '2024-02-15 08:18:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 08:18:40', '2024-02-14 08:18:40'),
('8l1MqFrEVQDHJnyRc5S9CPaUJwkq2QVd', '2024-02-15 03:29:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:29:37', '2024-02-14 03:29:37'),
('8NNeAkhq65qnJgjkUHKjdUKhbJWv63lN', '2024-02-15 09:50:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:50:24', '2024-02-14 09:50:24'),
('9BhoFMwIBh8uOKKV4NbxMGD3z8xqru8f', '2024-02-14 19:08:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-13 19:08:52', '2024-02-13 19:08:52'),
('9ee-4rYT3DwP-seGGnzByA2U4xu0gTqd', '2024-02-15 09:12:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:12:59', '2024-02-14 09:12:59'),
('9L4OiRy6EZrtGt8DuVAcvYkg5xW9SzTc', '2024-02-15 03:49:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:49:38', '2024-02-14 03:49:38'),
('ADaIfkocKUImzNZJB-xhDpGOxV4Wlbs6', '2024-02-15 03:13:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:13:40', '2024-02-14 03:13:40'),
('AMUTPb_shR1WUH7jq1lcvGmGG1w-m0M0', '2024-02-15 09:31:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:31:48', '2024-02-14 09:31:48'),
('An29GeR3uLDTljApx10roJEW5cjsqSyS', '2024-02-15 04:43:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 04:43:54', '2024-02-14 04:43:54'),
('aOeYsTN0xC7Czin0Ce668ORhW-wK0MKx', '2024-02-15 06:19:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 06:19:26', '2024-02-14 06:19:26'),
('B2vypxNu1hcXWB3xnO5VeK66rndBy1Cb', '2024-02-15 02:11:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 02:11:51', '2024-02-14 02:11:51'),
('bFx_DtuuHmqZYiQ4G1VIeUuYtAu36jc1', '2024-02-15 08:19:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 08:19:31', '2024-02-14 08:19:31'),
('BsfM-f0dugGQ2fLH_dTYANzIZPaZPuHK', '2024-02-15 07:57:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 07:57:37', '2024-02-14 07:57:37'),
('c6DwpywNLCUzYg75wRuvn27JlU5AL6iE', '2024-02-15 02:12:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 02:12:01', '2024-02-14 02:12:01'),
('C7UtZHvUVFEAhgevA4nwh7uUS4O20pAX', '2024-02-15 08:19:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 08:19:51', '2024-02-14 08:19:51'),
('cM2_7AoRT5TDuMsynPl3M1DndkMsoII-', '2024-02-15 04:21:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 04:21:08', '2024-02-14 04:21:08'),
('Cug8jOxjLnTiEZLRdP4TFRoI0kLfbQM6', '2024-02-14 19:02:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-13 19:02:31', '2024-02-13 19:02:31'),
('d7yEIBwm6Z-JdQMIE76ELAS64jJJ3w2T', '2024-02-14 18:47:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-13 18:47:16', '2024-02-13 18:47:16'),
('dGDShpkgek1sarpg60ClEYPyw8VGUnqj', '2024-02-15 02:36:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 02:36:47', '2024-02-14 02:36:47'),
('diUtLeTMpLyCa8eatDHmXF9yCr8pnm11', '2024-02-15 09:18:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:18:12', '2024-02-14 09:18:12'),
('Dp4WnI3nLgSo8evgxYVLJQyYwhvK8AMU', '2024-02-15 04:45:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 04:45:20', '2024-02-14 04:45:20'),
('dy0ctEciuG2gukQggxLFu45RlVF3oAIu', '2024-02-15 09:32:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:32:46', '2024-02-14 09:32:46'),
('ELoAKVnt1mjUTNKGA9xAbx6mi9fVqlg1', '2024-02-15 09:40:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:40:25', '2024-02-14 09:40:25'),
('EwUuVIubZjmdvZXcRK_A92AqDl0jrynJ', '2024-02-14 20:10:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-13 20:10:49', '2024-02-13 20:10:49'),
('eyQEh8KE5Wjz34EQPdDKxSUClRoPw2fA', '2024-02-15 09:18:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:18:20', '2024-02-14 09:18:20'),
('F0Vr_30fstlg8jPJNj0bLwIMpF5GkX4K', '2024-02-15 03:14:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:14:06', '2024-02-14 03:14:06'),
('fe784-IIkIxViGlNMMUwLk69tm6TOczc', '2024-02-15 02:15:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 02:15:39', '2024-02-14 02:15:39'),
('FghPnK1saNgXwc-LW6P9B5uD-3FhixN6', '2024-02-15 09:12:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:12:53', '2024-02-14 09:12:53'),
('fHaKj-NUw7qf_p9gp3spn1kr2Oat5jzB', '2024-02-15 06:42:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 06:42:02', '2024-02-14 06:42:02'),
('fIpLKvGuN5X-n1BC-WnS38N9u4XsvOdb', '2024-02-15 09:21:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:21:22', '2024-02-14 09:21:22'),
('FOyRRTFcK-PObBEXnau3tJKzw6AcD4VL', '2024-02-15 03:34:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:34:47', '2024-02-14 03:34:47'),
('fZrvMe6c4vJCam3t6UElQelN875YjblS', '2024-02-15 09:45:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:45:29', '2024-02-14 09:45:29'),
('F_q3Ws-yrndiscPs2O5R5v1bPcor70-D', '2024-02-15 06:19:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 06:19:29', '2024-02-14 06:19:29'),
('g8tcf7dkaH4HUPpvZb27hp4o7DmjdTVD', '2024-02-15 09:35:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:35:08', '2024-02-14 09:35:08'),
('gbdalYf18bAwkxVe5DjNRxJMZ2tdA7CE', '2024-02-15 09:31:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:31:55', '2024-02-14 09:31:55'),
('GbV7zszADRfz4qQgjxT6tvhj9xfvg1WG', '2024-02-15 09:44:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:44:27', '2024-02-14 09:44:27'),
('GTJ3PphIGo0tg_HiijzpHPcjYapBKhjO', '2024-02-15 03:29:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:29:31', '2024-02-14 03:29:31'),
('HBL-3NXYoE-2jA8Znctnd9yFyDUMiotP', '2024-02-15 09:40:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:40:30', '2024-02-14 09:40:30'),
('hDOKL9Q1D2iuHfY7vJUH8fkU0Fa09wdg', '2024-02-15 02:53:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 02:53:05', '2024-02-14 02:53:05'),
('hekPHp16Ievd6BxXlipSbgsMUHMww17-', '2024-02-15 07:57:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 07:57:35', '2024-02-14 07:57:35'),
('HwAgzCcS8dkDIWZbVWVQxHvDcbgLL2mX', '2024-02-15 09:56:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:56:22', '2024-02-14 09:56:22'),
('HwGfBGk4XFgkBWCkeG8lRD2bmjt3xLKk', '2024-02-15 09:45:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:45:36', '2024-02-14 09:45:36'),
('IBq9gkHhe9tIwsTxQz6GRr36SfCeQN9m', '2024-02-15 09:35:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:35:00', '2024-02-14 09:35:00'),
('IovMB65w4cLXexhE3am8JoBIP1y7vxLw', '2024-02-15 04:45:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 04:45:28', '2024-02-14 04:45:28'),
('iPg5BSqAA61vCtbg70Qv5A1T8wOxsOe7', '2024-02-15 04:35:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 04:35:23', '2024-02-14 04:35:23'),
('IZ5vbQxntLgK37OoIrmSgwbNY2-vb1Ao', '2024-02-15 03:26:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:26:28', '2024-02-14 03:26:28'),
('JCbH7-pYg-u0_21ubJUWDgoZ5L2Fa-M9', '2024-02-15 06:39:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 06:39:04', '2024-02-14 06:39:04'),
('JdGR80OWOFi4ZfQ3CkG_J1tFXdrjiK8E', '2024-02-15 04:28:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 04:28:58', '2024-02-14 04:28:58'),
('JgzasxSRInnex_SF72AlI6IYYy3IBvtk', '2024-02-15 04:31:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 04:31:44', '2024-02-14 04:31:44'),
('JkEXO86HIjmVhj-Wmp4kOvMp0XSF-VWS', '2024-02-15 09:18:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:18:36', '2024-02-14 09:18:36'),
('k3SLn3JWulqNxTTo3n3EI9x6XnGgT-C8', '2024-02-14 19:14:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-13 19:14:01', '2024-02-13 19:14:01'),
('k6ptE-ucPpnLxKUFLYIhEpboXkRffAyy', '2024-02-15 03:33:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:33:51', '2024-02-14 03:33:51'),
('k76urEePJC8pB_dq7LBikgl6SEkixUQp', '2024-02-15 03:32:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:32:24', '2024-02-14 03:32:24'),
('kfaKQwfrwDVnjrMDDAVLYgaF3EekNESt', '2024-02-15 02:15:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 02:15:45', '2024-02-14 02:15:45'),
('kIjpCXXuKwxmtbK0p2ttI07GTpv2nl6J', '2024-02-15 09:56:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:56:02', '2024-02-14 09:56:02'),
('KKFt7oXMK0WOSSxY_2kjoBXewP52wy5_', '2024-02-15 09:27:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:27:12', '2024-02-14 09:27:12'),
('Kkq9Anvr1eY5Sz4XpK_XDpCXj3jbA_bq', '2024-02-14 20:12:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-13 20:12:44', '2024-02-13 20:12:44'),
('KR47frRdcFcDwR1AiPzUjGDrtZzGOLKP', '2024-02-15 04:21:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 04:21:10', '2024-02-14 04:21:10'),
('kSPr93rb08M0ndlxSKS-fsSWx1w_OonG', '2024-02-15 02:33:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 02:33:44', '2024-02-14 02:33:44'),
('l-imUGPl7wO-l6cnUjpWvV5-7gAuuA-L', '2024-02-15 08:33:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 08:33:23', '2024-02-14 08:33:23'),
('l5-bpCbNMkvWg2dUooW-83vke_ZyiBJv', '2024-02-15 03:33:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:33:33', '2024-02-14 03:33:33'),
('l8mqG7oRB2lKh7RXVYZOF0_tyzSWYXFF', '2024-02-15 08:01:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 08:01:30', '2024-02-14 08:01:30'),
('lmsTevdl9BE0Y6T9djYODVs1JN_bGh1r', '2024-02-15 06:40:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 06:40:25', '2024-02-14 06:40:25'),
('mEZtfMqMC19qGhBjrUlfL_KgU7wHKS_y', '2024-02-15 03:14:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:14:00', '2024-02-14 03:14:00'),
('MGG3lAvkfd5OBfsq_rL5B6uARfAhrNEJ', '2024-02-15 08:19:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 08:19:38', '2024-02-14 08:19:38'),
('Mvb-4nvqj_b1g8os1hlH6hs1aqQam65i', '2024-02-15 09:19:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:19:53', '2024-02-14 09:19:53'),
('NdZFpaqaxcKbRs6KLRiey_6_9_A2zd1F', '2024-02-15 04:12:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 04:12:19', '2024-02-14 04:12:19'),
('NfhwIWMYdLnC7S40gt1WAwseYcxDd8ud', '2024-02-15 03:22:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:22:32', '2024-02-14 03:22:32'),
('o-HWP2cFMEZ86uCFbboPXapwRu9CXfIY', '2024-02-15 03:13:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:13:38', '2024-02-14 03:13:38'),
('o0U3FFApdnT0u3MylJv_-2hhuBrm6mtl', '2024-02-15 02:53:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 02:53:18', '2024-02-14 02:53:18'),
('oBISpl6yZ6c7_Z--Y1x_cWw6knmG-WUa', '2024-02-15 03:17:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:17:22', '2024-02-14 03:17:22'),
('OkerLtRNT-OkQTQG4WSXeK9oZvqVadxS', '2024-02-14 18:48:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-13 18:48:51', '2024-02-13 18:48:51'),
('otus4vJ1AzIPw8b0HfqRuqN1f8Vh2vxT', '2024-02-15 06:44:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 06:44:35', '2024-02-14 06:44:35'),
('OvfuxpdWoe_8eQFJUqloayP7YIk-Yktd', '2024-02-15 04:35:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 04:35:25', '2024-02-14 04:35:25'),
('P1pdSBRoDtziAWxciTs513Vsivbj9-mJ', '2024-02-15 09:34:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:34:47', '2024-02-14 09:34:47'),
('p6z3-slq9k6q1EdzEeIbb9-9P505LeoA', '2024-02-15 06:45:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 06:45:24', '2024-02-14 06:45:24'),
('P9Tav4EL_n4KJRzwFvNIe_Fyxkyr41CH', '2024-02-15 09:42:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:42:05', '2024-02-14 09:42:05'),
('Par8W59RdsAXlkGbUdn0Sym3lqJSjOXA', '2024-02-15 03:49:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:49:36', '2024-02-14 03:49:36'),
('PNaJ8VqVw1tCEtO9k5aY4-3L3y0bLXXp', '2024-02-15 09:21:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:21:35', '2024-02-14 09:21:35'),
('pRJ0uILJNXi5w8tYyenp2bqg9yP8rbv0', '2024-02-15 03:32:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:32:39', '2024-02-14 03:32:39'),
('pvn_f6wPS-Ns4eYzdiBX0hegW4JJMwfk', '2024-02-15 09:28:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:28:30', '2024-02-14 09:28:30'),
('pYfwejRmsn27p6gPyKdmaiXrXKITs0gD', '2024-02-15 03:33:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:33:38', '2024-02-14 03:33:38'),
('qBS-Q62NJ_u1QbbaJzcYOXCCxvl4hwN7', '2024-02-15 04:43:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 04:43:53', '2024-02-14 04:43:53'),
('qCMfKSQhNO5ZUwMDfBZ-gqtQrTMhL0XH', '2024-02-15 08:15:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 08:15:58', '2024-02-14 08:15:58'),
('qdHDbaPeeiV2Ua73eTz745p2xhFuHOR1', '2024-02-15 03:33:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:33:23', '2024-02-14 03:33:23'),
('qGKltntMSaFf8E8U1JV0pVLXwp5nN8hn', '2024-02-14 19:08:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-13 19:08:42', '2024-02-13 19:08:42'),
('QMrmn-44ep-ufdiJ6g9ZGqT_ELD3YIJR', '2024-02-15 03:01:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:01:12', '2024-02-14 03:01:12'),
('Rb939AbL8r5TqBxLkD1959VsXkekPR2X', '2024-02-15 09:16:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:16:40', '2024-02-14 09:16:40'),
('RuZsWM4hbnPYVteZX9kejPV0MnAXcHUF', '2024-02-15 02:11:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 02:11:34', '2024-02-14 02:11:34'),
('Sow63D1AYI0SkW4s0fs6D8kEFh1TtMKn', '2024-02-15 06:39:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 06:39:19', '2024-02-14 06:39:19'),
('ST0w_aKgJG7ffynJ_yj20YOwSgl3bzB_', '2024-02-15 03:19:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:19:36', '2024-02-14 03:19:36'),
('T-CARIXGxz0mAn8Bwj2wwnfI4qPn0tyt', '2024-02-15 06:41:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 06:41:39', '2024-02-14 06:41:39'),
('T3ffSl_5y02V62SHLnwkugQMciDablOR', '2024-02-15 09:32:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:32:52', '2024-02-14 09:32:52'),
('tDTEk0NRPOnWV-p-TdpPWptN2G7lXKWR', '2024-02-15 09:16:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:16:44', '2024-02-14 09:16:44'),
('txt3yENFYJ6_GJk8ZaLGWC-lE8a57MKs', '2024-02-15 02:21:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 02:21:33', '2024-02-14 02:21:33'),
('u1CPyG_cCWw7SDZqWeVgBQX46yLg847y', '2024-02-15 03:14:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:14:32', '2024-02-14 03:14:32'),
('ub6FCmmKFCsal0JkOR7rMfrsAf-Qtt-o', '2024-02-15 04:28:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 04:28:59', '2024-02-14 04:28:59'),
('UJSXbvPq8rxXuK0taJDnpETXuJrdPjt3', '2024-02-15 09:55:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:55:55', '2024-02-14 09:55:55'),
('UQ5bXFb0bTsVcw7EtBf_8Dav3LiQUeNU', '2024-02-15 09:44:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:44:30', '2024-02-14 09:44:30'),
('uqBU7PaXCj4geM-2Mwnr6nQsIisKiPGn', '2024-02-15 03:33:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:33:31', '2024-02-14 03:33:31'),
('v8rDpMGoXf7pcqX4b61EdMl4XPXvEuzZ', '2024-02-15 09:44:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:44:33', '2024-02-14 09:44:33'),
('vKiisVk1eMLFmXWtdJTnNr5k3Q0YA_0Z', '2024-02-15 03:33:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:33:49', '2024-02-14 03:33:49'),
('vx1uR2HzzIv0y0s5o8H1MiB4PTFGG4U-', '2024-02-15 03:14:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:14:42', '2024-02-14 03:14:42'),
('W4ruL1fegkgXOfpfzVqiEJ7HfOExqkxw', '2024-02-15 06:41:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 06:41:47', '2024-02-14 06:41:47'),
('Wg2JWmAqaMoCZyN3wmfP4EPxuK4nPwnO', '2024-02-15 09:28:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:28:36', '2024-02-14 09:28:36'),
('WjqHfAupO2nJBfCw0ggs6toa7EFpQ--S', '2024-02-15 06:42:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 06:42:19', '2024-02-14 06:42:19'),
('wLPVn8ldrmCylg5LlJu9EelKmMDJQf9V', '2024-02-15 02:30:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 02:30:47', '2024-02-14 02:30:47'),
('WT5WAEXGG7JShNcakYv3m3wFh-sts7wW', '2024-02-15 02:31:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 02:31:25', '2024-02-14 02:31:25'),
('ww2z1U-OHFsaIYDwC8--R8A-TtpXY_lE', '2024-02-15 04:02:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 04:02:33', '2024-02-14 04:02:33'),
('wwEJGjASR5nvlkrpc2zpp_dzTLABJ7wz', '2024-02-15 08:01:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 08:01:12', '2024-02-14 08:01:12'),
('Wy7XaNcqCsA8IRUua8FdL8Plqo8-zaXg', '2024-02-15 09:28:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:28:35', '2024-02-14 09:28:35'),
('xOl5WxSbpTiK3uwyaindt-ybcxVbuspm', '2024-02-15 03:33:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"da9312f6-8b73-4b49-bc0f-cf2fbe3ed86f\"}', '2024-02-14 03:31:03', '2024-02-14 03:33:16'),
('XyGBsQ6r0w4N7kgDkFysWWu84EZdZWLl', '2024-02-15 09:15:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:15:26', '2024-02-14 09:15:26'),
('y0N4XE2waKAP_tZoeoXp-8IMZvg1kwG8', '2024-02-15 02:30:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 02:30:30', '2024-02-14 02:30:30'),
('YGxRnYw2VnBt50PvkhHhLA-Un0WDLS8o', '2024-02-15 03:32:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:32:50', '2024-02-14 03:32:50'),
('Yo0ApQJHpEYHO9ORU97cbCmP8h3bgIbI', '2024-02-15 08:15:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 08:15:47', '2024-02-14 08:15:47'),
('yxds6b-cIt-hqzSVqsiw55Bpuz2D9GYd', '2024-02-15 04:34:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 04:34:28', '2024-02-14 04:34:28'),
('z-3u9Bw2nIQT2y7P4Z6zYzwBmauvPvdk', '2024-02-15 02:30:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 02:30:39', '2024-02-14 02:30:39'),
('z5-ZCFWpiykL9EuvNRFbmUCTD7YycdZd', '2024-02-15 03:26:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:26:50', '2024-02-14 03:26:50'),
('Z9-BYuSXJDbe8Q44OrjksXsOI8D9iEgH', '2024-02-15 04:48:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 04:48:47', '2024-02-14 04:48:47'),
('zFf4grEKi4nXxf1cuSYNtVlQnm2Znqj3', '2024-02-15 08:14:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 08:14:35', '2024-02-14 08:14:35'),
('zI06TFtYyJTtp3Nsga4A-SponOQLfYzX', '2024-02-15 03:22:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:22:55', '2024-02-14 03:22:55'),
('ZI2basxfilsevwMwuwxIs46WjkgLjbOi', '2024-02-15 03:27:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 03:27:30', '2024-02-14 03:27:30'),
('zQxVk4Mprq-n60yA3qnZyCjPTpIeVENK', '2024-02-14 18:46:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-13 18:46:58', '2024-02-13 18:46:58'),
('zzHHJlgDgyTgH155H0J2Aox3MKdQYoLM', '2024-02-15 09:55:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:55:58', '2024-02-14 09:55:58'),
('_j0WFunvHLe3Mtv5jBb-rsIsqO4sZeDv', '2024-02-15 04:03:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 04:03:00', '2024-02-14 04:03:00'),
('_Sg-wu3KtL2XptZqmyeNB7gRhyg0etO-', '2024-02-15 09:18:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-14 09:18:13', '2024-02-14 09:18:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(3, 'da9312f6-8b73-4b49-bc0f-cf2fbe3ed86f', 'Hanif', 'Officer18@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$Wpi8o53E8CrWRB6LzhxXyg$ua/R0gNTD1H4/9vfaNUH5L9R9cfw2wt3izgbbm1Pwp8', 'Officer', '2024-02-12 06:20:37', '2024-02-12 06:20:37'),
(4, 'defcdf33-2c08-46a5-82cb-e1f11ed06008', 'Udin Updated', 'manager@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$6zgLjCjuDAreCdr9Pv7p5w$4ythT2QJ0/4k0nr0MZFAZvtI+AJO1ELmSJiFcM83vBE', 'manager', '2024-02-12 07:19:39', '2024-02-12 08:29:56'),
(6, '16970025-afb6-4a81-9b38-0eea352015b4', 'samsudin', 'manager36@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$rSbBJge8w0edFwgzZ1wKHQ$dFT56dJvwt8ZQManwB8ugdH/LXygUungKbHbhwHUcKw', 'manager', '2024-02-14 02:11:34', '2024-02-14 02:11:34'),
(7, '32456e78-300b-4ee8-9664-3ee36d50e88f', 'Jihan', 'jihan03@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$nVN06+jKA0+Xmuk8JJULRw$9hXdN1WezzL1je0Mr5UlrAeG5hk7uQ4laQ2UhQGNjG0', 'finance', '2024-02-14 03:27:31', '2024-02-14 03:27:31'),
(9, 'e664df15-eb64-44b9-98c1-89500120aaa8', 'endin', 'officer11@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$T+iEjV8/nbidahwFlyEYuQ$mKtX51tqdwXjOncYNB7rL6sOMF8eUCMXlJoA1QK27xs', 'Officer', '2024-02-14 03:33:16', '2024-02-14 03:33:16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
