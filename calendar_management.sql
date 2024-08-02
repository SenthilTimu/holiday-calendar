-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 02, 2024 at 10:30 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calendar_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `name`, `date`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'New Year\'s Day', '2024-01-01', 'Optional holiday', NULL, '2024-08-02 04:59:20', '2024-08-02 04:59:50'),
(2, 'New Year\'s Eve observed', '2024-01-01', 'Local holiday', NULL, '2024-08-02 04:59:20', '2024-08-02 04:59:20'),
(3, 'World Braille Day', '2024-01-04', 'United Nations observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(4, 'Epiphany', '2024-01-06', 'Christian', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(5, 'Orthodox Christmas Day', '2024-01-07', 'Orthodox', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(6, 'International Programmers\' Day', '2024-01-07', 'Worldwide observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(7, 'Estelle Reel Day', '2024-01-07', 'Local observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(8, 'Battle of New Orleans', '2024-01-08', 'Local observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(9, 'Stephen Foster Memorial Day', '2024-01-13', 'Observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(10, 'Orthodox New Year', '2024-01-14', 'Orthodox', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(11, 'Martin Luther King Jr. Day', '2024-01-15', 'Local holiday', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(12, 'Robert E. Lee\'s Birthday', '2024-01-15', 'Local holiday', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(13, 'Idaho Human Rights Day', '2024-01-15', 'Local holiday', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(14, 'Civil Rights Day', '2024-01-15', 'Local holiday', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(15, 'Robert E. Lee\'s Birthday', '2024-01-19', 'Local observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(16, 'State Holiday', '2024-01-19', 'Local observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(17, 'Confederate Heroes\' Day', '2024-01-19', 'Local holiday', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(18, 'World Religion Day', '2024-01-21', 'Worldwide observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(19, 'International Day of Education', '2024-01-24', 'United Nations observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(20, 'Tu Bishvat/Tu B\'Shevat', '2024-01-25', 'Hebrew', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(21, 'International Customs Day', '2024-01-26', 'Worldwide observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(22, 'International Day of Commemoration in Memory of the Victims of the Holocaust', '2024-01-27', 'United Nations observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(23, 'World Leprosy Day', '2024-01-28', 'Worldwide observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(24, 'Kansas Day', '2024-01-29', 'Observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(25, 'National Freedom Day', '2024-02-01', 'Observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(26, 'First Day of Black History Month', '2024-02-01', 'Observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(27, 'World Wetlands Day', '2024-02-02', 'Worldwide observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(28, 'Groundhog Day', '2024-02-02', 'Observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(29, 'Lunar New Year', '2024-02-02', 'Local observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(30, 'National Wear Red Day', '2024-02-02', 'Observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(31, 'International Day of Human Fraternity', '2024-02-04', 'United Nations observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(32, 'World Cancer Day', '2024-02-04', 'Worldwide observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(33, 'Rosa Parks Day', '2024-02-04', 'Local observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(34, 'International Day of Zero Tolerance for Female Genital Mutilation', '2024-02-06', 'United Nations observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(35, 'Ronald Reagan Day', '2024-02-06', 'Local observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(36, 'National Girls and Women in Sports Day', '2024-02-07', 'Observance', NULL, '2024-08-02 04:59:21', '2024-08-02 04:59:21'),
(37, 'Isra and Mi\'raj', '2024-02-08', 'Muslim', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(38, 'World Pulses Day', '2024-02-10', 'United Nations observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(39, 'Lunar New Year', '2024-02-10', 'Observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(40, 'International Day of Women and Girls in Science', '2024-02-11', 'United Nations observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(41, 'World Day of the Sick', '2024-02-11', 'Worldwide observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(42, 'Super Bowl', '2024-02-11', 'Sporting event', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(43, 'Lincoln\'s Birthday', '2024-02-12', 'Local observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(44, 'Georgia Day', '2024-02-12', 'Local observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(45, 'World Radio Day', '2024-02-13', 'United Nations observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(46, 'Shrove Tuesday/Mardi Gras', '2024-02-13', 'Local holiday', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(47, 'Ash Wednesday', '2024-02-14', 'Christian', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(48, 'Valentine\'s Day', '2024-02-14', 'Observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(49, 'Statehood Day', '2024-02-14', 'Local observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(50, 'Susan B. Anthony\'s Birthday', '2024-02-15', 'Local observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(51, 'Susan B. Anthony Day', '2024-02-15', 'Local observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(52, 'Elizabeth Peratrovich Day', '2024-02-16', 'Local holiday', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(53, 'Presidents\' Day', '2024-02-19', 'Local holiday', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(54, 'Daisy Gatson Bates Day', '2024-02-19', 'Local holiday', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(55, 'World Day of Social Justice', '2024-02-20', 'United Nations observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(56, 'International Mother Language Day', '2024-02-21', 'United Nations observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(57, 'African-American Scientist and Inventor Day', '2024-02-25', 'Local observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(58, 'George Rogers Clark Day', '2024-02-25', 'Local observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(59, 'Linus Pauling Day', '2024-02-28', 'Local observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(60, 'Leap Day', '2024-02-29', 'Worldwide observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(61, 'Zero Discrimination Day', '2024-03-01', 'United Nations observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(62, 'Self-Injury Awareness Day', '2024-03-01', 'Worldwide observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(63, 'St. David\'s Day', '2024-03-01', 'Observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(64, 'Read Across America Day', '2024-03-01', 'Observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(65, 'Employee Appreciation Day', '2024-03-01', 'Observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(66, 'First Day of Women\'s History Month', '2024-03-01', 'Observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(67, 'First Day of Irish American Heritage Month', '2024-03-01', 'Observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(68, 'Texas Independence Day', '2024-03-02', 'Local holiday', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(69, 'World Wildlife Day', '2024-03-03', 'United Nations observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(70, 'Casimir Pulaski Day', '2024-03-04', 'Local observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(71, 'Town Meeting Day', '2024-03-05', 'Local holiday', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(72, 'Maha Shivaratri', '2024-03-08', 'Hinduism', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(73, 'International Women\'s Day', '2024-03-08', 'United Nations observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(74, 'International Day of Women Judges', '2024-03-10', 'United Nations observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(75, 'Daylight Saving Time starts', '2024-03-10T02:00:00-05:00', 'Clock change/Daylight Saving Time', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(76, 'Ramadan Starts', '2024-03-12', 'Muslim', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(77, 'World Kidney Day', '2024-03-14', 'Worldwide observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(78, 'Long Covid Awareness Day', '2024-03-15', 'Worldwide observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(79, 'St. Patrick\'s Day', '2024-03-17', 'Observance', NULL, '2024-08-02 04:59:22', '2024-08-02 04:59:22'),
(80, 'Evacuation Day', '2024-03-17', 'Local holiday', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(81, 'Evacuation Day observed', '2024-03-18', 'Local holiday', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(82, 'French Language Day', '2024-03-20', 'United Nations observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(83, 'International Day of Happiness', '2024-03-20', 'United Nations observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(84, 'March Equinox', '2024-03-19T23:06:28-04:00', 'Season', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(85, 'International Day for the Elimination of Racial Discrimination', '2024-03-21', 'United Nations observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(86, 'World Poetry Day', '2024-03-21', 'United Nations observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(87, 'International Day of Nowruz', '2024-03-21', 'United Nations observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(88, 'World Down Syndrome Day', '2024-03-21', 'United Nations observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(89, 'International Day of Forests', '2024-03-21', 'United Nations observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(90, 'World Water Day', '2024-03-22', 'United Nations observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(91, 'World Meteorological Day', '2024-03-23', 'United Nations observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(92, 'Earth Hour', '2024-03-23', 'Worldwide observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(93, 'Palm Sunday', '2024-03-24', 'Christian', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(94, 'Purim', '2024-03-24', 'Hebrew', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(95, 'World Tuberculosis Day', '2024-03-24', 'United Nations observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(96, 'International Day for the Right to the Truth concerning Gross Human Rights Violations and for the Dignity of Victims', '2024-03-24', 'United Nations observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(97, 'Holi', '2024-03-25', 'National holiday', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:50'),
(98, 'International Day of Remembrance of Slavery Victims and the Transatlantic Slave Trade', '2024-03-25', 'United Nations observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(99, 'International Day of Solidarity with Detained and Missing Staff Members', '2024-03-25', 'United Nations observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(100, 'Maryland Day', '2024-03-25', 'Local observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(101, 'Seward\'s Day', '2024-03-25', 'Local holiday', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(102, 'Prince Jonah Kuhio Kalanianaole Day', '2024-03-26', 'Local holiday', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(103, 'Maundy Thursday', '2024-03-28', 'Observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:50'),
(104, 'Good Friday', '2024-03-29', 'National holiday', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:50'),
(105, 'State Holiday', '2024-03-29', 'Local holiday', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(106, 'National Vietnam War Veterans Day', '2024-03-29', 'Observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(107, 'Holy Saturday', '2024-03-30', 'Christian', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(108, 'Wyoming Veterans Welcome Home Day', '2024-03-30', 'Local observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(109, 'Doctors\' Day', '2024-03-30', 'Observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(110, 'Vietnam Veterans Day', '2024-03-30', 'Local observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(111, 'Vietnam Veteran Recognition Day', '2024-03-30', 'Local observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(112, 'International Transgender Day of Visibility', '2024-03-31', 'Worldwide observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(113, 'Easter Sunday', '2024-03-31', 'Observance', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(114, 'César Chávez Day', '2024-03-31', 'Local holiday', NULL, '2024-08-02 04:59:23', '2024-08-02 04:59:23'),
(115, 'April Fool\'s Day', '2024-04-01', 'Worldwide observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(116, 'Easter Monday', '2024-04-01', 'Observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(117, 'César Chávez Day (substitute)', '2024-04-01', 'Local holiday', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(118, 'World Autism Awareness Day', '2024-04-02', 'United Nations observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(119, 'Pascua Florida Day', '2024-04-02', 'Local observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(120, 'United Nations\' Mine Awareness Day', '2024-04-04', 'United Nations observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(121, 'Lailat al-Qadr', '2024-04-05', 'Muslim', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(122, 'International Day of Conscience', '2024-04-05', 'United Nations observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(123, 'International Day of Sport for Development and Peace', '2024-04-06', 'United Nations observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(124, 'National Tartan Day', '2024-04-06', 'Observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(125, 'United Nations\' World Health Day', '2024-04-07', 'United Nations observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(126, 'Day of Remembrance of the Victims of the Rwanda Genocide', '2024-04-07', 'United Nations observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(127, 'National Library Workers\' Day', '2024-04-09', 'Observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(128, 'Eid al-Fitr', '2024-04-10', 'Muslim', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(129, 'International Day of Human Space Flight', '2024-04-12', 'United Nations observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(130, 'Thomas Jefferson\'s Birthday', '2024-04-13', 'Observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(131, 'World Chagas Disease Day', '2024-04-14', 'United Nations observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(132, 'World Art Day', '2024-04-15', 'Worldwide observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(133, 'Tax Day', '2024-04-15', 'Observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(134, 'Father Damien Day', '2024-04-15', 'Local observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(135, 'Patriots\' Day', '2024-04-15', 'Local holiday', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(136, 'Boston Marathon', '2024-04-15', 'Sporting event', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(137, 'Emancipation Day', '2024-04-16', 'Local holiday', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(138, 'International Day for Monuments and Sites', '2024-04-18', 'Worldwide observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(139, 'Arbor Day', '2024-04-19', 'Local observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(140, 'Chinese Language Day', '2024-04-20', 'United Nations observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(141, 'World Creativity and Innovation Day', '2024-04-21', 'United Nations observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(142, 'San Jacinto Day', '2024-04-21', 'Local holiday', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(143, 'Passover Eve', '2024-04-22', 'Hebrew', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(144, 'Earth Day', '2024-04-22', 'United Nations observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(145, 'Oklahoma Day', '2024-04-22', 'Local observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(146, 'Confederate Memorial Day', '2024-04-22', 'Local holiday', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(147, 'Passover (first day)', '2024-04-23', 'Hebrew', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(148, 'World Book and Copyright Day', '2024-04-23', 'United Nations observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(149, 'World Spanish Language Day', '2024-04-23', 'United Nations observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(150, 'English Language Day', '2024-04-23', 'United Nations observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(151, 'International Day of Multilateralism and Diplomacy for Peace', '2024-04-24', 'United Nations observance', NULL, '2024-08-02 04:59:24', '2024-08-02 04:59:24'),
(152, 'Administrative Professionals Day', '2024-04-24', 'Observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(153, 'International Girls in ICT Day', '2024-04-25', 'United Nations observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(154, 'International Delegate\'s Day', '2024-04-25', 'United Nations observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(155, 'World Malaria Day', '2024-04-25', 'United Nations observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(156, 'Take our Daughters and Sons to Work Day', '2024-04-25', 'Observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(157, 'World Intellectual Property Day', '2024-04-26', 'United Nations observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(158, 'International Chernobyl Disaster Remembrance Day', '2024-04-26', 'United Nations observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(159, 'Arbor Day', '2024-04-26', 'Local observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(160, 'Confederate Memorial Day', '2024-04-26', 'Local observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(161, 'State Holiday', '2024-04-26', 'Local observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(162, 'World Day for Safety and Health at Work', '2024-04-28', 'United Nations observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(163, 'Arbor Day', '2024-04-29', 'Local observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(164, 'Confederate Memorial Day', '2024-04-29', 'Local holiday', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(165, 'Last Day of Passover', '2024-04-30', 'Hebrew', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(166, 'International Jazz Day', '2024-04-30', 'United Nations observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(167, 'Law Day', '2024-05-01', 'Observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(168, 'Loyalty Day', '2024-05-01', 'Observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(169, 'Lei Day', '2024-05-01', 'Local observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(170, 'First Day of Military Appreciation Month', '2024-05-01', 'Observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(171, 'First Day of Asian Pacific American Heritage Month', '2024-05-01', 'Observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(172, 'First Day of Jewish American Heritage Month', '2024-05-01', 'Observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(173, 'World Tuna Day', '2024-05-02', 'United Nations observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(174, 'National Day of Prayer', '2024-05-02', 'Observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(175, 'West Virginia Day of Prayer', '2024-05-02', 'Local observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(176, 'Orthodox Good Friday', '2024-05-03', 'Orthodox', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(177, 'World Press Freedom Day', '2024-05-03', 'United Nations observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(178, 'Kentucky Oaks', '2024-05-03', 'Sporting event', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(179, 'Orthodox Holy Saturday', '2024-05-04', 'Orthodox', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(180, 'Kent State Shootings Remembrance', '2024-05-04', 'Local observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(181, 'Kentucky Derby', '2024-05-04', 'Sporting event', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(182, 'Rhode Island Independence Day', '2024-05-04', 'Local observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(183, 'National Explosive Ordnance Disposal (EOD) Day', '2024-05-04', 'Observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(184, 'Orthodox Easter', '2024-05-05', 'Orthodox', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(185, 'World Portuguese Language Day', '2024-05-05', 'United Nations observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(186, 'International Family Equality Day', '2024-05-05', 'Worldwide observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(187, 'Cinco de Mayo', '2024-05-05', 'Observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(188, 'Yom HaShoah', '2024-05-06', 'Hebrew', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(189, 'Orthodox Easter Monday', '2024-05-06', 'Orthodox', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(190, 'National Nurses Day', '2024-05-06', 'Observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(191, 'National Teacher Appreciation Day', '2024-05-07', 'Observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(192, 'Time of Remembrance and Reconciliation for Those Who Lost Their Lives during the Second World War', '2024-05-08', 'United Nations observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(193, 'World Ovarian Cancer Day', '2024-05-08', 'Worldwide observance', NULL, '2024-08-02 04:59:25', '2024-08-02 04:59:25'),
(194, 'World Red Cross and Red Crescent Day', '2024-05-08', 'Worldwide observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(195, 'Truman Day', '2024-05-08', 'Local holiday', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(196, 'Victory in Europe Day', '2024-05-08', 'Observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(197, 'Ascension Day', '2024-05-09', 'Christian', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(198, 'International Day of Argania', '2024-05-10', 'United Nations observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(199, 'Confederate Memorial Day', '2024-05-10', 'Local holiday', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(200, 'Native American Day', '2024-05-10', 'Local holiday', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(201, 'Military Spouse Appreciation Day', '2024-05-10', 'Local observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(202, 'World Migratory Bird Day', '2024-05-11', 'United Nations observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(203, 'International Nurses Day', '2024-05-12', 'Worldwide observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(204, 'Mother\'s Day', '2024-05-12', 'Local holiday', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(205, 'Yom Ha\'atzmaut', '2024-05-14', 'Hebrew', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(206, 'Primary Election Day', '2024-05-14', 'Local holiday', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(207, 'International Day of Families', '2024-05-15', 'United Nations observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(208, 'Peace Officers Memorial Day', '2024-05-15', 'Observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(209, 'International Day of Living Together in Peace', '2024-05-16', 'United Nations observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(210, 'International Day of Light', '2024-05-16', 'United Nations observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(211, 'World Telecommunication and Information Society Day', '2024-05-17', 'United Nations observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(212, 'National Defense Transportation Day', '2024-05-17', 'Observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(213, 'Public Lands Day', '2024-05-18', 'Local observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(214, 'Armed Forces Day', '2024-05-18', 'Observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(215, 'Preakness Stakes', '2024-05-18', 'Sporting event', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(216, 'Pentecost', '2024-05-19', 'Christian', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(217, 'Whit Monday', '2024-05-20', 'Christian', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(218, 'World Bee Day', '2024-05-20', 'United Nations observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(219, 'World Autoimmune / Autoinflammatory Arthritis Day', '2024-05-20', 'Worldwide observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(220, 'World Day for Cultural Diversity for Dialogue and Development', '2024-05-21', 'United Nations observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(221, 'International Tea Day', '2024-05-21', 'United Nations observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(222, 'International Day for Biological Diversity', '2024-05-22', 'United Nations observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(223, 'Emergency Medical Services for Children Day', '2024-05-22', 'Observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(224, 'National Maritime Day', '2024-05-22', 'Observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(225, 'Harvey Milk Day', '2024-05-22', 'Local observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(226, 'International Day to End Obstetric Fistula', '2024-05-23', 'United Nations observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(227, 'Day of Vesak', '2024-05-23', 'United Nations observance', NULL, '2024-08-02 04:59:26', '2024-08-02 04:59:26'),
(228, 'African Liberation Day', '2024-05-25', 'Worldwide observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(229, 'National Missing Children\'s Day', '2024-05-25', 'Observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(230, 'Trinity Sunday', '2024-05-26', 'Christian', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(231, 'Lag BaOmer', '2024-05-26', 'Hebrew', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(232, 'Memorial Day', '2024-05-27', 'National holiday', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(233, 'Decoration Day', '2024-05-27', 'Local holiday', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(234, 'Jefferson Davis\' Birthday', '2024-05-27', 'Local observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(235, 'International Day of United Nations Peacekeepers', '2024-05-29', 'United Nations observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(236, 'Corpus Christi', '2024-05-30', 'Christian', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(237, 'World No Tobacco Day', '2024-05-31', 'United Nations observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(238, 'Global Day of Parents', '2024-06-01', 'United Nations observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(239, 'First Day of Pride Month', '2024-06-01', 'Observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(240, 'First Day of Caribbean-American Heritage Month', '2024-06-01', 'Observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(241, 'Statehood Day', '2024-06-01', 'Local observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(242, 'Native American Day', '2024-06-02', 'Local holiday', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(243, 'World Bicycle Day', '2024-06-03', 'United Nations observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(244, 'Jefferson Davis\' Birthday', '2024-06-03', 'Local holiday', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(245, 'International Day of Innocent Children Victims of Aggression', '2024-06-04', 'United Nations observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(246, 'World Environment Day', '2024-06-05', 'United Nations observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(247, 'International Day for the Fight against Illegal, Unreported and Unregulated Fishing', '2024-06-05', 'United Nations observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(248, 'Day of the Russian Language', '2024-06-06', 'United Nations observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(249, 'D-Day', '2024-06-06', 'Observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(250, 'World Food Safety Day', '2024-06-07', 'United Nations observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(251, 'World Oceans Day', '2024-06-08', 'United Nations observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(252, 'Belmont Stakes', '2024-06-08', 'Sporting event', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(253, 'Kamehameha Day', '2024-06-11', 'Local holiday', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(254, 'Shavuot', '2024-06-12', 'Hebrew', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(255, 'World Day Against Child Labour', '2024-06-12', 'United Nations observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(256, 'Loving Day', '2024-06-12', 'Observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(257, 'International Albinism Awareness Day', '2024-06-13', 'United Nations observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(258, 'World Blood Donor Day', '2024-06-14', 'United Nations observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(259, 'Army Birthday', '2024-06-14', 'Observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(260, 'Flag Day', '2024-06-14', 'Observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(261, 'Juneteenth', '2024-06-14', 'Local holiday', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(262, 'World Elder Abuse Awareness Day', '2024-06-15', 'United Nations observance', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(263, 'Juneteenth Day', '2024-06-15', 'Local holiday', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(264, 'Juneteenth National Freedom Day', '2024-06-15', 'Local holiday', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(265, 'Juneteenth', '2024-06-15', 'Local holiday', NULL, '2024-08-02 04:59:27', '2024-08-02 04:59:27'),
(266, 'International Day of Family Remittances', '2024-06-16', 'United Nations observance', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(267, 'Father\'s Day', '2024-06-16', 'Observance', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(268, 'Eid al-Adha', '2024-06-17', 'Muslim', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(269, 'World Day to Combat Desertification and Drought', '2024-06-17', 'United Nations observance', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(270, 'Bunker Hill Day', '2024-06-17', 'Local holiday', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(271, 'Juneteenth Freedom Day (substitute)', '2024-06-17', 'Local holiday', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(272, 'Sustainable Gastronomy Day', '2024-06-18', 'United Nations observance', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(273, 'International Day for the Elimination of Sexual Violence in Conflict', '2024-06-19', 'United Nations observance', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(274, 'Juneteenth', '2024-06-19', 'Local observance', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(275, 'Juneteenth National Freedom Day', '2024-06-19', 'Local holiday', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(276, 'Juneteenth Day', '2024-06-19', 'Local holiday', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(277, 'Juneteenth Independence Day', '2024-06-19', 'Local holiday', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(278, 'National Juneteenth Freedom Day', '2024-06-19', 'Local holiday', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(279, 'Juneteenth National Independence Day', '2024-06-19', 'Local holiday', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(280, 'Juneteenth Freedom Day', '2024-06-19', 'Local holiday', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(281, 'Emancipation Day', '2024-06-19', 'Local holiday', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(282, 'Juneteenth Celebration of Freedom Day', '2024-06-19', 'Local holiday', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(283, 'World Refugee Day', '2024-06-20', 'United Nations observance', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(284, 'West Virginia Day', '2024-06-20', 'Local holiday', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(285, 'American Eagle Day', '2024-06-20', 'Observance', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(286, 'June Solstice', '2024-06-20T16:50:59-04:00', 'Season', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(287, 'International Day of Yoga', '2024-06-21', 'United Nations observance', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(288, 'International Day of the Celebration of the Solstice', '2024-06-21', 'United Nations observance', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(289, 'Juneteenth Day', '2024-06-21', 'Local holiday', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(290, 'Public Service Day', '2024-06-23', 'United Nations observance', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(291, 'International Widows\' Day', '2024-06-23', 'United Nations observance', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(292, 'Day of the Seafarer', '2024-06-25', 'United Nations observance', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(293, 'International Day Against Drug Abuse and Illicit Trafficking', '2024-06-26', 'United Nations observance', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(294, 'International Day in Support of Victims of Torture', '2024-06-26', 'United Nations observance', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(295, 'Micro-, Small and Medium-sized Enterprises Day', '2024-06-27', 'United Nations observance', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(296, 'Carolina Day', '2024-06-28', 'Local observance', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(297, 'International Day of the Tropics', '2024-06-29', 'United Nations observance', NULL, '2024-08-02 04:59:28', '2024-08-02 04:59:28'),
(298, 'International Asteroid Day', '2024-06-30', 'United Nations observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(299, 'International Day of Parliamentarism', '2024-06-30', 'United Nations observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(300, 'Independence Day', '2024-07-04', 'National holiday', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(301, 'International Day of Cooperatives', '2024-07-06', 'United Nations observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(302, 'Muharram', '2024-07-08', 'Muslim', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(303, 'World Population Day', '2024-07-11', 'United Nations observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(304, 'Nathan Bedford Forrest Day', '2024-07-13', 'Local observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(305, 'Bastille Day', '2024-07-14', 'Observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(306, 'World Youth Skills Day', '2024-07-15', 'United Nations observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(307, 'Rural Transit Day', '2024-07-16', 'Observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(308, 'Ashura', '2024-07-17', 'Muslim', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(309, 'Nelson Mandela Day', '2024-07-18', 'United Nations observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(310, 'World Chess Day', '2024-07-20', 'United Nations observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(311, 'Pioneer Day', '2024-07-24', 'Local holiday', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(312, 'World Drowning Prevention Day', '2024-07-25', 'United Nations observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(313, 'Korean War Veteran Recognition Day', '2024-07-27', 'Local observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(314, 'National Korean War Veterans Armistice Day', '2024-07-27', 'Observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(315, 'World Hepatitis Day', '2024-07-28', 'United Nations observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(316, 'Parents\' Day', '2024-07-28', 'Observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(317, 'International Day of Friendship', '2024-07-30', 'United Nations observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(318, 'World Day Against Trafficking in Persons', '2024-07-30', 'United Nations observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(319, 'Colorado Day', '2024-08-01', 'Local observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(320, 'Coast Guard Birthday', '2024-08-04', 'Observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(321, 'Barack Obama Day', '2024-08-04', 'Observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(322, 'American Family Day', '2024-08-04', 'Local holiday', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(323, 'Purple Heart Day', '2024-08-07', 'Local observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(324, 'International Day of the World\'s Indigenous People', '2024-08-09', 'United Nations observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(325, 'International Youth Day', '2024-08-12', 'United Nations observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(326, 'Victory Day', '2024-08-12', 'Local holiday', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(327, 'Tisha B\'Av', '2024-08-13', 'Hebrew', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(328, 'Assumption of Mary', '2024-08-15', 'Christian', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(329, 'Hawaii Statehood Day', '2024-08-16', 'Local holiday', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(330, 'Bennington Battle Day', '2024-08-16', 'Local holiday', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(331, 'National Navajo Code Talkers Day', '2024-08-18', 'Local holiday', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(332, 'National Senior Citizens Day', '2024-08-18', 'Observance', NULL, '2024-08-02 04:59:29', '2024-08-02 04:59:29'),
(333, 'Raksha Bandhan', '2024-08-19', 'Hinduism', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(334, 'World Humanitarian Day', '2024-08-19', 'United Nations observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(335, 'National Aviation Day', '2024-08-19', 'Observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(336, 'International Day of Remembrance of and Tribute to the Victims of Terrorism', '2024-08-21', 'United Nations observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(337, 'International Day Commemorating the Victims of Acts of Violence Based on Religion or Belief', '2024-08-22', 'United Nations observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(338, 'International Day for the Remembrance of the Slave Trade and its Abolition', '2024-08-23', 'United Nations observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(339, 'Janmashtami', '2024-08-26', 'National holiday', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:50'),
(340, 'Susan B. Anthony Day', '2024-08-26', 'Local observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(341, 'Women\'s Equality Day', '2024-08-26', 'Observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(342, 'Lyndon Baines Johnson Day', '2024-08-27', 'Local holiday', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(343, 'International Day against Nuclear Tests', '2024-08-29', 'United Nations observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(344, 'International Day of the Victims of Enforced Disappearances', '2024-08-30', 'United Nations observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(345, 'International Day for People of African Descent', '2024-08-31', 'United Nations observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(346, 'International Overdose Awareness Day', '2024-08-31', 'Worldwide observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(347, 'Labor Day', '2024-09-02', 'National holiday', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(348, 'World Sexual Health Day', '2024-09-04', 'Worldwide observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(349, 'International Day of Charity', '2024-09-05', 'United Nations observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(350, 'Ganesh Chaturthi', '2024-09-06', 'Hinduism', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(351, 'International Day of Clean Air for Blue Skies', '2024-09-07', 'United Nations observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(352, 'Still\'s Disease Awareness Day', '2024-09-07', 'Worldwide observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(353, 'Carl Garner Federal Lands Cleanup Day', '2024-09-07', 'Observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(354, 'Native American Day', '2024-09-07', 'Local holiday', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(355, 'International Literacy Day', '2024-09-08', 'United Nations observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(356, 'National Grandparents Day', '2024-09-08', 'Observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(357, 'International Day to Protect Education from Attack', '2024-09-09', 'United Nations observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(358, 'California Admission Day', '2024-09-09', 'Local holiday', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(359, 'World Suicide Prevention Day', '2024-09-10', 'Worldwide observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(360, 'First Responders Day', '2024-09-11', 'Observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(361, 'Patriot Day', '2024-09-11', 'Observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(362, 'International Day for South-South Cooperation', '2024-09-12', 'United Nations observance', NULL, '2024-08-02 04:59:30', '2024-08-02 04:59:30'),
(363, 'International Programmers\' Day', '2024-09-12', 'Worldwide observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(364, 'Friday the 13th', '2024-09-13', 'Worldwide observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(365, 'International Day of Democracy', '2024-09-15', 'United Nations observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(366, 'First Day of National Hispanic Heritage Month', '2024-09-15', 'Observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(367, 'Constitution Commemoration Day', '2024-09-15', 'Local holiday', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(368, 'The Prophet\'s Birthday', '2024-09-16', 'Muslim', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(369, 'International Day for the Preservation of the Ozone Layer', '2024-09-16', 'United Nations observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(370, 'World Patient Safety Day', '2024-09-17', 'United Nations observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(371, 'Constitution Day and Citizenship Day', '2024-09-17', 'Observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(372, 'International Equal Pay Day', '2024-09-18', 'United Nations observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(373, 'Air Force Birthday', '2024-09-18', 'Observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(374, 'National POW/MIA Recognition Day', '2024-09-20', 'Observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(375, 'International Day of Peace', '2024-09-21', 'United Nations observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(376, 'Emancipation Day', '2024-09-22', 'Local observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(377, 'September Equinox', '2024-09-22T08:43:33-04:00', 'Season', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(378, 'International Day of Sign Languages', '2024-09-23', 'United Nations observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(379, 'International Celebrate Bisexuality Day', '2024-09-23', 'Worldwide observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(380, 'American Indian Day', '2024-09-23', 'Local holiday', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(381, 'World Maritime Day', '2024-09-26', 'United Nations observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(382, 'International Day for the Total Elimination of Nuclear Weapons', '2024-09-26', 'United Nations observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(383, 'World Tourism Day', '2024-09-27', 'United Nations observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(384, 'Native American Day', '2024-09-27', 'Local holiday', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(385, 'American Indian Heritage Day', '2024-09-27', 'Local holiday', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(386, 'Michigan Indian Day', '2024-09-27', 'Local holiday', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(387, 'International Day for Universal Access to Information', '2024-09-28', 'United Nations observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(388, 'World Rabies Day', '2024-09-28', 'Worldwide observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(389, 'Public Lands Day', '2024-09-28', 'Local observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(390, 'National Public Lands Day', '2024-09-28', 'Observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(391, 'International Day of Awareness of Food Loss and Waste', '2024-09-29', 'United Nations observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(392, 'World Heart Day', '2024-09-29', 'Worldwide observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(393, 'Gold Star Mother\'s Day', '2024-09-29', 'Observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(394, 'International Translation Day', '2024-09-30', 'United Nations observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(395, 'International Day of Older Persons', '2024-10-01', 'United Nations observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(396, 'World Vegetarian Day', '2024-10-01', 'Worldwide observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(397, 'International Day of Non-Violence', '2024-10-02', 'United Nations observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(398, 'Navratri', '2024-10-03', 'Hinduism', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(399, 'Rosh Hashana', '2024-10-03', 'Local holiday', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(400, 'Feast of St Francis of Assisi', '2024-10-04', 'Christian', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(401, 'World Teachers\' Day', '2024-10-05', 'United Nations observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(402, 'World Cerebral Palsy Day', '2024-10-06', 'Worldwide observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(403, 'German American Day', '2024-10-06', 'Observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(404, 'World Habitat Day', '2024-10-07', 'United Nations observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(405, 'Frances Xavier Cabrini Day', '2024-10-07', 'Local holiday', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(406, 'Child Health Day', '2024-10-07', 'Observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(407, 'World Post Day', '2024-10-09', 'United Nations observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(408, 'International Day for Natural Disaster Reduction', '2024-10-09', 'United Nations observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(409, 'Leif Erikson Day', '2024-10-09', 'Observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(410, 'World Mental Health Day', '2024-10-10', 'United Nations observance', NULL, '2024-08-02 04:59:31', '2024-08-02 04:59:31'),
(411, 'World Sight Day', '2024-10-10', 'Worldwide observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32');
INSERT INTO `holidays` (`id`, `name`, `date`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(412, 'International Day of the Girl Child', '2024-10-11', 'United Nations observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(413, 'Casimir Pulaski Day', '2024-10-11', 'Local observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(414, 'Anniversary of Death of General Pulaski', '2024-10-11', 'Local observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(415, 'Dussehra', '2024-10-12', 'National holiday', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:51'),
(416, 'Yom Kippur', '2024-10-12', 'Local holiday', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(417, 'Robert E. Lee\'s Birthday', '2024-10-12', 'Local observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(418, 'Navy Birthday', '2024-10-13', 'Observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(419, 'Chicago Marathon', '2024-10-13', 'Sporting event', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(420, 'Columbus Day', '2024-10-14', 'Local holiday', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(421, 'Fraternal Day', '2024-10-14', 'Local holiday', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(422, 'Yorktown Victory Day', '2024-10-14', 'Local holiday', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(423, 'Discoverers’ Day', '2024-10-14', 'Local holiday', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(424, 'Native American Day', '2024-10-14', 'Local holiday', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(425, 'Indigenous People\'s Day', '2024-10-14', 'Local holiday', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(426, 'American Indian Heritage Day', '2024-10-14', 'Local holiday', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(427, 'International Day of Rural Women', '2024-10-15', 'United Nations observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(428, 'White Cane Safety Day', '2024-10-15', 'Observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(429, 'World Food Day', '2024-10-16', 'United Nations observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(430, 'Boss\'s Day', '2024-10-16', 'Observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(431, 'First Day of Sukkot', '2024-10-17', 'Hebrew', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(432, 'International Day for the Eradication of Poverty', '2024-10-17', 'United Nations observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(433, 'Alaska Day', '2024-10-18', 'Local holiday', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(434, 'Sweetest Day', '2024-10-19', 'Observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(435, 'Last Day of Sukkot', '2024-10-23', 'Hebrew', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(436, 'Shmini Atzeret', '2024-10-24', 'Hebrew', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(437, 'United Nations Day', '2024-10-24', 'United Nations observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(438, 'World Development Information Day', '2024-10-24', 'United Nations observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(439, 'Simchat Torah', '2024-10-25', 'Hebrew', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(440, 'Nevada Day', '2024-10-25', 'Local holiday', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(441, 'World Day for Audiovisual Heritage', '2024-10-27', 'United Nations observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(442, 'World Stroke Day', '2024-10-29', 'Worldwide observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(443, 'Diwali/Deepavali', '2024-10-31', 'National holiday', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:51'),
(444, 'World Cities Day', '2024-10-31', 'United Nations observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(445, 'Halloween', '2024-10-31', 'Observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(446, 'All Saints\' Day', '2024-11-01', 'Christian', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(447, 'World Vegan Day', '2024-11-01', 'Worldwide observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(448, 'First Day of Native American Heritage Month', '2024-11-01', 'Observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(449, 'All Souls\' Day', '2024-11-02', 'Christian', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(450, 'International Day to End Impunity for Crimes against Journalists', '2024-11-02', 'United Nations observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(451, 'New York City Marathon', '2024-11-03', 'Sporting event', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(452, 'Daylight Saving Time ends', '2024-11-03T02:00:00-04:00', 'Clock change/Daylight Saving Time', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(453, 'World Tsunami Awareness Day', '2024-11-05', 'United Nations observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(454, 'Election Day (General Election)', '2024-11-05', 'Observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(455, 'Election Day', '2024-11-05', 'Local holiday', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(456, 'Susan B. Anthony Day', '2024-11-05', 'Local observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(457, 'International Day for Preventing the Exploitation of the Environment in War and Armed Conflict', '2024-11-06', 'United Nations observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(458, 'Return Day', '2024-11-07', 'Local holiday', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(459, 'World Science Day for Peace and Development', '2024-11-10', 'United Nations observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(460, 'Marine Corps Birthday', '2024-11-10', 'Observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(461, 'Barack Obama Day', '2024-11-11', 'Local observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(462, 'Veterans Day', '2024-11-11', 'Local holiday', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(463, 'Veterans\' Day/Armistice Day', '2024-11-11', 'Local holiday', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(464, 'World Pneumonia Day', '2024-11-12', 'Worldwide observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(465, 'World Diabetes Day', '2024-11-14', 'United Nations observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(466, 'International Day for Tolerance', '2024-11-16', 'United Nations observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(467, 'World Day of Remembrance for Road Traffic Victims', '2024-11-17', 'United Nations observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(468, 'World Prematurity Day', '2024-11-17', 'Worldwide observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(469, 'World Toilet Day', '2024-11-19', 'United Nations observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(470, 'International Men\'s Day', '2024-11-19', 'Worldwide observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(471, 'George Rogers Clark Day', '2024-11-19', 'Local observance', NULL, '2024-08-02 04:59:32', '2024-08-02 04:59:32'),
(472, 'Universal Children\'s Day', '2024-11-20', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(473, 'Africa Industrialization Day', '2024-11-20', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(474, 'Transgender Day of Remembrance', '2024-11-20', 'Worldwide observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(475, 'World Television Day', '2024-11-21', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(476, 'World Philosophy Day', '2024-11-21', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(477, 'International Day for the Elimination of Violence against Women', '2024-11-25', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(478, 'Thanksgiving Day', '2024-11-28', 'National holiday', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(479, 'International Day of Solidarity with the Palestinian People', '2024-11-29', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(480, 'Nellie Tayloe Ross\'s Birthday', '2024-11-29', 'Local observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(481, 'State Holiday', '2024-11-29', 'Local holiday', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(482, 'Presidents\' Day', '2024-11-29', 'Local holiday', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(483, 'Lincoln\'s Birthday/Lincoln\'s Day', '2024-11-29', 'Local holiday', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(484, 'Day After Thanksgiving', '2024-11-29', 'Local holiday', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(485, 'Family Day', '2024-11-29', 'Local holiday', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(486, 'Acadian Day', '2024-11-29', 'Local holiday', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(487, 'Black Friday', '2024-11-29', 'Observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(488, 'American Indian Heritage Day', '2024-11-29', 'Local holiday', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(489, 'Native American Heritage Day', '2024-11-29', 'Observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(490, 'Day of Remembrance for all Victims of Chemical Warfare', '2024-11-30', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(491, 'First Sunday of Advent', '2024-12-01', 'Christian', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(492, 'World AIDS Day', '2024-12-01', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(493, 'Rosa Parks Day', '2024-12-01', 'Local observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(494, 'International Day for the Abolition of Slavery', '2024-12-02', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(495, 'Cyber Monday', '2024-12-02', 'Observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(496, 'International Day of Persons with Disabilities', '2024-12-03', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(497, 'Giving Tuesday', '2024-12-03', 'Observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(498, 'International Day of Banks', '2024-12-04', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(499, 'International Volunteer Day for Economic and Social Development', '2024-12-05', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(500, 'World Soil Day', '2024-12-05', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(501, 'St Nicholas Day', '2024-12-06', 'Observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(502, 'International Civil Aviation Day', '2024-12-07', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(503, 'Pearl Harbor Remembrance Day', '2024-12-07', 'Local observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(504, 'Delaware Day', '2024-12-07', 'Local observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(505, 'Feast of the Immaculate Conception', '2024-12-09', 'Christian', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(506, 'International Anti-Corruption Day', '2024-12-09', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(507, 'World Genocide Commemoration Day', '2024-12-09', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(508, 'Human Rights Day', '2024-12-10', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(509, 'Wyoming Day', '2024-12-10', 'Local observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(510, 'International Mountain Day', '2024-12-11', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(511, 'International Day of Neutrality', '2024-12-12', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(512, 'International Universal Health Coverage Day', '2024-12-12', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(513, 'Feast of Our Lady of Guadalupe', '2024-12-12', 'Christian', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(514, 'Friday the 13th', '2024-12-13', 'Worldwide observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(515, 'National Guard Birthday', '2024-12-13', 'Observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(516, 'Bill of Rights Day', '2024-12-15', 'Observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(517, 'Pan American Aviation Day', '2024-12-17', 'Observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(518, 'Wright Brothers Day', '2024-12-17', 'Observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(519, 'International Migrants Day', '2024-12-18', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(520, 'Arabic Language Day', '2024-12-18', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(521, 'International Human Solidarity Day', '2024-12-20', 'United Nations observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(522, 'December Solstice', '2024-12-21T04:20:34-05:00', 'Season', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(523, 'Christmas Eve', '2024-12-24', 'Optional holiday', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:51'),
(524, 'Christmas Day', '2024-12-25', 'Local holiday', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(525, 'Chanukah/Hanukkah (first day)', '2024-12-26', 'Hebrew', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(526, 'Kwanzaa (first day)', '2024-12-26', 'Observance', NULL, '2024-08-02 04:59:33', '2024-08-02 04:59:33'),
(527, 'Day After Christmas Day', '2024-12-26', 'Local holiday', NULL, '2024-08-02 04:59:34', '2024-08-02 04:59:34'),
(528, 'International Day of Epidemic Preparedness', '2024-12-27', 'United Nations observance', NULL, '2024-08-02 04:59:34', '2024-08-02 04:59:34'),
(529, 'New Year\'s Eve', '2024-12-31', 'Observance', NULL, '2024-08-02 04:59:34', '2024-08-02 04:59:34'),
(530, 'Lohri', '2024-01-13', 'National holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(531, 'Makar Sankranti', '2024-01-14', 'Hinduism', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(532, 'Pongal', '2024-01-15', 'Hinduism', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(533, 'Guru Govind Singh Jayanti', '2024-01-17', 'Observance', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(534, 'Hazarat Ali\'s Birthday', '2024-01-25', 'Optional holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(535, 'Republic Day', '2024-01-26', 'National holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(536, 'Vasant Panchami', '2024-02-14', 'Hinduism', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(537, 'Shivaji Jayanti', '2024-02-19', 'Optional holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(538, 'Guru Ravidas Jayanti', '2024-02-24', 'Optional holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(539, 'Maharishi Dayanand Saraswati Jayanti', '2024-03-06', 'Optional holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(540, 'Maha Shivaratri/Shivaratri', '2024-03-08', 'Hinduism', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(541, 'Ramadan Start', '2024-03-12', 'Observance', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(542, 'March Equinox', '2024-03-20T08:36:28+05:30', 'Season', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(543, 'Holika Dahana', '2024-03-24', 'Optional holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(544, 'Dolyatra', '2024-03-25', 'National holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(545, 'Easter Day', '2024-03-31', 'Optional holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(546, 'Jamat Ul-Vida', '2024-04-05', 'Optional holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(547, 'Chaitra Sukhladi', '2024-04-09', 'Hinduism', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(548, 'Ugadi', '2024-04-09', 'Hinduism', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(549, 'Gudi Padwa', '2024-04-09', 'Hinduism', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(550, 'Ramzan Id/Eid-ul-Fitar', '2024-04-10', 'Muslim', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(551, 'Ramzan Id/Eid-ul-Fitar', '2024-04-11', 'National holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(552, 'Vaisakhi', '2024-04-13', 'Optional holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(553, 'Mesadi / Vaisakhadi', '2024-04-14', 'Optional holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(554, 'Ambedkar Jayanti', '2024-04-14', 'National holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(555, 'Rama Navami', '2024-04-17', 'National holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(556, 'Mahavir Jayanti', '2024-04-21', 'National holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(557, 'First day of Passover', '2024-04-23', 'Observance', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(558, 'International Worker\'s Day', '2024-05-01', 'Observance', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(559, 'Birthday of Rabindranath', '2024-05-08', 'Optional holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(560, 'Mothers\' Day', '2024-05-12', 'Observance', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(561, 'Buddha Purnima/Vesak', '2024-05-23', 'National holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(562, 'Fathers\' Day', '2024-06-16', 'Observance', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(563, 'Bakrid/Eid ul-Adha', '2024-06-17', 'National holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(564, 'June Solstice', '2024-06-21T02:20:59+05:30', 'Season', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(565, 'Rath Yatra', '2024-07-07', 'Hinduism', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(566, 'Muharram/Ashura', '2024-07-17', 'National holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(567, 'Guru Purnima', '2024-07-21', 'Observance', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(568, 'Friendship Day', '2024-08-04', 'Observance', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(569, 'Independence Day', '2024-08-15', 'National holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(570, 'Parsi New Year', '2024-08-15', 'Optional holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(571, 'Raksha Bandhan (Rakhi)', '2024-08-19', 'Hinduism', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(572, 'Janmashtami (Smarta)', '2024-08-26', 'Observance', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(573, 'Ganesh Chaturthi/Vinayaka Chaturthi', '2024-09-07', 'Hinduism', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(574, 'Onam', '2024-09-15', 'Hinduism', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(575, 'Milad un-Nabi/Id-e-Milad', '2024-09-16', 'National holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(576, 'September Equinox', '2024-09-22T18:13:33+05:30', 'Season', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(577, 'Mahatma Gandhi Jayanti', '2024-10-02', 'National holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(578, 'First Day of Sharad Navratri', '2024-10-03', 'Observance', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(579, 'First Day of Durga Puja Festivities', '2024-10-09', 'Observance', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(580, 'Maha Saptami', '2024-10-10', 'Optional holiday', NULL, '2024-08-02 04:59:50', '2024-08-02 04:59:50'),
(581, 'Maha Navami', '2024-10-11', 'Optional holiday', NULL, '2024-08-02 04:59:51', '2024-08-02 04:59:51'),
(582, 'Maha Ashtami', '2024-10-11', 'Optional holiday', NULL, '2024-08-02 04:59:51', '2024-08-02 04:59:51'),
(583, 'Maharishi Valmiki Jayanti', '2024-10-17', 'Optional holiday', NULL, '2024-08-02 04:59:51', '2024-08-02 04:59:51'),
(584, 'Karaka Chaturthi (Karva Chauth)', '2024-10-20', 'Hinduism', NULL, '2024-08-02 04:59:51', '2024-08-02 04:59:51'),
(585, 'Naraka Chaturdasi', '2024-10-31', 'Optional holiday', NULL, '2024-08-02 04:59:51', '2024-08-02 04:59:51'),
(586, 'Govardhan Puja', '2024-11-02', 'Optional holiday', NULL, '2024-08-02 04:59:51', '2024-08-02 04:59:51'),
(587, 'Bhai Duj', '2024-11-03', 'Hinduism', NULL, '2024-08-02 04:59:51', '2024-08-02 04:59:51'),
(588, 'Chhat Puja (Pratihar Sashthi/Surya Sashthi)', '2024-11-07', 'Hinduism', NULL, '2024-08-02 04:59:51', '2024-08-02 04:59:51'),
(589, 'Guru Nanak Jayanti', '2024-11-15', 'National holiday', NULL, '2024-08-02 04:59:51', '2024-08-02 04:59:51'),
(590, 'Guru Tegh Bahadur\'s Martyrdom Day', '2024-11-24', 'Optional holiday', NULL, '2024-08-02 04:59:51', '2024-08-02 04:59:51'),
(591, 'December Solstice', '2024-12-21T14:50:34+05:30', 'Season', NULL, '2024-08-02 04:59:51', '2024-08-02 04:59:51'),
(592, 'Christmas', '2024-12-25', 'National holiday', NULL, '2024-08-02 04:59:51', '2024-08-02 04:59:51'),
(593, 'First Day of Hanukkah', '2024-12-26', 'Observance', NULL, '2024-08-02 04:59:51', '2024-08-02 04:59:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_02_093526_create_holidays_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
