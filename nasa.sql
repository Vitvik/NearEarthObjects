-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Лип 20 2022 р., 17:10
-- Версія сервера: 10.4.24-MariaDB
-- Версія PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `nasa`
--

-- --------------------------------------------------------

--
-- Структура таблиці `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_07_07_143453_create_near_earth_objects_table', 2),
(7, '2022_07_12_081352_create_near_earth_objects_table_web_service', 3);

-- --------------------------------------------------------

--
-- Структура таблиці `near_earth_objects`
--

CREATE TABLE `near_earth_objects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `referenced` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speed` float NOT NULL,
  `is_hazardous` tinyint(1) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `near_earth_objects`
--

INSERT INTO `near_earth_objects` (`id`, `referenced`, `name`, `speed`, `is_hazardous`, `date`, `created_at`, `updated_at`) VALUES
(6, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2000433', '433 Eros (A898 PA)', 20083, 0, '1893-10-29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2000719', '719 Albert (A911 TB)', 12405.7, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2000887', '887 Alinda (A918 AA)', 24497.2, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2001036', '1036 Ganymed (A924 UB)', 22693.9, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2001221', '1221 Amor (1932 EA1)', 47769.7, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2001566', '1566 Icarus (1949 MA)', 97229.2, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2001580', '1580 Betulia (1950 KA)', 103273, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2001620', '1620 Geographos (1951 RA)', 42346.2, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2001627', '1627 Ivar (1929 SH)', 30180.7, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2001685', '1685 Toro (1948 OA)', 61232.8, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2001862', '1862 Apollo (1932 HA)', 44322.8, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2001863', '1863 Antinous (1948 EA)', 65086.3, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2001864', '1864 Daedalus (1971 FA)', 81022, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2001865', '1865 Cerberus (1971 UA)', 55179.8, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2001866', '1866 Sisyphus (1972 XA)', 121733, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2001915', '1915 Quetzalcoatl (1953 EA)', 54435.6, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2001916', '1916 Boreas (1953 RA)', 25046.6, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2001917', '1917 Cuyo (1968 AA)', 66231.2, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2001943', '1943 Anteros (1973 EC)', 47733.3, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2001980', '1980 Tezcatlipoca (1950 LA)', 46442.2, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2001981', '1981 Midas (1973 EA)', 78534.9, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002059', '2059 Baboquivari (1963 UA)', 26746.3, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002061', '2061 Anza (1960 UA)', 44845, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002062', '2062 Aten (1976 AA)', 40567.8, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002063', '2063 Bacchus (1977 HB)', 34315.3, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002100', '2100 Ra-Shalom (1978 RA)', 67465.8, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002101', '2101 Adonis (1936 CA)', 69588.2, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002102', '2102 Tantalus (1975 YA)', 116367, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002135', '2135 Aristaeus (1977 HA)', 98776, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002201', '2201 Oljato (1947 XC)', 53110, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002202', '2202 Pele (1972 RA)', 27564.2, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002212', '2212 Hephaistos (1978 SB)', 105916, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002329', '2329 Orthos (1976 WA)', 84326.2, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002340', '2340 Hathor (1976 UA)', 62967, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002368', '2368 Beltrovata (1977 RA)', 5656.61, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002608', '2608 Seneca (1978 DA)', 61685.3, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003102', '3102 Krok (1981 QA)', 33360.2, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003103', '3103 Eger (1982 BB)', 79247.3, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003122', '3122 Florence (1981 ET3)', 73048.5, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003199', '3199 Nefertiti (1982 RA)', 59600.9, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003200', '3200 Phaethon (1983 TB)', 127233, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003271', '3271 Ul (1982 RB)', 47393.6, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003288', '3288 Seleucus (1982 DV)', 32121.9, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003352', '3352 McAuliffe (1981 CW)', 8639.76, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003360', '3360 Syrinx (1981 VA)', 107620, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003361', '3361 Orpheus (1982 HR)', 76934.4, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003362', '3362 Khufu (1984 QA)', 108037, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003551', '3551 Verenia (1983 RD)', 55998, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003552', '3552 Don Quixote (1983 SA)', 76401.2, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003553', '3553 Mera (1985 JA)', 64597.9, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003554', '3554 Amun (1986 EB)', 53593.4, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003671', '3671 Dionysus (1984 KD)', 70694, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003691', '3691 Bede (1982 FT)', 37914.7, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003752', '3752 Camillo (1985 PA)', 117188, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003753', '3753 Cruithne (1986 TO)', 59753.3, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003757', '3757 Anagolay (1982 XB)', 39218.9, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003838', '3838 Epona (1986 WA)', 78151.2, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003908', '3908 Nyx (1980 PA)', 39255.9, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003988', '3988 Huma (1986 LA)', 26388, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004015', '4015 Wilson-Harrington (1979 VA)', 77652.9, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2001981', '1981 Midas (1973 EA)', 78534.9, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002059', '2059 Baboquivari (1963 UA)', 26746.3, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002061', '2061 Anza (1960 UA)', 44845, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002062', '2062 Aten (1976 AA)', 40567.8, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002063', '2063 Bacchus (1977 HB)', 34315.3, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002100', '2100 Ra-Shalom (1978 RA)', 67465.8, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002101', '2101 Adonis (1936 CA)', 69588.2, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002102', '2102 Tantalus (1975 YA)', 116367, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002135', '2135 Aristaeus (1977 HA)', 98776, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002201', '2201 Oljato (1947 XC)', 53110, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002202', '2202 Pele (1972 RA)', 27564.2, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002212', '2212 Hephaistos (1978 SB)', 105916, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002329', '2329 Orthos (1976 WA)', 84326.2, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002340', '2340 Hathor (1976 UA)', 62967, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002368', '2368 Beltrovata (1977 RA)', 5656.61, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2002608', '2608 Seneca (1978 DA)', 61685.3, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003102', '3102 Krok (1981 QA)', 33360.2, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003103', '3103 Eger (1982 BB)', 79247.3, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003122', '3122 Florence (1981 ET3)', 73048.5, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2003199', '3199 Nefertiti (1982 RA)', 59600.9, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004034', '4034 Vishnu (1986 PA)', 87221.4, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004055', '4055 Magellan (1985 DO2)', 48067.1, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004179', '4179 Toutatis (1989 AC)', 100020, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004183', '4183 Cuno (1959 LM)', 64644.6, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004197', '4197 Morpheus (1982 TA)', 131317, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004257', '4257 Ubasti (1987 QA)', 81454.6, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004341', '4341 Poseidon (1987 KF)', 71707.8, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004401', '4401 Aditi (1985 TB)', 64479.2, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004450', '4450 Pan (1987 SY)', 67862.4, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004486', '4486 Mithra (1987 SB)', 79942.4, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004487', '4487 Pocahontas (1987 UA)', 35156.9, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004503', '4503 Cleobulus (1989 WM)', 16637.1, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004544', '4544 Xanthus (1989 FB)', 29616.7, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004581', '4581 Asclepius (1989 FC)', 45510.4, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004596', '4596 (1981 QB)', 88491.5, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004660', '4660 Nereus (1982 DB)', 19961.5, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004688', '4688 (1980 WF)', 57458, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004769', '4769 Castalia (1989 PB)', 68073.1, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004947', '4947 Ninkasi (1988 TJ1)', 30454.9, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004953', '4953 (1990 MU)', 128973, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004954', '4954 Eric (1990 SQ)', 55152, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004957', '4957 Brucemurray (1990 XJ)', 61432.8, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2005011', '5011 Ptah (6743 P-L)', 55202.6, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2005131', '5131 (1990 BG)', 92816.2, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2005143', '5143 Heracles (1991 VL)', 21807.3, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2005189', '5189 (1990 UQ)', 39386.6, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2005324', '5324 Lyapunov (1987 SL)', 52789.5, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2005332', '5332 Davidaguilar (1990 DA)', 64843.4, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2005370', '5370 Taranis (1986 RA)', 44687.5, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2005381', '5381 Sekhmet (1991 JY)', 100114, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2005496', '5496 (1973 NA)', 137213, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2005587', '5587 (1990 SB)', 73281, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2005590', '5590 (1990 VA)', 46599.5, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2005604', '5604 (1992 FE)', 53557.2, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2005620', '5620 Jasonwheeler (1990 OA)', 16570.7, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2005626', '5626 Melissabrucker (1991 FE)', 8139.47, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2005645', '5645 (1990 SP)', 68406.9, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2005646', '5646 (1990 TR)', 18500.5, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2005653', '5653 Camarillo (1992 WD5)', 14773.2, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2005660', '5660 (1974 MA)', 134062, 0, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблиці `near_earth_objects_table_web_service`
--

CREATE TABLE `near_earth_objects_table_web_service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reference` int(11) NOT NULL,
  `referenced` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speed` double(20,10) NOT NULL,
  `is_hazardous` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `near_earth_objects_table_web_service`
--

INSERT INTO `near_earth_objects_table_web_service` (`id`, `date`, `reference`, `referenced`, `name`, `speed`, `is_hazardous`, `created_at`, `updated_at`) VALUES
(1, '2022-07-15', 2012711, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2012711', '12711 Tukmit (1991 BB)', 78391.8593750000, 0, NULL, NULL),
(3, '2022-07-15', 3689017, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3689017', '(2014 RW22)', 58413.7031250000, 0, NULL, NULL),
(4, '2022-07-15', 3747353, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3747353', '(2016 EE158)', 7814.4252929688, 0, NULL, NULL),
(5, '2022-07-15', 3754252, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3754252', '(2016 LM48)', 44813.8320312500, 0, NULL, NULL),
(6, '2022-07-15', 3781300, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3781300', '(2017 QX34)', 65276.4023437500, 0, NULL, NULL),
(7, '2022-07-15', 54073354, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54073354', '(2020 TR7)', 43703.8203125000, 0, NULL, NULL),
(8, '2022-07-15', 54131739, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54131739', '(2021 FC)', 12326.2109375000, 0, NULL, NULL),
(9, '2022-07-15', 54143420, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54143420', '(2021 JE1)', 24717.7890625000, 0, NULL, NULL),
(10, '2022-07-15', 54217987, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54217987', '(2021 VX7)', 23689.4121093750, 0, NULL, NULL),
(12, '2022-07-14', 3701849, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3701849', '(2014 XT6)', 33439.0976562500, 0, NULL, NULL),
(13, '2022-07-14', 3771605, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3771605', '(2017 EE23)', 42219.5937500000, 0, NULL, NULL),
(14, '2022-07-14', 3776269, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3776269', '(2017 MM8)', 69499.4375000000, 0, NULL, NULL),
(15, '2022-07-14', 3801965, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3801965', '(2018 FY)', 57299.8164062500, 0, NULL, NULL),
(16, '2022-07-14', 3837973, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3837973', '(2019 BO1)', 59193.7109375000, 0, NULL, NULL),
(17, '2022-07-13', 2345722, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2345722', '345722 (2007 BG29)', 64938.3593750000, 0, NULL, NULL),
(18, '2022-07-13', 2498918, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2498918', '498918 (2009 BF)', 93998.8984375000, 0, NULL, NULL),
(19, '2022-07-13', 3132508, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3132508', '(2002 PO6)', 57700.9257812500, 0, NULL, NULL),
(20, '2022-07-13', 3659801, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3659801', '(2014 BW32)', 53382.3789062500, 0, NULL, NULL),
(21, '2022-07-13', 3721239, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3721239', '(2015 LU24)', 48514.2656250000, 0, NULL, NULL),
(22, '2022-07-13', 3803909, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3803909', '(2018 HN)', 26576.1777343750, 0, NULL, NULL),
(23, '2022-07-13', 3825008, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3825008', '(2018 KU1)', 87682.9921875000, 0, NULL, NULL),
(24, '2022-07-13', 3827572, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3827572', '(2018 RL4)', 43778.9296875000, 0, NULL, NULL),
(25, '2022-07-13', 3837785, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3837785', '(2019 AS8)', 35276.5898437500, 0, NULL, NULL),
(27, '2022-07-16', 3092285, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3092285', '(2001 BE16)', 77016.4921875000, 0, NULL, NULL),
(29, '2022-07-16', 3721137, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3721137', '(2015 LE21)', 40449.2578125000, 0, NULL, NULL),
(30, '2022-07-16', 3766436, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3766436', '(2017 AL13)', 29892.1640625000, 0, NULL, NULL),
(31, '2022-07-16', 3776069, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3776069', '(2017 MZ3)', 70225.3828125000, 0, NULL, NULL),
(32, '2022-07-16', 3836283, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3836283', '(2018 WS)', 10290.9785156250, 0, NULL, NULL),
(33, '2022-07-16', 54213609, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54213609', '(2021 UW3)', 16587.4492187500, 0, NULL, NULL),
(34, '2022-07-16', 54240292, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54240292', '(2022 BS2)', 28894.9765625000, 0, NULL, NULL),
(37, '2022-07-15', 2417655, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2417655', '417655 (2006 YF13)', 65642.9921875000, 0, NULL, NULL),
(39, '2022-07-15', 3747353, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3747353', '(2016 EE158)', 7814.4252929688, 0, NULL, NULL),
(40, '2022-07-15', 3754252, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3754252', '(2016 LM48)', 44813.8320312500, 0, NULL, NULL),
(41, '2022-07-15', 3781300, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3781300', '(2017 QX34)', 65276.4023437500, 0, NULL, NULL),
(42, '2022-07-15', 54073354, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54073354', '(2020 TR7)', 43703.8203125000, 0, NULL, NULL),
(43, '2022-07-15', 54131739, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54131739', '(2021 FC)', 12326.2109375000, 0, NULL, NULL),
(44, '2022-07-15', 54143420, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54143420', '(2021 JE1)', 24717.7890625000, 0, NULL, NULL),
(45, '2022-07-15', 54217987, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54217987', '(2021 VX7)', 23689.4121093750, 0, NULL, NULL),
(47, '2022-07-14', 3701849, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3701849', '(2014 XT6)', 33439.0976562500, 0, NULL, NULL),
(48, '2022-07-14', 3771605, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3771605', '(2017 EE23)', 42219.5937500000, 0, NULL, NULL),
(49, '2022-07-14', 3776269, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3776269', '(2017 MM8)', 69499.4375000000, 0, NULL, NULL),
(50, '2022-07-14', 3801965, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3801965', '(2018 FY)', 57299.8164062500, 0, NULL, NULL),
(51, '2022-07-14', 3837973, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3837973', '(2019 BO1)', 59193.7109375000, 0, NULL, NULL),
(55, '2022-07-16', 3721137, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3721137', '(2015 LE21)', 40449.2578125000, 0, NULL, NULL),
(56, '2022-07-16', 3766436, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3766436', '(2017 AL13)', 29892.1640625000, 0, NULL, NULL),
(57, '2022-07-16', 3776069, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3776069', '(2017 MZ3)', 70225.3828125000, 0, NULL, NULL),
(58, '2022-07-16', 3836283, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3836283', '(2018 WS)', 10290.9785156250, 0, NULL, NULL),
(59, '2022-07-16', 54213609, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54213609', '(2021 UW3)', 16587.4492187500, 0, NULL, NULL),
(60, '2022-07-16', 54240292, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54240292', '(2022 BS2)', 28894.9765625000, 0, NULL, NULL),
(65, '2022-07-15', 3747353, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3747353', '(2016 EE158)', 7814.4252929688, 0, NULL, NULL),
(66, '2022-07-15', 3754252, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3754252', '(2016 LM48)', 44813.8320312500, 0, NULL, NULL),
(67, '2022-07-15', 3781300, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3781300', '(2017 QX34)', 65276.4023437500, 0, NULL, NULL),
(68, '2022-07-15', 54073354, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54073354', '(2020 TR7)', 43703.8203125000, 0, NULL, NULL),
(69, '2022-07-15', 54131739, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54131739', '(2021 FC)', 12326.2109375000, 0, NULL, NULL),
(70, '2022-07-15', 54143420, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54143420', '(2021 JE1)', 24717.7890625000, 0, NULL, NULL),
(71, '2022-07-15', 54217987, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54217987', '(2021 VX7)', 23689.4121093750, 0, NULL, NULL),
(73, '2022-07-14', 3701849, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3701849', '(2014 XT6)', 33439.0976562500, 0, NULL, NULL),
(74, '2022-07-14', 3771605, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3771605', '(2017 EE23)', 42219.5937500000, 0, NULL, NULL),
(75, '2022-07-14', 3776269, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3776269', '(2017 MM8)', 69499.4375000000, 0, NULL, NULL),
(76, '2022-07-14', 3801965, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3801965', '(2018 FY)', 57299.8164062500, 0, NULL, NULL),
(77, '2022-07-14', 3837973, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3837973', '(2019 BO1)', 59193.7109375000, 0, NULL, NULL),
(78, '2022-07-16', 2357621, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2357621', '357621 (2005 EG94)', 73463.1718750000, 0, NULL, NULL),
(81, '2022-07-16', 3721137, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3721137', '(2015 LE21)', 40449.2578125000, 0, NULL, NULL),
(82, '2022-07-16', 3766436, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3766436', '(2017 AL13)', 29892.1640625000, 0, NULL, NULL),
(83, '2022-07-16', 3776069, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3776069', '(2017 MZ3)', 70225.3828125000, 0, NULL, NULL),
(84, '2022-07-16', 3836283, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3836283', '(2018 WS)', 10290.9785156250, 0, NULL, NULL),
(85, '2022-07-16', 54213609, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54213609', '(2021 UW3)', 16587.4492187500, 0, NULL, NULL),
(86, '2022-07-16', 54240292, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54240292', '(2022 BS2)', 28894.9765625000, 0, NULL, NULL),
(90, '2022-07-15', 3689017, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3689017', '(2014 RW22)', 58413.7031250000, 0, NULL, NULL),
(91, '2022-07-15', 3747353, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3747353', '(2016 EE158)', 7814.4252929688, 0, NULL, NULL),
(92, '2022-07-15', 3754252, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3754252', '(2016 LM48)', 44813.8320312500, 0, NULL, NULL),
(93, '2022-07-15', 3781300, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3781300', '(2017 QX34)', 65276.4023437500, 0, NULL, NULL),
(94, '2022-07-15', 54073354, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54073354', '(2020 TR7)', 43703.8203125000, 0, NULL, NULL),
(95, '2022-07-15', 54131739, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54131739', '(2021 FC)', 12326.2109375000, 0, NULL, NULL),
(96, '2022-07-15', 54143420, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54143420', '(2021 JE1)', 24717.7890625000, 0, NULL, NULL),
(97, '2022-07-15', 54217987, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54217987', '(2021 VX7)', 23689.4121093750, 0, NULL, NULL),
(99, '2022-07-14', 3701849, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3701849', '(2014 XT6)', 33439.0976562500, 0, NULL, NULL),
(100, '2022-07-14', 3771605, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3771605', '(2017 EE23)', 42219.5937500000, 0, NULL, NULL),
(101, '2022-07-14', 3776269, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3776269', '(2017 MM8)', 69499.4375000000, 0, NULL, NULL),
(102, '2022-07-14', 3801965, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3801965', '(2018 FY)', 57299.8164062500, 0, NULL, NULL),
(103, '2022-07-14', 3837973, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3837973', '(2019 BO1)', 59193.7109375000, 0, NULL, NULL),
(107, '2022-07-16', 3721137, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3721137', '(2015 LE21)', 40449.2578125000, 0, NULL, NULL),
(108, '2022-07-16', 3766436, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3766436', '(2017 AL13)', 29892.1640625000, 0, NULL, NULL),
(109, '2022-07-16', 3776069, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3776069', '(2017 MZ3)', 70225.3828125000, 0, NULL, NULL),
(110, '2022-07-16', 3836283, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3836283', '(2018 WS)', 10290.9785156250, 0, NULL, NULL),
(111, '2022-07-16', 54213609, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54213609', '(2021 UW3)', 16587.4492187500, 0, NULL, NULL),
(112, '2022-07-16', 54240292, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54240292', '(2022 BS2)', 28894.9765625000, 0, NULL, NULL),
(117, '2022-07-15', 3747353, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3747353', '(2016 EE158)', 7814.4252929688, 0, NULL, NULL),
(118, '2022-07-15', 3754252, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3754252', '(2016 LM48)', 44813.8320312500, 0, NULL, NULL),
(119, '2022-07-15', 3781300, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3781300', '(2017 QX34)', 65276.4023437500, 0, NULL, NULL),
(120, '2022-07-15', 54073354, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54073354', '(2020 TR7)', 43703.8203125000, 0, NULL, NULL),
(121, '2022-07-15', 54131739, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54131739', '(2021 FC)', 12326.2109375000, 0, NULL, NULL),
(122, '2022-07-15', 54143420, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54143420', '(2021 JE1)', 24717.7890625000, 0, NULL, NULL),
(123, '2022-07-15', 54217987, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54217987', '(2021 VX7)', 23689.4121093750, 0, NULL, NULL),
(125, '2022-07-14', 3701849, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3701849', '(2014 XT6)', 33439.0976562500, 0, NULL, NULL),
(126, '2022-07-14', 3771605, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3771605', '(2017 EE23)', 42219.5937500000, 0, NULL, NULL),
(127, '2022-07-14', 3776269, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3776269', '(2017 MM8)', 69499.4375000000, 0, NULL, NULL),
(128, '2022-07-14', 3801965, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3801965', '(2018 FY)', 57299.8164062500, 0, NULL, NULL),
(129, '2022-07-14', 3837973, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3837973', '(2019 BO1)', 59193.7109375000, 0, NULL, NULL),
(132, '2022-07-16', 3360486, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3360486', '(2006 WE4)', 63089.9218750000, 0, NULL, NULL),
(133, '2022-07-16', 3721137, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3721137', '(2015 LE21)', 40449.2578125000, 0, NULL, NULL),
(134, '2022-07-16', 3766436, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3766436', '(2017 AL13)', 29892.1640625000, 0, NULL, NULL),
(135, '2022-07-16', 3776069, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3776069', '(2017 MZ3)', 70225.3828125000, 0, NULL, NULL),
(136, '2022-07-16', 3836283, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3836283', '(2018 WS)', 10290.9785156250, 0, NULL, NULL),
(137, '2022-07-16', 54213609, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54213609', '(2021 UW3)', 16587.4492187500, 0, NULL, NULL),
(138, '2022-07-16', 54240292, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54240292', '(2022 BS2)', 28894.9765625000, 0, NULL, NULL),
(139, '2022-07-16', 2613676, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2613676', '613676 (2006 WE4)', 63089.9218750000, 0, NULL, NULL),
(143, '2022-07-15', 3747353, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3747353', '(2016 EE158)', 7814.4252929688, 0, NULL, NULL),
(144, '2022-07-15', 3754252, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3754252', '(2016 LM48)', 44813.8320312500, 0, NULL, NULL),
(145, '2022-07-15', 3781300, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3781300', '(2017 QX34)', 65276.4023437500, 0, NULL, NULL),
(146, '2022-07-15', 54073354, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54073354', '(2020 TR7)', 43703.8203125000, 0, NULL, NULL),
(147, '2022-07-15', 54131739, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54131739', '(2021 FC)', 12326.2109375000, 0, NULL, NULL),
(148, '2022-07-15', 54143420, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54143420', '(2021 JE1)', 24717.7890625000, 0, NULL, NULL),
(149, '2022-07-15', 54217987, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54217987', '(2021 VX7)', 23689.4121093750, 0, NULL, NULL),
(151, '2022-07-14', 3701849, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3701849', '(2014 XT6)', 33439.0976562500, 0, NULL, NULL),
(152, '2022-07-14', 3771605, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3771605', '(2017 EE23)', 42219.5937500000, 0, NULL, NULL),
(153, '2022-07-14', 3776269, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3776269', '(2017 MM8)', 69499.4375000000, 0, NULL, NULL),
(154, '2022-07-14', 3801965, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3801965', '(2018 FY)', 57299.8164062500, 0, NULL, NULL),
(155, '2022-07-14', 3837973, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3837973', '(2019 BO1)', 59193.7109375000, 0, NULL, NULL),
(159, '2022-07-16', 3721137, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3721137', '(2015 LE21)', 40449.2578125000, 0, NULL, NULL),
(160, '2022-07-16', 3766436, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3766436', '(2017 AL13)', 29892.1640625000, 0, NULL, NULL),
(161, '2022-07-16', 3776069, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3776069', '(2017 MZ3)', 70225.3828125000, 0, NULL, NULL),
(162, '2022-07-16', 3836283, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3836283', '(2018 WS)', 10290.9785156250, 0, NULL, NULL),
(163, '2022-07-16', 54213609, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54213609', '(2021 UW3)', 16587.4492187500, 0, NULL, NULL),
(164, '2022-07-16', 54240292, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54240292', '(2022 BS2)', 28894.9765625000, 0, NULL, NULL),
(168, '2022-07-15', 3689017, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3689017', '(2014 RW22)', 58413.7031250000, 0, NULL, NULL),
(169, '2022-07-15', 3747353, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3747353', '(2016 EE158)', 7814.4252929688, 0, NULL, NULL),
(170, '2022-07-15', 3754252, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3754252', '(2016 LM48)', 44813.8320312500, 0, NULL, NULL),
(171, '2022-07-15', 3781300, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3781300', '(2017 QX34)', 65276.4023437500, 0, NULL, NULL),
(172, '2022-07-15', 54073354, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54073354', '(2020 TR7)', 43703.8203125000, 0, NULL, NULL),
(173, '2022-07-15', 54131739, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54131739', '(2021 FC)', 12326.2109375000, 0, NULL, NULL),
(174, '2022-07-15', 54143420, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54143420', '(2021 JE1)', 24717.7890625000, 0, NULL, NULL),
(175, '2022-07-15', 54217987, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54217987', '(2021 VX7)', 23689.4121093750, 0, NULL, NULL),
(176, '2022-07-14', 2444628, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2444628', '444628 (2006 WQ1)', 30377.4257812500, 0, NULL, NULL),
(177, '2022-07-14', 3701849, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3701849', '(2014 XT6)', 33439.0976562500, 0, NULL, NULL),
(178, '2022-07-14', 3771605, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3771605', '(2017 EE23)', 42219.5937500000, 0, NULL, NULL),
(179, '2022-07-14', 3776269, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3776269', '(2017 MM8)', 69499.4375000000, 0, NULL, NULL),
(180, '2022-07-14', 3801965, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3801965', '(2018 FY)', 57299.8164062500, 0, NULL, NULL),
(181, '2022-07-14', 3837973, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3837973', '(2019 BO1)', 59193.7109375000, 0, NULL, NULL),
(182, '2022-07-17', 3610760, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3610760', '(2012 TD146)', 45643.9375000000, 0, NULL, NULL),
(183, '2022-07-17', 3759677, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3759677', '(2016 NO56)', 33793.3164062500, 0, NULL, NULL),
(184, '2022-07-17', 3799756, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3799756', '(2018 DF2)', 49377.2265625000, 0, NULL, NULL),
(185, '2022-07-17', 3943321, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3943321', '(2019 YV)', 47075.6093750000, 0, NULL, NULL),
(186, '2022-07-17', 54171999, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54171999', '(2021 OT)', 40489.1718750000, 0, NULL, NULL),
(190, '2022-07-16', 3721137, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3721137', '(2015 LE21)', 40449.2578125000, 0, NULL, NULL),
(191, '2022-07-16', 3766436, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3766436', '(2017 AL13)', 29892.1640625000, 0, NULL, NULL),
(192, '2022-07-16', 3776069, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3776069', '(2017 MZ3)', 70225.3828125000, 0, NULL, NULL),
(193, '2022-07-16', 3836283, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3836283', '(2018 WS)', 10290.9785156250, 0, NULL, NULL),
(194, '2022-07-16', 54213609, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54213609', '(2021 UW3)', 16587.4492187500, 0, NULL, NULL),
(195, '2022-07-16', 54240292, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54240292', '(2022 BS2)', 28894.9765625000, 0, NULL, NULL),
(196, '2022-07-16', 2613676, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2613676', '613676 (2006 WE4)', 63089.9218750000, 0, NULL, NULL),
(200, '2022-07-15', 3747353, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3747353', '(2016 EE158)', 7814.4252929688, 0, NULL, NULL),
(201, '2022-07-15', 3754252, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3754252', '(2016 LM48)', 44813.8320312500, 0, NULL, NULL),
(202, '2022-07-15', 3781300, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3781300', '(2017 QX34)', 65276.4023437500, 0, NULL, NULL),
(203, '2022-07-15', 54073354, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54073354', '(2020 TR7)', 43703.8203125000, 0, NULL, NULL),
(204, '2022-07-15', 54131739, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54131739', '(2021 FC)', 12326.2109375000, 0, NULL, NULL),
(205, '2022-07-15', 54143420, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54143420', '(2021 JE1)', 24717.7890625000, 0, NULL, NULL),
(206, '2022-07-15', 54217987, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54217987', '(2021 VX7)', 23689.4121093750, 0, NULL, NULL),
(322, '2022-07-17', 3610760, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3610760', '(2012 TD146)', 45643.9391812217, 0, NULL, NULL),
(323, '2022-07-17', 3759677, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3759677', '(2016 NO56)', 33793.3173577576, 0, NULL, NULL),
(324, '2022-07-17', 3799756, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3799756', '(2018 DF2)', 49377.2264321555, 0, NULL, NULL),
(325, '2022-07-17', 3943321, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3943321', '(2019 YV)', 47075.6093223308, 0, NULL, NULL),
(326, '2022-07-17', 54171999, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54171999', '(2021 OT)', 40489.1729889210, 0, NULL, NULL),
(349, '2022-07-17', 3943321, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3943321', '(2019 YV)', 47075.6093223308, 0, NULL, NULL),
(350, '2022-07-17', 54171999, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54171999', '(2021 OT)', 40489.1729889210, 0, NULL, NULL),
(396, '2022-07-17', 3799756, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3799756', '(2018 DF2)', 49377.2264321555, 0, NULL, NULL),
(418, '2022-07-17', 3610760, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3610760', '(2012 TD146)', 45643.9391812217, 0, NULL, NULL),
(419, '2022-07-17', 3759677, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3759677', '(2016 NO56)', 33793.3173577576, 0, NULL, NULL),
(420, '2022-07-17', 3799756, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3799756', '(2018 DF2)', 49377.2264321555, 0, NULL, NULL),
(421, '2022-07-17', 3943321, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3943321', '(2019 YV)', 47075.6093223308, 0, NULL, NULL),
(422, '2022-07-17', 54171999, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54171999', '(2021 OT)', 40489.1729889210, 0, NULL, NULL),
(442, '2022-07-17', 3610760, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3610760', '(2012 TD146)', 45643.9391812217, 0, NULL, NULL),
(443, '2022-07-17', 3759677, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3759677', '(2016 NO56)', 33793.3173577576, 0, NULL, NULL),
(444, '2022-07-17', 3799756, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3799756', '(2018 DF2)', 49377.2264321555, 0, NULL, NULL),
(445, '2022-07-17', 3943321, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3943321', '(2019 YV)', 47075.6093223308, 0, NULL, NULL),
(446, '2022-07-17', 54171999, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54171999', '(2021 OT)', 40489.1729889210, 0, NULL, NULL),
(539, '2022-07-20', 2004015, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2004015', '4015 Wilson-Harrington (1979 VA)', 79845.6862488647, 1, NULL, NULL),
(540, '2022-07-20', 2105141, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2105141', '105141 (2000 NF11)', 27226.5716414115, 0, NULL, NULL),
(541, '2022-07-20', 3274905, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3274905', '(2005 FN)', 51078.0707008765, 0, NULL, NULL),
(542, '2022-07-20', 3297380, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3297380', '(2005 UW64)', 11228.1915138870, 0, NULL, NULL),
(543, '2022-07-20', 3548528, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3548528', '(2010 TF54)', 76236.1732252228, 0, NULL, NULL),
(544, '2022-07-20', 3631824, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3631824', '(2013 ED28)', 99847.6823150402, 1, NULL, NULL),
(545, '2022-07-20', 3632240, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3632240', '(2013 EM89)', 11640.4437401437, 0, NULL, NULL),
(546, '2022-07-20', 3825507, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3825507', '(2018 MN8)', 57123.2023429702, 0, NULL, NULL),
(547, '2022-07-20', 3843391, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3843391', '(2019 OZ1)', 39418.9830745006, 0, NULL, NULL),
(548, '2022-07-19', 2141484, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2141484', '141484 (2002 DB4)', 59099.9970794663, 0, NULL, NULL),
(549, '2022-07-19', 2349068, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2349068', '349068 (2006 YT13)', 82580.3187860074, 1, NULL, NULL),
(550, '2022-07-19', 3283950, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3283950', '(2005 NJ63)', 51766.1855371998, 0, NULL, NULL),
(551, '2022-07-19', 3736678, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3736678', '(2015 XC352)', 56100.1017495355, 0, NULL, NULL),
(552, '2022-07-19', 3756932, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3756932', '(2016 PA2)', 5930.9142795873, 0, NULL, NULL),
(553, '2022-07-19', 3824978, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3824978', '(2018 KS)', 20266.2265704619, 0, NULL, NULL),
(554, '2022-07-19', 54248247, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54248247', '(2022 CK8)', 67052.1209503252, 0, NULL, NULL),
(555, '2022-07-18', 2023606, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2023606', '23606 (1996 AS1)', 30746.2871241634, 0, NULL, NULL),
(556, '2022-07-18', 2229672, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2229672', '229672 (2006 WR1)', 106990.5213394690, 0, NULL, NULL),
(557, '2022-07-18', 3324626, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3324626', '(2006 DP62)', 70342.5266685130, 0, NULL, NULL),
(558, '2022-07-18', 3388355, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3388355', '(2007 TE66)', 52461.9784254028, 0, NULL, NULL),
(559, '2022-07-18', 3444294, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3444294', '(2009 AH16)', 50964.3726685340, 0, NULL, NULL),
(560, '2022-07-18', 3755347, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3755347', '(2016 NJ33)', 15890.0964109309, 0, NULL, NULL),
(561, '2022-07-18', 3799904, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3799904', '(2018 EF4)', 26250.8881366305, 0, NULL, NULL),
(562, '2022-07-18', 3843133, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3843133', '(2019 NL2)', 71138.7964490846, 0, NULL, NULL),
(563, '2022-07-18', 54017615, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54017615', '(2020 MP2)', 29410.6203887405, 0, NULL, NULL),
(564, '2022-07-18', 54049782, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54049782', '(2020 OL4)', 72789.2847634190, 0, NULL, NULL),
(565, '2022-07-18', 54209222, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54209222', '(2021 TK13)', 16502.0894665784, 0, NULL, NULL),
(566, '2022-07-18', 2613829, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2613829', '613829 (2007 TE66)', 52461.9784879704, 0, NULL, NULL),
(567, '2022-07-19', 3824978, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3824978', '(2018 KS)', 20266.2265704619, 0, NULL, NULL),
(568, '2022-07-19', 54248247, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54248247', '(2022 CK8)', 67052.1209503252, 0, NULL, NULL),
(569, '2022-07-18', 2023606, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2023606', '23606 (1996 AS1)', 30746.2871241634, 0, NULL, NULL),
(570, '2022-07-18', 2229672, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2229672', '229672 (2006 WR1)', 106990.5213394690, 0, NULL, NULL),
(571, '2022-07-18', 3324626, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3324626', '(2006 DP62)', 70342.5266685130, 0, NULL, NULL),
(572, '2022-07-18', 3388355, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3388355', '(2007 TE66)', 52461.9784254028, 0, NULL, NULL),
(573, '2022-07-18', 3444294, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3444294', '(2009 AH16)', 50964.3726685340, 0, NULL, NULL),
(574, '2022-07-18', 3755347, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3755347', '(2016 NJ33)', 15890.0964109309, 0, NULL, NULL),
(575, '2022-07-18', 3799904, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3799904', '(2018 EF4)', 26250.8881366305, 0, NULL, NULL),
(576, '2022-07-18', 3843133, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3843133', '(2019 NL2)', 71138.7964490846, 0, NULL, NULL),
(577, '2022-07-18', 54017615, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54017615', '(2020 MP2)', 29410.6203887405, 0, NULL, NULL),
(578, '2022-07-18', 54049782, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54049782', '(2020 OL4)', 72789.2847634190, 0, NULL, NULL),
(579, '2022-07-18', 54209222, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54209222', '(2021 TK13)', 16502.0894665784, 0, NULL, NULL),
(580, '2022-07-18', 2613829, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2613829', '613829 (2007 TE66)', 52461.9784879704, 0, NULL, NULL),
(581, '2022-07-19', 3824978, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3824978', '(2018 KS)', 20266.2265704619, 0, NULL, NULL),
(582, '2022-07-19', 54248247, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54248247', '(2022 CK8)', 67052.1209503252, 0, NULL, NULL),
(583, '2022-07-18', 2023606, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2023606', '23606 (1996 AS1)', 30746.2871241634, 0, NULL, NULL),
(584, '2022-07-18', 2229672, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2229672', '229672 (2006 WR1)', 106990.5213394690, 0, NULL, NULL),
(585, '2022-07-18', 3324626, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3324626', '(2006 DP62)', 70342.5266685130, 0, NULL, NULL),
(586, '2022-07-18', 3388355, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3388355', '(2007 TE66)', 52461.9784254028, 0, NULL, NULL),
(587, '2022-07-18', 3444294, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3444294', '(2009 AH16)', 50964.3726685340, 0, NULL, NULL),
(588, '2022-07-18', 3755347, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3755347', '(2016 NJ33)', 15890.0964109309, 0, NULL, NULL),
(589, '2022-07-18', 3799904, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3799904', '(2018 EF4)', 26250.8881366305, 0, NULL, NULL),
(590, '2022-07-18', 3843133, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3843133', '(2019 NL2)', 71138.7964490846, 0, NULL, NULL),
(591, '2022-07-18', 54017615, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54017615', '(2020 MP2)', 29410.6203887405, 0, NULL, NULL),
(592, '2022-07-18', 54049782, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54049782', '(2020 OL4)', 72789.2847634190, 0, NULL, NULL),
(593, '2022-07-18', 54209222, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54209222', '(2021 TK13)', 16502.0894665784, 0, NULL, NULL),
(594, '2022-07-18', 2613829, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2613829', '613829 (2007 TE66)', 52461.9784879704, 0, NULL, NULL),
(595, '2022-07-19', 3824978, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3824978', '(2018 KS)', 20266.2265704619, 0, NULL, NULL),
(596, '2022-07-19', 54248247, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54248247', '(2022 CK8)', 67052.1209503252, 0, NULL, NULL),
(597, '2022-07-18', 2023606, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2023606', '23606 (1996 AS1)', 30746.2871241634, 0, NULL, NULL),
(598, '2022-07-18', 2229672, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2229672', '229672 (2006 WR1)', 106990.5213394690, 0, NULL, NULL),
(599, '2022-07-18', 3324626, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3324626', '(2006 DP62)', 70342.5266685130, 0, NULL, NULL),
(600, '2022-07-18', 3388355, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3388355', '(2007 TE66)', 52461.9784254028, 0, NULL, NULL),
(601, '2022-07-18', 3444294, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3444294', '(2009 AH16)', 50964.3726685340, 0, NULL, NULL),
(602, '2022-07-18', 3755347, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3755347', '(2016 NJ33)', 15890.0964109309, 0, NULL, NULL),
(603, '2022-07-18', 3799904, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3799904', '(2018 EF4)', 26250.8881366305, 0, NULL, NULL),
(604, '2022-07-18', 3843133, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3843133', '(2019 NL2)', 71138.7964490846, 0, NULL, NULL),
(605, '2022-07-18', 54017615, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54017615', '(2020 MP2)', 29410.6203887405, 0, NULL, NULL),
(606, '2022-07-18', 54049782, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54049782', '(2020 OL4)', 72789.2847634190, 0, NULL, NULL),
(607, '2022-07-18', 54209222, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54209222', '(2021 TK13)', 16502.0894665784, 0, NULL, NULL),
(608, '2022-07-18', 2613829, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2613829', '613829 (2007 TE66)', 52461.9784879704, 0, NULL, NULL),
(609, '2022-07-19', 3824978, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3824978', '(2018 KS)', 20266.2265704619, 0, NULL, NULL),
(610, '2022-07-19', 54248247, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54248247', '(2022 CK8)', 67052.1209503252, 0, NULL, NULL),
(611, '2022-07-18', 2023606, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2023606', '23606 (1996 AS1)', 30746.2871241634, 0, NULL, NULL),
(612, '2022-07-18', 2229672, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2229672', '229672 (2006 WR1)', 106990.5213394690, 0, NULL, NULL),
(613, '2022-07-18', 3324626, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3324626', '(2006 DP62)', 70342.5266685130, 0, NULL, NULL),
(614, '2022-07-18', 3388355, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3388355', '(2007 TE66)', 52461.9784254028, 0, NULL, NULL),
(615, '2022-07-18', 3444294, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3444294', '(2009 AH16)', 50964.3726685340, 0, NULL, NULL),
(616, '2022-07-18', 3755347, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3755347', '(2016 NJ33)', 15890.0964109309, 0, NULL, NULL),
(617, '2022-07-18', 3799904, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3799904', '(2018 EF4)', 26250.8881366305, 0, NULL, NULL),
(618, '2022-07-18', 3843133, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3843133', '(2019 NL2)', 71138.7964490846, 0, NULL, NULL),
(619, '2022-07-18', 54017615, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54017615', '(2020 MP2)', 29410.6203887405, 0, NULL, NULL),
(620, '2022-07-18', 54049782, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54049782', '(2020 OL4)', 72789.2847634190, 0, NULL, NULL),
(621, '2022-07-18', 54209222, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54209222', '(2021 TK13)', 16502.0894665784, 0, NULL, NULL),
(622, '2022-07-18', 2613829, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2613829', '613829 (2007 TE66)', 52461.9784879704, 0, NULL, NULL),
(623, '2022-07-19', 3824978, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3824978', '(2018 KS)', 20266.2265704619, 0, NULL, NULL),
(624, '2022-07-19', 54248247, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54248247', '(2022 CK8)', 67052.1209503252, 0, NULL, NULL),
(625, '2022-07-18', 2023606, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2023606', '23606 (1996 AS1)', 30746.2871241634, 0, NULL, NULL),
(626, '2022-07-18', 2229672, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2229672', '229672 (2006 WR1)', 106990.5213394690, 0, NULL, NULL),
(627, '2022-07-18', 3324626, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3324626', '(2006 DP62)', 70342.5266685130, 0, NULL, NULL),
(628, '2022-07-18', 3388355, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3388355', '(2007 TE66)', 52461.9784254028, 0, NULL, NULL),
(629, '2022-07-18', 3444294, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3444294', '(2009 AH16)', 50964.3726685340, 0, NULL, NULL),
(630, '2022-07-18', 3755347, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3755347', '(2016 NJ33)', 15890.0964109309, 0, NULL, NULL),
(631, '2022-07-18', 3799904, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3799904', '(2018 EF4)', 26250.8881366305, 0, NULL, NULL),
(632, '2022-07-18', 3843133, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3843133', '(2019 NL2)', 71138.7964490846, 0, NULL, NULL),
(633, '2022-07-18', 54017615, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54017615', '(2020 MP2)', 29410.6203887405, 0, NULL, NULL),
(634, '2022-07-18', 54049782, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54049782', '(2020 OL4)', 72789.2847634190, 0, NULL, NULL),
(635, '2022-07-18', 54209222, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=54209222', '(2021 TK13)', 16502.0894665784, 0, NULL, NULL),
(636, '2022-07-18', 2613829, 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2613829', '613829 (2007 TE66)', 52461.9784879704, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `users`
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
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Індекси таблиці `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `near_earth_objects`
--
ALTER TABLE `near_earth_objects`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `near_earth_objects_table_web_service`
--
ALTER TABLE `near_earth_objects_table_web_service`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Індекси таблиці `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблиці `near_earth_objects`
--
ALTER TABLE `near_earth_objects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT для таблиці `near_earth_objects_table_web_service`
--
ALTER TABLE `near_earth_objects_table_web_service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=637;

--
-- AUTO_INCREMENT для таблиці `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
