-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 05, 2023 at 10:32 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(2, 'Personal', 'personal', '2023-11-05 03:19:35', '2023-11-05 03:19:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_05_062900_create_posts_table', 1),
(6, '2023_11_05_073233_create_categories_table', 1);

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
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'Qui voluptates unde consequuntur et consequatur eaque nam unde maxime molestias.', 'corporis-quia-est-est-saepe-et', 'Nostrum temporibus atque omnis unde in rem veniam laudantium commodi sapiente quia omnis animi labore aut impedit.', 'Animi et provident sequi aut possimus non sed. Autem eos perferendis voluptatem rerum possimus quia molestiae. Aliquid eveniet velit eveniet et velit quaerat aliquam. Saepe non sunt beatae libero omnis ex. Quis suscipit non ipsam aperiam et iusto illum nam. Dolores molestias qui repudiandae dolores tenetur et dolores. Et dicta soluta cum aut aut provident atque. Consequatur modi dolores reiciendis sed minus nobis laudantium.', NULL, '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(2, 1, 2, 'Sit quo ab provident.', 'distinctio-saepe-corporis-omnis-ut-illo', 'Et provident accusamus incidunt possimus iusto ratione ut molestiae et aliquam vero iste nemo aut officiis culpa possimus cumque qui nulla est esse aut totam.', 'Dolor quo esse quo quae fugit cupiditate consequuntur. Ullam quidem consequuntur officiis sint cumque fuga vitae. Maiores veritatis adipisci ipsum provident libero sed. Voluptatibus ut iste rerum ipsa. Veniam et non fugit eum rerum. Labore officia alias eos modi ullam dolor necessitatibus eaque. Ut ipsam necessitatibus illo quas unde.', NULL, '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(3, 2, 2, 'Et hic soluta quibusdam rerum perspiciatis ratione mollitia id.', 'eos-eligendi-omnis-repellat-et-omnis', 'Quia ipsa assumenda voluptate iste sit alias et excepturi dolores facere.', 'Doloribus impedit enim corporis alias nemo recusandae. Vel quis impedit aperiam eum quisquam. Veritatis ut consequatur qui sit facere. Delectus consectetur assumenda deleniti voluptates vitae eos ut sit. Asperiores similique aperiam in qui nobis quia autem. Id ipsa distinctio deserunt inventore beatae vitae dolorum sed. Blanditiis eos aliquid corporis minima in placeat magnam.', NULL, '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(4, 1, 2, 'Doloremque dolores dolores est consequatur ut.', 'dolorem-omnis-impedit-impedit-aut', 'Soluta labore veritatis animi molestiae beatae illum voluptatibus labore error voluptas blanditiis hic harum quisquam assumenda quae enim delectus inventore.', 'Vitae repudiandae fuga qui in dolor iste. Neque illum sequi ratione suscipit quos facere. Quod voluptatem deleniti sit quia hic error eos. Vitae sit dicta quia laborum beatae sapiente. Molestiae ut aut rerum est. Accusamus enim qui aperiam ut. Veritatis modi maxime dolore aut. Laborum non praesentium sunt cumque voluptatum et corporis. Dolorem ipsa omnis facere eveniet sint aut error corporis. Voluptas dolorem dolorum illum sint.', NULL, '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(5, 2, 3, 'Sint aperiam deleniti fuga eaque corrupti nihil et.', 'est-labore-alias-sed-deserunt-eveniet', 'Qui pariatur sit veniam nemo vitae amet eius accusantium velit quam autem occaecati ut ullam eum libero id similique dolor non dolor distinctio deleniti consectetur.', 'Vel sed quis in natus molestiae. Aut dolor eligendi amet blanditiis ad omnis omnis beatae. Magni hic ullam ut et autem modi similique. Earum placeat minus officiis adipisci omnis voluptas quo. Dignissimos fuga blanditiis mollitia temporibus enim aut. Ea exercitationem qui minima qui.', NULL, '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(6, 1, 1, 'Consequatur officiis tempora similique sed consequatur iusto et.', 'ea-dignissimos-commodi-quos-minima-exercitationem-nisi-assumenda', 'Sit aut qui doloribus qui et aspernatur.', 'Amet quia qui sapiente et et rerum dolor. Laboriosam rem accusamus esse necessitatibus adipisci iste voluptatum numquam. Enim itaque consequatur rerum veniam. Neque id alias alias est. Ut necessitatibus minima quos quasi quo qui. Ex aliquam sint quia optio quia. Quisquam consequatur laborum totam ratione harum.', NULL, '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(7, 1, 2, 'Aut ratione commodi nostrum.', 'necessitatibus-praesentium-nobis-sed-repellendus-quo-est', 'Eligendi voluptas reprehenderit et et unde dolores et nobis voluptatem sed accusamus aut libero laborum voluptatem.', 'Hic perferendis dolore neque autem alias pariatur quia. Incidunt ut non doloremque consequatur iusto amet fugit. Fugit ipsa mollitia sapiente aliquid voluptatibus. Voluptate autem accusantium soluta laudantium reiciendis. Laboriosam et est iste omnis. Voluptatibus beatae voluptates ab impedit explicabo. Minima quas neque ipsam nihil autem.', NULL, '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(8, 1, 1, 'Pariatur mollitia id neque dolor illo.', 'quia-magni-eveniet-tempora-et-consequuntur', 'Non deleniti voluptas fugiat ut soluta et incidunt est aspernatur occaecati fugiat enim.', 'Vitae at necessitatibus adipisci iusto placeat facere. Facere et sed tempora blanditiis. Repudiandae officiis et consequatur et veritatis et animi. Dolor vitae ipsam magnam voluptatibus ipsum praesentium. A dolorum reprehenderit beatae voluptatem quae.', NULL, '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(9, 1, 3, 'Eos voluptatem aut.', 'quaerat-enim-mollitia-ipsa-et-animi', 'Minima recusandae dolore iste aut voluptatum quia velit maxime facilis beatae suscipit ut sint sed eum corporis consequatur tenetur ipsam assumenda rerum est.', 'Dolorem sed tempora nemo accusamus excepturi beatae. Nostrum provident suscipit et voluptates ea libero velit. Repellendus dignissimos ullam earum. At quo vero sunt et debitis consequatur. Ut dolore sunt modi eveniet inventore numquam. Molestiae in neque accusamus. Ut enim facere dolore explicabo illum earum. In ut corrupti est libero enim numquam sapiente. Accusamus nulla expedita illum nihil architecto quasi. Culpa autem dolor ratione et. Voluptatem qui odit nobis eos laboriosam explicabo ut doloribus.', NULL, '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(10, 2, 3, 'Assumenda numquam eos excepturi.', 'quisquam-expedita-vel-repellendus-officia', 'Omnis quaerat consequatur sit tenetur sint sed eveniet ducimus quis cupiditate nesciunt.', 'Officiis deserunt eos vero aut modi quia. Illum blanditiis illum itaque doloribus optio. Provident et deserunt accusantium a alias ducimus et ut. Ipsa ducimus accusamus voluptatem mollitia enim nihil unde. Odio maiores quia exercitationem consequatur sed consectetur. Voluptas soluta dicta voluptas officia. Est magnam ex eaque totam nostrum quas hic. Ratione et ab velit enim eius ut. Pariatur aut officiis et culpa sunt.', NULL, '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(11, 1, 3, 'Vel modi sunt fugiat tenetur.', 'reiciendis-qui-enim-rerum-perspiciatis', 'Et aut libero iure eaque veritatis iste repellat ea debitis unde eos quisquam velit et est corporis.', 'Laudantium accusamus et nobis quis sint repellendus. Molestiae id consequatur quo ut nemo. Esse et ex quisquam. Consectetur et in assumenda optio qui. Voluptatem architecto molestiae quo est adipisci excepturi aliquid.', NULL, '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(12, 1, 2, 'Repellat natus odio.', 'magnam-rerum-molestiae-ducimus-eos-quia', 'Adipisci repellat iusto ut ut quis facere quas vel voluptas nobis distinctio non fuga tempora quis doloremque voluptatem necessitatibus aut fuga esse voluptatem dignissimos voluptas.', 'Suscipit maiores quos nulla veniam. Fuga a dolor commodi. Quos vitae asperiores eum. Qui est eius sed asperiores laudantium. Magni possimus similique aut ipsum. Voluptatem saepe voluptatum id laboriosam deserunt saepe nobis. Tenetur dolorem qui qui nihil. Quod aliquam quia dolor iste id at. Reprehenderit vel beatae quia aperiam.', NULL, '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(13, 1, 2, 'Illo occaecati ut hic iure officia.', 'fugiat-rerum-omnis-magnam-quia', 'Quaerat veniam delectus voluptates impedit voluptate necessitatibus ea vel eligendi sint autem ratione est.', 'Mollitia velit accusamus qui nihil doloremque quis quos autem. Autem vel ut libero quis odit. Veritatis dicta nobis et est rerum enim ipsa. Esse est explicabo modi reiciendis sunt vero nihil. Rerum libero aut est quia et sint delectus dicta.', NULL, '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(14, 2, 1, 'Est et ipsam eum optio omnis saepe ut iure dolorem ex.', 'iusto-incidunt-laborum-officiis-cupiditate', 'Cum in corrupti voluptate repellendus vitae qui ullam officiis eveniet eos sapiente quasi illum asperiores provident.', 'Odit culpa ipsum incidunt voluptas. Molestias eius magni odio excepturi eaque. Exercitationem molestiae quis animi architecto nesciunt et. Qui facilis est mollitia iure vitae illo.', NULL, '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(15, 1, 1, 'Sed id adipisci neque.', 'repudiandae-qui-rerum-asperiores-similique', 'Optio inventore possimus rerum asperiores labore velit voluptatem facere sit pariatur libero omnis voluptatem et corporis sapiente et odio voluptatem culpa amet error cumque reiciendis aperiam sunt.', 'Est repellat eos id optio saepe beatae quo ratione. Incidunt autem et ratione dolor sed. Quasi ea adipisci saepe sunt asperiores. Rerum suscipit dolor dolore tenetur autem et. Minima doloribus omnis molestiae et. Similique sit maxime exercitationem at voluptate consequatur.', NULL, '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(16, 2, 3, 'Quia ut et minus doloremque.', 'aut-ut-autem-eligendi-impedit', 'Culpa corporis voluptas facilis adipisci quos ipsam tenetur non corrupti rem quo sunt vel esse reprehenderit officiis similique nam aut facere.', 'Doloremque omnis recusandae quis voluptates placeat qui. Id aut sed dolorem porro accusamus. Labore consequatur odio corporis. Sequi aut quia ipsa officia. Perferendis quisquam ut deleniti sit et. Iusto quae eos rerum sequi. Voluptatibus illo eos est beatae. Odio qui et et libero reiciendis voluptates unde. Laboriosam et amet ex distinctio. Officia omnis quas nisi at dolorem inventore voluptatem et.', NULL, '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(17, 2, 1, 'Ad ipsam magni dolor.', 'omnis-earum-est-ipsum-quia-voluptatem-dolores-neque', 'Atque doloremque expedita optio qui et quasi quia culpa velit corporis.', 'Sint vel quia ipsa et voluptatum temporibus. At in quam eveniet. Voluptas molestias dolor unde ut. Nobis minus laudantium et sunt architecto suscipit. Incidunt iste id vel tempora est libero. Consequatur veritatis nostrum et omnis qui et. Fugit ea quo et sunt et quia ipsum. Accusamus quia incidunt quaerat facilis. Dignissimos aperiam et quaerat fuga suscipit. Aliquam expedita voluptas eligendi itaque similique iste et.', NULL, '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(18, 2, 1, 'Impedit repudiandae voluptatibus dolor ea ipsam occaecati maiores ducimus.', 'molestiae-qui-dolorem-aut-delectus-possimus-consequatur-dolorem-quo', 'Voluptates consequatur cumque eum dolore blanditiis natus voluptatibus sit enim laboriosam.', 'Magnam mollitia quaerat odit accusamus et. Voluptatem ea et quam quos quo aperiam. Maiores nam dolorem enim eveniet. Enim similique ullam voluptatem doloribus. Neque commodi est qui vel placeat aut cupiditate. Animi nulla officiis aut rerum ut. Rerum soluta non quia minus iusto autem ea. Ipsum et ut natus iure aut omnis.', NULL, '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(19, 1, 2, 'Et ipsa repellendus non architecto.', 'sit-vel-assumenda-magnam-fuga-tempore-praesentium-ut', 'Vel aut fuga est repudiandae eligendi neque in tempore esse nulla laudantium maxime in iusto odit maxime et dignissimos ea distinctio sit impedit saepe eveniet id ut ut harum.', 'Voluptatum et suscipit ex et. Veniam rem ut et distinctio non. Necessitatibus quia eaque voluptas possimus enim. Non ut dolores cupiditate accusamus cumque. Autem voluptatibus nesciunt nihil consequatur ratione exercitationem esse laborum. Nisi eos omnis qui earum maxime et qui. Consequuntur nesciunt ea et voluptate. Quo quia voluptatem et ullam ipsum autem. Dicta dolorem quia consequuntur deleniti deleniti.', NULL, '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(20, 2, 1, 'Ipsa nihil voluptates quis eos sint.', 'rerum-veniam-omnis-in-laborum-commodi-mollitia', 'Rerum est ex eos soluta temporibus quia ut reiciendis eius at est vero architecto recusandae atque quae iure.', 'Incidunt consequatur nesciunt debitis ratione. Iure minus minima eveniet voluptatum. Veniam quia aliquid ut fuga. Autem modi officia non eveniet iusto est qui. Et odio dolorem a. Similique corrupti aut voluptatem aut tenetur suscipit. Esse iusto facere provident fugiat. Corporis dolorem repellat inventore voluptates explicabo. Eaque voluptatem accusantium a sapiente eum ipsum. Impedit culpa velit sequi.', NULL, '2023-11-05 03:19:35', '2023-11-05 03:19:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Darsirah Pangestu S.Pt', 'qnatsir', 'yusuf.sitorus@example.org', '2023-11-05 03:19:35', '$2y$12$a6IsOTUD/dyFHerA8rgkhe8Y27EAL3rekzDm1KKUHNv9YmWRrXL0u', 'ixHIdUPYgM', '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(2, 'Umi Pratiwi', 'maulana.iriana', 'nova98@example.net', '2023-11-05 03:19:35', '$2y$12$a6IsOTUD/dyFHerA8rgkhe8Y27EAL3rekzDm1KKUHNv9YmWRrXL0u', 'VXRifgH5eT', '2023-11-05 03:19:35', '2023-11-05 03:19:35'),
(3, 'Jabal Tugiman Situmorang', 'zhandayani', 'vnatsir@example.org', '2023-11-05 03:19:35', '$2y$12$a6IsOTUD/dyFHerA8rgkhe8Y27EAL3rekzDm1KKUHNv9YmWRrXL0u', 'dJNocLyRp4', '2023-11-05 03:19:35', '2023-11-05 03:19:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
