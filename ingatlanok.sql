-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: db2
-- Létrehozás ideje: 2023. Feb 28. 10:48
-- Kiszolgáló verziója: 8.0.32
-- PHP verzió: 8.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `ingatlanok`
--
CREATE DATABASE IF NOT EXISTS `ingatlanok` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `ingatlanok`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ingatlanoks`
--

DROP TABLE IF EXISTS `ingatlanoks`;
CREATE TABLE IF NOT EXISTS `ingatlanoks` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `kategoria` bigint UNSIGNED NOT NULL,
  `leiras` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hirdetes_datuma` date NOT NULL DEFAULT '2023-02-28',
  `tehermentes` tinyint(1) NOT NULL DEFAULT '0',
  `ar` int NOT NULL,
  `kep_URL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ingatlanoks_kategoria_foreign` (`kategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `ingatlanoks`
--

INSERT INTO `ingatlanoks` (`id`, `kategoria`, `leiras`, `hirdetes_datuma`, `tehermentes`, `ar`, `kep_URL`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kertvárosi részén egyszintes házat kinálunk nyugodt környezetben, nagy telken.', '2022-03-14', 1, 78000000, 'https://www.otthonokesmegoldasok.hu/wp-content/uploads/2016/06/kertes-hz-00.jpg', NULL, NULL),
(2, 1, 'Belvárosi környezetben, árnyékos helyen kis méretű családi ház eladó. Tömegközlekedéssel könnyen megközelíthető', '2022-03-21', 1, 56000000, 'https://renouveaux.eu/wp-content/uploads/2020/06/Elegans_belvarosi_lakas_haloszoba.jpg', NULL, NULL),
(3, 2, 'Kétszintes berendezett lakás a belvárosban kiadó.', '2022-03-17', 1, 65000000, 'https://th.bing.com/th/id/OIP.h1uJnN9WjcOKFDODZhIaTQHaFj?pid=ImgDet&rs=1', NULL, NULL),
(4, 5, 'Nagy mezőgazdasági terület', '2023-01-01', 0, 100000000, 'https://i.pinimg.com/originals/67/bc/9a/67bc9a2f37b6a684d60c98ed8d9fb688.jpg', NULL, NULL),
(5, 6, 'ipari ingatlan eladó', '2023-02-28', 0, 150000000, 'https://th.bing.com/th/id/R.f475bb1cbe3c22a400b151e7c05d418e?rik=KyQqNRXKk%2b%2fD%2fg&riu=http%3a%2f%2fzso-eni.hu%2fwp-content%2fuploads%2fipari-ingatlan-ertekbecsles.png&ehk=n1OWRjEBkHhxpb6y8XnkAkgNH0GZSNxKvKK7DKnBenQ%3d&risl=&pid=ImgRaw&r=0', NULL, NULL),
(6, 4, 'Szép garázs eladó', '2023-02-28', 1, 2000000, 'https://mindenoke.hu/_uploads/market_gallery/326/82883903_2817128188333463_6236423213941784576_o.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kategoriaks`
--

DROP TABLE IF EXISTS `kategoriaks`;
CREATE TABLE IF NOT EXISTS `kategoriaks` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nev` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `kategoriaks`
--

INSERT INTO `kategoriaks` (`id`, `nev`, `created_at`, `updated_at`) VALUES
(1, 'Ház', NULL, NULL),
(2, 'Lakás', NULL, NULL),
(3, 'Építési telek', NULL, NULL),
(4, 'Garázs', NULL, NULL),
(5, 'Mezőgazdasági terület', NULL, NULL),
(6, 'Ipari ingatlan', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_28_084001_create_kategoriaks_table', 1),
(6, '2023_02_28_084002_create_ingatlanoks_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `ingatlanoks`
--
ALTER TABLE `ingatlanoks`
  ADD CONSTRAINT `ingatlanoks_kategoria_foreign` FOREIGN KEY (`kategoria`) REFERENCES `kategoriaks` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
