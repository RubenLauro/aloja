-- --------------------------------------------------------
-- Anfitrião:                    localhost
-- Versão do servidor:           5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Versão:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for alojaonline
CREATE DATABASE IF NOT EXISTS `alojaonline` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `alojaonline`;

-- Dumping structure for table alojaonline.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table alojaonline.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table alojaonline.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table alojaonline.migrations: ~8 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
	(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
	(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
	(6, '2016_06_01_000004_create_oauth_clients_table', 1),
	(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
	(8, '2019_08_19_000000_create_failed_jobs_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table alojaonline.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table alojaonline.oauth_access_tokens: ~49 rows (approximately)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('010385c28ad195894951b07b4c307cbbc0fa55a173e40462c62d14ced49142d7f429828d71b7925f', 1, 2, NULL, '[]', 0, '2019-10-25 14:07:33', '2019-10-25 14:07:33', '2020-10-25 14:07:33'),
	('01678188147d44ee4ab46ccb4d8e91a78aee3cb5f1fce03f77a4f995a089e2f6f0e12d0345bfc29a', 1, 2, NULL, '[]', 0, '2019-10-24 20:18:10', '2019-10-24 20:18:10', '2020-10-24 20:18:10'),
	('020bf2dac4db591fb89e90a5db4987dacaccc664c84ffffb8bef586b8cf9044ce69dce0d37cd4524', 1, 2, NULL, '[]', 0, '2019-10-24 18:27:38', '2019-10-24 18:27:38', '2020-10-24 18:27:38'),
	('059ce5fcf261ecb13f745683a9b245a379b5c128d9fbf3d14db3cb26fcd3a59ad8d355e43eff6ca5', 1, 2, NULL, '[]', 0, '2019-10-26 21:24:04', '2019-10-26 21:24:04', '2020-10-26 21:24:04'),
	('094dbf7a84412249eb1e53653ea98738223e9186ba3c38fcb9a1b2234ea18884c5c701ae0e2c6527', 1, 2, NULL, '[]', 0, '2019-10-24 20:15:43', '2019-10-24 20:15:43', '2020-10-24 20:15:43'),
	('09b808f8962b30eb7dd564ccc1a52652accd063c346c9fd9ae188d57796be818eda483e8d61cd369', 1, 2, NULL, '[]', 0, '2019-10-27 12:37:10', '2019-10-27 12:37:10', '2020-10-27 12:37:10'),
	('0e03fdcae6b9199dc0ddc2fcaad6b2cd70139ec473e889ccd6c1bca281ab4e1e1c2918ca4c5aac98', 1, 2, NULL, '[]', 0, '2019-10-24 22:37:55', '2019-10-24 22:37:55', '2020-10-24 22:37:55'),
	('10a57f455897479caef523ecba6b20af26ef04a859d574fcce7dadd62bb9142f46bb3b9c4205df75', 1, 2, NULL, '[]', 0, '2019-10-26 23:11:48', '2019-10-26 23:11:48', '2020-10-26 23:11:48'),
	('16669b735f10fc890e57cc007b6a45c1e8ff30522935e5fa6aee05a08ecc254314179839b77f3788', 1, 2, NULL, '[]', 0, '2019-10-26 23:04:50', '2019-10-26 23:04:50', '2020-10-26 23:04:50'),
	('171367a600a2242ff2f25628232b166c3a5d2a8c8a169155b5ebe7ba15cdf68802ab1449e2282a5c', 1, 2, NULL, '[]', 0, '2019-10-24 18:19:21', '2019-10-24 18:19:21', '2020-10-24 18:19:21'),
	('239bdb65308bcc116ff6c30d3c6b0c38a178418cc75f385b1d2c86d786bcfe513a19661f878cf87d', 1, 2, NULL, '[]', 0, '2019-10-27 12:38:06', '2019-10-27 12:38:06', '2020-10-27 12:38:06'),
	('2c423e1c6fab72d5d95bb3583d54760cda86533b6620d23f570a060e03af6e2b2664dc10d5b7017b', 1, 2, NULL, '[]', 0, '2019-10-27 12:39:18', '2019-10-27 12:39:18', '2020-10-27 12:39:18'),
	('2d4dd50561165694232198e21bc6721407cf06b12968ab48fb57a36c00d0d743d1ad5bfc9761333b', 1, 2, NULL, '[]', 0, '2019-10-24 21:35:11', '2019-10-24 21:35:11', '2020-10-24 21:35:11'),
	('3198d0fd9238e66afe1d456c73f90065776390e29cf4f4d3530f0894b999a7dcf2713b436b28e3e1', 1, 2, NULL, '[]', 0, '2019-10-24 22:35:22', '2019-10-24 22:35:22', '2020-10-24 22:35:22'),
	('37a48af3368bfc9510c38efac1b64fe3cbfc8c7f2926f11b8c7ede87b49324e65b2ea5a67016585d', 1, 2, NULL, '[]', 0, '2019-10-24 18:30:16', '2019-10-24 18:30:16', '2020-10-24 18:30:16'),
	('4381417451aafcebe315af7321c446276a5048c562f61b0498c7c2b3a94873823cb97b4b69b0b7af', 1, 2, NULL, '[]', 0, '2019-10-24 22:43:16', '2019-10-24 22:43:16', '2020-10-24 22:43:16'),
	('44a4126f8b250154e6b279f85f1995172ee2e788a58be775e33ae0ce1d84aa07449811137bc12da7', 1, 2, NULL, '[]', 0, '2019-10-27 12:45:01', '2019-10-27 12:45:01', '2020-10-27 12:45:01'),
	('450b142eefb48b31aeafdea506e4e9e77c79130f0273fc8ec609f4774c46805f2c943ce1bfdb6d66', 1, 2, NULL, '[]', 0, '2019-10-26 23:10:40', '2019-10-26 23:10:40', '2020-10-26 23:10:40'),
	('493e9afa0e2be6d2ddab5a1fe532f367ac4e842cbd098b178a1d09d396975259be78685545a44666', 1, 2, NULL, '[]', 0, '2019-10-24 18:39:57', '2019-10-24 18:39:57', '2020-10-24 18:39:57'),
	('49e98d0bcedbe0a98a262ec574803f92c66abe043e4d1d06b2f7d592e06fd68dd1afb869daaa5662', 1, 2, NULL, '[]', 0, '2019-10-24 22:41:50', '2019-10-24 22:41:50', '2020-10-24 22:41:50'),
	('51cad68094309d39a6847765dad6e81ee7c047e5a4e3ca558ca21f534f459fd3f48554c0cb07708f', 1, 2, NULL, '[]', 0, '2019-10-24 21:54:32', '2019-10-24 21:54:32', '2020-10-24 21:54:32'),
	('538a970c8e1ca0dc59e6e514f31635fa6c516763cf4d89c2b43110d11ed092455c5d121b41d36b47', 1, 2, NULL, '[]', 0, '2019-10-26 23:06:35', '2019-10-26 23:06:35', '2020-10-26 23:06:35'),
	('5516cd29dc853e68932742f6122f4ffa50f7c93dae84a0ea9493431e284b5f211f9858eeeda99bfb', 1, 2, NULL, '[]', 0, '2019-10-24 22:31:40', '2019-10-24 22:31:40', '2020-10-24 22:31:40'),
	('560ea7b20eeeacf29437de41344d145f8e520604885f6935424438ce61371a7c65880f9364936b21', 1, 2, NULL, '[]', 0, '2019-10-26 23:07:08', '2019-10-26 23:07:08', '2020-10-26 23:07:08'),
	('58fdad57d7cd3f51cfec72f89cca9f9d5345f2cc735950a706ab7c9bb4d62b5c6d34476329b86e05', 1, 2, NULL, '[]', 0, '2019-10-24 19:17:41', '2019-10-24 19:17:41', '2020-10-24 19:17:41'),
	('62058906e770027158e00245e0043ed56f9401c53c3937be4d5e511210668ccd39b4e9c313d1eced', 1, 2, NULL, '[]', 0, '2019-10-24 19:29:21', '2019-10-24 19:29:21', '2020-10-24 19:29:21'),
	('627f146507e73d04e863609289e00951ce42b23286d9c725bfe1bce172f6f58d41b4caf1b30073a5', 1, 2, NULL, '[]', 0, '2019-10-27 12:42:29', '2019-10-27 12:42:29', '2020-10-27 12:42:29'),
	('6af6da8e91c5ed9b6793c9468ab3aa0a9d385536e244bd7b12d367a020897d6966641dbea011e26b', 1, 2, NULL, '[]', 0, '2019-10-27 12:28:42', '2019-10-27 12:28:42', '2020-10-27 12:28:42'),
	('76d5cda471d73e3b3881d4eb91dc011f0f30a7780036c8ec3a0ab06bcb4f4fb798fffc8a29fa11d2', 1, 2, NULL, '[]', 0, '2019-10-26 21:24:24', '2019-10-26 21:24:24', '2020-10-26 21:24:24'),
	('78090bb2dfd9d4a6f5edbf224cab3aacef60fb527e7828fbd3a0a17ecae0eb0a113a6daeff9eb8b2', 1, 2, NULL, '[]', 0, '2019-10-27 12:32:08', '2019-10-27 12:32:08', '2020-10-27 12:32:08'),
	('7bb4b930d0984cd42b456e8f63138a2398c0c6bf6a7956cba09a1dc496ee23705902629b3dbb3222', 1, 2, NULL, '[]', 0, '2019-10-27 12:44:36', '2019-10-27 12:44:36', '2020-10-27 12:44:36'),
	('804d323842c7352e01c3014920e4914213bbc3737aa846f5c5b14b05d394b187f0a8f1e1e5c8bbe7', 1, 2, NULL, '[]', 0, '2019-10-26 23:03:28', '2019-10-26 23:03:28', '2020-10-26 23:03:28'),
	('86f29fc350b74fde6fb8de1c9f7b1d7828ea82647e6c5c247b8ff08eaf667bc3a2a614d22c00e77b', 1, 2, NULL, '[]', 0, '2019-10-24 22:50:26', '2019-10-24 22:50:26', '2020-10-24 22:50:26'),
	('870f40da8b560718a241f7d9087ffb9b54accc77740a73888570c2b2bdb4d095df6078e8063e5978', 1, 2, NULL, '[]', 0, '2019-10-27 13:21:11', '2019-10-27 13:21:11', '2020-10-27 13:21:11'),
	('88ae10bce9619c32c46a25a253ddab002a5f8e3b4e6e3df918f6648e8ead693492bff639c6609db3', 1, 2, NULL, '[]', 0, '2019-10-24 19:18:45', '2019-10-24 19:18:45', '2020-10-24 19:18:45'),
	('8b6e0cfb742b7d037735bd983c7b6ee0531782f861f9db1578a2b99ca32410e662018e684de85f39', 1, 2, NULL, '[]', 0, '2019-10-24 22:38:24', '2019-10-24 22:38:24', '2020-10-24 22:38:24'),
	('8dd2ec944df85501acde6447c48d7f0f7f45b3313b286b596c06bb0f799395c85d1751ea8cf973eb', 1, 2, NULL, '[]', 0, '2019-10-27 12:22:57', '2019-10-27 12:22:57', '2020-10-27 12:22:57'),
	('90fc902110b8c194db4e253e94aa16d7badc4546db4c392944030bfeb24b6fd1dbc26ee5b4ce7b69', 1, 2, NULL, '[]', 0, '2019-10-24 22:28:46', '2019-10-24 22:28:46', '2020-10-24 22:28:46'),
	('963507466c6cf0769acf6cff8321e6f59ae233409f137b01c2689ba93ba13e0b38b4a5e3fae7ed85', 1, 2, NULL, '[]', 0, '2019-10-27 12:43:46', '2019-10-27 12:43:46', '2020-10-27 12:43:46'),
	('9644ae70f5101d712bfcabc7ab48a5c7c5deb2bc6c2e2609f890992b838d8419e2c8c3cf04a5234a', 1, 2, NULL, '[]', 0, '2019-10-24 22:53:27', '2019-10-24 22:53:27', '2020-10-24 22:53:27'),
	('9782e3ea73bdbc3eb4bc66c5bcf38bfce8ee60569421e43e7fb0e5fd7fb63d109e03acac4755899d', 1, 2, NULL, '[]', 0, '2019-10-24 20:20:26', '2019-10-24 20:20:26', '2020-10-24 20:20:26'),
	('9c77e213eed53db13bd35f765eef977f1c53671b092902f27fedcbd66b3a87bd355f575ccb69c0a2', 1, 2, NULL, '[]', 0, '2019-10-24 21:29:37', '2019-10-24 21:29:37', '2020-10-24 21:29:37'),
	('a09ee241971188d02a92745b00cf6478d458422695e0cc1f7b9d51a8e55e31dfb22c2ef1fda59e20', 1, 2, NULL, '[]', 0, '2019-10-24 18:29:11', '2019-10-24 18:29:11', '2020-10-24 18:29:11'),
	('ad759824d88f44ab6551c08023b6c8220676960f9434d4d7561a200ecd529699ad60588e0ed16e94', 1, 2, NULL, '[]', 0, '2019-10-24 22:36:54', '2019-10-24 22:36:54', '2020-10-24 22:36:54'),
	('b53dbf5145b8f5b2bcf74cbd35cc2e8bb1b9ef490302ef59b457b6376687cefea048f02e07995658', 1, 2, NULL, '[]', 0, '2019-10-26 23:07:24', '2019-10-26 23:07:24', '2020-10-26 23:07:24'),
	('b843cf46a4130e3abeef17bd819599b5849ce6851ffa6a03b06fa65b805b3caab2fd28c019238dc9', 1, 2, NULL, '[]', 0, '2019-10-26 19:41:50', '2019-10-26 19:41:50', '2020-10-26 19:41:50'),
	('b942d4099eb6a01b3a9d8855526fcf0689806823668932b885edeb6efcfd093d25c0e1ab76701e2c', 1, 2, NULL, '[]', 0, '2019-10-24 20:20:33', '2019-10-24 20:20:33', '2020-10-24 20:20:33'),
	('cf84034247a1416e8c868fee42fa5b459196deca291482ff09ba50f04073d0c188d5584b9fa83a12', 1, 2, NULL, '[]', 0, '2019-10-24 20:02:01', '2019-10-24 20:02:01', '2020-10-24 20:02:01'),
	('d286318c2b85641871390f8f64b1bd424bc9ffc116180b9160e04a229f66f722484facff3e903d19', 1, 2, NULL, '[]', 0, '2019-10-24 18:28:23', '2019-10-24 18:28:23', '2020-10-24 18:28:23'),
	('d6dcad0bf3a044eb7941ae21df0a6fad63eef4ff1b2c80bde290d695707eff53eb10464ca6d1bc36', 1, 2, NULL, '[]', 0, '2019-10-24 21:27:06', '2019-10-24 21:27:06', '2020-10-24 21:27:06'),
	('d70b089e76a4e44bbd23ca47b3807fb1dcd972fd5c206759ac84d83275cd69f876ed1ae371ebdcbf', 1, 2, NULL, '[]', 0, '2019-10-26 21:20:57', '2019-10-26 21:20:57', '2020-10-26 21:20:57'),
	('d8a05f76f75b0b6b487b278864af7400cfafa83e1f854b87c307bc2ff848ebdb86ec67ce2ebcc363', 1, 2, NULL, '[]', 0, '2019-10-24 18:26:23', '2019-10-24 18:26:23', '2020-10-24 18:26:23'),
	('dba3d4d06b6e836a6a71c0a0e0f38c6482f7d701ba6e23a3d6a36d2caef6037d91fdc4f0c9b2ee83', 1, 2, NULL, '[]', 0, '2019-10-24 18:23:52', '2019-10-24 18:23:52', '2020-10-24 18:23:52'),
	('dbbedae03c1767677d420627787373abe0ca6cec16596f134fec34dac402689b8720a343aef4f552', 1, 2, NULL, '[]', 0, '2019-10-24 20:22:39', '2019-10-24 20:22:39', '2020-10-24 20:22:39'),
	('de32c742d3133e00b35a26fbc378c3dc55450666db17b27e0c3a1c1cbc1f89e00b5dfdaa9885bc13', 1, 2, NULL, '[]', 0, '2019-10-24 20:17:25', '2019-10-24 20:17:25', '2020-10-24 20:17:25'),
	('de6f67ac41e969b08a7034e5a5bb062375609e269c8aae88977c8883b4f6d0346f50d017359200cd', 1, 2, NULL, '[]', 0, '2019-10-24 18:37:47', '2019-10-24 18:37:47', '2020-10-24 18:37:47'),
	('e82eb3bfd709ef8dbc684a899b648de65caa177b9d9519ac445f989c13724fa593fcc2f756dd1b27', 1, 2, NULL, '[]', 0, '2019-10-24 18:35:37', '2019-10-24 18:35:37', '2020-10-24 18:35:37'),
	('f3602dda784844b1e5d215768b06c79be625c447a6f396cdcbca395cd91e7b59866dd03e14897824', 1, 2, NULL, '[]', 0, '2019-10-24 18:41:47', '2019-10-24 18:41:47', '2020-10-24 18:41:47'),
	('fd5d029eb040010be7f7c6bc30047484cda55b4dc238ab8a56186006341060e18588b48e5aa92ec7', 1, 2, NULL, '[]', 0, '2019-10-24 19:59:28', '2019-10-24 19:59:28', '2020-10-24 19:59:28');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Dumping structure for table alojaonline.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table alojaonline.oauth_auth_codes: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Dumping structure for table alojaonline.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table alojaonline.oauth_clients: ~2 rows (approximately)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Laravel Personal Access Client', 'Je56Mfy6ZuCh4PKkQXtYWHmXqpI25SbEI1olBlh2', 'http://localhost', 1, 0, 0, '2019-10-24 18:18:54', '2019-10-24 18:18:54'),
	(2, NULL, 'Laravel Password Grant Client', 'VKDjTkK6vyvX3vj2QAeNfqIAuspc3ELc5cIYXVW6', 'http://localhost', 0, 1, 0, '2019-10-24 18:18:54', '2019-10-24 18:18:54');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Dumping structure for table alojaonline.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table alojaonline.oauth_personal_access_clients: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2019-10-24 18:18:54', '2019-10-24 18:18:54');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Dumping structure for table alojaonline.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table alojaonline.oauth_refresh_tokens: ~49 rows (approximately)
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
	('0260ea9e34d9003fba064e762286a7c5473b533dc8aaea54661e6ffba35642f6932bb8f770ae4ec7', '171367a600a2242ff2f25628232b166c3a5d2a8c8a169155b5ebe7ba15cdf68802ab1449e2282a5c', 0, '2020-10-24 18:19:21'),
	('0695d346d6c28ff3d5b31b9e35b4f42381240520f4b41fda765028a3b92ff0a2bd8a3d9e419b66fb', '76d5cda471d73e3b3881d4eb91dc011f0f30a7780036c8ec3a0ab06bcb4f4fb798fffc8a29fa11d2', 0, '2020-10-26 21:24:24'),
	('06fd4f23e91b46e29af34174e7eb523c4edb38278ddefe30b491c7219034f3fd45e68586babb6cb7', 'd286318c2b85641871390f8f64b1bd424bc9ffc116180b9160e04a229f66f722484facff3e903d19', 0, '2020-10-24 18:28:23'),
	('07cc57e55c9d50d0260d04cf5622af4846cac887dfa8b9417a53f7b252e6c6bf9487ec901103c523', 'e82eb3bfd709ef8dbc684a899b648de65caa177b9d9519ac445f989c13724fa593fcc2f756dd1b27', 0, '2020-10-24 18:35:37'),
	('0cfb10d72ff8bfede477fdcfab5454d0d2c766dc2a451003daf9ecc0877281555a020122c5282050', 'de32c742d3133e00b35a26fbc378c3dc55450666db17b27e0c3a1c1cbc1f89e00b5dfdaa9885bc13', 0, '2020-10-24 20:17:25'),
	('11b29d5841f1e3e5bfb308f10a6fb2587c6f6b1deb230c84dbfa0197dc0395c4a4d353c51bc2d5c0', '9782e3ea73bdbc3eb4bc66c5bcf38bfce8ee60569421e43e7fb0e5fd7fb63d109e03acac4755899d', 0, '2020-10-24 20:20:26'),
	('1a3cf7286d08a61d4fbbd153df97fb36782a5dfc8e38e3721fbe267333b16dfadc6a839037838433', 'de6f67ac41e969b08a7034e5a5bb062375609e269c8aae88977c8883b4f6d0346f50d017359200cd', 0, '2020-10-24 18:37:47'),
	('2762d1c23a371b19a50df6d0c7441f056688435f7c961c1401b8dbf6a59f4647b97fa5d29916efc6', '094dbf7a84412249eb1e53653ea98738223e9186ba3c38fcb9a1b2234ea18884c5c701ae0e2c6527', 0, '2020-10-24 20:15:43'),
	('2b26ac024c5f7fc733188684f6ccb4e4a14e7678d0cab396ddee356577daa756a9a6246d4f492881', 'd70b089e76a4e44bbd23ca47b3807fb1dcd972fd5c206759ac84d83275cd69f876ed1ae371ebdcbf', 0, '2020-10-26 21:20:57'),
	('2c454cd42ae6bb7d9e6287c005ccb97457db95b61e884f8a6a70a608a1a544141e0bf405a583795f', 'dba3d4d06b6e836a6a71c0a0e0f38c6482f7d701ba6e23a3d6a36d2caef6037d91fdc4f0c9b2ee83', 0, '2020-10-24 18:23:52'),
	('2ee034be0c2effa164f7dfb5c745d3c6f6300f161b1ac1196d5b1eb725889dab88172e7480f187c8', '3198d0fd9238e66afe1d456c73f90065776390e29cf4f4d3530f0894b999a7dcf2713b436b28e3e1', 0, '2020-10-24 22:35:22'),
	('3238d764729022ac515f86cb13597a442d0ec4d2c2e2f3e927e602aff6482ca40a51458b2b58ebcb', '86f29fc350b74fde6fb8de1c9f7b1d7828ea82647e6c5c247b8ff08eaf667bc3a2a614d22c00e77b', 0, '2020-10-24 22:50:26'),
	('33e4744de5c19cdf05e60b705f7b8a820b3a201bf479f74920a8c5fe47cf7fc314afe36c5bd9aac2', '8dd2ec944df85501acde6447c48d7f0f7f45b3313b286b596c06bb0f799395c85d1751ea8cf973eb', 0, '2020-10-27 12:22:57'),
	('35c30041e3bfe9a528eceabe4c94dad611613d66883854c089771e01cbb97972229826dd7222bffb', '37a48af3368bfc9510c38efac1b64fe3cbfc8c7f2926f11b8c7ede87b49324e65b2ea5a67016585d', 0, '2020-10-24 18:30:16'),
	('390d44ddd4aaa6f73e1bae4b7b4c47dcb45625c5d6e08a752a70c74af2ae8f586ab4a3ec2cadb856', '49e98d0bcedbe0a98a262ec574803f92c66abe043e4d1d06b2f7d592e06fd68dd1afb869daaa5662', 0, '2020-10-24 22:41:50'),
	('3abb6aaa53e78dbe2abd83f4861a4ae9bd0dd247c7a0ba5cac756f2a8cfde43f85fd453dfa33c319', 'ec529b9e6bfa56cf21ac7dbbf8e9a8a0d5cb1fbbf07559c92ce2491fcad627e61714ef9aa8b8c9cd', 0, '2020-10-27 12:18:14'),
	('3af63c42d50cd3814cc85230d024d4b80bc18dff69f09dd4c4d6d3a316f9b1bff6739ef680f05c2c', '963507466c6cf0769acf6cff8321e6f59ae233409f137b01c2689ba93ba13e0b38b4a5e3fae7ed85', 0, '2020-10-27 12:43:46'),
	('3db9e3fa7d5bc8a3cc72e8714fb278909f3d8e0f8c0786b5c7f7ec99b492d2a5e16005870cafce52', '804d323842c7352e01c3014920e4914213bbc3737aa846f5c5b14b05d394b187f0a8f1e1e5c8bbe7', 0, '2020-10-26 23:03:28'),
	('3fe2626ce68e1917119741dab6212627fa4f4c00d35f263e6ee2d20a049f68445b366c22befbb94d', '7bb4b930d0984cd42b456e8f63138a2398c0c6bf6a7956cba09a1dc496ee23705902629b3dbb3222', 0, '2020-10-27 12:44:36'),
	('40d7b6b37eea4386127cd276b46b402463aa42290db3cff6aaa321032ef6f9d0b2f6dd268a100c48', '010385c28ad195894951b07b4c307cbbc0fa55a173e40462c62d14ced49142d7f429828d71b7925f', 0, '2020-10-25 14:07:33'),
	('47abe76ba85772bf1c47d9372089fb8cbd3212f878def6c4d09e4842c5d76c4d74867aea621cb23c', '16669b735f10fc890e57cc007b6a45c1e8ff30522935e5fa6aee05a08ecc254314179839b77f3788', 0, '2020-10-26 23:04:50'),
	('4b0a0010123ee0886b6b1321187ac54c89b4e99c4b13e8f4c9a4b160c55a195c1260e2d6ff0828b0', '2d4dd50561165694232198e21bc6721407cf06b12968ab48fb57a36c00d0d743d1ad5bfc9761333b', 0, '2020-10-24 21:35:11'),
	('50d2904819ed30acc1da608f551fda80e340638c8fa6dcfe2af2f3e25397b29825d27c13373de7e5', '059ce5fcf261ecb13f745683a9b245a379b5c128d9fbf3d14db3cb26fcd3a59ad8d355e43eff6ca5', 0, '2020-10-26 21:24:04'),
	('5506b75df75d02ae8899209f9d1e49632d933ebeea57352e5da431698e09fb700f07177e55fdaa80', '4381417451aafcebe315af7321c446276a5048c562f61b0498c7c2b3a94873823cb97b4b69b0b7af', 0, '2020-10-24 22:43:16'),
	('5533387199e22287b13bfdba2de315091490bc914925975a166a4613ad83d33f14b846d413d30e68', '10a57f455897479caef523ecba6b20af26ef04a859d574fcce7dadd62bb9142f46bb3b9c4205df75', 0, '2020-10-26 23:11:48'),
	('576470e5cfee1f81e9d02f93a651aa71ae9648a4cb8f7e3211322debfdeb10d9bea8edf191ac345c', '538a970c8e1ca0dc59e6e514f31635fa6c516763cf4d89c2b43110d11ed092455c5d121b41d36b47', 0, '2020-10-26 23:06:35'),
	('6d3acc91d65a32ea24012d7383166427bbd925319152ebbd07e3b02b13ca60d9f7eb17a362d0bce1', '9c77e213eed53db13bd35f765eef977f1c53671b092902f27fedcbd66b3a87bd355f575ccb69c0a2', 0, '2020-10-24 21:29:37'),
	('6e4e92c2c687688c54bc692ae867d01b895fd30e1de61228e8228c12637cebb7a23a4f4ac81f3fab', '3600fdd09bef4c789e85f3d1edc7e2136614946534e85208329afe415d77de2893ef5b522dfade0f', 0, '2020-10-27 12:19:18'),
	('6f1e0c4eed9ad3b11a5cffc8561b00b0110f7b0d79187989b00df12ff9103d4b3ac4c76045d28b4a', 'd6dcad0bf3a044eb7941ae21df0a6fad63eef4ff1b2c80bde290d695707eff53eb10464ca6d1bc36', 0, '2020-10-24 21:27:06'),
	('6f5895b624c45e06668e439ef32a6b0634a8dd48cb367bdd99b2203a2152857711f3f88818f078ca', '51cad68094309d39a6847765dad6e81ee7c047e5a4e3ca558ca21f534f459fd3f48554c0cb07708f', 0, '2020-10-24 21:54:32'),
	('707326f9f25cd3bc7d205676fbe7a3a8a719000d0931313ad814ca47ae7195b01544b8bdbc753272', '493e9afa0e2be6d2ddab5a1fe532f367ac4e842cbd098b178a1d09d396975259be78685545a44666', 0, '2020-10-24 18:39:57'),
	('72681c983192b5189dbaf261a858b01568a34381f9daf55429ffd304172177706e2996ff1c56533e', '9644ae70f5101d712bfcabc7ab48a5c7c5deb2bc6c2e2609f890992b838d8419e2c8c3cf04a5234a', 0, '2020-10-24 22:53:27'),
	('792115943bee94179956ab432bd42be385f7fb626f10eb795c22e407f830d78b24bfc3cb4322ed43', '9a8a2d7f4b75c0fe56d406be381988526a3544ba3dafc060c543c9bb9d9c8e353e31f185cb210367', 0, '2020-10-27 13:18:23'),
	('7bccbbe171b124ffcb43b66f2de08629e0849383680bdba0220751464eddad9154e73b4d5ae8d20e', 'd8a05f76f75b0b6b487b278864af7400cfafa83e1f854b87c307bc2ff848ebdb86ec67ce2ebcc363', 0, '2020-10-24 18:26:23'),
	('7cad8aeb51140700ea8736da203ac9fb06f3598aac87e923e4e8dd9de69fe7a7d6129464fc31be2c', '01678188147d44ee4ab46ccb4d8e91a78aee3cb5f1fce03f77a4f995a089e2f6f0e12d0345bfc29a', 0, '2020-10-24 20:18:10'),
	('7f6c532e3b50c29280231041bb4535cd3de14ab666f8768cfa34b8f4bfe58b6886ef2977b689f7dd', 'b843cf46a4130e3abeef17bd819599b5849ce6851ffa6a03b06fa65b805b3caab2fd28c019238dc9', 0, '2020-10-26 19:41:50'),
	('81610726d1e467d22213099397a0ba203329e22c2d94069a05ad24936c7db3e3cd70649af2adca8c', '8b6e0cfb742b7d037735bd983c7b6ee0531782f861f9db1578a2b99ca32410e662018e684de85f39', 0, '2020-10-24 22:38:24'),
	('89040fc0381bc085743f0a55585d6d6488ac98a2b9387db954a7edea0343a2d819fa53eb4de72527', '09b808f8962b30eb7dd564ccc1a52652accd063c346c9fd9ae188d57796be818eda483e8d61cd369', 0, '2020-10-27 12:37:10'),
	('8b9693549730c4b49bf1469d96e67bdec1932e36bd288d8b890b6330607c168ad43ad58c6979bb49', 'a09ee241971188d02a92745b00cf6478d458422695e0cc1f7b9d51a8e55e31dfb22c2ef1fda59e20', 0, '2020-10-24 18:29:11'),
	('929f44438baaec61bb9fe9f0d38b72c26aae0f7f8f42e5b7a009095280857afcb1ad74ed4a8cdc0f', '4dd21db0f8cdb65a4dc78995a679809be8e01fa3fe3a6e3e1a32126cea095e88c44966c130c94704', 0, '2020-10-26 23:38:32'),
	('99b7f66b747a2de5e33839d0ea6adf879adcd8c6e313a4f856a3c291d852d143fd8f1db5d66184f3', '6af6da8e91c5ed9b6793c9468ab3aa0a9d385536e244bd7b12d367a020897d6966641dbea011e26b', 0, '2020-10-27 12:28:42'),
	('9f2ad5c56b39e9b07858df6d2142b9afc553409b930ab9ff4a542ec91988d6b55ebadd524db72b4f', 'ad759824d88f44ab6551c08023b6c8220676960f9434d4d7561a200ecd529699ad60588e0ed16e94', 0, '2020-10-24 22:36:54'),
	('a181228ea43278e4e69621e38a952893ab1eb647464ff92d9261a686692d95798231f01a8d7d0902', '627f146507e73d04e863609289e00951ce42b23286d9c725bfe1bce172f6f58d41b4caf1b30073a5', 0, '2020-10-27 12:42:29'),
	('a36279f22a0179df21ff1890dbd1e5203252404c4ce8cb2207f63cd5a51eb1a5391891c5f7657a91', '90fc902110b8c194db4e253e94aa16d7badc4546db4c392944030bfeb24b6fd1dbc26ee5b4ce7b69', 0, '2020-10-24 22:28:46'),
	('a7245a760adf2f6c7a88746c01d6f61e334ed249fa1a08f9637bd53a823cafaf73d129ece4815ca1', '78090bb2dfd9d4a6f5edbf224cab3aacef60fb527e7828fbd3a0a17ecae0eb0a113a6daeff9eb8b2', 0, '2020-10-27 12:32:08'),
	('acc7f65e0f2c0d8009c0443a5712f6b3fe372dc343ad5438ce44fb8d8ad111c4773ef4d830bb6dcf', 'fd5d029eb040010be7f7c6bc30047484cda55b4dc238ab8a56186006341060e18588b48e5aa92ec7', 0, '2020-10-24 19:59:28'),
	('ad31439a405ba6680c5a1b431c3583fe6a808e016ee7502add71bc00dc80738af63ba5aaedd84a3a', '58fdad57d7cd3f51cfec72f89cca9f9d5345f2cc735950a706ab7c9bb4d62b5c6d34476329b86e05', 0, '2020-10-24 19:17:41'),
	('b1b36547a1e7c496460f2727b60f0893b9ef2b4e84e4f64bcd7857458c1698a7f25fece963b93005', '44a4126f8b250154e6b279f85f1995172ee2e788a58be775e33ae0ce1d84aa07449811137bc12da7', 0, '2020-10-27 12:45:01'),
	('b229f53826042d8e635fba1a3dfa959c6a3c9d56f608102d6867fc5e309fd85cb5945e8ac0299348', '450b142eefb48b31aeafdea506e4e9e77c79130f0273fc8ec609f4774c46805f2c943ce1bfdb6d66', 0, '2020-10-26 23:10:40'),
	('b2d73d0e3d05f8c81af848cc5ed75d420d7e0e84f0164574d2b4d166aa99b20b3315f0dd95fe6008', '88ae10bce9619c32c46a25a253ddab002a5f8e3b4e6e3df918f6648e8ead693492bff639c6609db3', 0, '2020-10-24 19:18:45'),
	('baf772f01d36590b079cb7413577d79a6ee8f40fb73f35da2156c87d81bf7b6005061d2ab3e5a26d', '1768b302fe3ba1c79f86282f186e99a68cc73591f09a6abc4c5271eb4cf4d422ca310bce6e966c86', 0, '2020-10-26 23:40:57'),
	('c027fba3149fdc30e46e099fe297463dac77b8d757884b62cbade35696553828b57b85c1cb4cec88', 'b53dbf5145b8f5b2bcf74cbd35cc2e8bb1b9ef490302ef59b457b6376687cefea048f02e07995658', 0, '2020-10-26 23:07:24'),
	('c42217f565b9e2efc4360183785c4389e730e4dd608290b0e8f5e1790b4fe1912c702295faf95caf', '560ea7b20eeeacf29437de41344d145f8e520604885f6935424438ce61371a7c65880f9364936b21', 0, '2020-10-26 23:07:08'),
	('c4902d9ed103e162bd109b073fe129e6747973b961a943b4c3bf7488243f0da4ffbfdaa39645f4b7', 'b942d4099eb6a01b3a9d8855526fcf0689806823668932b885edeb6efcfd093d25c0e1ab76701e2c', 0, '2020-10-24 20:20:33'),
	('c8970bd0fa710364f4f43cc9603cf2cb19860de042d0e9a190ece77812e02667c502abbb70c4f134', '239bdb65308bcc116ff6c30d3c6b0c38a178418cc75f385b1d2c86d786bcfe513a19661f878cf87d', 0, '2020-10-27 12:38:06'),
	('caf4f2a8ad3d8325e6b3a62979d439aaf69c8bb5ffc1d6f4c0150e8c4b6a3b5d6e2ec0f79d5d7bcf', '020bf2dac4db591fb89e90a5db4987dacaccc664c84ffffb8bef586b8cf9044ce69dce0d37cd4524', 0, '2020-10-24 18:27:38'),
	('d35ac608464be5d05f850cbfa470a6bcaa6cb8946037ba22be7a969018048ce0c64da3b09824bb07', '5516cd29dc853e68932742f6122f4ffa50f7c93dae84a0ea9493431e284b5f211f9858eeeda99bfb', 0, '2020-10-24 22:31:40'),
	('d961e70371ed1ec67cf306288bdaa50366df8f25ecb546cec52adfb8a90e3751ce180b4bc40ab96c', '62058906e770027158e00245e0043ed56f9401c53c3937be4d5e511210668ccd39b4e9c313d1eced', 0, '2020-10-24 19:29:21'),
	('e512f5be7c977c0a91a649fb68164155d2d5b64d106017a06d2bc71836706d3264e66edaf7823c5d', '870f40da8b560718a241f7d9087ffb9b54accc77740a73888570c2b2bdb4d095df6078e8063e5978', 0, '2020-10-27 13:21:11'),
	('e6463602d13ea0e9e5caa12ac22f6a6353cfc0236e87187e439bfd259541dfbb39993b163665d75f', 'f3602dda784844b1e5d215768b06c79be625c447a6f396cdcbca395cd91e7b59866dd03e14897824', 0, '2020-10-24 18:41:47'),
	('eeb5ea2bdccfc9e944ef99db0aa56cd9488eae6cfd85ed73d77ff24acbf771da5fdc7b4ce9064c51', '0e03fdcae6b9199dc0ddc2fcaad6b2cd70139ec473e889ccd6c1bca281ab4e1e1c2918ca4c5aac98', 0, '2020-10-24 22:37:55'),
	('f3f3d236ce7d0590688460aeabf13671c10342b1e7eb3f4a2d984331091e0a72fca007d92256842b', '2c423e1c6fab72d5d95bb3583d54760cda86533b6620d23f570a060e03af6e2b2664dc10d5b7017b', 0, '2020-10-27 12:39:18'),
	('fd8350bf2dbc3a133c78ceeaf6b9e49b8b6ffd95d47f2edbf71f0afcfdb61522684754bd922a28a5', 'dbbedae03c1767677d420627787373abe0ca6cec16596f134fec34dac402689b8720a343aef4f552', 0, '2020-10-24 20:22:39'),
	('ff4709687757b67d3aef62dfb89ef5eaf307207ea74ec099e5ee4ea161dc4869010161641408ea7d', 'cf84034247a1416e8c868fee42fa5b459196deca291482ff09ba50f04073d0c188d5584b9fa83a12', 0, '2020-10-24 20:02:01');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Dumping structure for table alojaonline.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `nif` int(9) NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `FK_orders_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table alojaonline.orders: ~17 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `name`, `address`, `nif`, `user_id`) VALUES
	(1, 'Ruben Lauro', 'Balelas', 251093093, 1),
	(2, 'Ruben Lauro', 'Balelas', 251093093, 1),
	(3, 'Ruben Lauro', 'Balelas', 251093093, 1),
	(4, 'Ruben Lauro', 'Balelas', 251093093, 1),
	(5, 'Ruben Lauro', 'Balelas', 251093093, 1),
	(6, 'Ruben Lauro', 'Balelas', 251093093, 1),
	(7, 'Ruben Lauro', 'Balelas', 251093093, 1),
	(8, 'Ruben Lauro', 'Balelas', 251093093, 1),
	(9, 'Ruben Lauro', 'Balelas', 251093093, 1),
	(10, 'Ruben Lauro', 'Balelas', 251093093, 1),
	(11, 'Ruben Lauro', 'Balelas', 251093093, 1),
	(12, 'Ruben Lauro', 'Balelas', 251093093, 1),
	(13, 'Ruben Lauro', 'Balelas', 251093093, 1),
	(14, 'Ruben Lauro', 'Balelas', 251093093, 1),
	(15, 'Ruben Lauro', 'Balelas', 251093093, 1),
	(16, 'Ruben Lauro', 'Balelas', 251093093, 1),
	(17, 'Ruben Lauro', 'Balelas', 251093093, 1),
	(18, 'Ruben Lauro', 'Balelas', 251093093, 1),
	(19, 'Ruben Lauro', 'Balelas', 251093093, 1),
	(20, 'asd', 'asd', 123456789, 1),
	(21, 'sad', '213123', 251093093, 1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table alojaonline.orders_products
CREATE TABLE IF NOT EXISTS `orders_products` (
  `order_id` int(11) unsigned NOT NULL,
  `product_id` int(11) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  KEY `FK_orders_products_orders` (`order_id`),
  KEY `FK_orders_products_products` (`product_id`),
  CONSTRAINT `FK_orders_products_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FK_orders_products_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table alojaonline.orders_products: ~5 rows (approximately)
/*!40000 ALTER TABLE `orders_products` DISABLE KEYS */;
INSERT INTO `orders_products` (`order_id`, `product_id`, `quantity`) VALUES
	(17, 1, 20),
	(18, 1, 20),
	(19, 1, 20),
	(19, 1, 20),
	(19, 1, 40),
	(21, 1, 4);
/*!40000 ALTER TABLE `orders_products` ENABLE KEYS */;

-- Dumping structure for table alojaonline.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table alojaonline.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table alojaonline.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '0',
  `available` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table alojaonline.products: ~0 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `price`, `stock`, `available`) VALUES
	(1, 'DELL', 459.99, 20, 1),
	(2, 'ASUS', 455.99, 20, 0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table alojaonline.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table alojaonline.users: ~50 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Keon Kshlerin', 'lblanda@example.net', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'cVlQRm9NUM', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(2, 'Maye Howell', 'paul12@example.org', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'fDkczfWAlT', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(3, 'Dr. Brennan Boyer Sr.', 'corbin65@example.com', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'kILbmQUJTu', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(4, 'Rosalinda Ruecker', 'berneice.kshlerin@example.net', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'G0MIziu3PD', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(5, 'Uriah Oberbrunner', 'marilou12@example.com', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', '0mJsIUtDbk', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(6, 'Moses Jacobi', 'bashirian.kaya@example.org', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'AO9WGMeZLS', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(7, 'Megane Kuphal', 'skiles.adalberto@example.com', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'wjecTZIvsC', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(8, 'Eveline Cremin', 'rath.valentina@example.net', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'QMhEe63k8g', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(9, 'Blake Barton', 'considine.donato@example.org', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', '4hKq5dJk1c', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(10, 'Alicia Keeling', 'fdavis@example.net', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'gPSHZZR7Bp', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(11, 'Ramona Raynor', 'mueller.casper@example.net', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', '8kb2utCOyF', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(12, 'Lorenz Brakus', 'winston22@example.com', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'T2GK8cHEbZ', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(13, 'Mr. Mitchell Jast Jr.', 'marion26@example.com', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'KYCa22ZK7N', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(14, 'Estevan Christiansen', 'earl.jaskolski@example.net', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', '3xfl5ix3na', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(15, 'Hilario Kerluke', 'nella59@example.org', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'MdRn1UWmQJ', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(16, 'Ms. Lia Vandervort DVM', 'tanya.hills@example.net', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', '2kFYhsTgyI', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(17, 'Kailey Ritchie', 'dorothea63@example.com', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'CGTUypqbba', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(18, 'Reina Sauer', 'jermey64@example.com', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', '9eIvAPDoyA', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(19, 'Dr. Lowell Doyle', 'orn.dayton@example.net', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'KkhohLIXRa', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(20, 'Dr. Vallie Larson', 'janiya66@example.net', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'K7wQVNIyj9', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(21, 'Dr. Gunner Morar I', 'enola.shields@example.net', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'QQMz2x0APh', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(22, 'Queenie Emmerich', 'hoppe.edna@example.net', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'WLR0unSnWU', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(23, 'Nasir Wisoky', 'diana21@example.net', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'obmps3ipZo', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(24, 'Mr. Judson Langworth II', 'ernest.green@example.net', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'N1fPzHGpkm', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(25, 'Dr. Israel Hessel PhD', 'pacocha.charity@example.org', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'gn7qMHVP25', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(26, 'Mrs. Magnolia Kessler V', 'bartell.crawford@example.com', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', '7fqaKuX3fn', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(27, 'Enoch Klocko', 'yeichmann@example.com', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'nilPrrAw0M', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(28, 'Rahul Bauch', 'noemi16@example.org', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'H0e0poxUpO', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(29, 'Milo Runte', 'windler.kenna@example.org', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'YkWvGcKat8', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(30, 'Monica Fay Sr.', 'augustine23@example.com', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'aXysgEfitE', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(31, 'Dr. Elliot Breitenberg III', 'barton.adolphus@example.net', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'WQp3R9v5uY', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(32, 'Maia Gutmann', 'jabari.sporer@example.org', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'VWUEakZ1pu', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(33, 'Mrs. Shanon Hirthe PhD', 'norbert60@example.net', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'PF4r1okE3W', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(34, 'Mrs. Ines Schneider', 'norene98@example.net', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', '0FhIa8jH4L', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(35, 'Sandrine Mayer', 'casper.welch@example.com', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'c7FJ0aM5A4', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(36, 'Dr. Gonzalo Orn IV', 'kristina29@example.org', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'UhgwuWJ8CT', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(37, 'Cristina Green', 'junior.wilderman@example.org', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'w8iU0tbMa1', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(38, 'Torrance Spinka I', 'kayley.feeney@example.com', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', '3pnKmj1wCk', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(39, 'Novella Pouros', 'braun.ted@example.org', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', '529i3sRq4u', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(40, 'Virgie Greenfelder V', 'yrobel@example.com', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'sHAO5Tp2Ua', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(41, 'Laurel Rodriguez III', 'heaven64@example.net', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'tPOajTLukY', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(42, 'Ahmad Murray', 'norma.farrell@example.org', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'V9MZiREDqb', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(43, 'Westley Zemlak', 'smith.rachael@example.org', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'CdXpJrfnu3', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(44, 'Prof. Clotilde Beer', 'dprosacco@example.com', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'hIZSBPTcDa', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(45, 'Miss Bettie Conroy MD', 'osbaldo.padberg@example.org', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'Sn9i4vmCBL', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(46, 'Prof. Lorenzo Jacobi III', 'karlee77@example.org', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'VaqeVeaNwH', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(47, 'Hassan Hegmann', 'raheem99@example.com', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'YkFkhGqFir', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(48, 'Gaetano Howell', 'nikolaus.darien@example.com', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'hhCEnWrruj', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(49, 'Dr. Caitlyn Will PhD', 'dkoss@example.com', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'mLGRSHwx0w', '2019-10-24 17:00:22', '2019-10-24 17:00:22'),
	(50, 'Dejah Hoeger', 'tyra.ledner@example.org', '$2y$10$PPRtMdcXPQGPLVi8r40ME.huN18oWGmFSbuH1JH/JRFawv/Ubl4TO', 'Hgwb2ZOC0C', '2019-10-24 17:00:22', '2019-10-24 17:00:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
