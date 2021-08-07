-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table apis_in_laravel.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table apis_in_laravel.posts: ~0 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `user_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam a turpis in eleifend. Donec feugiat lectus ligula. Ut dignissim est mi, ut ultrices lacus vestibulum at. Suspendisse pharetra quam luctus, finibus magna ac, dapibus justo. In cursus ex eu justo consectetur condimentum.', '2021-08-07 17:07:14', '2021-08-07 17:07:15'),
	(2, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam a turpis in eleifend. Donec feugiat lectus ligula. Ut dignissim est mi, ut ultrices lacus vestibulum at. Suspendisse pharetra quam luctus, finibus magna ac, dapibus justo. In cursus ex eu justo consectetur condimentum.', '2021-08-07 17:07:14', '2021-08-07 17:07:15'),
	(3, 1, 'Morbi aliquam a turpis in eleifend. Donec feugiat lectus ligula.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam a turpis in eleifend. Donec feugiat lectus ligula. Ut dignissim est mi, ut ultrices lacus vestibulum at. Suspendisse pharetra quam luctus, finibus magna ac, dapibus justo. In cursus ex eu justo consectetur condimentum.', '2021-08-07 12:18:14', '2021-08-07 12:18:14'),
	(4, 1, 'Morbi aliquam a turpis in eleifend. Donec feugiat lectus ligula.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam a turpis in eleifend. Donec feugiat lectus ligula. Ut dignissim est mi, ut ultrices lacus vestibulum at. Suspendisse pharetra quam luctus, finibus magna ac, dapibus justo. In cursus ex eu justo consectetur condimentum.', '2021-08-07 12:19:29', '2021-08-07 12:19:29'),
	(5, 1, 'Morbi aliquam a turpis in eleifend. Donec feugiat lectus ligula.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam a turpis in eleifend. Donec feugiat lectus ligula. Ut dignissim est mi, ut ultrices lacus vestibulum at. Suspendisse pharetra quam luctus, finibus magna ac, dapibus justo. In cursus ex eu justo consectetur condimentum.', '2021-08-07 12:19:54', '2021-08-07 12:19:54'),
	(6, 1, 'Morbi aliquam a turpis in eleifend. Donec feugiat lectus ligula.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam a turpis in eleifend. Donec feugiat lectus ligula. Ut dignissim est mi, ut ultrices lacus vestibulum at. Suspendisse pharetra quam luctus, finibus magna ac, dapibus justo. In cursus ex eu justo consectetur condimentum.', '2021-08-07 12:48:39', '2021-08-07 12:48:39');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
