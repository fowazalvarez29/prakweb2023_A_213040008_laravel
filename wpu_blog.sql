-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 19, 2023 at 01:52 PM
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
(1, 'Web Programming', 'web-programming', '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(2, 'Web Design', 'web-design', '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(3, 'Personal', 'personal', '2023-11-11 01:05:49', '2023-11-11 01:05:49');

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
(1, 2, 1, 'Distinctio repellat qui id occaecati aut eos.', 'odio-aut-totam-voluptatibus-perspiciatis', 'Nobis voluptatem doloremque ex dicta consequatur placeat illo culpa molestias quia qui magnam alias doloribus veritatis maiores non inventore aliquam quis.', '<p>Consequatur est nisi consequatur. Cum iste est ut quia ut eum. Architecto mollitia et alias ut est.</p><p>Exercitationem consequatur libero iste debitis saepe rerum mollitia. Praesentium eveniet id esse eaque occaecati quae quod quae. Explicabo non et iste.</p><p>Et sint quos illum maxime deserunt saepe quo. Architecto nemo est tempora a. Commodi ipsa atque voluptates rem delectus.</p><p>Voluptates quia nostrum blanditiis debitis consequatur. Assumenda excepturi ut quia tenetur sint enim cupiditate vel. Velit incidunt corrupti quia quia cum assumenda aperiam. Minus rem minus pariatur hic a dicta reiciendis.</p><p>Exercitationem impedit eaque provident et dolor. Consectetur soluta omnis omnis consectetur enim. Cumque quo cupiditate voluptates autem harum. Optio blanditiis ipsa labore aliquid.</p><p>Eum eos neque ut consequatur quod. Dicta laboriosam eveniet et culpa doloremque consequatur. Perspiciatis dolorum cumque ea doloribus ut quos exercitationem.</p><p>Ipsa adipisci est fuga laboriosam tempora accusamus voluptates dicta. In laboriosam et possimus reprehenderit quis.</p>', NULL, '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(2, 1, 1, 'Consectetur voluptas nostrum ut omnis.', 'eius-at-et-ipsum-aspernatur-in-ad', 'Quidem cumque voluptas repellat et enim sit quaerat corrupti dolor atque praesentium eos assumenda.', '<p>Et eaque aliquid et quasi non quis. Suscipit reprehenderit sed aut sit quis. Ut nihil quia officiis doloribus doloremque est.</p><p>Architecto expedita rerum ratione molestias mollitia molestiae. Illum consequuntur cupiditate excepturi impedit. Et et sit adipisci voluptate omnis non dolores. Dolores et quia cum dolor et.</p><p>Aperiam est neque tempore vero provident et eius. Libero ut est impedit esse. Tenetur tempore rem est porro aut. Fuga iste illum nam aperiam ut.</p><p>Cumque rerum deleniti consequuntur nihil ex possimus. Dolor dolores nihil aut voluptatibus eum quae.</p><p>Et vel dicta minus qui. Officia sed nobis enim sed. Ab est rerum labore est vitae. Odio provident nihil atque provident reiciendis alias nemo. Quibusdam vitae nemo a sed perferendis voluptas enim.</p><p>Quisquam facilis iusto doloribus nihil qui. Incidunt ducimus aperiam aut. Blanditiis reprehenderit dignissimos ullam.</p><p>Voluptates quia aspernatur sint in vitae fugiat nesciunt. Totam eveniet hic praesentium consequatur. Officia et culpa est molestiae dignissimos repellat expedita enim.</p><p>Dolor consectetur vel sed consequatur omnis corporis velit. Velit magnam soluta molestias enim numquam voluptatem ipsum itaque. Ducimus quasi et saepe voluptatem accusantium autem quo.</p>', NULL, '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(3, 2, 1, 'Illum eius tempora voluptates magni iste temporibus voluptates aliquid.', 'ratione-atque-soluta-omnis-ut-doloremque-qui-deserunt', 'Reiciendis omnis quia inventore dolor in ipsa quaerat autem quasi.', '<p>Reprehenderit laboriosam possimus perferendis rerum velit culpa nam. Optio ex cumque molestias qui aut voluptates omnis quo. Nam voluptas porro minima.</p><p>Est provident ea in porro natus deserunt non. Ut dolores incidunt doloremque est et ipsam. Ratione est praesentium ipsa saepe non est non. Ullam esse placeat molestias soluta vel quos reiciendis.</p><p>Eos et asperiores et voluptate dolor. Reprehenderit dolorem voluptatum odio cum harum. Cumque et eos aut assumenda. Quis ipsum laudantium sapiente delectus nemo.</p><p>Impedit optio fugit aut dolore assumenda aut fugiat. Minima aut iusto a incidunt atque reiciendis alias. Quod accusantium eos pariatur ea nostrum accusamus sit. Quibusdam ducimus sunt perferendis est ipsam hic.</p><p>Itaque qui ipsam accusamus inventore molestiae quis. Iure similique et ea nihil. Beatae voluptas sequi in culpa possimus nam. Eos provident nihil doloremque aspernatur esse voluptas et.</p><p>Nihil quo et vel quam. Omnis illum ut consequatur consequatur id non. Maxime aliquam velit aut ad et sapiente assumenda sunt.</p><p>Error voluptas nam quam officia. Veritatis ea et modi. Non velit temporibus voluptatem et error qui. Laudantium earum cupiditate esse voluptatum sit exercitationem doloremque. Id nostrum voluptate nam commodi.</p><p>Voluptates architecto odit nemo ullam debitis. Libero consequuntur labore aliquid vel repudiandae. Mollitia quis dolores ut alias itaque modi. Est eos nesciunt ipsum consequatur qui quia sed.</p><p>Est laudantium aut nobis corrupti. Nemo et nihil quod neque. Nihil non iste consequatur.</p>', NULL, '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(4, 2, 3, 'Veritatis architecto sunt alias totam culpa praesentium ut odio.', 'voluptatibus-culpa-nam-quia-vero', 'Accusamus magni veniam qui nisi nulla ut voluptatibus hic tenetur molestiae aspernatur consequatur facere nemo omnis cum nemo qui sed harum ut consequatur ipsa enim eum rerum nemo fuga error itaque ad dicta nesciunt.', '<p>Quia eaque rerum magnam earum pariatur. Qui omnis sit dolorem placeat. Consequatur nostrum sequi voluptate qui omnis.</p><p>Et minima voluptatibus nobis voluptatum. Nihil et magni sint dicta at non incidunt. Harum quos quia odit voluptas necessitatibus illo qui. Labore asperiores minima ut unde.</p><p>Enim quasi animi et nihil. Id sint sit earum officiis. Dignissimos aperiam qui perferendis laboriosam reprehenderit.</p><p>Atque voluptatem consequuntur voluptatem. Ex et repellat ad explicabo doloribus delectus consequatur. Aut quisquam voluptatem earum deleniti. Explicabo porro molestias quo aliquam soluta dolor.</p><p>Repellat nemo architecto et. Repellat sit et velit temporibus omnis. Quos ut autem dignissimos quis. Quo sed tenetur facilis nihil et quos sit.</p><p>Culpa et sit nemo voluptatum excepturi. Consequatur eum adipisci praesentium et error cupiditate. Eum deserunt et error nostrum cupiditate ut. Sint distinctio quae beatae nihil repellat.</p><p>Velit quibusdam ab ratione qui odit. Tenetur qui quos beatae sint corporis sint et. Aut facere maxime ut dolorem quibusdam accusantium dolores fugit.</p><p>Quis aliquid vero nulla earum laudantium dolor. Dolores et numquam nobis vero eius laudantium magni. Molestiae hic ab in ipsum fuga. Rerum quos maxime numquam atque sint eos hic.</p><p>Et non possimus rerum officia. Blanditiis commodi culpa quos quidem architecto. Dolores asperiores inventore ut perferendis quaerat dicta aut hic. Nam nihil similique inventore cumque.</p><p>Perspiciatis atque error quae ipsam ad. Itaque voluptatum autem quia blanditiis ut.</p>', NULL, '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(5, 1, 2, 'Facilis iusto et facilis incidunt at.', 'consequatur-sint-magnam-architecto-dolores-quia-architecto', 'Velit possimus laboriosam ut consequuntur vitae laboriosam blanditiis fuga corporis neque tempora quae recusandae voluptate repellendus cumque officiis soluta et.', '<p>Aliquid assumenda similique eum quo. Esse repellendus esse quia molestiae. Consequuntur dolorem et asperiores ducimus et.</p><p>Sit provident tempora quas id. Voluptatibus quis quo illum. Aliquam incidunt est libero inventore quis. Consequatur delectus quo pariatur quo quasi ad.</p><p>Possimus velit impedit aspernatur corporis vero voluptatem. Aut cum quasi quod excepturi officiis perspiciatis. Qui quos similique dignissimos non.</p><p>Et iusto excepturi sed aliquam quam qui. Aut nobis perspiciatis nostrum omnis impedit natus hic est. Commodi voluptatem maiores error qui nemo rem.</p><p>Laboriosam repudiandae et debitis maxime. Ipsam aperiam modi odio libero. Rerum voluptatibus accusamus quisquam aut sapiente.</p>', NULL, '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(6, 1, 1, 'Recusandae qui facilis delectus.', 'soluta-rerum-adipisci-magni-aut-repudiandae-at', 'Accusamus itaque ratione tempora iste aperiam exercitationem sequi qui sunt quibusdam fuga voluptatem consectetur.', '<p>Qui et qui deserunt enim quis. Quia sequi saepe eaque quae. Voluptates maxime laboriosam soluta et. Nobis odio doloremque eos qui consequuntur nemo itaque alias.</p><p>Reiciendis sed sit dicta consectetur dolorem veritatis. Nulla cupiditate sint voluptatem saepe doloremque aperiam. Optio officia quos sit saepe et. Repellendus illum sint rem recusandae quam ut fugit.</p><p>Distinctio voluptas voluptatem ducimus. Et natus illo vel quae minus est. Non provident voluptatem explicabo ut.</p><p>Qui dolorem animi aspernatur qui mollitia. Nemo non cum voluptatem in.</p><p>Ea est reiciendis vero et ut odio eos. Ea est expedita vitae.</p><p>Eius ut et sit dolores corrupti. Et eius quisquam quam sed non et. Velit rerum facilis facilis. Est provident quia et sed aut delectus fugiat. Aut qui autem ullam ab unde veniam quos ipsa.</p><p>Reiciendis est modi et omnis. Vel iusto quasi omnis unde ut ratione sit. Qui molestiae qui nesciunt et eius qui cumque. Voluptas voluptatem minima neque fuga est sed veniam nemo. Molestias porro quos atque qui perferendis ut et.</p>', NULL, '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(7, 2, 3, 'Quis dicta.', 'dignissimos-maxime-veniam-rerum', 'Ipsam nemo deserunt minus laboriosam et recusandae et mollitia labore ut quibusdam minus tempora esse.', '<p>Dolorem quis molestiae necessitatibus. Nesciunt neque voluptatem et. Dolores odio omnis eum quam nulla similique sed.</p><p>Dolor sint ut explicabo delectus architecto occaecati. Voluptatem saepe omnis in sed delectus. Amet id omnis ut sunt in assumenda. Aut et qui eveniet sed quia velit minus tempora.</p><p>Eum culpa modi eos laboriosam. Labore sed at ratione qui dolores. Fugit rem non maxime.</p><p>Ut qui et id et. Velit ut voluptatem cupiditate quod voluptates ut. Sint est dolor nostrum quaerat. Quibusdam est dicta dolorem.</p><p>Repellat adipisci veritatis ut dolor. Aliquam cum repellat vero temporibus. Molestiae enim atque quaerat vel possimus deserunt adipisci.</p><p>Facere culpa eaque quod quo recusandae quas voluptas. Laborum assumenda quis consequatur commodi qui soluta. Qui quis libero laudantium ab sequi porro. Sit voluptatem repudiandae eaque distinctio sed itaque dignissimos aut.</p><p>A excepturi libero aliquam laboriosam recusandae modi. Facilis veniam adipisci sit corporis aut odit quis veniam. Vel libero aut qui est. Est corrupti dolor qui nulla cumque voluptatem esse.</p><p>Delectus consequatur omnis quia rerum. Quae pariatur distinctio rerum similique cumque. Et ipsa deserunt rerum.</p><p>Quis magni eos consectetur sit. Eaque consequatur suscipit nulla asperiores nihil sed. Neque cumque nam ducimus non.</p>', NULL, '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(8, 1, 3, 'Fuga soluta qui alias necessitatibus qui nam quia.', 'perferendis-non-ab-delectus-esse-sed', 'Qui atque sed voluptas minus suscipit eos odit molestiae rem excepturi omnis impedit vel consectetur autem sit recusandae quas qui qui modi adipisci totam perferendis et autem.', '<p>Consequatur est odio at. Rem et natus quam sapiente aut non. Libero veniam illum non et sapiente vero sint.</p><p>Cum et et dolorum mollitia sunt veritatis. Veniam mollitia cumque corrupti velit. Veritatis quas dolore ut accusantium aut quisquam dignissimos.</p><p>Voluptate provident nisi occaecati aut quis mollitia nobis. Aut eum mollitia ut non. Expedita nemo aut aspernatur commodi reiciendis. Consequatur ut totam sunt unde.</p><p>Quia ut ipsa perspiciatis sit. Architecto sequi vero ipsa deserunt illo quod consequuntur. Ut sit modi neque beatae quae velit iure. Corrupti inventore accusantium tenetur laborum.</p><p>Voluptas sit libero dignissimos illum. Voluptates ipsum id dolorum similique a omnis dolorum.</p><p>Quam sit quam voluptas a delectus officiis dolorem. Pariatur labore magnam soluta ea odio. Inventore et qui non eveniet quaerat molestias rerum. Id velit magnam reprehenderit inventore in nostrum.</p><p>Quam eum voluptas est et explicabo veniam voluptate. Eveniet totam quibusdam quod iure reiciendis. Nulla cum dolor iusto ea. Qui sit ut laudantium eum molestiae natus quas.</p>', NULL, '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(9, 2, 3, 'Et aut iste repellendus et corporis cumque porro sint et.', 'ut-et-pariatur-earum-similique', 'Cum sit natus inventore in sapiente iure voluptatem dignissimos temporibus beatae expedita dolores omnis hic numquam omnis.', '<p>Et eum animi nihil vitae ad ex maiores laudantium. Est eos accusamus ex nisi ut quo. Et consequatur sit atque ipsum ut. Laborum commodi rerum repellat.</p><p>Aliquid impedit architecto nisi dignissimos qui. Consectetur est qui accusamus. Voluptatibus dolor et sit nihil aspernatur omnis.</p><p>Quia veniam quo ea quia id harum. Labore et consequatur aliquid vero aspernatur. Delectus eum voluptas eos. Molestiae in harum debitis ratione aliquid libero.</p><p>Facere qui corporis nihil id aut. Voluptatibus eum veniam commodi consequatur. Cupiditate voluptates dolorum sed recusandae. Deserunt optio quia sequi voluptatum qui iure accusantium placeat.</p><p>Culpa quia quae qui non voluptas aliquam eaque. Saepe dicta error assumenda quis deleniti et tempora. Aperiam unde repudiandae voluptatem suscipit.</p>', NULL, '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(10, 1, 2, 'Sunt a explicabo necessitatibus ut sequi.', 'quos-aut-et-molestiae-atque-voluptas-inventore', 'Non dicta laborum occaecati consectetur dolorem omnis.', '<p>Consequatur et optio omnis. Id quia autem corporis voluptatibus minus at. Qui et rerum et facilis.</p><p>Et eum vel architecto magnam eos nobis dolorum ipsa. Dolor sed vel praesentium deserunt consequatur. Nostrum non ipsum molestiae fugit magni accusamus doloremque porro.</p><p>Dolor et explicabo quibusdam veritatis fugiat. Ipsa cum et est sunt. Molestias qui est at sint saepe qui. Vitae quo dolores consectetur voluptatibus enim.</p><p>Fuga iusto facere labore ex sed. Non rerum et ut dolorem iste. Rerum et libero dolores voluptas perferendis voluptatem.</p><p>Debitis exercitationem maiores repudiandae facere fuga magnam. Ea repudiandae voluptas aut dolore quibusdam. In excepturi quis quibusdam sequi repellendus magnam. Ratione esse asperiores voluptatem voluptatibus laborum soluta voluptatum dolorem.</p><p>Eveniet non explicabo facilis excepturi et dicta. Velit consequatur distinctio iste doloribus. Id temporibus sunt ratione dignissimos ex et.</p><p>Consequatur laudantium sit in necessitatibus cumque aut. Sequi praesentium harum ut voluptas provident qui. Qui cupiditate qui omnis sunt aliquam. Laborum molestiae architecto illum numquam magnam fugit.</p>', NULL, '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(11, 2, 2, 'Minima quia.', 'porro-modi-officiis-et', 'At ut autem aut incidunt laudantium quisquam nihil quod quo quidem officiis magnam.', '<p>Sunt nam ut quibusdam porro corrupti. Doloribus iste eius molestias culpa. Ut quis quis laborum sit consequuntur minima.</p><p>Laudantium eos debitis itaque amet ea et numquam. Enim aut sit nisi.</p><p>Nam quasi enim veniam beatae molestias. Temporibus praesentium dolores quia vel saepe ut. Quis voluptas omnis asperiores fugiat et est.</p><p>Rerum tempora fuga dicta voluptate vel. Id commodi rem vel ut dolor et quia. Atque eligendi assumenda maxime voluptatibus dolor repellat quia fugit.</p><p>Et autem repudiandae sit omnis ab laborum. Et molestias quia est consequatur tempora. Ut commodi nobis aut cumque. Quod qui blanditiis asperiores natus.</p><p>Et ipsum qui quo porro quibusdam aspernatur. Optio dolorum voluptatem quisquam voluptatem. Est in doloribus vitae laborum assumenda.</p><p>Corrupti dolor amet ut minima et eligendi. Dolores recusandae iure odit. Nostrum adipisci in in quo est alias. Sit vel adipisci quod exercitationem.</p><p>Earum voluptatibus eveniet qui voluptatibus. Inventore voluptatum nam ut provident. Nihil qui mollitia consectetur facilis qui consequatur aut. Aut repellat animi fuga velit in reiciendis.</p><p>Impedit id facilis magni repellat. Qui provident iste qui. Architecto cumque et quo facilis suscipit reiciendis ea.</p>', NULL, '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(12, 2, 3, 'Explicabo officiis.', 'sed-unde-sit-illum-dolorem-possimus-in-beatae', 'Ducimus ut et accusantium sunt numquam beatae ut nihil magnam.', '<p>Quia laboriosam architecto reprehenderit dolorem. Tempora dolore blanditiis et ut incidunt. Laboriosam facere voluptas et ipsa officiis.</p><p>Corporis maiores delectus ut doloribus modi et optio. Fugit quis reprehenderit sequi a. Qui omnis minima quia.</p><p>Reprehenderit consequuntur veniam et maxime. Doloremque aut enim sed cum. Ad corporis tempore vel quis sint quo.</p><p>Voluptas voluptatibus facere excepturi qui enim sed. Ex natus consequatur voluptas veniam consequatur dignissimos assumenda. Eveniet nostrum cum iusto. Aliquid velit similique at similique eos dolorum qui.</p><p>Consequatur esse dolor voluptate minima. Magnam iste magnam cupiditate deserunt et nihil architecto natus. Et fuga saepe doloribus rerum facilis. Ducimus omnis quaerat est voluptas.</p><p>Voluptatem quisquam est et quidem. Vitae aut commodi dolore architecto. Voluptates hic eveniet ab iure quaerat.</p><p>Possimus quos doloremque eligendi. At quos magnam at accusantium. Odit ratione fuga assumenda maiores minus.</p><p>Hic assumenda et minima unde veniam suscipit eos itaque. Non nesciunt voluptatem deserunt voluptas rerum voluptas quia. Quisquam minima qui quis aliquam sed. Ut veritatis facere vel dignissimos.</p><p>Excepturi et sint quo laboriosam qui quae. Nihil adipisci sed voluptate quis delectus blanditiis. Facere eum eos sint quis sed.</p>', NULL, '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(13, 2, 3, 'Libero veniam nemo impedit minus.', 'in-rerum-praesentium-aperiam-repudiandae-reiciendis-veniam-magni', 'Cupiditate ut ut delectus dolores dolorum est voluptatem sed aperiam consequuntur asperiores et fuga quaerat error itaque perferendis eius consequatur.', '<p>Optio doloribus quasi qui. Quae et perspiciatis rem nihil culpa dignissimos consequuntur. Quo unde sint corrupti ducimus. Rerum ut veritatis aspernatur voluptatum eum provident.</p><p>Inventore accusantium dolorum et sapiente deleniti voluptatum est. Sequi veritatis ut ut. Et dolorem dolore ut sed magni. Aut quis id nostrum et unde molestiae.</p><p>Culpa nam blanditiis occaecati aut sit. Odio est consectetur omnis alias doloribus rem aperiam.</p><p>Inventore recusandae id at. Facere id omnis pariatur beatae rem. Provident sapiente quaerat facere sint rerum ipsam quasi.</p><p>Incidunt dolores ab libero sunt. Rerum et aut distinctio doloribus quasi.</p><p>Quo quis rem perspiciatis velit id maxime sapiente. Consequatur aperiam sunt perspiciatis. Laborum qui voluptatem eum molestiae. Consequatur quos earum sit nam officiis placeat nobis dolor. Veritatis sed consectetur quidem distinctio eligendi id facere.</p><p>Vero delectus amet sunt suscipit vitae occaecati ipsa sit. Earum aperiam nobis temporibus. Repellendus atque minus pariatur.</p><p>Nulla nisi facilis ad est expedita iusto eum et. Dignissimos neque debitis laborum velit consequatur vero qui. Provident veritatis fugit et dolorem sed eum. Dolor sunt velit at quasi vel est.</p>', NULL, '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(14, 1, 1, 'Nam est eum ratione dolores error dolor.', 'voluptatem-accusantium-ut-qui-expedita-aliquam', 'Odio eos aut impedit animi sequi natus cum aperiam qui enim quo aut iusto placeat sapiente et odio ut repudiandae at facere optio eligendi omnis unde cupiditate sunt modi.', '<p>Ad est explicabo tempore sed laboriosam eum enim. Eaque sed velit deserunt atque quibusdam. Consequatur officia et aliquid nihil voluptatem.</p><p>Alias eius inventore adipisci voluptate dolores. Sed blanditiis quo distinctio assumenda harum quisquam ea. Natus vel vel ut eum aliquid.</p><p>Excepturi totam et consequuntur amet. Qui officia architecto sapiente est rerum molestias incidunt voluptatum. Et molestiae non similique non nam et blanditiis voluptatem.</p><p>Et corporis neque voluptatem ducimus minima debitis ut. Ea architecto unde nam et quo ea. Quasi et voluptates placeat tempore.</p><p>Molestias minima voluptate ut veritatis expedita maiores. Aliquam doloribus pariatur voluptas ratione reiciendis. Non vel porro sed dolorem. Consequatur omnis beatae quibusdam quia rerum corrupti enim similique.</p>', NULL, '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(15, 1, 2, 'At labore vitae officiis.', 'quaerat-fugiat-molestiae-nam-natus-iure-blanditiis-fugit', 'Ut sit mollitia et ab doloremque repellendus rerum provident neque omnis voluptas veritatis aut dolore quia molestiae repellendus aperiam harum aut odit sapiente velit et.', '<p>Quas amet voluptatum mollitia voluptatem exercitationem fugiat qui odit. Eaque velit exercitationem et sit. Qui ab libero consequatur.</p><p>Necessitatibus ea quia quia at maxime eaque et. Vel ut autem temporibus ut id tenetur nulla. Ut odio libero rerum aut sed aut tempore. Voluptatem nisi distinctio adipisci est.</p><p>Aut unde hic aut. Minima molestias at dicta et officia culpa. Labore enim repellendus tempore id amet consequatur expedita. Dolorem quod porro excepturi distinctio qui nam quo. Quisquam deserunt expedita sapiente cumque error nulla.</p><p>Et aperiam et illum saepe aut. Commodi magnam cum quia enim ut enim voluptate sunt. Aspernatur ullam commodi laboriosam ab aliquid est quos. Debitis distinctio provident consequuntur ut.</p><p>Tenetur ducimus sunt animi. Ab fugit omnis veniam.</p><p>Et non adipisci corporis impedit accusamus deserunt. Consequatur architecto dolorum qui alias omnis qui. Est pariatur eum saepe accusantium et laudantium. Pariatur id velit rem. Omnis debitis libero est ipsum nobis.</p>', NULL, '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(16, 1, 2, 'Optio numquam quia aut repellendus voluptatem occaecati.', 'ut-blanditiis-explicabo-omnis-et-qui-id', 'Voluptates eum tempora odit non est corrupti vel dolorem accusantium natus voluptatum officia in non accusantium non.', '<p>Sint ut esse at. Nemo dolores aliquid numquam explicabo minus deleniti. Vero sequi est quisquam eum provident enim. Numquam aut sunt aut atque eum fugiat architecto inventore.</p><p>Dolore error illum qui esse. Aut laudantium consequatur voluptatum nam et itaque deleniti. Sit et labore voluptates minus veniam.</p><p>Autem nisi tempore omnis numquam delectus ab repellat. Et nam veritatis at voluptas qui aliquid. Nobis dicta perspiciatis optio rem nam. Sed at voluptatibus dolores quae veritatis officiis non nam.</p><p>Ut occaecati voluptatem magni sunt veritatis quidem veritatis voluptatum. Ipsam corrupti dolor quis exercitationem maxime. Placeat soluta similique porro esse consectetur ut.</p><p>Amet dolore alias quibusdam maiores. Quisquam est minima excepturi ducimus sequi consequatur. Dolores et officia velit sit eligendi dolores optio. Debitis consequatur et quis.</p>', NULL, '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(17, 2, 3, 'Officia qui recusandae fugiat tempora perspiciatis ut.', 'sed-vero-ut-molestiae-nemo-laboriosam-magni', 'Qui aut ut voluptatibus impedit omnis impedit eaque aut repudiandae sit nulla in omnis error cum.', '<p>Consequuntur cupiditate libero iste ut consectetur autem maxime. Repudiandae ratione amet quo rem ut architecto quos. Eius laudantium nihil modi beatae culpa dolor ut.</p><p>Sequi autem id nostrum. Laborum non et laborum commodi voluptas qui. Voluptas enim ipsum quae qui iure unde aut.</p><p>Labore non natus ipsum et repudiandae sapiente quia. Et quia in laborum.</p><p>Consequatur suscipit earum sint consectetur. Eum vel qui nihil at.</p><p>Mollitia et voluptatem adipisci quam. Debitis vero tempore autem unde officiis pariatur ex. Et maiores velit error optio nisi nostrum dolorem. Veniam dolores sint voluptas ut mollitia.</p><p>Et rem inventore repellendus voluptatem cupiditate. Error expedita vero fugiat fuga.</p><p>Dolore dolorem eos ut ipsam ad. Officia consequatur mollitia officiis ipsum sed quidem. Voluptatum sint sint minima iste provident ratione nihil labore. Est sunt non harum sint enim quaerat odio qui.</p><p>Delectus iure nihil accusantium consequatur ut rem molestiae excepturi. Officiis commodi vel sit corrupti. Delectus aliquid eum temporibus quidem.</p><p>Doloremque quia deleniti harum explicabo veritatis. Eos in iusto consequuntur voluptatem impedit illum. Quam sit suscipit et impedit et.</p><p>Sed earum sit at aut. Tempore maxime voluptas quaerat esse et minus. Eos placeat minima et dolore. Aspernatur fugit sit sed ipsum.</p>', NULL, '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(18, 1, 3, 'Sapiente ea excepturi maiores qui eligendi cumque.', 'repellendus-eos-temporibus-qui-quia-deleniti-earum-facere-sed', 'Quo molestiae iure quia similique eaque qui accusamus natus non dicta dolores possimus delectus dolorum autem dolorem libero ut et maiores officia rerum corrupti.', '<p>Ab iste qui voluptas dolore unde veritatis cupiditate. Laborum minima molestias corrupti dignissimos doloremque dolorem. Quibusdam cupiditate aut reprehenderit aliquam repudiandae sed. Quia rerum facilis illo sit dolorem.</p><p>Rem eos fuga tenetur fugit non tempore inventore reiciendis. Quo sint ab recusandae consequatur itaque hic et quae. Velit reprehenderit voluptas voluptas.</p><p>Eum libero inventore sint a ab non sed. Sint at vel molestias voluptate quia rerum dolores. Eum incidunt incidunt voluptates rerum et. Quisquam hic et minus voluptatem impedit. Deserunt nulla pariatur aut nihil incidunt velit aut eum.</p><p>Accusantium rerum eaque quaerat quasi enim. Non at adipisci eligendi temporibus repellendus. Quod asperiores sequi culpa. Labore doloribus doloremque ut delectus aspernatur iste.</p><p>Quia quisquam sapiente labore in distinctio eveniet rerum. Quia est perferendis necessitatibus et. Nemo fugiat voluptatem sapiente delectus amet ut ex.</p><p>Tempore asperiores odio voluptatem consequatur quibusdam. Consectetur omnis voluptate dolores illum. Eum rerum rerum aperiam eos velit vitae. Culpa provident non exercitationem.</p><p>Explicabo voluptas ex modi et nemo. Saepe ullam eligendi iure qui ea eum. Et consectetur et et ea libero ipsam.</p><p>Asperiores quos et provident ut similique recusandae ad molestiae. Odio doloribus quo sit quibusdam nisi tempore rerum sunt. Incidunt provident voluptas voluptate minus quaerat omnis eaque blanditiis. Dolore et culpa unde atque consequatur et est distinctio. Temporibus exercitationem et asperiores nostrum.</p><p>Laudantium natus praesentium ut quod minima. Fuga sed soluta aperiam sed impedit ab. Fugit qui nesciunt exercitationem qui eum eligendi.</p>', NULL, '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(19, 1, 2, 'Quia consequuntur dolor reiciendis illum eos modi voluptate.', 'ad-voluptatum-recusandae-magni-aspernatur-dolores-est', 'Totam amet odio voluptas et voluptates autem quisquam dolor at nesciunt ut.', '<p>Voluptatem porro asperiores eveniet quod explicabo. Aut itaque temporibus earum quod dolorem. Nostrum veniam quia ut quidem. Sint quam possimus qui illo tempora pariatur.</p><p>Excepturi aut corrupti pariatur veniam. Nihil id id similique quia. Cum quia aut ut.</p><p>Doloremque non adipisci voluptatem sed. At ut tenetur dignissimos facere. Voluptatem esse amet eos.</p><p>Officiis veritatis dolores aut aut laboriosam soluta sequi. Repellat explicabo ab eos corrupti eveniet ea. Minus labore fugit hic aut eveniet iste adipisci placeat.</p><p>Quisquam nulla alias tempore sint minus beatae assumenda harum. Omnis expedita odio explicabo consequatur. Est ea ut molestias quia doloremque qui iure.</p><p>Et esse enim repellendus corrupti officia libero et. Esse id quos dolorem temporibus recusandae. Illum natus consequuntur pariatur deleniti. Aut et culpa eum adipisci in.</p><p>Laboriosam molestiae maiores id facilis molestias facere eius numquam. Facilis optio numquam inventore amet harum doloribus consequatur asperiores. Cum excepturi qui qui nulla ut. Consequatur consequatur quia est consequatur.</p><p>Sint esse veniam qui et assumenda quis. Odio dolorum voluptatem quos sed. Unde magni et enim aut necessitatibus. Cumque deserunt sit velit voluptatibus ratione velit.</p><p>Accusamus laboriosam molestiae enim beatae. Sit amet vel officiis commodi. Voluptatem aut quibusdam explicabo.</p><p>Iste sed asperiores delectus voluptatum labore. Aperiam quia doloribus voluptatem autem possimus ut qui et. Consequatur quis asperiores cum et sequi veniam. Impedit similique aliquam dolore quae eius sed. Architecto impedit temporibus facilis iusto exercitationem veniam enim.</p>', NULL, '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(20, 1, 3, 'Atque sed vitae cupiditate.', 'a-enim-quod-nam-illo-vel', 'Vel aut quam omnis reprehenderit et ratione labore ipsam corrupti nam tempora laudantium similique ea.', '<p>Ipsum velit unde adipisci nihil adipisci. Mollitia quibusdam at aut. Consequatur accusantium sunt perferendis qui ut autem.</p><p>Harum enim eveniet sapiente ipsam exercitationem. Sed eveniet sit voluptas exercitationem tempore. Odio omnis totam et quod.</p><p>Eveniet est enim nihil commodi odio eius. Enim inventore quae distinctio. Consectetur placeat ducimus odio atque molestias dolores nobis modi.</p><p>Possimus natus quia autem et eligendi quod sed. Distinctio exercitationem omnis et voluptate ad tempora. Aut et molestias sint. Accusamus aspernatur sed qui incidunt dicta expedita ea dolores.</p><p>Dignissimos eligendi qui ea velit culpa dolores ea. Est consequuntur id modi. Consequuntur facilis at molestias reprehenderit cumque consequatur. Autem qui impedit nobis ad.</p><p>Ipsum assumenda voluptate sint cum dolorem. Consequatur voluptas consequatur qui est est est quidem. Dolorem quo dolorem quas provident omnis ipsa deleniti asperiores.</p><p>Deleniti ut qui rerum eligendi suscipit provident odit. Pariatur consequatur et dolor voluptatibus. Et vitae non saepe fugit. Harum libero et voluptas quis nostrum consequuntur.</p><p>Ut et dolore nobis minima et porro porro. Maxime aliquid aut sunt voluptas necessitatibus deleniti eos. Id quia nesciunt tenetur vel omnis dolore laboriosam totam.</p>', NULL, '2023-11-11 01:05:49', '2023-11-11 01:05:49');

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
(1, 'Eman Ramadan', 'firmansyah.michelle', 'opung.yuliarti@example.org', '2023-11-11 01:05:49', '$2y$12$3lZkyM2OQu8S/w8ytt4voOKbh1zRzEk/mGAPToXTtF5VZgLxp0iLa', 'bCRuHo8uCT', '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(2, 'Samiah Hartati', 'mustofa.kambali', 'baktiono.hassanah@example.net', '2023-11-11 01:05:49', '$2y$12$3lZkyM2OQu8S/w8ytt4voOKbh1zRzEk/mGAPToXTtF5VZgLxp0iLa', 'uXwyEbXRO8', '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(3, 'Fitria Sabrina Maryati M.TI.', 'juli.widiastuti', 'ani81@example.net', '2023-11-11 01:05:49', '$2y$12$3lZkyM2OQu8S/w8ytt4voOKbh1zRzEk/mGAPToXTtF5VZgLxp0iLa', 'K8G8n64o8f', '2023-11-11 01:05:49', '2023-11-11 01:05:49'),
(4, 'Fowaz', 'alvarez29', 'fowazalvarez@gmail.com', NULL, '$2y$12$DOtUOcd/BXTjktIB5QDtEerYuGYshOQ8dFRIf5SOduV5QqvuBrj0e', NULL, '2023-11-19 06:27:21', '2023-11-19 06:27:21');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
