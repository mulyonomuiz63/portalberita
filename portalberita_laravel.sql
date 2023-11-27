-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Sep 2022 pada 19.08
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portalberita_laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `photo`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Jago Software', 'jagosoftware@shopee.co.id', '$2y$10$oade9hapARlT2SZQXiBWEOh35um7UY/zWPDLDc59oYD8ArtO7A66e', 'admin.png', '', NULL, '2022-09-08 08:43:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `authors`
--

INSERT INTO `authors` (`id`, `name`, `email`, `password`, `photo`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Nasrul Kurniawan', 'nasrul@jagosoftware.id', '$2y$10$h7HL6wYZhwENdtvPRTkG4u26ZDLKfODNWGa400kNO0j3m0A5QoumW', 'author_photo_1648556379.jpg', '', '2022-03-28 07:27:04', '2022-09-08 09:31:20'),
(2, 'David Beckham', 'david@gmail.com', '$2y$10$I4Q9ESJjfboWBaKqp65zmOIpx1ZY8i6ufihMCdPnpoHgjavrV29bW', 'author_photo_1648474343.jpg', '', '2022-03-28 07:32:23', '2022-03-28 19:17:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_on_menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `show_on_menu`, `category_order`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'Sports', 'Show', '2', 1, '2022-03-03 12:17:28', '2022-03-23 19:34:06'),
(2, 'National', 'Show', '1', 1, '2022-03-03 12:17:55', '2022-03-23 19:34:12'),
(3, 'Lifestyles', 'Show', '3', 1, '2022-03-03 12:18:03', '2022-03-03 12:18:03'),
(5, 'Technology', 'Show', '4', 1, '2022-03-20 20:41:38', '2022-03-20 20:41:38'),
(6, 'Job List', 'Hide', '5', 1, '2022-03-20 20:42:43', '2022-03-23 19:33:37'),
(7, 'Health', 'Show', '6', 1, '2022-03-20 20:44:13', '2022-03-20 20:44:13'),
(8, 'Travel', 'Show', '7', 1, '2022-03-20 20:45:40', '2022-03-20 20:45:40'),
(9, 'Nasional', 'Show', '1', 7, '2022-04-01 18:44:38', '2022-09-07 18:35:58'),
(10, 'Olahraga', 'Show', '2', 7, '2022-04-01 18:45:09', '2022-09-07 08:49:59'),
(11, 'Gaya hidup', 'Show', '3', 7, '2022-04-01 18:45:30', '2022-09-07 08:50:31'),
(12, 'Teknologi', 'Show', '4', 7, '2022-04-01 18:45:51', '2022-09-07 08:51:00'),
(13, 'Kesehatan', 'Show', '5', 7, '2022-04-01 18:46:09', '2022-09-07 08:51:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faq_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `faqs`
--

INSERT INTO `faqs` (`id`, `faq_title`, `faq_detail`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'Doming aliquid te pro. Mei et quodsi ornatus praesent', '<p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p><p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.<br></p>', 1, '2022-03-24 20:34:14', '2022-03-24 20:52:09'),
(2, 'Consetetur definitionem cu mea, usu legere minimum ne', '<p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.</p><p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.<br></p>', 1, '2022-03-24 20:34:36', '2022-03-24 20:34:36'),
(3, 'Ei usu malis aeque efficiantur. Mazim dolor denique duo ad', '<p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.</p><p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.<br></p>', 1, '2022-03-24 20:34:51', '2022-03-24 20:34:51'),
(4, 'In vim natum soleat nostro, pri in eloquentiam contentiones', '<p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.</p><p>Meliore inimicus duo ut, tation veritus elaboraret eam cu. Cum in alii agam aliquip, aperiam salutandi et per. Ex vis summo probatus ocurreret, ex assum sententiae pri, blandit sensibus moderatius ei eos. Vix nobis phaedrum neglegentur et.<br></p>', 1, '2022-03-24 20:35:06', '2022-03-24 20:35:06'),
(6, 'Lorem Epsom Dollar Seat Amet, Elite Adipiscing Connecticut.', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 7, '2022-04-02 06:08:37', '2022-09-07 08:43:35'),
(7, 'Proin A. Vestibulum Anim. Fusque quis conju ante.', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 7, '2022-04-02 06:08:56', '2022-09-07 08:43:54'),
(8, 'Hadirkan konsektatur fugat sedih yang blandit. Di sit amet saschipit nisl.', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 7, '2022-04-02 06:09:13', '2022-09-07 08:44:14'),
(9, 'Neulum malisuada quaum fringilla, Convallis ligula et, Commando urna.', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 7, '2022-04-02 06:09:27', '2022-09-07 08:44:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_advertisements`
--

CREATE TABLE `home_advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `above_search_ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `above_search_ad_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `above_search_ad_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `above_footer_ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `above_footer_ad_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `above_footer_ad_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `home_advertisements`
--

INSERT INTO `home_advertisements` (`id`, `above_search_ad`, `above_search_ad_url`, `above_search_ad_status`, `above_footer_ad`, `above_footer_ad_url`, `above_footer_ad_status`, `created_at`, `updated_at`) VALUES
(1, 'above_search_ad.png', NULL, 'Show', 'above_footer_ad.png', NULL, 'Show', NULL, '2022-03-01 22:44:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `languages`
--

INSERT INTO `languages` (`id`, `name`, `short_name`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'No', NULL, '2022-09-05 07:36:22'),
(7, 'Indonesia', 'id', 'Yes', '2022-04-01 04:09:39', '2022-09-07 19:49:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `live_channels`
--

CREATE TABLE `live_channels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `live_channels`
--

INSERT INTO `live_channels` (`id`, `heading`, `video_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'World Cup 2022 Finals', '3RODsXw3frw', 1, '2022-03-25 21:12:54', '2022-04-02 04:18:26'),
(3, 'Top Amazing Rainbow Cake', 'v8KxrV2nv68', 1, '2022-03-25 23:03:48', '2022-03-25 23:07:03'),
(4, 'Kue Pelangi Menakjubkan Terbaik', 'v8KxrV2nv68', 7, '2022-04-02 04:19:02', '2022-09-08 08:35:05'),
(5, 'Final Piala Dunia 2022', '3RODsXw3frw', 7, '2022-04-02 04:19:45', '2022-09-08 08:34:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_18_035205_create_admins_table', 1),
(6, '2022_03_01_101937_create_home_advertisements_table', 2),
(7, '2022_03_02_065939_create_top_advertisements_table', 3),
(8, '2022_03_02_170635_create_sidebar_advertisements_table', 4),
(9, '2022_03_03_172805_create_categories_table', 5),
(10, '2022_03_04_004630_create_sub_categories_table', 6),
(11, '2022_03_04_143328_create_posts_table', 7),
(12, '2022_03_18_003749_create_tags_table', 8),
(13, '2022_03_22_003034_create_settings_table', 9),
(14, '2022_03_23_022500_create_photos_table', 10),
(15, '2022_03_23_152119_create_videos_table', 11),
(16, '2022_03_24_064358_create_pages_table', 12),
(17, '2022_03_25_022716_create_faqs_table', 13),
(18, '2022_03_26_003328_create_subscribers_table', 14),
(19, '2022_03_26_030340_create_live_channels_table', 15),
(20, '2022_03_26_113348_create_online_polls_table', 16),
(21, '2022_03_28_010922_create_social_items_table', 17),
(22, '2022_03_28_113727_create_authors_table', 18),
(23, '2022_04_01_013719_create_languages_table', 19);

-- --------------------------------------------------------

--
-- Struktur dari tabel `online_polls`
--

CREATE TABLE `online_polls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `yes_vote` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_vote` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `online_polls`
--

INSERT INTO `online_polls` (`id`, `question`, `yes_vote`, `no_vote`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'Will Messi be able to get the championship trophy this year?', '230', '45', 1, '2022-03-26 05:44:16', '2022-03-26 05:44:16'),
(2, 'Will Ronaldo be able to get the championship trophy this year?', '40', '35', 1, '2022-03-26 05:44:41', '2022-03-26 07:14:09'),
(4, 'Who will win the war between Ukraine and Russia?', '1', '0', 1, '2022-03-26 07:20:07', '2022-03-26 11:44:22'),
(5, 'Bisakah Messi memenangkan trofi kejuaraan tahun ini?', '0', '0', 7, '2022-04-02 04:45:41', '2022-09-07 19:12:33'),
(6, 'Mampukah Ronaldo meraih trofi juara tahun ini?', '0', '0', 7, '2022-04-02 04:45:59', '2022-09-07 19:12:18'),
(7, 'Apakah informasi berita yang kami muat sudah bagus menurut anda', '1', '0', 7, '2022-04-02 04:46:18', '2022-09-07 19:11:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disclaimer_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disclaimer_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disclaimer_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `about_title`, `about_detail`, `about_status`, `faq_title`, `faq_detail`, `faq_status`, `contact_title`, `contact_detail`, `contact_map`, `contact_status`, `terms_title`, `terms_detail`, `terms_status`, `privacy_title`, `privacy_detail`, `privacy_status`, `disclaimer_title`, `disclaimer_detail`, `disclaimer_status`, `login_title`, `login_status`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'About', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p><p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.<br></p><p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p>', 'Show', 'FAQ', '<p><br></p>', 'Show', 'Contact Us', '<p><br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d76781.18424780735!2d-74.01425081274816!3d40.73849556392767!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2sbd!4v1648138678202!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Show', 'Terms and Conditions', '<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p><p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.<br></p><p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.<br></p><p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.<br></p><p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.<br></p><p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.<br></p>', 'Show', 'Privacy Policy', '<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p><p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.<br></p><p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.<br></p><p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.<br></p><p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.<br></p><p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.</p>', 'Show', 'Disclaimer', '<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p><p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.<br></p><p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.<br></p><p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.<br></p><p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.<br></p><p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.</p>', 'Show', 'Login', 'Show', 1, NULL, '2022-04-02 07:42:42'),
(2, 'Tentang', '<div><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Lorem Epsom Dollar Seat Amet, Connecticut\'s Adipiscing Elite.&nbsp;</font><font style=\"vertical-align: inherit;\">Nancy Altriches varius augiu u faucibus.&nbsp;</font><font style=\"vertical-align: inherit;\">In palentescue augiu non nique tempor tristic.&nbsp;</font><font style=\"vertical-align: inherit;\">Neula a purus ornare, matus anim sad, maximus m.&nbsp;</font><font style=\"vertical-align: inherit;\">Donek Porta Reutrum Dignissim.&nbsp;</font><font style=\"vertical-align: inherit;\">Donec vita erus eliquam, reutrum risus et, pertitor lorem.&nbsp;</font><font style=\"vertical-align: inherit;\">Aynan Sad Enim Lucas.&nbsp;</font><font style=\"vertical-align: inherit;\">Said Yakulus Erat id Maximus Hendrerit.&nbsp;</font><font style=\"vertical-align: inherit;\">Newlam A Efficator Ers.&nbsp;</font><font style=\"vertical-align: inherit;\">Sad u tincidant felice, a acumsan x.&nbsp;</font><font style=\"vertical-align: inherit;\">Name tristic vlutpat nisi et ornere.&nbsp;</font><font style=\"vertical-align: inherit;\">Fusque in tarpis quam.&nbsp;</font><font style=\"vertical-align: inherit;\">Morbi sagittis lactus est., Vitae Ulamcorpor Neula Allicate Veal.&nbsp;</font><font style=\"vertical-align: inherit;\">In hac habitusse Platia discumst</font></font></div><div><br></div><div><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Proin A. Vestibulum Anim.&nbsp;</font><font style=\"vertical-align: inherit;\">Fusque quis conju ante.&nbsp;</font><font style=\"vertical-align: inherit;\">Nancy faucibus x ut pretium usmod.&nbsp;</font><font style=\"vertical-align: inherit;\">In u aliquam lorem, igate reutrum ipsum.&nbsp;</font><font style=\"vertical-align: inherit;\">In non uctriches ligula.&nbsp;</font><font style=\"vertical-align: inherit;\">Integer laurit fringilla tortor, igate sagitis urna.&nbsp;</font><font style=\"vertical-align: inherit;\">Camel Viverra Dignissim Elite Quiz Concecut.&nbsp;</font><font style=\"vertical-align: inherit;\">Vivamus ac maximus dui, quiz venenatis pures.&nbsp;</font><font style=\"vertical-align: inherit;\">Anian vitae lacus non nique laurit fareta vitae et massa.&nbsp;</font><font style=\"vertical-align: inherit;\">Crus dictum errat id lacus voliupat, nique Pelentesquie sem Maleciuda.&nbsp;</font><font style=\"vertical-align: inherit;\">Crass fauchinus mollis Velit igate Soliciushudin.</font></font></div><div><br></div><div><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Present blandit sad fugat consectature.&nbsp;</font><font style=\"vertical-align: inherit;\">In sit amet saschipit nisl.&nbsp;</font><font style=\"vertical-align: inherit;\">Neolum Cursus, NiQ Non-Used Sodales, Odio Elite Yakulis X.&nbsp;</font><font style=\"vertical-align: inherit;\">Eget imperediate neula velit eget two.&nbsp;</font><font style=\"vertical-align: inherit;\">Present Eucalis, enim eget placeter tinchidant, metas justum id Phinibus rq consecut et.&nbsp;</font><font style=\"vertical-align: inherit;\">Proin dapibus placerat purus et cursus.&nbsp;</font><font style=\"vertical-align: inherit;\">Maury vitaii Laurit Nancy, U. Euaculis tarpis.&nbsp;</font><font style=\"vertical-align: inherit;\">Nancy U Reutram Raisas.&nbsp;</font><font style=\"vertical-align: inherit;\">Sad sagitis vivera lorem sad dignissim.&nbsp;</font><font style=\"vertical-align: inherit;\">Present Volatpat Yulam Corpor ex et dictum.&nbsp;</font><font style=\"vertical-align: inherit;\">In vel est diam.&nbsp;</font><font style=\"vertical-align: inherit;\">Lorem Epsom Dollar Seat Amet, Connecticut\'s Adipiscing Elite.</font></font></div>', 'Show', 'FAQ', '<p><br></p>', 'Show', 'Hubungi kami', '<p><br></p>', '<div class=\"mapouter\"><div class=\"gmap_canvas\"><iframe class=\"gmap_iframe\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"https://maps.google.com/maps?width=600&amp;height=400&amp;hl=en&amp;q=sidoharjo,sragen&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed\"></iframe><a href=\"https://mcpenation.com/\">Minecraft Website</a></div><style>.mapouter{position:relative;text-align:right;width:600px;height:400px;}.gmap_canvas {overflow:hidden;background:none!important;width:600px;height:450px;}.gmap_iframe {width:600px!important;height:400px!important;}</style></div>', 'Show', 'Terms and Conditions', '<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p><p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.<br></p><p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.<br></p><p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.<br></p><p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.<br></p><p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.</p>', 'Show', 'Privacy Policy', '<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p><p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.<br></p><p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.<br></p><p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.<br></p><p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.<br></p><p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.</p>', 'Show', 'Disclaimer', '<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p><p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.<br></p><p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.<br></p><p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.<br></p><p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.<br></p><p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.</p>', 'Show', 'Login', 'Show', 7, NULL, '2022-09-07 08:42:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `photos`
--

INSERT INTO `photos` (`id`, `photo`, `caption`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'photo_1648003895.jpg', 'Computer Photo', 1, '2022-03-22 20:51:35', '2022-03-22 20:51:35'),
(3, 'photo_1648003922.jpg', 'Football Photo', 1, '2022-03-22 20:52:02', '2022-03-22 20:52:02'),
(4, 'photo_1648005299.jpg', 'Adventure Photo', 1, '2022-03-22 21:14:59', '2022-03-22 21:14:59'),
(5, 'photo_1648005311.jpg', 'Adventure Photo', 1, '2022-03-22 21:15:11', '2022-03-22 21:15:11'),
(6, 'photo_1648005327.jpg', 'Computer Photo', 1, '2022-03-22 21:15:27', '2022-03-22 21:15:27'),
(7, 'photo_1648005344.jpg', 'Football Photo', 1, '2022-03-22 21:15:44', '2022-03-22 21:15:44'),
(8, 'photo_1648005360.jpg', 'Computer Photo', 1, '2022-03-22 21:16:00', '2022-03-22 21:16:00'),
(9, 'photo_1648035386.jpg', 'Football Photo', 1, '2022-03-23 05:36:13', '2022-03-23 05:36:26'),
(10, 'photo_1648035401.jpg', 'Football Photo', 1, '2022-03-23 05:36:41', '2022-03-23 05:36:41'),
(11, 'photo_1648899153.jpg', 'Gambar Komputer', 7, '2022-04-02 05:32:33', '2022-09-08 08:29:29'),
(12, 'photo_1648899190.jpg', 'Gambar petualangan', 7, '2022-04-02 05:33:10', '2022-09-08 08:29:48'),
(13, 'photo_1648899203.jpg', 'Gambar petualangan', 7, '2022-04-02 05:33:23', '2022-09-08 08:30:13'),
(14, 'photo_1648899221.jpg', 'Gambar Komputer', 7, '2022-04-02 05:33:41', '2022-09-08 08:30:29'),
(15, 'photo_1648899237.jpg', 'Foto sepak bola', 7, '2022-04-02 05:33:57', '2022-09-08 08:30:46'),
(16, 'photo_1648899253.jpg', 'Foto sepak bola', 7, '2022-04-02 05:34:13', '2022-09-08 08:31:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitors` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `is_share` int(11) NOT NULL,
  `is_comment` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `sub_category_id`, `post_title`, `post_detail`, `post_photo`, `visitors`, `author_id`, `admin_id`, `is_share`, `is_comment`, `language_id`, `created_at`, `updated_at`) VALUES
(7, 1, 'Three Best Matches to Watch on TV This Weekend', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p><p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.<br></p><p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p>', 'post_photo_1647831282.jpg', 4, 0, 1, 1, 1, 1, '2021-08-20 20:54:42', '2022-03-28 05:11:25'),
(8, 1, 'Premier League Matchday 25: Saturday Preview & Predictions', '<p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p><p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.<br></p><p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.<br></p>', 'post_photo_1647831340.jpg', 1, 0, 1, 1, 1, 1, '2021-09-20 20:55:40', '2021-09-20 20:55:40'),
(9, 1, 'Premier League Matchday 23: Top-Four Race Matches to Watch & Predictions', '<p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p><p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.<br></p><p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.<br></p>', 'post_photo_1647831392.jpg', 1, 0, 1, 1, 1, 1, '2021-09-20 20:56:32', '2021-09-20 20:56:32'),
(10, 1, 'Five players who are desperate to move in the 2022 January transfer window', '<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p><p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.<br></p><p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.<br></p>', 'post_photo_1647831441.jpg', 1, 0, 1, 1, 1, 1, '2021-11-20 20:57:21', '2021-11-20 20:57:21'),
(11, 1, 'Chelsea star Romelu Lukaku set for showdown talks with Thomas Tuchel', '<p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.</p><p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.<br></p><p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.<br></p>', 'post_photo_1647831519.jpg', 9, 0, 1, 1, 1, 1, '2021-12-20 20:58:39', '2022-04-01 09:21:30'),
(12, 1, 'November International Break – Preview', '<p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.</p><p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.<br></p><p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.<br></p>', 'post_photo_1647833618.jpg', 7, 0, 1, 1, 1, 1, '2022-01-20 21:33:38', '2022-01-22 19:38:00'),
(13, 1, 'Wolverhampton Wanderers vs Everton: Premier League Preview & Predicted Line-ups', '<p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.</p><p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.<br></p><p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.<br></p>', 'post_photo_1647833668.jpg', 19, 0, 1, 1, 1, 1, '2022-01-20 21:34:28', '2022-04-01 00:09:21'),
(14, 5, 'Insurance Policies All Working Adults Need to Have', '<p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.</p><p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.<br></p><p>Meliore inimicus duo ut, tation veritus elaboraret eam cu. Cum in alii agam aliquip, aperiam salutandi et per. Ex vis summo probatus ocurreret, ex assum sententiae pri, blandit sensibus moderatius ei eos. Vix nobis phaedrum neglegentur et.<br></p>', 'post_photo_1647833724.jpg', 4, 0, 1, 1, 1, 1, '2022-01-20 21:35:24', '2022-03-27 00:43:57'),
(15, 5, 'Coping with Cancer and Staying Financially Ready to Treat It', '<p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.</p><p>Meliore inimicus duo ut, tation veritus elaboraret eam cu. Cum in alii agam aliquip, aperiam salutandi et per. Ex vis summo probatus ocurreret, ex assum sententiae pri, blandit sensibus moderatius ei eos. Vix nobis phaedrum neglegentur et.<br></p><p>Id est maiorum volutpat, ad nominavi suscipit suscipiantur vix. Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum, sit quis simul accusam cu. Usu ei perfecto repudiare tincidunt, ut quas malis erant vim. An mel vidit iudicabit.<br></p>', 'post_photo_1647833762.jpg', 1, 0, 1, 1, 1, 1, '2022-03-20 21:36:02', '2022-03-20 21:36:02'),
(16, 5, 'Does insurance cover windshield replacement?', '<p>Meliore inimicus duo ut, tation veritus elaboraret eam cu. Cum in alii agam aliquip, aperiam salutandi et per. Ex vis summo probatus ocurreret, ex assum sententiae pri, blandit sensibus moderatius ei eos. Vix nobis phaedrum neglegentur et.</p><p>Id est maiorum volutpat, ad nominavi suscipit suscipiantur vix. Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum, sit quis simul accusam cu. Usu ei perfecto repudiare tincidunt, ut quas malis erant vim. An mel vidit iudicabit.<br></p><p>Appetere fabellas ius te. Nonumes splendide deseruisse ea vis, alii velit vel eu. Eos ut scaevola platonem rationibus. Vis natum vivendo sententiae in, ea aperiam apeirian pri, in partem eleifend quo. Pro ex nobis utinam, nam et vidit numquam fastidii, ne per munere adolescens.<br></p>', 'post_photo_1647833797.jpg', 1, 0, 1, 1, 1, 1, '2022-03-20 21:36:37', '2022-03-22 11:08:58'),
(17, 5, 'Navigating your Root insurance quote', '<p>Id est maiorum volutpat, ad nominavi suscipit suscipiantur vix. Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum, sit quis simul accusam cu. Usu ei perfecto repudiare tincidunt, ut quas malis erant vim. An mel vidit iudicabit.</p><p>Appetere fabellas ius te. Nonumes splendide deseruisse ea vis, alii velit vel eu. Eos ut scaevola platonem rationibus. Vis natum vivendo sententiae in, ea aperiam apeirian pri, in partem eleifend quo. Pro ex nobis utinam, nam et vidit numquam fastidii, ne per munere adolescens.<br></p><p>Ipsum volumus pertinax mea ut, eu erat tacimates nam. Tibique copiosae verterem mea no, eam ex melius option, soluta timeam et his. Sit simul gubergren reformidans id, amet minimum nominavi eos ea. Et augue dicta vix. Mea ne utamur referrentur.<br></p>', 'post_photo_1647833830.jpg', 2, 0, 1, 1, 1, 1, '2022-03-20 21:37:10', '2022-03-22 11:40:38'),
(18, 5, '5 Ways Disability Insurance Kept Life Normal for This Athlete', '<p>Appetere fabellas ius te. Nonumes splendide deseruisse ea vis, alii velit vel eu. Eos ut scaevola platonem rationibus. Vis natum vivendo sententiae in, ea aperiam apeirian pri, in partem eleifend quo. Pro ex nobis utinam, nam et vidit numquam fastidii, ne per munere adolescens.</p><p>Ipsum volumus pertinax mea ut, eu erat tacimates nam. Tibique copiosae verterem mea no, eam ex melius option, soluta timeam et his. Sit simul gubergren reformidans id, amet minimum nominavi eos ea. Et augue dicta vix. Mea ne utamur referrentur.<br></p><p>Per ex vero nonumy. Ius eu doming nominavi mediocrem, aliquid efficiantur no vim, sanctus admodum mnesarchum ad pro. No sea invidunt partiendo. No postea numquam ocurreret duo, unum abhorreant cu nam, fugit fastidii percipitur nam id.<br></p>', 'post_photo_1647833878.jpg', 1, 0, 1, 1, 1, 1, '2022-03-20 21:37:58', '2022-03-20 21:37:58'),
(19, 5, '16 Commonly Misunderstood Insurance Words', '<p>Ipsum volumus pertinax mea ut, eu erat tacimates nam. Tibique copiosae verterem mea no, eam ex melius option, soluta timeam et his. Sit simul gubergren reformidans id, amet minimum nominavi eos ea. Et augue dicta vix. Mea ne utamur referrentur.</p><p>Per ex vero nonumy. Ius eu doming nominavi mediocrem, aliquid efficiantur no vim, sanctus admodum mnesarchum ad pro. No sea invidunt partiendo. No postea numquam ocurreret duo, unum abhorreant cu nam, fugit fastidii percipitur nam id.<br></p><p>Sit vivendum eleifend adipiscing ea. Modus legere suscipiantur an vel, melius patrioque est cu, eum at audire probatus repudiandae. Ei tempor definitiones eam, sea dico omnium ne. Eam ad ubique tincidunt elaboraret, malis aperiri sit et. Ut quo vero inimicus. Sed at munere fuisset noluisse, eleifend senserit an vix.<br></p>', 'post_photo_1647833917.jpg', 1, 0, 1, 1, 1, 1, '2022-03-20 21:38:37', '2022-03-20 21:38:37'),
(20, 24, 'The 2022 Winter Climbing Season Brings Little Success for Alpinists', '<p>Per ex vero nonumy. Ius eu doming nominavi mediocrem, aliquid efficiantur no vim, sanctus admodum mnesarchum ad pro. No sea invidunt partiendo. No postea numquam ocurreret duo, unum abhorreant cu nam, fugit fastidii percipitur nam id.</p><p>Sit vivendum eleifend adipiscing ea. Modus legere suscipiantur an vel, melius patrioque est cu, eum at audire probatus repudiandae. Ei tempor definitiones eam, sea dico omnium ne. Eam ad ubique tincidunt elaboraret, malis aperiri sit et. Ut quo vero inimicus. Sed at munere fuisset noluisse, eleifend senserit an vix.<br></p><p>Sint dignissim consectetuer nec et, per ad probatus referrentur, vel cu consequat sententiae. Ad duis fugit dictas mea, et cum stet oratio cetero. Ne pri omittam fastidii. No per harum dicant neglegentur, sea ei esse volumus adolescens. Nulla argumentum at pri, vel apeirian principes in. An dicam dicant consul mea, ne per option appetere argumentum, vim legere senserit et.<br></p>', 'post_photo_1647833961.jpg', 1, 0, 1, 1, 1, 1, '2022-03-20 21:39:21', '2022-03-22 11:08:22'),
(21, 24, 'Win a Scholarship for an Andrew Skurka Backpacking Trip', '<p>Sit vivendum eleifend adipiscing ea. Modus legere suscipiantur an vel, melius patrioque est cu, eum at audire probatus repudiandae. Ei tempor definitiones eam, sea dico omnium ne. Eam ad ubique tincidunt elaboraret, malis aperiri sit et. Ut quo vero inimicus. Sed at munere fuisset noluisse, eleifend senserit an vix.</p><p>Sint dignissim consectetuer nec et, per ad probatus referrentur, vel cu consequat sententiae. Ad duis fugit dictas mea, et cum stet oratio cetero. Ne pri omittam fastidii. No per harum dicant neglegentur, sea ei esse volumus adolescens. Nulla argumentum at pri, vel apeirian principes in. An dicam dicant consul mea, ne per option appetere argumentum, vim legere senserit et.<br></p><p>Te soleat legendos molestiae cum. Tale sanctus invidunt cu per, quo at modo recteque elaboraret. Ex mazim homero per. Eu nec exerci doctus, cu mei oblique copiosae. Consul diceret usu ne.<br></p>', 'post_photo_1647833998.jpg', 1, 0, 1, 1, 1, 1, '2022-03-20 21:39:58', '2022-03-20 21:39:58'),
(22, 24, 'New Route on Everest Looks to Avoid the Dreaded Khumbu Icefall', '<p>Sint dignissim consectetuer nec et, per ad probatus referrentur, vel cu consequat sententiae. Ad duis fugit dictas mea, et cum stet oratio cetero. Ne pri omittam fastidii. No per harum dicant neglegentur, sea ei esse volumus adolescens. Nulla argumentum at pri, vel apeirian principes in. An dicam dicant consul mea, ne per option appetere argumentum, vim legere senserit et.</p><p>Te soleat legendos molestiae cum. Tale sanctus invidunt cu per, quo at modo recteque elaboraret. Ex mazim homero per. Eu nec exerci doctus, cu mei oblique copiosae. Consul diceret usu ne.<br></p><p>Usu ad solet diceret, usu at appetere percipit appellantur, te est primis audire gloriatur. Scripta noluisse no mel, vis ne decore ridens labitur. Stet erant saepe eu mea. An mel dolore salutandi abhorreant. An quo aliquip maluisset, mea quaeque indoctum in, pro augue veritus praesent te.<br></p>', 'post_photo_1647834038.jpg', 1, 0, 1, 1, 1, 1, '2022-03-20 21:40:38', '2022-03-22 11:08:31'),
(23, 24, 'Winter Camping: How to Survive and Even Thrive in the Cold', '<p>Te soleat legendos molestiae cum. Tale sanctus invidunt cu per, quo at modo recteque elaboraret. Ex mazim homero per. Eu nec exerci doctus, cu mei oblique copiosae. Consul diceret usu ne.</p><p>Usu ad solet diceret, usu at appetere percipit appellantur, te est primis audire gloriatur. Scripta noluisse no mel, vis ne decore ridens labitur. Stet erant saepe eu mea. An mel dolore salutandi abhorreant. An quo aliquip maluisset, mea quaeque indoctum in, pro augue veritus praesent te.<br></p><p>Vim exerci sadipscing in, est simul recteque ei, dictas repudiandae comprehensam cu usu. Te melius veritus tibique pri. Sea nonumy euismod deserunt te. Ad ius nullam malorum assueverit.<br></p>', 'post_photo_1647834079.jpg', 3, 0, 1, 1, 1, 1, '2022-03-20 21:41:19', '2022-03-31 19:22:23'),
(24, 24, 'Blue Origin Announces Orbital Reef—a Luxury Space Hotel', '<p>Usu ad solet diceret, usu at appetere percipit appellantur, te est primis audire gloriatur. Scripta noluisse no mel, vis ne decore ridens labitur. Stet erant saepe eu mea. An mel dolore salutandi abhorreant. An quo aliquip maluisset, mea quaeque indoctum in, pro augue veritus praesent te.</p><p>Vim exerci sadipscing in, est simul recteque ei, dictas repudiandae comprehensam cu usu. Te melius veritus tibique pri. Sea nonumy euismod deserunt te. Ad ius nullam malorum assueverit.<br></p><p>Vim et alterum ornatus vivendum, ut mea solum repudiare. His etiam delenit tibique no, ad harum omnes scribentur qui, ne wisi detracto his. Ei movet accusam pri. Ex vel diam quas urbanitas, ne has velit affert habemus. At quis nonumy disputando nec, falli scaevola vel ea. Omittantur concludaturque nam eu, ex est vocent virtute.<br></p>', 'post_photo_1647834121.jpg', 1, 0, 1, 1, 1, 1, '2022-03-20 21:42:01', '2022-03-22 11:08:00'),
(25, 12, 'Hardware or Software? How to Tell What’s Wrong with Your Device', '<p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p><p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.<br></p><p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.<br></p>', 'post_photo_1647834177.jpg', 1, 0, 1, 1, 1, 1, '2022-03-20 21:42:57', '2022-03-20 21:42:57'),
(26, 12, 'Computer Boot Problem. The steps to solve this issue.', '<p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p><p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.<br></p><p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.<br></p>', 'post_photo_1647834214.jpg', 2, 0, 1, 1, 1, 1, '2022-03-20 21:43:34', '2022-03-26 00:54:35'),
(27, 12, 'Working from Home for the Foreseeable Future?', '<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p><p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.<br></p><p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.<br></p>', 'post_photo_1647834263.jpg', 1, 0, 1, 1, 1, 1, '2022-03-20 21:44:10', '2022-03-20 21:44:23'),
(28, 12, 'Computer Vision is Driving Huge ROI for Businesses', '<p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.</p><p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.<br></p><p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.<br></p>', 'post_photo_1647834309.jpg', 4, 0, 1, 1, 1, 1, '2022-03-20 21:45:09', '2022-03-26 00:54:26'),
(29, 12, 'Evolectric Selects alwaysAI to Help Commercial Fleet Owners', '<p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.</p><p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.<br></p><p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.<br></p>', 'post_photo_1647834361.jpg', 17, 0, 1, 1, 1, 1, '2022-03-20 21:46:01', '2022-03-27 19:04:26'),
(30, 12, 'Just How Secure IS Cloud PDM?', '<p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.</p><p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.<br></p><p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.<br></p>', 'post_photo_1647834406.jpg', 20, 0, 1, 1, 1, 1, '2022-03-20 21:46:46', '2022-09-04 10:08:16'),
(33, 1, 'Top 20 players who might play their last WC in 2022', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p><p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.<br></p><p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p>', 'post_photo_1649040618.jpg', 3, 1, 0, 1, 1, 1, '2022-03-29 07:36:26', '2022-04-03 20:50:18'),
(36, 1, 'The Spanish youngster continues to dazzle under Xavi', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p><p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.<br></p><p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p>', 'post_photo_1649040653.jpg', 3, 1, 0, 1, 1, 1, '2022-03-29 18:38:50', '2022-04-03 20:50:53'),
(37, 28, 'Hari Ini, Jadwal Pembayaran BLT BBM di Gondang dan Plupuh Sragen', '<p>Solopos.com, SRAGEN—Sebanyak 1.300 keluarga penerima manfaat (KPM) di Kecamatan Gondang dan Plupuh, Sragen, dijadwalkan menerima bantuan langsung tunai (BLT) subsidi bahan bakar minyak (BBM) dan Program Sembako senilai Rp500.000/KPM pada Kamis (8/9/2022).</p><p>Penjelasan itu diungkapkan Kepala Kantor Pos Cabang Sragen, Budi Purnomo, saat dihubungi Solopos.com, Kamis (8/9/2022).<br></p><p>PromosiDukung UMKM Binaan BUMN Go Online, Tokopedia Daftarkan 2.000 NIB<br></p><p>Budi menjelaskan pembayaran BLT subsidi BBM dan Program Sembako dimulai dari tiga desa di Kecamatan Gondang, yakni Desa Bumiaji dijadwalkan pukul 08.00 WIB-10.00 WIB, Desa Glonggong pukul 10.00 WIB-12.00 WIB, dan Desa Gondang pukul 13.00 WIB-15.00 WIB.<br></p><p>Budi melanjutkan pembayaran kemudian dilanjutkan di dua desa di Kecamatan Plupuh, yakni Desa Karangwaru dan Gentanbanaran yang dimulai pukul 15.00 WIB sampai selesai.<br></p><p>“Pembayaran BLT subdidi BBM dan Program Sembako itu dilakukan dengan menggunakan aplikasi internal Kantor Pos. Pada Rabu (7/9/2022), aplikasi itu sudah diujicoba terhadap 20-an KPM di Ngrampal dan Plupuh. Dia mengatakan uji coba itu dengan cara antaran ke lokasi sasaran KPM karena jadwal pembayaran baru dimulai Kamis ini. Jadi mulai Kamis ini baru ada pembyaran resmi,” jelas dia.<br></p><p>Dia mengatakan selama uji coba aplikasi itu berjalan normal.<br></p><p>Dia menerangkan uji coba aplikasi itu dilakukan oleh juru bayar supaya tidak gugup ketika menghadapi banyak orang. Aplikasi tersebut, kata dia, bersifat internal dan bisa digunakan secara massal.<br></p><p>Dia menjelaskan pada Kamis ini jadwalnya hanya di wilayah Kecamatan Gondang dan Plupuh. Berikut jumlah KPM penerima BLT subsidi BBM dan Program Sembako yang dijadwalkan Kamis ini.<br></p><p>Jadwal pembagian BLT BBM Kamis (8/9/2022)<br></p><p><br></p><p>No&nbsp; &nbsp;Desa&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Kecamatan&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;KPM&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Lokasi</p><p><br></p><p>Bumiaji Gondang&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;277 KPM&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kantor Kecamatan Gondang</p><p>Glonggong Gondang&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;253 KPM&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kantor Kecamatan Gondang</p><p>Gondang Gondang&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;324 KPM&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kantor Kecamatan Gondang</p><p>Karangwaru Plupuh&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 257 KPM&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Balai Desa Karangwaru</p><p>Gentanbanaran Plupuh&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 189 KPM&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Balai Desa Gentanbanaran</p><p>Total&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.300 KPM</p><div><br></div>', 'post_photo_1662604765.jpg', 1, 0, 1, 1, 1, 7, '2022-04-01 20:57:49', '2022-09-07 19:39:25'),
(38, 28, 'Diduga Tepeleset, Pemancing Asal Ngrampal Sragen Meninggal Tenggelam di WKO', '<p>লরেম ইপ্সাম ডলর সিট আমেত, কনসেক্টেচুর অ্যাডিপিস্কিং এলিট। নানসি আল্ট্রিচিস ভ্যারিয়াস আউগিউ ইউ ফ্যাউসিবাস। ইন প্যালেনটেস্কিউ আউগিউ নন নিকিউ টেম্পর ট্রিস্টিক। নিউলা এ পিউরাস অরনারে, ম্যাটুস এনিম স্যাড, ম্যাক্সিমাস মি। ডোনেক পোর্টা রিউট্রাম ডিগনিসসিম। ডোনেক ভাইটা ইরস এলিকুয়াম, রিউট্রাম রাইসাস এট, পরতিটর লরেম। আয়েনান স্যাড এনিম লুকাস। সেড ইয়াকিউলাস এরাট আইডি ম্যাক্সিমাস হেন্ড্রেরিট। নিউলাম এ এফিকিটার ইরস। স্যাড ইউ টিনসিডান্ট ফেলিস, এ অ্যাকিউমসান এক্স। নাম ট্রিস্টিক ভলুটপাত নিসি এট অরনারে। ফিউস্ক ইন টার্পিস কুয়াম। মরবি সাগিটিস ল্যাকটাস ইএস্টি, ভিটায়ে উলামকর্পার নিউলা আলিকেট ভেল। ইন হ্যাক হ্যাবিটাসসে প্ল্যাটিয়া ডিস্কটামস্ট</p><p>প্রোইন এ ভেস্টিবিউলাম এনিম। ফিউস্ক কুইস কঞ্জিউ আন্তে। নানসি ফাউসিবাস এক্স ইউট প্রিটিয়াম ইউসমড। ইন ইউ অ্যালিকুয়াম লরেম, ইগেট রিউট্রাম ইপ্সাম। ইন নন উক্ট্রিচেস লিগুলা। ইন্টিজার লাওরিট ফ্রিঞ্জিলা টরটর, ইগেট সাগিটিস উর্না। উট ভিভের্রা ডিগ্নিসসিম এলিট কুইজ কনসেকাট। ভিভামাস এসি ম্যাক্সিমাস ডুয়ি, কুইজ ভেনেনাতিস পিউরাস। আএনিয়ান ভিটায়ি ল্যাকিউস নন নিকিউ লাওরিট ফারেটা ভাইটা এট মাসসা। ক্রাস ডিক্টাম ইরাট আইডি ল্যাকিউস ভলিউপাট, নিক পেলেন্টেস্কিউ সেম মালেসিউডা। ক্রাস ফাউচিনাস মলিস ভেলিট ইগেট সলিসিউশুডিন।<br></p><p>প্রেজেন্ট ব্লান্ডিট স্যাড ফিউগাট কনসেক্টেচুর। ইন সিট আমেত সাসচিপিট নিসল। নিউলাম কারসাস, নিকিউ নন ইউসমড সডালেস, ওদিও এলিট ইয়াকিউলিস এক্স। এগেত ইমপেরডিয়েট নিউলা ভেলিট ইগেট দুই। প্রেসেন্ট ইউকালিস, এনিম ইগেট প্লেসেটার টিনচিডান্ট, মেটাস জাস্টুম আইডি ফিনিবাস আরকিউ কনসেকাট এট। প্রোইন ডাপিবাস প্লেসেরাট পিউরাস এট কারসাস। মাউরি ভিটায়ি লাউরিট নানসি, ইউ ইউয়াকিউলিস টারপিস। নানসি ইউ রিউট্রাম রাইসাস। স্যাড সাগিটিস ভিভেররা লরেম স্যাড ডিগ্নিসসিম। প্রেসেন্ট ভলাটপাট ইউলাম কর্পার এক্স এট ডিকটাম। ইন ভেল এস্ট ডিয়াম। লরেম ইপ্সাম ডলর সিট আমেত, কনসেক্টেচুর অ্যাডিপিস্কিং এলিট।<br></p>', 'post_photo_1662604942.jpg', 1, 0, 1, 1, 1, 7, '2022-04-01 20:59:56', '2022-09-07 19:42:55'),
(39, 30, 'Rapor Pemain PSG Saat Bekuk Juventus: Messi Gak Terlihat, Duet Mbappe-Neymar Gokil!', '<p style=\"font-family: Lato, sans-serif; line-height: 1.8em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; color: rgb(51, 51, 51);\"><b>Bola.net -&nbsp;</b><a href=\"https://www.bola.net/tag/psg/\" style=\"outline: none; transition-duration: 0.3s; color: rgb(19, 129, 55);\">PSG</a>&nbsp;tampil perkasa untuk membekuk&nbsp;<a href=\"https://www.bola.net/tag/juventus/\" style=\"outline: none; transition-duration: 0.3s; color: rgb(19, 129, 55);\">Juventus</a>&nbsp;dalam duel matchday 1 Grup H&nbsp;<a href=\"https://www.bola.net/tag/liga-champions/\" style=\"outline: none; transition-duration: 0.3s; color: rgb(19, 129, 55);\">Liga Champions</a>&nbsp;2022/2023, Rabu (7/9/2022). Laga di Parc des Princes berakhir dengan skor 2-1 untuk kemenangan tuan rumah.</p><p style=\"font-family: Lato, sans-serif; line-height: 1.8em; margin: 15px 0px 0px; font-size: 16px; color: rgb(51, 51, 51);\">Sesuai prediksi, pertandingan berlangsung sengit antara dua tim tangguh. PSG tampil lebih agresif di kandang sendiri, Juve harus mengakui kekalahan karena main buruk di 45 menit awal.</p><p style=\"font-family: Lato, sans-serif; line-height: 1.8em; margin: 15px 0px 0px; font-size: 16px; color: rgb(51, 51, 51);\">Kali ini dua gol PSG diborong oleh Kylian Mbappe di babak pertama (5\', 22\'). Juve lantas merespons di babak kedua, gol balasan melalui Weston McKennie (53\').</p><p style=\"font-family: Lato, sans-serif; line-height: 1.8em; margin: 15px 0px 0px; font-size: 16px; color: rgb(51, 51, 51);\">Kemenangan ini menandai langkah positif PSG di UCL 22/23. Permainan pasukan Christophe Galtier tampak menjanjikan, ada banyak hal positif yang bisa jadi alasan untuk percaya diri.</p><p style=\"font-family: Lato, sans-serif; line-height: 1.8em; margin: 15px 0px 0px; font-size: 16px; color: rgb(51, 51, 51);\">Performa pemain-pemain PSG pun cukup mencuri perhatian di laga ini, khususnya kombinasi Mbappe-Neymar di lini serang.&nbsp;<em>Yuk simak rapor pemain PSG saat kalahkan Juventus selengkapnya, Bolaneters!</em></p>', 'post_photo_1662602937.jpg', 2, 0, 1, 1, 1, 7, '2022-04-01 21:00:45', '2022-09-07 19:08:57'),
(40, 28, 'Ada 3,2 Juta Keluarga di Jateng Terima BLT BBM, Terbanyak di Daerah Ini', '<p><font face=\"Poppins, sans-serif\">Solopos.com, SEMARANG — Sebanyak 3.240.672 keluarga di Jawa Tengah (Jateng) akan menderima bantuan langsung tunai atau BLT BBM. Dari jumlah sebanyak itu, paling banyak berasal dari Kabupaten Banyumas.</font></p><p><span style=\"font-family: Poppins, sans-serif;\">Kepala Dinas Sosial (Dinsos) Jateng, Harso Susilo, mengatakan penerima BLT BBM tersebut terdiri dari keluarga penerima manfaat (KPM) Program Keluarga Harapan (PKH), KPM Program Sembako dan KPM Program Sembako non-PKH. Berdasarkan data yang diterima Dinsos Jateng ada sekitar 3.240.672 KPM yang menjadi penerima BLT BBM tersebut.</span><br></p><p><span style=\"font-family: Poppins, sans-serif;\">\"Bansos BLT BBM dari Kementerian Sosial itu nanti disalurkan melalui PT Pos [di tiap kabupaten/kota],” ujar Harso saat dihubungi&nbsp;</span><br></p><p><span style=\"font-family: Poppins, sans-serif;\">Sebelumnya, Dinsos Jateng mengimbau kepada tiap Dinsos pada kabupaten/kota di Jateng untuk menyiapkan data akurat terkait penerima BLT BBM tersebut. Dengan data yang akurat itu, penyaluran BLT BBM di Jateng akan lebih tepat sasaran.</span></p>', 'post_photo_1662604230.jpg', 1, 0, 1, 1, 1, 7, '2022-04-01 21:01:50', '2022-09-07 19:30:30'),
(41, 30, 'Thomas Tuchel Membela Romelu Lukaku: Dia adalah Pemain Chelsea', '<p style=\"font-family: Lato, sans-serif; line-height: 1.8em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; color: rgb(51, 51, 51);\"><b>Bola.net -&nbsp;</b>Pelatih&nbsp;<a href=\"https://www.bola.net/tag/chelsea/\" style=\"outline: none; transition-duration: 0.3s; color: rgb(19, 129, 55);\">Chelsea</a>,&nbsp;<a href=\"https://www.bola.net/tag/thomas-tuchel/\" style=\"outline: none; transition-duration: 0.3s; color: rgb(19, 129, 55);\">Thomas Tuchel</a>, tidak merasa diserang oleh Romelu Lukaku. Ia bahkan tetap membela penyerang berdarah Belgia tersebut.</p><p style=\"font-family: Lato, sans-serif; line-height: 1.8em; margin: 15px 0px 0px; font-size: 16px; color: rgb(51, 51, 51);\">Lukaku bertemu&nbsp;<em>Sky Sports</em>&nbsp;beberapa waktu lalu untuk curhat soal banyak hal. Mulai dari alasan dirinya meninggalkan Inter Milan, keinginannya untuk kembali, dan ketidakbahagiannya di Chelsea saat ini.</p><p style=\"font-family: Lato, sans-serif; line-height: 1.8em; margin: 15px 0px 0px; font-size: 16px; color: rgb(51, 51, 51);\">Soal Chelsea, Lukaku secara spesifik mengarahkan pernyataan kepada Tuchel selaku bosnya. Ia merasa perubahan strategi yang diterapkan pelatih asal Jerman tersebut tak cocok dengan gaya bermainnya.</p><p style=\"font-family: Lato, sans-serif; line-height: 1.8em; margin: 15px 0px 0px; font-size: 16px; color: rgb(51, 51, 51);\">Meski begitu, ia mengaku akan berjuang agar bisa beradaptasi dengan gaya bermain yang baru tersebut. Namun publik sudah terlanjur berasumsi kalau Lukaku sedang menyerang Tuchel dan menuntut permintaan maaf darinya</p>', 'post_photo_1648868560.jpg', 2, 0, 1, 1, 1, 7, '2022-04-01 21:02:40', '2022-09-07 18:54:16'),
(42, 30, 'Thomas Tuchel Soal Romelu Lukaku: Saya Tidak Merasa Diserang', '<p><b style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; font-size: 16px;\">Bola.net -&nbsp;</b><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; font-size: 16px;\">Penyerang&nbsp;</span><a href=\"https://www.bola.net/tag/chelsea/\" style=\"outline: none; transition-duration: 0.3s; color: rgb(19, 129, 55); font-family: Lato, sans-serif; font-size: 16px;\">Chelsea</a><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; font-size: 16px;\">,&nbsp;</span><a href=\"https://www.bola.net/tag/romelu-lukaku/\" style=\"outline: none; transition-duration: 0.3s; color: rgb(19, 129, 55); font-family: Lato, sans-serif; font-size: 16px;\">Romelu Lukaku</a><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; font-size: 16px;\">, menyinggung&nbsp;</span><a href=\"https://www.bola.net/tag/thomas-tuchel/\" style=\"outline: none; transition-duration: 0.3s; color: rgb(19, 129, 55); font-family: Lato, sans-serif; font-size: 16px;\">Thomas Tuchel</a><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; font-size: 16px;\">, ketika menghadiri wawancara bersama&nbsp;</span><em style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; font-size: 16px;\">Sky Sports</em><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; font-size: 16px;\">. Jelas, tayangan obrolannya yang kontroversial tersebut sampai ke telinga sang pelatih.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; font-size: 16px;\">Dalam wawancara tersebut, Lukaku curhat panjang seputar keputusannya meninggalkan Inter Milan dan situasinya di Chelsea saat ini. Tanpa menutup-nutupi, Lukaku mengaku bahwa dirinya masih berniat membela Inter suatu hari nanti.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; font-size: 16px;\">Lukaku juga mengaku tidak bahagia di Chelsea, sebabnya adalah gaya strategi Tuchel yang dirasa tak sesuai dengannya. Meski demikian, ia mengaku akan berjuang untuk menyesuaikan diri dan mengikuti arahan sang pelatih.</span><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; font-size: 16px;\"><br></span><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; font-size: 16px;\"><br></span><br></p>', 'post_photo_1662602202.jpg', 1, 0, 1, 1, 1, 7, '2022-04-01 21:03:18', '2022-09-07 19:07:00'),
(43, 28, 'Gubernur Ganjar Ajak Masyarakat Manfaatkan Pemutihan Pajak Kendaraan Bermotor', '<p><font color=\"#202124\" face=\"consolas, lucida console, courier new, monospace\"><span style=\"font-size: 12px; white-space: pre-wrap;\">Ganjar Pranowo , mengajak masyarakat di wilayahnya memanfaatkan insentif pembebasan denda dan pajak pokok kendaraan bermotor tunggakan tahun kelima atau pemutihan.Tidak hanya itu, Pemprov Jateng juga memberikan pembebasan bea balik nama kendaraan atau BBNKB II mulai 7 September hingga 22 November 2022.\r\n\r\n“Mudah-mudahan seluruh kendaraan bermotor yang belum bayar pajaknya apalagi yang mau balik nama bisa gunakan kesempatan ini, sekarang,” kata Ganjar saat menggelar kunjungan kerja di Tol Semarang-Batang, Rabu (7/9/2022).\r\n\r\nGanjar menjelaskan balik nama kendaraan bermotor itu biasanya rumit. Bahkan tidak jarang ada wajib pajak yang mengambil jalan pintas untuk “nembak” atau membayar calo agar dapat membayar pajak kendaraan bermotornya.</span></font></p><p><font color=\"#202124\" face=\"consolas, lucida console, courier new, monospace\"><span style=\"font-size: 12px; white-space: pre-wrap;\">\r\nGanjar berharap dengan pemutihan pajak kendaraan bermotor itu tidak ada lagi kendaraan bodong atau yang tidak teregisterasi secara administrasi di Jateng. Selain itu, program ini juga dapat mendorong dan memudahkan masyarakat dalam membayar pajak kendaraan bermotor di kemudian hari.</span><br></font></p><div><br></div>', 'post_photo_1662604442.jpg', 2, 0, 1, 1, 1, 7, '2022-04-01 21:04:07', '2022-09-07 19:35:21'),
(44, 36, '5 Jenis Cedera Lari yang Paling Umum dan Penyebabnya', '<p>Jakarta - Berlari termasuk olahraga yang paling sering menyebabkan cedera. Baik pelari yang sudah berpengalaman maupun pemula bisa mengalami cedera lari. Dokter spesialis kedokteran olahraga dr Antonius Andi Kurniawan SpKO dari RS Pondok Indah Bintaro Jaya, menjelaskan, tipe cedera lari terbagi menjadi dua, yaitu trauma dan overuse.</p><p>\"Setidaknya 8 dari 10 lari pernah cedera. Tipe cedera dalam olahraga lari bisa dibagi dua, yaitu trauma dan overuse,\" ujar dokter pada konferensi pers di Jakarta Selatan, Rabu (7/9/2022).</p><p>Menurutnya, cedera tipe trauma diakibatkan oleh kondisi seperti keseleo atau jatuh. Sedangkan cedera tipe overuse diakibatkan karena porsi lari yang berlebihan.<br></p><p>Jenis Cedera Lari<br></p><p>Berikut 5 cedera paling sering dialami oleh para penggiat olahraga lari menurut dr Andi, di antaranya:</p><p>Baca juga: Soroti Kasus Meninggal Saat Lomba Lari, Dokter Ungkap Kemungkinan Penyebabnya<br></p><p>1. Runner\'s Knee</p><p>Runner\'s Knee atau cedera lutut merupakan kondisi nyeri di depan atau sekitar tempurung lutut. Menurut dr Andi kondisi ini disebabkan paling sering karena overuse serta kondisi otot yang kaku dan lemah.</p><p>\"Cedera lutut bisa juga karena otot bokong lemah. Panggul weak ternyata adalah penyebab juga cedera ini,\" ujarnya.<br></p><p>2. Plantar Fasciitis<br></p><p>Plantar fasciitis merupakan nyeri pada bagian tumit kaki. dr Andi menyebutkan beberapa faktor yang menyebabkan kondisi ini seperti overweight, otot betis kaku, memiliki tipe kaki flat, otot betis lemah.</p><p>\"Ada faktor overweight, ada faktor otot betis kaki lemah padahal ada urat nyambung ke otot betis pada tumit,\" ungkapnya.<br></p><p>3. Shin Splint<br></p><p>Shin splint merupakan salah satu cedera paling umum dialami penggiat olahraga lari. Shin splint merupakan nyeri yang terasa di sekitar tulang kering.</p><p>\"Shin splint itu ketika landing di heel (tumit) saat lari jadinya nyeri di tulang kering depan,\" jelas dr Andi.<br></p><p>dr Andir menambahkan, beberapa faktor seperti olahraga lari tipe downhill, ketidak seimbangan otot kaki, dan berlari di permukaan keras bisa menyebabkan shin splint.<br></p><p>4. ITBS (Iliotibial Band Syndrome)<br></p><p>Seorang pelari yang terkena ITBS biasanya merasakan nyeri pada sekitar sisi luar lutut. Kondisi ini biasanya disebabkan karena kurang pemanasan dan overuse atau berlari terlalu jauh dan lama.</p><p>\"ITBS juga bisa karena kurang pemanasan, overuse, bisa juga karena kondisi panjang tungkai kaki beda 1 sentimeter. Itu juga sering terjadi,\" ungkap dr Andi.<br></p><p>5. Achilles Tendinitis<br></p><p>Achilles Tendinitis membuat seorang pelari merasakan nyeri pada bagian pangkal betis atau tendon Achilles yang menghubungkan otot betis dan tulang tumit. Medan lari yang menanjak dan penambahan porsi jarak lari yang tidak proporsional menjadi penyebab umumnya.</p><p>\"Ini bisa disebabkan karena kiloan mingguan tinggi terus,\" pungkas dr Andi.<br></p>', 'post_photo_1662649191.jpg', 1, 0, 1, 1, 1, 7, '2022-04-01 21:05:20', '2022-09-08 08:01:17'),
(45, 36, 'Soroti Kasus Meninggal Saat Lomba Lari, Dokter Ungkap Kemungkinan Penyebabnya', '<p>Jakarta - Kasus meninggal mendadak saat mengikuti perlombaan lari maraton beberapa kali terjadi di Indonesia, dan kembali jadi perbincangan saat event lari mulai marak digelar lagi. Menurut pemaparan dokter spesialis kedokteran olahraga dr Antonius Andi Kurniawan SpKO dari RS Pondok Indah, pada tahun 2022 ini sudah tercatat 3 kasus meninggal mendadak terkait perlombaan lari, baik maraton (42,195 km) maupun nomor lainnya.</p><p>\"2019 itu ada dua laki-laki usia 50 dan 55 tahun. Di 2022 ni ada 3 (kasus) nih,\" ucap dr Andi, sapaan akrabnya, pada konferensi pers di Jakarta Selatan, Rabu (7/9/2022).</p><p>\"Buat kita ini 1 kasus saja kejadian yang luar biasa, yang berikutnya lagi ini insiden yang cukup tragis, maksudnya mau olahraga biar badannya sehat malah kenapa-kenapa,\" sambungnya.<br></p><p>Faktor kondisi medis dari peserta lari maraton menjadi sorotan dr Andi. Menurutnya banyak pelari yang masih memaksakan diri dan kurang persiapan sehingga berisiko mengikuti lomba lari maraton.<br></p><p>\"Banyak pelari yang euforia ya setelah COVID ikut lari tapi nggak mengenal kondisinya. Nggak persiapan dan belum latihan,\" ucap dr Andi.<br></p><p>Selain itu, menurut dr Andi seseorang yang ingin mengikuti lari maraton setidaknya rajin melakukan cek medis dan memperhatikan kondisi tubuh.<br></p><p>\"Setidaknya itu dari event maraton ke maraton lain harus ada rest 6 bulan. 3 bulan untuk rest, 3 bulan sisanya latihan persiapan maraton,\" sambungnya<br></p>', 'post_photo_1662649383.jpg', 1, 0, 1, 1, 1, 7, '2022-04-01 21:06:00', '2022-09-08 08:03:03'),
(46, 36, 'Nggak Gampang Jadi Vegan! Begini Curhat Raline Shah Saat Mencobanya', '<p>Jakarta - Selebriti Raline Shah mengaku sempat menjadi vegan sepanjang dua tahun pandemi COVID-19. Gaya hidup ala veganisme memang ia cita-citakan sejak lama. Namun ia mengaku, menjadi sepenuhnya vegan adalah susah-susah gampang. Kenapa?</p><p>\"Saya sendiri sebenarnya selama pandemi dua tahun itu vegan. Tapi semejak dari situ, sekarang lebih banyak plant-based. Jadi mungkin makan daging cuman dua kali seminggu,\" ujarnya saat ditemui dalam penayangan film Kisah Manusia Merangkai Punah, Selasa (6/9/2022).</p><p>\"Tapi saya benar-benar tertarik untuk full vegan sebenarnya. Menurut saya sendiri, saya belum siap saja. Saya rasa manusiawi, itu kan proses,\" imbuh Raline.<br></p><p>Lebih lanjut Raline menjelaskan, ada beberapa momen dirinya merasa benar-benar membutuhkan konsumsi daging merah. Misalnya, ketika sedang menstruasi.<br></p><p>Atau di momen lain, Raline juga masih sesekali memakan daging merah misalnya sewaktu merayakan Idul Adha.<br></p><p>Namun catatannya, penting untuk senantiasa memperhatikan proses penyiapan dan produksi daging.<br></p><p>\"Kalau pun kita makan daging, harus tau proses (atau) produksinya dari mana. Biasanya kalau saya makan, misalnya kemarin Hari Raya Haji saya masih makan (daging sapi). Karena itu lokal, disembelih khusus dan dimasak,\" jelas Raline.<br></p><p>\"Saya kadang merasa membutuhkan daging. Makanya belum full vegan. Ada masa-masa haid, memerlukan daging merah. Sebenarnya ada alternatif protein yang bisa menggantikan itu, tapi mungkin aku belum siap saja,\" imbuhnya.<br></p><p>Raline Shah mengaku tak gampang menjadi vegan. Foto: Vidya Pinandhita/detikHealth<br></p><p>Kurangin Makan Daging Bikin BB Turun?</p><p>Bagi Raline, veganisme bukanlah cara untuk memangkas berat badan. Sebab jika tujuannya adalah menurunkan berat badan, pilihan menu makan harus dibarengi gaya hidup sehat. Misanya berupa istirahat dan tidur cukup, berolahraga, hingga meditasi.</p><div><br></div>', 'post_photo_1662649551.jpg', 0, 0, 1, 1, 1, 7, '2022-04-01 21:06:46', '2022-09-08 08:05:51');
INSERT INTO `posts` (`id`, `sub_category_id`, `post_title`, `post_detail`, `post_photo`, `visitors`, `author_id`, `admin_id`, `is_share`, `is_comment`, `language_id`, `created_at`, `updated_at`) VALUES
(47, 36, '5 Makanan untuk Membersihkan Ginjal, Penangkal Racun dalam Tubuh', '<p>Jakarta - Ginjal adalah organ tubuh yang terletak pada pinggang bawah manusia. Walaupun hanya sebesar bola golf, organ ini mampu memproses setidaknya 200 liter darah serta menyaring kelebihan racun di dalam tubuh. Untuk membantu kinerjanya, disarankan mengonsumsi banyak makanan bergizi untuk membersihkan ginjal.</p><p>Jika tidak bekerja dengan baik, racun tersebut akan berkembang di dalam tubuh dan menghambat fungsi normal ginjal, hati, dan organ penting lainnya. Akibatnya manusia mudah lelah, sakit perut, sakit kepala, dehidrasi, dan timbul masalah kesehatan lainnya.</p><p>Makanan Untuk Membersihkan Ginjal</p><p>Beberapa makanan yang diyakini bisa membantu membersihkan ginjal antara lain sebagai berikut:</p><p>1. Kranberi</p><p>Dikutip dari lama Healthline, sebuah hasil penelitian uji klinis yang diterbitkan dalam jurnal nutrisi menunjukkan bahwa wanita yang mengonsumsi kranberi setiap hari selama dua minggu mengalami penurunan Infeksi Saluran Kemih (ISK). Peneliti berteori bahwa kandungan asam pada cairan kranberi, seperti asam malat, sitrat, dan quinic memiliki efek perlindungan pada saluran kemih.</p><p>2. Jus Lemon</p><p>Buah lemon memang sudah tidak diragukan lagi manfaatnya bagi kesehatan. Selain baik untuk kulit dan rambut, lemon bermanfaat bagi kinerja ginjal. Salah satu sumber vitamin C ini membantu ginjal menyaring darah dan membuang limbah atau racun lainnya melalui urine.</p><p>Bagi pengidap batu ginjal, asupan harian jus lemon dan minyak zaitun sangat baik untuk dikonsumsi. Hal ini efektif mengurangi laju pembentukan batu ginjal dan melarutkan kristal kalsium oksalat yang merupakan bagian paling umum dari batu ginjal.</p><p>3. Anggur</p><p>Siapa yang tidak kenal anggur? Selain penangkal bibit kanker, anggur dan beberapa buah beri mengandung senyawa tanaman bermanfaat yang disebut dengan resveratrol. Resveratrol adalah salah satu senyawa alami polifenol yang berguna sebagai antioksidan. Oleh karenanya, banyak peneliti menganjurkan anggur untuk jadi konsumsi harian agar mencegah paparan radikal bebas dan racun di udara.</p><p>4. Delima</p><p>Delima atau pomegranate bukan makanan asing lagi di Indonesia. Buah yang berwarna merah terang ini sudah banyak diolah menjadi jus siap minum dan kue. Baik jus dan biji delima mengandung banyak potasium yang efektif dalam menghilangkan batu ginjal.</p><p>Pun kandungan kalium di dalamnya bisa menurunkan keasaman urine, mencegah pembentukan batu karena sifat astringennya, membatasi kristalisasi mineral, dan membuang racun dan limbah dari ginjal.</p><p>5. Rumput Laut</p><p>Rumput laut, terutama rumput laut coklat (phaephyceae) telah diteliti memberikan efek menguntungkan pada pankreas, ginjal, dan hati. Dalam studi pada 2014, hewan yang diberi makan rumput laut selama 22 hari menunjukkan penurunan kerusakan ginjal dan hati akibat diabetes.</p>', 'post_photo_1662649876.jpg', 1, 0, 1, 1, 1, 7, '2022-04-01 21:07:29', '2022-09-08 08:11:16'),
(48, 36, 'Enam Tahun Hindari Makan Nasi, Mikha Tambayong Bongkar Rahasia Hidup Sehat', '<p>Jakarta - Mikha Tambayong menjadi salah satu aktris yang aktif membagikan momennya dalam menjaga kesehatan tubuh. Melalui Instagram pribadinya @miktambayong, dirinya sering melakukan berbagai olahraga untuk menjaga kesehatan tubuh.</p><p>Salah satu olahraga yang dilakukannya adalah bersepeda dan pilates. Olahraga pilates dilakukannya secara rutin 2-3 kali dalam seminggu. Hal ini dilakukannya untuk mengeluarkan lemak di tubuhnya.</p><p>\"Aku usahakan bisa olahraga 3 sampai 4 kali seminggu, aku biasanya sangat rutin pilates, aku pilates 2 sampai 3 kali seminggu, sisanya aku kardio di rumah, either aku naik sepeda atau cuma joging. Pokoknya prinsip aku, sebisa mungkin setiap hari mengeluarkan lemak-lemak dan detoks dengan olahraga,\" ucapnya kepada detikcom, saat ditemui melalui acara daring, Sabtu (20/8/2022).<br></p><p>Tak hanya rajin olahraga, wanita 27 tahun tersebut juga mengaku \'picky\' terhadap makanan yang dikonsumsinya. Mikha juga sudah enam tahun menghindari untuk mengonsumsi nasi dan lebih memakan kentang sebagai pengganti karbohidrat dari nasi.<br></p><p>Untuk menyeimbangkan gizi yang didapatkan, Mikha lebih banyak memakan sayur dan buah. Ia juga menghindari untuk mengonsumsi makanan dan minuman yang manis.<br></p><p>\"Makanan juga sangat aku perhatikan, karena menurutku itu harus balance ya, kita nggak cukup untuk olahraga aja tapi makanan juga harus diperhatikan. Jadi apa yang kita masukkan dan apa yang kita keluarkan seimbang,\" katanya.<br></p><div><br></div>', 'post_photo_1662649711.jpg', 1, 0, 1, 1, 1, 7, '2022-04-01 21:08:15', '2022-09-08 08:08:31'),
(49, 32, 'Perangkat keras atau perangkat lunak? Bagaimana cara mengetahui apa yang salah dengan perangkat Anda', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">Where does it come from?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'post_photo_1648868945.jpg', 1, 0, 1, 1, 1, 7, '2022-04-01 21:09:05', '2022-09-08 09:14:48'),
(50, 32, 'Masalah boot komputer. Langkah-langkah untuk mengatasi masalah ini', '<p style=\"margin-top: 32px; margin-bottom: 32px; color: rgb(18, 20, 22); font-family: &quot;Noto Serif&quot;; font-size: 16.96px;\">Gagal&nbsp;<em>booting</em>. Yup, ini termasuk salah satu kerusakan PC atau laptop yang paling sering ditemui.</p><p style=\"margin-top: 32px; margin-bottom: 32px; color: rgb(18, 20, 22); font-family: &quot;Noto Serif&quot;; font-size: 16.96px;\">Kondisi ini terjadi ketika perangkat dinyalakan, tapi sistem tidak mau masuk ke&nbsp;<em>bootscreen</em>&nbsp;Windows, sehingga hanya&nbsp;<em>stuck</em>&nbsp;di sana saja.</p><p style=\"margin-top: 32px; margin-bottom: 32px; color: rgb(18, 20, 22); font-family: &quot;Noto Serif&quot;; font-size: 16.96px;\">Ada beberapa variasi bentuk gagal&nbsp;<em>booting</em>&nbsp;di sini.</p><ul style=\"margin-top: 32px; margin-bottom: 32px; color: rgb(18, 20, 22); font-family: &quot;Noto Serif&quot;; font-size: 16.96px;\"><li style=\"position: relative; padding-left: 4.5px; margin: 0.9em 0px;\">Ada yang mengalami&nbsp;<em>freeze</em>,&nbsp;<em>bluescreen</em></li><li style=\"position: relative; padding-left: 4.5px; margin: 0.9em 0px;\">Komputer nyala tapi hanya menampilkan layar&nbsp;<em>blank</em>&nbsp;saja</li><li style=\"position: relative; padding-left: 4.5px; margin: 0.9em 0px;\">Sampai komputer nyala lalu mati lagi.</li></ul><h2 style=\"margin-top: 32px; margin-bottom: 32px; font-family: Poppins; line-height: 1.25; color: rgb(9, 9, 9); overflow-wrap: break-word;\">Penyebab Laptop atau Komputer Gagal Booting<span class=\"ez-toc-section-end\"></span></h2><p style=\"margin-top: 32px; margin-bottom: 32px; color: rgb(18, 20, 22); font-family: &quot;Noto Serif&quot;; font-size: 16.96px;\">Sebelum kita lanjut, mari kita ketahui terlebih dahulu, hal-hal apa saja yang bisa menyebabkan hal ini.</p><p style=\"margin-top: 32px; margin-bottom: 32px; color: rgb(18, 20, 22); font-family: &quot;Noto Serif&quot;; font-size: 16.96px;\">Penyebab gagal&nbsp;<em>booting</em>, diantaranya:</p><ol style=\"margin-top: 32px; margin-bottom: 32px; padding: 0px; list-style: none; counter-reset: list 0; color: rgb(18, 20, 22); font-family: &quot;Noto Serif&quot;; font-size: 16.96px; height: auto !important;\"><li style=\"position: relative; padding-left: 60px; margin: 1.2em 0px;\"><span style=\"font-weight: bolder;\">Sistem Operasi Tidak Kompatibel</span><br>Untuk yang menggunakan hardware seri lama, kadang masalah kompatibilitas bisa terjadi.</li><li style=\"position: relative; padding-left: 60px; margin: 1.2em 0px;\"><span style=\"font-weight: bolder;\">Kerusakan Pada Sistem</span><br>Ini adalah kondisi di mana sistem tidak sengaja termodifikasi, sehingga terjadi kerusakan.</li></ol>', 'post_photo_1648868971.jpg', 1, 0, 1, 1, 1, 7, '2022-04-01 21:09:31', '2022-09-08 09:13:41'),
(51, 32, '\'Gletser Kiamat\', Namanya Bikin Takut Ilmuwan', '<p>Jakarta - Gletser Thwaites di Antartika meleleh dengan cepat. Kehilangan Gletser Thwaites akan meresahkan, namun menurut ilmuwan, julukannya sebagai Gletser Kiamat bisa berdampak lebih berbahaya.</p><p>Dikutip dari Cnet, Kamis (8/9/2022) Gletser Thwaites dikenal sebagai Gletser Kiamat. Selain Gletser Thwaites, di Antartika ada juga Gletser Pine Island. Dengan luas masing-masing 192.000 km persegi dan 162.300 km persegi, Gletser Thwaites dan Pine Island berpotensi menyebabkan kenaikan permukaan laut global yang signifikan. Itulah sebabnya gletser ini dijuluki Gletser Kiamat.</p><p>Gletser terluas di Bumi ini menjadi sorotan. Ia meluas ke Samudra Selatan dan kehilangan sekitar 50 miliar ton es per tahun. Kehilangan itu berlipat ganda selama 30 tahun terakhir. Pada 2019, para ilmuwan NASA menemukan rongga besar di bawah gletser yang dapat mempercepat kehancuran gletser.</p><p>Pekan ini, para peneliti memetakan dasar laut di depan Thwaites, menunjukkan gletser telah mundur dengan cepat di masa lalu, dan mendesak adanya tindakan untuk menahannya.</p><p>Ini mengkhawatirkan. Jika Thwaites mencair, permukaan laut akan naik sekitar 60cm. Kematian gletser ini juga bisa mengacaukan Lapisan Es Antartika Barat yang mengunci sekitar 3 meter dari kenaikan permukaan laut. Pencairan semacam itu akan menjadi bencana besar.</p>', 'post_photo_1662650888.jpg', 1, 0, 1, 1, 1, 7, '2022-04-01 21:10:04', '2022-09-08 08:28:08'),
(52, 32, 'Data Registrasi SIM Card Dilaporkan Rutin ke Kominfo', '<p>Jakarta - Asosiasi Penyelenggara Telekomunikasi Seluruh Indonesia (ATSI) mengungkapkan operator seluler rutin melaporkan data registrasi SIM card ke Kementerian Komunikasi dan Informatikan (Kominfo) tiap tiga bulan sekali.</p><p>Laporan data pendaftaran kartu ponsel tersebut ke Kominfo sebagai pelaksanaan berdasarkan Peraturan Menteri Kominfo Nomor 5 Tahun 2021 tentang Penyelenggaraan Telekomunikasi.</p><p>\"Berdasarkan Permen Kominfo kita serahkan ke Kominfo sebagai laporan tiga bulanan yang isinya MSSISDN (nomor telepon), NIK, Nomor Kartu Keluarga, tanggal registrasi,\" ujar Sekretaris Jenderal ATSI Marwan O. Baasir ditemui di Jakarta, Kamis (8/9/2022).<br></p><p>Dalam proses penyerahan data registrasi SIM card milik operator seluler ini ke Kominfo dilakukan secara offline. Disampaikannya juga, data pendaftaran kartu SIM itu bukan juga dalam bentuk agregat.<br></p><p>\"Kami kirimkan secara offline pelaporan resmi, tidak ada yang online. Kalau online, bahaya. Kan Kominfo memiliki kewenangan pengawasan pelaporan, menerima laporan dari penyelenggara, maka kami melaporkan registrasi berdasarkan peraturan menteri. Laporannya itu pakai kertas,\" ungkap Marwan.<br></p><p>ATSI juga telah melakukan investigasi terhadap para operator seluler yang menjadi anggotanya terkait dugaan kebocoran data sebanyak 1,3 miliar data registrasi SIM card prabayar.<br></p><p>Sekretaris Jenderal ATSI Marwan O Baasir menuturkan ATSI bersama seluruh anggotanya siap bekerja sama dan mendukung sepenuhnya upaya pemerintah yang dalam hal ini, Kementerian Kominfo, BSSN dan Ditjen Dukcapil serta pihak berwenang lainnya dalam melakukan investigasi terkait dugaan kebocoran data registrasi pelanggan jasa telekomunikasi.<br></p><p>\"ATSI beserta seluruh anggotanya telah melakukan investigasi dan penelusuran terkait kebocoran data registrasi pelanggan jasa telekomunikasi. Hasil dari investigasi tersebut adalah tidak diketemukan adanya ilegal akses di masing-masing jaringan operator. Hasil investigasi ini juga telah dilaporkan kepada Kementerian Kominfo hari ini, Kamis 8 September 2022,\" ujar Marwan.<br></p><p>Disampaikannya, seluruh penyelenggara telekomunikasi sudah menerapkan sistem pengamanan Informasi mengacu standar ISO 27001 sebagaimana disyaratkan dalam Peraturan Menteri Kominfo No. 05 / 2021 Tentang Penyelenggaraan Telekomunikasi pasal 168 ayat 5, sebagai bentuk tanggung jawab Operator sebagai pengendali data</p>', 'post_photo_1662650738.jpg', 1, 0, 1, 1, 1, 7, '2022-04-01 21:10:34', '2022-09-08 08:25:38'),
(53, 32, '4 Tips Membuat Anak Betah dan Nyaman di Rumah', '<p>Jakarta - Tak sedikit orang tua yang merasa khawatir ketika anaknya bermain di luar rumah. Kekhawatiran tersebut muncul karena orang tua takut kalau anak mereka mengalami hal-hal yang tidak diinginkan.</p><p>Untuk mengatasi kekhawatiran tersebut, tidak sedikit orang tua yang membatasi anaknya bermain di luar rumah. Sayangnya, upaya tersebut kerap membuat anak menjadi bosan sehingga mudah menjadi rewel.</p><p>Oleh karena itu, setiap orang tua harus memutar otak agar sang anak tidak bosan dan nyaman ketika berada di rumah. Nah, berikut adalah tips membuat anak betah dan nyaman di rumah.<br></p><p>1. Melakukan Eksperimen Sains<br></p><p>Melakukan eksperimen sains merupakan salah satu kegiatan yang bisa membuat anak menjadi nyaman dan betah di rumah. Selain itu, kegiatan ini juga mampu menstimulasi anak agar mengasah kemampuan dan kreativitas mereka.<br></p><p>Tak hanya itu, kegiatan ini juga bisa melatih anak untuk menggunakan lima indera dan mengenal berbagai gejala benda dan peristiwa. Anak-anak pun bisa memperoleh pengetahuan baru dari hasil percobaan sains yang mereka lakukan.<br></p><p>Ada sejumlah ide eksperimen sains yang bisa dilakukan di rumah, seperti menghasilkan suara dari gelas kaca yang diisi air, memindahkan suatu cairan ke suatu tempat dengan tisu, membuat di gelas berisi pelangi, dan lainnya.<br></p><p>2. Libatkan Anak saat Membuat Kue<br></p><p>Selain eksperimen sains, melibatkan anak saat membuat kue juga merupakan kegiatan yang menyenangkan. Anak bisa diberikan peran yang mudah seperti mengaduk telur, membantu menyiapkan bahan masakan, dan lainnya.<br></p><p>Ketika mendapatkan peran, arahkan mereka untuk melakukan tugas dengan benar. Dengan begitu, secara tidak langsung orang tua mengajarkan anak-anak untuk bertanggung jawab terhadap peran atau tugas yang mereka miliki.<br></p><p>3. Bikin Mainan dari Bahan Sederhana<br></p><p>Setiap anak-anak pasti suka kalau diberikan mainan. Biar anak makin senang tidak ada salahnya kalau orang tua mengajak mereka untuk membuat mainan sendiri dari bahan-bahan sederhana yang ada di rumah.<br></p><p>Ada banyak bahan-bahan sederhana yang bisa dimanfaat untuk membuat mainan anak, seperti botol bekas yang bisa disulap menjadi mobil-mobilan. Bisa juga menggunakan kulit jeruk Bali untuk disulap menjadi mobil-mobilan.<br></p><p>Dengan melakukan kegiatan tersebut, kreativitas anak bisa lebih terasah dan mampu menanamkan arti pentingnya menjaga lingkungan sejak dini.<br></p><p>4. Ajak Anak Saksikan Film Edukasi<br></p><p>Salah satu kegiatan seru yang bisa bikin anak betah di rumah yakni dengan cara mengajak mereka untuk menyaksikan film edukasi. Sebab menyaksikan film bersama anak menghadirkan manfaat tersendiri seperti mengasah kemampuan imajinasi, keterampilan kognitif, dan dapat menghibur mereka.<br></p><p><br></p>', 'post_photo_1662650604.jpg', 2, 0, 1, 1, 1, 7, '2022-04-01 21:11:17', '2022-09-08 08:23:24'),
(54, 32, 'Megahnya Apple Park Difoto dari Udara, Pusat Teknologi Senilai Rp 65 T', '<p>Amerika Serikat - Apple Park disebut-sebut sebagai markas teknologi paling megah di dunia. Tempat inilah yang ramai dikunjungi jika Apple merilis produk baru, seperti iPhone 14</p><p>Pemandangan udara Apple Park terlihat di Cupertino, California, Amerika Serikat, Rabu (7/9/2022) waktu setempat.</p>', 'post_photo_1662650473.jpg', 1, 0, 1, 1, 1, 7, '2022-04-01 21:11:55', '2022-09-08 08:21:13'),
(55, 30, '6 Pemain Lama MU yang Berpotensi Terdepak di Era Erik ten Hag, Harry Maguire Harap-Harap Cemas', '<p style=\"font-family: Lato, sans-serif; line-height: 1.8em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; color: rgb(51, 51, 51);\"><b>Bola.net -&nbsp;</b>Erik ten Hag telah melakukan perombakan besar-besaran skuat di Manchester United (MU). Kini hasilnya mulai terlihat sangat positif.</p><p style=\"font-family: Lato, sans-serif; line-height: 1.8em; margin: 15px 0px 0px; font-size: 16px; color: rgb(51, 51, 51);\">Setelah keok pada dua laga pertama Liga Inggris 2022/2023 kontra Brighton dan Brentford, MU bangkit dan terus melaju di jalur kemenangan. Racikan Erik ten Hag berhasil membawa MU mendulang empat kemenangan beruntun kontra Liverpool, Southampton, Leicester City, dan terakhir menundukkan pemuncak klasemen, Arsenal.</p>', 'post_photo_1662602782.jpg', 1, 1, 1, 1, 1, 7, '2022-04-03 20:52:22', '2022-09-07 19:06:22'),
(56, 30, 'Antony Tegur Agensi Pemain Ini Terkait Transfernya ke Man United, Ada Apa nih?', '<p><b style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; font-size: 16px;\">Bola.net -&nbsp;</b><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; font-size: 16px;\">Winger anyar&nbsp;</span><strong style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; font-size: 16px;\">Manchester United Antony</strong><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; font-size: 16px;\">&nbsp;menegur sebuah agensi pemain bernama Forza Sports Group yang mengklaim mereka ikut berperan atas kepindahan sang pemain ke Old Trafford.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; font-size: 16px;\">United berusaha keras mencari sejumlah amunisi baru pada musim panas 2022 ini. Salah satunya adalah winger baru.</span><span style=\"color: rgb(51, 51, 51); font-family: Lato, sans-serif; font-size: 16px;\"><br></span></p><p style=\"font-family: Lato, sans-serif; line-height: 1.8em; margin: 15px 0px 0px; font-size: 16px; color: rgb(51, 51, 51);\">Mereka lantas membidik winger&nbsp;<a href=\"https://www.bola.net/tag/ajax-amsterdam/\" style=\"outline: none; transition-duration: 0.3s; color: rgb(19, 129, 55);\">Ajax Amsterdam</a>, Antony. Awalnya Ajax bersikeras enggan melepas pemain Brasil tersebut.</p><p style=\"font-family: Lato, sans-serif; line-height: 1.8em; margin: 15px 0px 0px; font-size: 16px; color: rgb(51, 51, 51);\">Namun setelah adanya drama yang dipertontonkan oleh Antony, Ajax akhirnya terpaksa melepasnya ke MU. Ia dijual dengan harga sekitar 100 juta euro atau sekitar 85 juta pounds.</p>', 'post_photo_1662602582.jpg', 5, 1, 1, 1, 1, 7, '2022-04-03 20:53:13', '2022-09-07 19:04:34'),
(57, 28, 'Bangganya Para Delegasi SIPA 2022 Disambut Wali Kota Solo Gibran', '<p>Solopos.com, SOLO–Meskipun kondisi cuaca hujan lebat, suasana hangat terasa pada Welcome Dinner Solo International Performing Arts (SIPA) 2022 di Loji Gandrung, Solo, Rabu (7/9/2022) malam. Puluhan delegasi dalam negeri dan luar negeri bangga terlibat dalam SIPA 2022.</p><p>Pantauan Solopos.com sejumlah delegasi dari berbagai negara maupun&nbsp; daerah hadir pada malam itu, di antaranya Spanyol, Singapura, Malaysia, Korea Selatan, India, Turk, Riau, Bali, Kalimantan Selatan, Sumatra Utara.<br></p><p>PromosiDukung UMKM Binaan BUMN Go Online, Tokopedia Daftarkan 2.000 NIB<br></p><p>Wali Kota Solo Gibran Rakabuming Raka menghampiri setiap delegasi untuk memberikan semangat sebelum pentas pada Kamis (8/9/2022) malam. Selanjutnya para delegasi menikmati hidangan khas Kota Solo yang disiapkan.<br></p><p>Menu yang disajikan, di antaranya nasi liwet, bakso, bakmi godog, lontong opor, dan selat.<br></p><p>Welcome Dinner itu menjadi media berjejaring antar delegasi, Pemkot Solo, pelaku pariwisata, dan media.<br></p><p>Pelatih Garuda Taekwondo Demonstration Team (KCCI) Korea Selatan, Sofiyudin, mengatakan bangga bisa terlibat pada SIPA 2022 karena merupakan kesempatan kali pertama bagi timnya untuk menampilkan atraksi.<br></p><p>“SIPA sangat bagus melibatkan potensi pada komunitas lainnya. Kami mengapresiasi karena hasil latihan bisa ditampilkan secara global,” kata dia kepada Solopos.com.<br></p><p>Dia menjelaskan Garuda Taekwondo Demonstration Team menampilkan 11 atlet untuk menampilkan atraksi, di antaranya, taekwondo dance, gerakan taekwondo, atraksi ekstrem kick. Atraksi itu dipadukan dengan K-Pop.<br></p><p>Direktur SIPA R.Ay. Irawati Kusumorasri, menjelaskan maskot SIPA, Rianto tampil pada pembuka SIPA 2022 dengan tema Art as The Spirit of Life Changing. Penyelenggara menampilkan berbagai kejutan pada SIPA 2022.<br></p><p>Dia menjelaskan SIPA dapat disaksikan secara luring dan daring. Penyelenggara menargetkan jumlah penonton 8.000 per malam secara luring dan ribuan penonton secara virtual<br></p><p>Sementara itu, Wali Kota Solo Gibran Rakabuming mengatakan SIPA bisa kembali berlangsung secara luring setelah adanya pembatasan akibat pandemi Covid-19. Target 8.000 penonton bisa lebih asalkan kondisi cuaca mendukung.<br></p><p>“Kami berdoa semoga cuacanya tetap baik. Ini merupakan event outdoor, kami ingin semua&nbsp; tetap menerapkan protokol kesehatan. Kebetulan saya juga baru sembuh setelah positif Covid-19 kali ketiga,” ungkapnya.<br></p><p>Adapun SIPA merupakan festival seni pertunjukan tahunan yang diselenggarakan di Kota Solo sejak 2009. SIPA menjadi satu dari tiga agenda budaya dan pertunjukan seni Kota Solo yang masuk dalam Kharisma Event Nusantara (KEN) 2022 Kementerian Pariwisata dan Ekonomi Kreatif.<br></p><p><br></p>', 'post_photo_1662605087.jpg', 1, 0, 1, 1, 1, 7, '2022-09-07 19:44:47', '2022-09-07 19:44:47'),
(58, 28, 'Bangganya Para Delegasi SIPA 2022 Disambut Wali Kota Solo Gibran', '<p>Solopos.com, SOLO–Meskipun kondisi cuaca hujan lebat, suasana hangat terasa pada Welcome Dinner Solo International Performing Arts (SIPA) 2022 di Loji Gandrung, Solo, Rabu (7/9/2022) malam. Puluhan delegasi dalam negeri dan luar negeri bangga terlibat dalam SIPA 2022.</p><p>Pantauan Solopos.com sejumlah delegasi dari berbagai negara maupun&nbsp; daerah hadir pada malam itu, di antaranya Spanyol, Singapura, Malaysia, Korea Selatan, India, Turk, Riau, Bali, Kalimantan Selatan, Sumatra Utara.<br></p><p>PromosiDukung UMKM Binaan BUMN Go Online, Tokopedia Daftarkan 2.000 NIB<br></p><p>Wali Kota Solo Gibran Rakabuming Raka menghampiri setiap delegasi untuk memberikan semangat sebelum pentas pada Kamis (8/9/2022) malam. Selanjutnya para delegasi menikmati hidangan khas Kota Solo yang disiapkan.<br></p><p>Menu yang disajikan, di antaranya nasi liwet, bakso, bakmi godog, lontong opor, dan selat.<br></p><p>Welcome Dinner itu menjadi media berjejaring antar delegasi, Pemkot Solo, pelaku pariwisata, dan media.<br></p><p>Pelatih Garuda Taekwondo Demonstration Team (KCCI) Korea Selatan, Sofiyudin, mengatakan bangga bisa terlibat pada SIPA 2022 karena merupakan kesempatan kali pertama bagi timnya untuk menampilkan atraksi.<br></p><p>“SIPA sangat bagus melibatkan potensi pada komunitas lainnya. Kami mengapresiasi karena hasil latihan bisa ditampilkan secara global,” kata dia kepada Solopos.com.<br></p><p>Dia menjelaskan Garuda Taekwondo Demonstration Team menampilkan 11 atlet untuk menampilkan atraksi, di antaranya, taekwondo dance, gerakan taekwondo, atraksi ekstrem kick. Atraksi itu dipadukan dengan K-Pop.<br></p><p>Direktur SIPA R.Ay. Irawati Kusumorasri, menjelaskan maskot SIPA, Rianto tampil pada pembuka SIPA 2022 dengan tema Art as The Spirit of Life Changing. Penyelenggara menampilkan berbagai kejutan pada SIPA 2022.<br></p><p>Dia menjelaskan SIPA dapat disaksikan secara luring dan daring. Penyelenggara menargetkan jumlah penonton 8.000 per malam secara luring dan ribuan penonton secara virtual<br></p><p>Sementara itu, Wali Kota Solo Gibran Rakabuming mengatakan SIPA bisa kembali berlangsung secara luring setelah adanya pembatasan akibat pandemi Covid-19. Target 8.000 penonton bisa lebih asalkan kondisi cuaca mendukung.<br></p><p>“Kami berdoa semoga cuacanya tetap baik. Ini merupakan event outdoor, kami ingin semua&nbsp; tetap menerapkan protokol kesehatan. Kebetulan saya juga baru sembuh setelah positif Covid-19 kali ketiga,” ungkapnya.<br></p><p>Adapun SIPA merupakan festival seni pertunjukan tahunan yang diselenggarakan di Kota Solo sejak 2009. SIPA menjadi satu dari tiga agenda budaya dan pertunjukan seni Kota Solo yang masuk dalam Kharisma Event Nusantara (KEN) 2022 Kementerian Pariwisata dan Ekonomi Kreatif.<br></p><p><br></p>', 'post_photo_1662605125.jpg', 2, 0, 1, 1, 1, 7, '2022-09-07 19:45:25', '2022-09-08 08:17:57'),
(59, 28, 'Pilpres 2024: Mau Deklarasi Anies, Ganjar, atau Jenderal Andika? Ini Penjelasan Partai Nasdem', '<p>TRIBUNJOGJA.COM - Partai Nadem telah mengantongi nama Gubernur DKI Jakarta Anies Baswedan dan Gubernur Jawa Tengah Ganjar Pranowo serta Panglima TNI Jenderal Andika Perkasa, sebagai sosok yang mungkin bisa diusung dalam Pilpres 2024.</p><p>Namun hingga saat ini memang Partai Nasdem belum memutuskan di antara ketiga figur tersebut.<br></p><p>Siapakah sosok yang akan dideklarasikan sebagai bakal calon presiden (Capres 2024) dari partai Nasdem?&nbsp;<br></p><p>Apakah Anies Baswedan atau Ganjar Pranowo, atau Jenderal Andika Perkasa? Berikut penjelasan diungkap Ketua DPP Partai NasDem Willy Aditya.&nbsp;<br></p><p>Jadwal deklarasi Capres 2024&nbsp;<br></p><p>Partai NasDem membuka kemungkinan akan mendeklarasikan Anies Baswedan sebagai calon presiden (capres) 2024 pada 10 November 2022 atau Hari Pahlawan.<br></p><p>\"Kemungkinan itu tentu ada, komunikasi kita lakukan secara intensif dengan partai-partai lain,\" kata Ketua DPP Partai NasDem Willy Aditya kepada wartawan, Rabu (7/9/2022).<br></p><p>Willy menyebut keputusan deklarasi Gubernur DKI Jakarta itu tergantung kesepakatan NasDem dengan partai pengusung lainnya.<br></p><p>\"Jadi tentu itu suatu hal yang dinamis kalau ada kesepakatan. Sekarang kesepahaman sudah ada, tinggal kesepakatan aja,\" ujarnya.<br></p><div><br></div>', 'post_photo_1662605281.jpg', 4, 0, 1, 1, 1, 7, '2022-09-07 19:48:01', '2022-09-08 09:15:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_ticker_total` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_ticker_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_total` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_bar_date_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_bar_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_bar_email_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_color_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_color_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `analytic_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `analytic_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disqus_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `news_ticker_total`, `news_ticker_status`, `video_total`, `video_status`, `logo`, `favicon`, `top_bar_date_status`, `top_bar_email`, `top_bar_email_status`, `theme_color_1`, `theme_color_2`, `analytic_id`, `analytic_status`, `disqus_code`, `created_at`, `updated_at`) VALUES
(1, '5', 'Show', '6', 'Show', 'logo.png', 'favicon.png', 'Show', 'jagosoftware@shopee.co.id', 'Show', 'ED1B24', '1DC175', 'UA-84213520-0', 'Show', '<script>\r\n                        (function() { // DON\'T EDIT BELOW THIS LINE\r\n                        var d = document, s = d.createElement(\'script\');\r\n                        s.src = \'https://arefindev-com.disqus.com/embed.js\';\r\n                        s.setAttribute(\'data-timestamp\', +new Date());\r\n                        (d.head || d.body).appendChild(s);\r\n                        })();\r\n                    </script>', NULL, '2022-09-07 18:47:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sidebar_advertisements`
--

CREATE TABLE `sidebar_advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sidebar_ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_ad_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_ad_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sidebar_advertisements`
--

INSERT INTO `sidebar_advertisements` (`id`, `sidebar_ad`, `sidebar_ad_url`, `sidebar_ad_location`, `created_at`, `updated_at`) VALUES
(1, 'sidebar_ad_1646300780.png', NULL, 'Top', '2022-03-02 19:22:26', '2022-03-03 03:46:20'),
(3, 'sidebar_ad_1646300789.png', NULL, 'Bottom', '2022-03-02 19:59:34', '2022-03-03 03:46:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_items`
--

CREATE TABLE `social_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `social_items`
--

INSERT INTO `social_items` (`id`, `icon`, `url`, `created_at`, `updated_at`) VALUES
(1, 'fab fa-facebook-f', 'https://www.youtube.com/channel/UCmoITSx0UoBKG5IKYHOT4Pw', '2022-03-27 19:36:26', '2022-09-05 08:06:50'),
(2, 'fab fa-twitter', 'https://www.youtube.com/channel/UCmoITSx0UoBKG5IKYHOT4Pw', '2022-03-27 19:41:01', '2022-09-05 08:06:55'),
(3, 'fab fa-linkedin-in', 'https://www.youtube.com/channel/UCmoITSx0UoBKG5IKYHOT4Pw', '2022-03-27 19:41:22', '2022-09-05 08:07:01'),
(4, 'fab fa-pinterest-p', 'https://www.youtube.com/channel/UCmoITSx0UoBKG5IKYHOT4Pw', '2022-03-27 19:41:46', '2022-09-05 08:07:06'),
(6, 'fab fa-instagram', 'https://www.youtube.com/channel/UCmoITSx0UoBKG5IKYHOT4Pw', '2022-03-27 20:54:55', '2022-09-05 08:07:11'),
(7, 'fab fa-youtube', 'https://www.youtube.com/channel/UCmoITSx0UoBKG5IKYHOT4Pw', '2022-09-05 08:07:44', '2022-09-05 08:07:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `token`, `status`, `created_at`, `updated_at`) VALUES
(2, 'aa@gmail.com', '', 'Active', '2022-03-25 18:57:02', '2022-03-25 19:02:35'),
(3, 'bb@gmail.com', '', 'Active', '2022-03-25 19:03:59', '2022-03-25 19:04:26'),
(4, 'cc@gmail.com', '3a3296c76a5ffd3bf04f3b7ff0aae5e89a1bf46d5fc6a2765eb7f187719f2fc0', 'Pending', '2022-04-02 23:18:38', '2022-04-02 23:18:38'),
(5, 'dd@gmail.com', '57bd36afc13ffc3985690476d29220153881045721509e03083e09a805095bd6', 'Pending', '2022-04-02 23:19:07', '2022-04-02 23:19:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_on_menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_on_home` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Show',
  `sub_category_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `sub_category_name`, `show_on_menu`, `show_on_home`, `sub_category_order`, `category_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'Football', 'Show', 'Show', '1', 1, 1, '2022-03-03 19:45:53', '2022-03-22 04:27:17'),
(2, 'Cricket', 'Show', 'Hide', '2', 1, 1, '2022-03-03 19:46:21', '2022-03-22 04:31:58'),
(3, 'Khulna', 'Show', 'Show', '1', 2, 1, '2022-03-03 19:46:44', '2022-03-22 18:19:17'),
(4, 'Dhaka', 'Show', 'Hide', '2', 2, 1, '2022-03-03 19:47:00', '2022-03-22 04:32:02'),
(5, 'Insurance', 'Show', 'Show', '1', 3, 1, '2022-03-03 19:47:43', '2022-03-03 19:47:43'),
(6, 'Habit', 'Show', 'Hide', '2', 3, 1, '2022-03-03 19:47:52', '2022-03-22 04:32:08'),
(8, 'Baseball', 'Show', 'Hide', '3', 1, 1, '2022-03-20 20:39:52', '2022-03-29 19:30:21'),
(9, 'Sylhet', 'Hide', 'Hide', '3', 2, 1, '2022-03-20 20:40:15', '2022-03-23 20:42:29'),
(10, 'Work from Home', 'Show', 'Hide', '3', 3, 1, '2022-03-20 20:40:46', '2022-03-22 04:33:03'),
(11, 'Entrepreneur', 'Show', 'Hide', '4', 3, 1, '2022-03-20 20:41:15', '2022-03-22 04:33:26'),
(12, 'Computer', 'Show', 'Show', '1', 5, 1, '2022-03-20 20:41:51', '2022-03-20 20:41:51'),
(13, 'Mobile', 'Show', 'Hide', '2', 5, 1, '2022-03-20 20:42:00', '2022-03-22 04:34:08'),
(14, 'Programming', 'Show', 'Hide', '3', 5, 1, '2022-03-20 20:42:12', '2022-03-22 04:33:09'),
(15, 'Freelancing', 'Show', 'Hide', '4', 5, 1, '2022-03-20 20:42:23', '2022-03-22 04:33:31'),
(16, 'Government', 'Show', 'Hide', '1', 6, 1, '2022-03-20 20:43:02', '2022-03-22 04:31:43'),
(17, 'Non Government', 'Show', 'Hide', '2', 6, 1, '2022-03-20 20:43:13', '2022-03-22 04:32:40'),
(18, 'Corporate', 'Show', 'Hide', '3', 6, 1, '2022-03-20 20:43:26', '2022-03-22 04:33:13'),
(19, 'Accounting', 'Show', 'Hide', '4', 6, 1, '2022-03-20 20:43:36', '2022-03-22 04:33:35'),
(20, 'Parenting', 'Show', 'Hide', '1', 7, 1, '2022-03-20 20:44:30', '2022-03-22 04:31:48'),
(21, 'Diseases', 'Show', 'Hide', '2', 7, 1, '2022-03-20 20:44:44', '2022-03-22 04:32:44'),
(22, 'Diet', 'Show', 'Hide', '3', 7, 1, '2022-03-20 20:44:53', '2022-03-22 04:33:18'),
(23, 'Weight Loss', 'Show', 'Hide', '4', 7, 1, '2022-03-20 20:45:14', '2022-03-22 04:33:38'),
(24, 'Adventures', 'Show', 'Show', '1', 8, 1, '2022-03-20 20:45:54', '2022-03-29 19:30:32'),
(25, 'Explore', 'Show', 'Hide', '2', 8, 1, '2022-03-20 20:46:10', '2022-03-22 04:32:49'),
(26, 'Postcards', 'Show', 'Hide', '3', 8, 1, '2022-03-20 20:46:22', '2022-03-22 04:33:22'),
(27, 'Taste', 'Show', 'Hide', '4', 8, 1, '2022-03-20 20:46:31', '2022-03-22 04:33:42'),
(28, 'Nasional', 'Show', 'Show', '1', 9, 7, '2022-04-01 19:05:00', '2022-09-08 08:15:03'),
(29, 'Jawa Barat', 'Show', 'Hide', '2', 9, 7, '2022-04-01 19:05:26', '2022-09-07 18:37:34'),
(30, 'Sepak bola', 'Show', 'Show', '3', 10, 7, '2022-04-01 19:06:07', '2022-09-07 18:40:44'),
(31, 'Motogp', 'Show', 'Hide', '4', 10, 7, '2022-04-01 19:06:26', '2022-09-07 18:48:48'),
(32, 'Teknologi', 'Show', 'Show', '5', 12, 7, '2022-04-01 19:07:19', '2022-09-08 08:14:19'),
(33, 'Tren anak muda', 'Show', 'Hide', '6', 11, 7, '2022-04-01 19:07:34', '2022-09-07 18:49:41'),
(34, 'Keamanan Cyber', 'Show', 'Hide', '7', 12, 7, '2022-04-01 19:08:16', '2022-09-07 18:49:54'),
(35, 'Gadget', 'Show', 'Hide', '8', 12, 7, '2022-04-01 19:08:32', '2022-09-07 18:50:18'),
(36, 'Kebugaran', 'Show', 'Show', '9', 13, 7, '2022-04-01 19:09:04', '2022-09-07 18:50:33'),
(37, 'Diet', 'Show', 'Hide', '10', 13, 7, '2022-04-01 19:09:24', '2022-09-07 18:48:32'),
(38, 'Jawa Timur', 'Show', 'Show', '1', 9, 7, '2022-09-07 18:38:01', '2022-09-07 18:39:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tags`
--

INSERT INTO `tags` (`id`, `post_id`, `tag_name`, `created_at`, `updated_at`) VALUES
(27, 7, 'football', '2022-03-20 20:54:42', '2022-03-20 20:54:42'),
(28, 7, 'usa', '2022-03-20 20:54:42', '2022-03-20 20:54:42'),
(29, 7, 'sports', '2022-03-20 20:54:42', '2022-03-20 20:54:42'),
(30, 7, 'weekend', '2022-03-20 20:54:42', '2022-03-20 20:54:42'),
(31, 7, 'tv', '2022-03-20 20:54:42', '2022-03-20 20:54:42'),
(32, 8, 'football', '2022-03-20 20:55:40', '2022-03-20 20:55:40'),
(33, 8, 'premier', '2022-03-20 20:55:40', '2022-03-20 20:55:40'),
(34, 8, 'prediction', '2022-03-20 20:55:40', '2022-03-20 20:55:40'),
(35, 9, 'matchday', '2022-03-20 20:56:32', '2022-03-20 20:56:32'),
(36, 9, 'football', '2022-03-20 20:56:32', '2022-03-20 20:56:32'),
(37, 9, 'premier', '2022-03-20 20:56:32', '2022-03-20 20:56:32'),
(38, 10, 'transfer', '2022-03-20 20:57:21', '2022-03-20 20:57:21'),
(39, 10, 'football', '2022-03-20 20:57:21', '2022-03-20 20:57:21'),
(40, 10, 'january', '2022-03-20 20:57:21', '2022-03-20 20:57:21'),
(41, 11, 'chelsea', '2022-03-20 20:58:39', '2022-03-20 20:58:39'),
(42, 11, 'romelu', '2022-03-20 20:58:39', '2022-03-20 20:58:39'),
(43, 11, 'thomas', '2022-03-20 20:58:39', '2022-03-20 20:58:39'),
(44, 11, 'football', '2022-03-20 20:58:39', '2022-03-20 20:58:39'),
(45, 12, 'football', '2022-03-20 21:33:38', '2022-03-20 21:33:38'),
(46, 12, 'break', '2022-03-20 21:33:38', '2022-03-20 21:33:38'),
(47, 13, 'football', '2022-03-20 21:34:28', '2022-03-20 21:34:28'),
(48, 13, 'wolverhampton', '2022-03-20 21:34:28', '2022-03-20 21:34:28'),
(49, 13, 'everton', '2022-03-20 21:34:28', '2022-03-20 21:34:28'),
(50, 14, 'policy', '2022-03-20 21:35:24', '2022-03-20 21:35:24'),
(51, 14, 'adult', '2022-03-20 21:35:24', '2022-03-20 21:35:24'),
(52, 14, 'insurance', '2022-03-20 21:35:24', '2022-03-20 21:35:24'),
(53, 15, 'insurance', '2022-03-20 21:36:02', '2022-03-20 21:36:02'),
(54, 15, 'cancer', '2022-03-20 21:36:02', '2022-03-20 21:36:02'),
(55, 16, 'windshield', '2022-03-20 21:36:37', '2022-03-20 21:36:37'),
(56, 16, 'insurance', '2022-03-20 21:36:37', '2022-03-20 21:36:37'),
(57, 17, 'insurance', '2022-03-20 21:37:10', '2022-03-20 21:37:10'),
(58, 17, 'quote', '2022-03-20 21:37:10', '2022-03-20 21:37:10'),
(59, 18, 'disability', '2022-03-20 21:37:58', '2022-03-20 21:37:58'),
(60, 18, 'athlete', '2022-03-20 21:37:58', '2022-03-20 21:37:58'),
(61, 19, 'misunderstanding', '2022-03-20 21:38:37', '2022-03-20 21:38:37'),
(62, 19, 'insurance', '2022-03-20 21:38:37', '2022-03-20 21:38:37'),
(63, 20, 'climb', '2022-03-20 21:39:21', '2022-03-20 21:39:21'),
(64, 20, 'alpinist', '2022-03-20 21:39:21', '2022-03-20 21:39:21'),
(65, 21, 'backpack', '2022-03-20 21:39:58', '2022-03-20 21:39:58'),
(66, 21, 'trip', '2022-03-20 21:39:58', '2022-03-20 21:39:58'),
(67, 22, 'icefall', '2022-03-20 21:40:38', '2022-03-20 21:40:38'),
(68, 22, 'everest', '2022-03-20 21:40:38', '2022-03-20 21:40:38'),
(69, 23, 'camping', '2022-03-20 21:41:19', '2022-03-20 21:41:19'),
(70, 23, 'survive', '2022-03-20 21:41:19', '2022-03-20 21:41:19'),
(71, 23, 'winter', '2022-03-20 21:41:19', '2022-03-20 21:41:19'),
(72, 24, 'reef', '2022-03-20 21:42:01', '2022-03-20 21:42:01'),
(73, 24, 'hotel', '2022-03-20 21:42:01', '2022-03-20 21:42:01'),
(74, 25, 'hardware', '2022-03-20 21:42:57', '2022-03-20 21:42:57'),
(75, 25, 'software', '2022-03-20 21:42:57', '2022-03-20 21:42:57'),
(76, 26, 'boot', '2022-03-20 21:43:35', '2022-03-20 21:43:35'),
(77, 26, 'problem', '2022-03-20 21:43:35', '2022-03-20 21:43:35'),
(78, 26, 'hardware', '2022-03-20 21:43:35', '2022-03-20 21:43:35'),
(79, 27, 'work', '2022-03-20 21:44:10', '2022-03-20 21:44:10'),
(80, 27, 'home', '2022-03-20 21:44:10', '2022-03-20 21:44:10'),
(81, 28, 'business', '2022-03-20 21:45:09', '2022-03-20 21:45:09'),
(82, 28, 'computer', '2022-03-20 21:45:09', '2022-03-20 21:45:09'),
(83, 29, 'commercial', '2022-03-20 21:46:01', '2022-03-20 21:46:01'),
(84, 30, 'pdm', '2022-03-20 21:46:46', '2022-03-20 21:46:46'),
(85, 30, 'computer', '2022-03-20 21:46:46', '2022-03-20 21:46:46'),
(87, 33, 'sports', '2022-03-29 07:36:26', '2022-03-29 07:36:26'),
(91, 33, 'game', '2022-03-29 07:43:04', '2022-03-29 07:43:04'),
(120, 41, 'Chelsea', '2022-09-07 18:53:11', '2022-09-07 18:53:11'),
(121, 41, 'Premier League', '2022-09-07 18:54:16', '2022-09-07 18:54:16'),
(122, 42, 'Premier League', '2022-09-07 18:56:42', '2022-09-07 18:56:42'),
(123, 42, 'Berita Liga Inggris', '2022-09-07 18:57:31', '2022-09-07 18:57:31'),
(124, 56, 'Manchester United', '2022-09-07 19:03:02', '2022-09-07 19:03:02'),
(125, 56, 'Ajax Amsterdam', '2022-09-07 19:03:24', '2022-09-07 19:03:24'),
(126, 56, 'Premier League', '2022-09-07 19:03:40', '2022-09-07 19:03:40'),
(127, 55, 'Berita Bola', '2022-09-07 19:06:23', '2022-09-07 19:06:23'),
(128, 42, 'Sportbites', '2022-09-07 19:07:00', '2022-09-07 19:07:00'),
(129, 39, 'Liga Champions', '2022-09-07 19:08:57', '2022-09-07 19:08:57'),
(130, 39, 'Juventus', '2022-09-07 19:09:32', '2022-09-07 19:09:32'),
(131, 39, 'Psg', '2022-09-07 19:10:03', '2022-09-07 19:10:03'),
(132, 40, 'BLT BBM', '2022-09-07 19:30:30', '2022-09-07 19:30:30'),
(133, 40, 'Jawa Tengah', '2022-09-07 19:31:13', '2022-09-07 19:31:13'),
(134, 40, 'Bansos', '2022-09-07 19:32:02', '2022-09-07 19:32:02'),
(135, 43, 'Jawa Tengah', '2022-09-07 19:34:02', '2022-09-07 19:34:02'),
(136, 43, 'Ganjar', '2022-09-07 19:34:26', '2022-09-07 19:34:26'),
(137, 37, 'BLT BBM', '2022-09-07 19:39:25', '2022-09-07 19:39:25'),
(138, 37, 'Bansos', '2022-09-07 19:39:51', '2022-09-07 19:39:51'),
(139, 37, 'Jawa Tengah', '2022-09-07 19:39:58', '2022-09-07 19:39:58'),
(140, 38, 'Jawa Tengah', '2022-09-07 19:41:35', '2022-09-07 19:41:35'),
(141, 57, 'Jawa Tengah', '2022-09-07 19:44:47', '2022-09-07 19:44:47'),
(142, 58, 'Jawa Tengah', '2022-09-07 19:45:25', '2022-09-07 19:45:25'),
(143, 59, 'Jawa Tengah', '2022-09-07 19:48:01', '2022-09-07 19:48:01'),
(144, 59, 'Anies Baswedan', '2022-09-07 19:48:28', '2022-09-07 19:48:28'),
(145, 44, 'Cedera Lari', '2022-09-08 07:59:51', '2022-09-08 07:59:51'),
(146, 44, 'Joging', '2022-09-08 08:01:17', '2022-09-08 08:01:17'),
(147, 45, 'Joging', '2022-09-08 08:03:03', '2022-09-08 08:03:03'),
(148, 45, 'Jantung', '2022-09-08 08:03:28', '2022-09-08 08:03:28'),
(149, 46, 'Diet', '2022-09-08 08:05:51', '2022-09-08 08:05:51'),
(150, 46, 'Kebugaran', '2022-09-08 08:06:06', '2022-09-08 08:06:06'),
(151, 48, 'Kebugaran', '2022-09-08 08:08:31', '2022-09-08 08:08:31'),
(152, 48, 'Diet', '2022-09-08 08:08:49', '2022-09-08 08:08:49'),
(153, 47, 'Penyakit Ginjal', '2022-09-08 08:11:16', '2022-09-08 08:11:16'),
(154, 47, 'Diet', '2022-09-08 08:11:38', '2022-09-08 08:11:38'),
(155, 54, 'Amerika Serikat', '2022-09-08 08:21:13', '2022-09-08 08:21:13'),
(156, 54, 'Apple Park', '2022-09-08 08:21:33', '2022-09-08 08:21:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `top_advertisements`
--

CREATE TABLE `top_advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `top_ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_ad_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_ad_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `top_advertisements`
--

INSERT INTO `top_advertisements` (`id`, `top_ad`, `top_ad_url`, `top_ad_status`, `created_at`, `updated_at`) VALUES
(1, 'top_ad.png', NULL, 'Show', NULL, '2022-03-02 10:08:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `videos`
--

INSERT INTO `videos` (`id`, `video_id`, `caption`, `language_id`, `created_at`, `updated_at`) VALUES
(2, 'AkjQWq-Xn28', 'Neymar vs Argentina HD 1080i | English Commentary', 1, '2022-03-23 17:58:17', '2022-03-23 17:58:17'),
(3, '7moQT1FVSn8', 'Lionel Messi - Top 15 Magical Dribbles', 1, '2022-03-23 17:58:47', '2022-03-23 17:58:47'),
(4, 'p9QuQBrPTE8', 'Penalty ShootOut That Made The World Happy', 1, '2022-03-23 17:59:09', '2022-09-04 10:48:06'),
(5, 'JUfybRQc_1o', 'Top 25 Places To Visit In The USA', 1, '2022-03-23 17:59:46', '2022-03-23 17:59:46'),
(6, 'lCBdcccceiM', 'Top 10 Places To Visit In Slovakia', 1, '2022-03-23 18:00:39', '2022-03-23 18:00:39'),
(7, '7SDF0ZzDHzk', 'Top 30 Places In The Alps', 1, '2022-03-23 18:01:02', '2022-03-23 18:01:02'),
(8, '_ysd-zHamjk', 'Corporate Video Production Marketing Videos', 1, '2022-03-23 18:02:01', '2022-03-23 18:02:01'),
(9, 'DyyElf12Ql0', '12 Business Ideas That Will Make You Money in 2021', 1, '2022-03-23 18:02:37', '2022-03-23 18:02:37'),
(10, 'Co3dPKNMcRs', '25 Small Business Ideas for New York in 2022', 1, '2022-03-23 18:02:56', '2022-03-23 18:02:56'),
(11, 'AkjQWq-Xn28', 'Neymar vs Argentina komentar bahasa inggris', 7, '2022-04-02 05:48:58', '2022-09-07 08:45:02'),
(12, '7moQT1FVSn8', 'Lionel Messi - 15 Dribel Ajaib Terbaik', 7, '2022-04-02 05:49:36', '2022-09-07 08:45:21'),
(13, '2xekVvsraJY', 'Adu penalti yang membuat dunia bahagia', 7, '2022-04-02 05:50:02', '2022-09-07 08:46:17'),
(14, 'JUfybRQc_1o', '25 Tempat Terbaik untuk Dikunjungi di AS', 7, '2022-04-02 05:50:35', '2022-09-07 08:46:37'),
(15, '_ysd-zHamjk', 'Video Pemasaran Produksi Video Perusahaan', 7, '2022-04-02 05:51:24', '2022-09-07 08:46:58');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `home_advertisements`
--
ALTER TABLE `home_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `live_channels`
--
ALTER TABLE `live_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `online_polls`
--
ALTER TABLE `online_polls`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sidebar_advertisements`
--
ALTER TABLE `sidebar_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `social_items`
--
ALTER TABLE `social_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `top_advertisements`
--
ALTER TABLE `top_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `home_advertisements`
--
ALTER TABLE `home_advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `live_channels`
--
ALTER TABLE `live_channels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `online_polls`
--
ALTER TABLE `online_polls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sidebar_advertisements`
--
ALTER TABLE `sidebar_advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `social_items`
--
ALTER TABLE `social_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT untuk tabel `top_advertisements`
--
ALTER TABLE `top_advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
