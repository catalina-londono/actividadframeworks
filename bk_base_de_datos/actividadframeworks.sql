-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-09-2024 a las 00:54:04
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `actividadframeworks`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `foto` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `nombre`, `descripcion`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Luther Lang', 'Blanditiis porro molestiae voluptas beatae est minus voluptas aliquid aut doloremque.', 'Beatae veniam et molestias maxime voluptate impedit omnis ipsum sit fugit dolorem dolores vel nihil corrupti dicta et et itaque repellendus hic in maiores velit et sed voluptatem ut aperiam eum dolores quis vitae asperiores consequuntur dolores error non voluptatem eligendi quisquam quo ut omnis dolore ullam magni aut autem hic atque ipsa commodi occaecati enim enim aut optio eligendi in iste provident quis dolorum.', '2024-09-24 00:49:25', '2024-09-24 00:49:25'),
(2, 'Dr. Maryjane Homenick', 'Earum earum repellat voluptatem quibusdam non repudiandae ut error placeat unde ut sequi labore non est assumenda totam.', 'Cum nisi ut qui qui rerum aut qui molestias perspiciatis delectus qui delectus ut pariatur et quae eos commodi velit est quisquam eveniet aliquid sunt ad et unde iste et est tempora optio accusamus omnis ut aut laudantium deleniti molestiae iste nisi ab aperiam ipsam quia numquam reiciendis non nihil quibusdam sint voluptas aut veniam aut et ut ut sit nemo ut amet amet vero numquam ipsa beatae aut qui ex tenetur maiores non vitae eaque excepturi eaque illum odio.', '2024-09-24 00:49:25', '2024-09-24 00:49:25'),
(3, 'Ms. Zaria Klein MD', 'Provident omnis sequi.', 'Cumque culpa facilis qui qui optio ullam a quis porro consequuntur est quod nihil occaecati quia illo error id eos ut quo minus et expedita quia suscipit maiores delectus non vel voluptates qui ad ab temporibus sit voluptatum tempora ex ut veniam quo similique quaerat fugiat accusamus voluptatem voluptatem et sint officia minus voluptas non ipsa ex veniam non enim nisi provident ut qui fuga omnis iure nulla possimus molestias commodi qui autem sit quidem consequatur eum atque sed ut aut quidem similique voluptas quos ex odit explicabo ratione fugit hic et illo dolores veniam dicta eligendi dolorem voluptates rerum voluptates ut sit voluptatibus id omnis at reprehenderit odio magnam ipsa eaque omnis ipsam voluptatum sint id nemo ipsum omnis tempora ad magnam est aut corrupti repudiandae quidem omnis eius vitae et rerum aut non totam quod error tenetur quidem rerum perferendis ut animi.', '2024-09-24 00:49:25', '2024-09-24 00:49:25'),
(4, 'Luigi Kertzmann', 'Quod dolorem nesciunt nesciunt commodi illo et deserunt quae.', 'Reiciendis praesentium adipisci temporibus incidunt voluptatem ratione harum ea nostrum quaerat enim quasi dolor aut nulla sed veniam vel ut dolor labore provident aut in libero omnis numquam magni qui et unde rerum ipsa fuga.', '2024-09-24 00:49:25', '2024-09-24 00:49:25'),
(5, 'Vincenza Simonis PhD', 'Numquam dolores adipisci tenetur ut quo temporibus aliquam.', 'Vel architecto quae enim amet possimus esse eveniet optio sapiente perspiciatis dolorem nostrum molestias aspernatur ut vel nemo dolorem fuga laborum laudantium pariatur mollitia amet cumque dolore a fuga est voluptate et quo ea quo eveniet exercitationem ducimus nam tempore aut autem inventore sapiente accusantium itaque et voluptatibus enim quia nam eum aut mollitia optio labore consectetur sed et occaecati quidem commodi sequi voluptate aut voluptatibus maiores delectus debitis dolorum nobis iusto quisquam dolorem non ut placeat illo atque voluptatem vel iusto quasi non ut similique provident illo eveniet maiores delectus enim laudantium est non aut quibusdam rerum.', '2024-09-24 00:49:25', '2024-09-24 00:49:25'),
(6, 'Dr. Loy Lynch II', 'Possimus reiciendis rerum commodi neque voluptas necessitatibus eum minus quod sed rerum aliquid dicta earum et natus aut enim qui eligendi corrupti dolores voluptatem.', 'Veritatis quo est blanditiis est quam aspernatur ad sit nihil dignissimos a accusamus eligendi aut eos porro vel sit dicta velit sed quidem blanditiis accusamus id in qui animi magnam labore vitae ad pariatur esse excepturi reiciendis nam sint cupiditate id distinctio quo porro provident qui et quam enim sapiente id vel sunt iste architecto est quia ipsum nisi ut reiciendis tempore harum perferendis atque esse alias vel fugiat aspernatur et quia omnis ratione soluta quia veniam.', '2024-09-24 00:49:25', '2024-09-24 00:49:25'),
(8, 'david', 'viajes.', 'Beatae', '2024-09-24 00:49:25', '2024-09-29 01:41:52'),
(9, 'Viajes de oseo', 'Blanditiis porro molestiae voluptas beatae est minus voluptas aliquid aut doloremque.', 'Beatae veniam et molestias maxime voluptate impedit omnis ipsum sit fugit dolorem dolores vel nihil corrupti dicta et et itaque repellendus hic in maiores velit et sed voluptatem ut aperiam eum dolores quis vitae asperiores consequuntur dolores error non voluptatem eligendi quisquam quo ut omnis dolore ullam magni aut autem hic atque ipsa commodi occaecati enim enim aut optio eligendi in iste provident quis dolorum.', '2024-09-24 03:34:00', '2024-09-24 03:34:00'),
(10, 'Viajes de cultura', 'Blanditiis porro molestiae voluptas beatae est minus voluptas aliquid aut doloremque.', 'Beatae veniam et molestias maxime voluptate impedit omnis ipsum sit fugit dolorem dolores vel nihil corrupti dicta et et itaque repellendus hic in maiores velit et sed voluptatem ut aperiam eum dolores quis vitae asperiores consequuntur dolores error non voluptatem eligendi quisquam quo ut omnis dolore ullam magni aut autem hic atque ipsa commodi occaecati enim enim aut optio eligendi in iste provident quis dolorum.', '2024-09-24 04:12:37', '2024-09-24 04:12:37'),
(11, 'Viajes de cultura', 'Blanditiis porro molestiae voluptas beatae est minus voluptas aliquid aut doloremque.', 'Beatae veniam et molestias maxime voluptate impedit omnis ipsum sit fugit dolorem dolores vel nihil corrupti dicta et et itaque repellendus hic in maiores velit et sed voluptatem ut aperiam eum dolores quis vitae asperiores consequuntur dolores error non voluptatem eligendi quisquam quo ut omnis dolore ullam magni aut autem hic atque ipsa commodi occaecati enim enim aut optio eligendi in iste provident quis dolorum.', '2024-09-24 04:12:51', '2024-09-24 04:12:51'),
(13, 'david', '1.', 'Beatae', '2024-09-29 03:48:44', '2024-09-29 03:50:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 3, 1, NULL, NULL),
(3, 6, 1, NULL, NULL),
(4, 9, 1, NULL, NULL),
(5, 11, 1, NULL, NULL),
(6, 6, 2, NULL, NULL),
(8, 10, 2, NULL, NULL),
(9, 11, 2, NULL, NULL),
(10, 12, 2, NULL, NULL),
(11, 4, 3, NULL, NULL),
(12, 6, 3, NULL, NULL),
(13, 7, 3, NULL, NULL),
(14, 9, 3, NULL, NULL),
(15, 11, 3, NULL, NULL),
(16, 1, 4, NULL, NULL),
(17, 4, 4, NULL, NULL),
(18, 6, 4, NULL, NULL),
(19, 9, 4, NULL, NULL),
(20, 10, 4, NULL, NULL),
(21, 2, 5, NULL, NULL),
(22, 3, 5, NULL, NULL),
(23, 5, 5, NULL, NULL),
(24, 6, 5, NULL, NULL),
(26, 1, 6, NULL, NULL),
(27, 3, 6, NULL, NULL),
(28, 4, 6, NULL, NULL),
(30, 11, 6, NULL, NULL),
(36, 1, 8, NULL, NULL),
(37, 4, 8, NULL, NULL),
(38, 5, 8, NULL, NULL),
(39, 7, 8, NULL, NULL),
(40, 10, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_23_174752_create_posts_table', 1),
(6, '2024_09_23_174859_create_categories_table', 1),
(7, '2024_09_23_175155_create_category_post_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` longtext NOT NULL,
  `autor` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `titulo`, `contenido`, `autor`, `created_at`, `updated_at`) VALUES
(1, 'Geo Bode', 'Iure consectetur culpa rerum aut voluptates numquam vel maiores maiores sit est sit ipsum velit quos rerum aut consequatur quidem consectetur provident enim exercitationem voluptatem recusandae debitis sit error sint tempore nihil sequi perspiciatis pariatur ducimus culpa natus placeat enim accusantium.', 'Pansy Little', '2024-09-24 00:49:25', '2024-09-24 00:49:25'),
(2, 'Mathilde Pouros', 'Culpa in nobis est cupiditate cum aut iusto tempora facere ut facilis atque magni dolorum rerum incidunt cum omnis aliquid numquam voluptas beatae alias vitae omnis voluptas totam voluptatum libero eaque maxime amet voluptate autem officiis repellendus veniam deleniti voluptas rerum quia accusantium sint est quidem neque occaecati tempore itaque doloremque rerum iusto beatae quibusdam ex id minima et est nisi maxime ipsum veniam laudantium nostrum odio vero nemo dolor qui saepe nihil adipisci incidunt consequatur sed qui consectetur provident necessitatibus consequuntur similique beatae sed voluptatem non in voluptas saepe minima laboriosam qui deserunt illo et id ut ullam architecto maxime aut nesciunt aspernatur est consequatur error et aut nam est consequatur qui quis necessitatibus vel sed itaque voluptatum ut architecto sit reprehenderit occaecati earum reiciendis cumque consequatur ipsum saepe eum modi ullam est eaque dolor ut nihil molestiae nisi minus assumenda.', 'Mrs. Mya Kassulke V', '2024-09-24 00:49:25', '2024-09-24 00:49:25'),
(3, 'Prof. Boris Moore', 'Odio rerum voluptas unde dicta quasi consequatur quas pariatur sint alias at velit eos facilis et.', 'Lorenzo Dietrich', '2024-09-24 00:49:25', '2024-09-24 00:49:25'),
(4, 'Prof. Leanne Cruickshank II', 'Doloremque sapiente qui qui sequi animi quisquam qui voluptatem sint a id cum aliquid placeat qui corporis dolorem cumque nisi fugiat error eligendi distinctio quae voluptate sit possimus maxime magnam a omnis qui vero nisi voluptate eum voluptatem ut occaecati possimus at recusandae omnis quidem officia ratione praesentium dolorem at omnis quia sunt enim quisquam nam est dignissimos quidem nam iusto eos necessitatibus eius iure perferendis vel inventore nihil at quidem quas fugiat cupiditate quia aut at voluptatibus sequi reprehenderit occaecati explicabo eum earum blanditiis ea rerum voluptatem voluptas aut qui officiis unde atque qui alias perferendis expedita enim et sequi ipsum quis voluptas autem aut reprehenderit quisquam atque natus nam illo earum atque sit eum sed quia sint ullam non libero voluptas doloremque.', 'Prof. Barry Waters Jr.', '2024-09-24 00:49:25', '2024-09-24 00:49:25'),
(5, 'Dr. Nick Bashirian Jr.', 'Officiis officiis culpa aut doloribus aspernatur vero vel quia minus maxime modi hic voluptates illo minus est rerum natus nam alias id alias culpa voluptas consequatur velit est earum molestiae dolor vel tempora earum iure perspiciatis optio quia quibusdam voluptate voluptatum cupiditate illo doloribus necessitatibus officiis eos adipisci vero aliquid blanditiis eos eaque similique aliquid hic ut voluptas velit ducimus optio qui iusto id nam esse qui quia aspernatur voluptates ut possimus at voluptas dolore molestiae vero rem vel quisquam aut doloribus facere voluptatem ea quibusdam impedit ratione quis praesentium ex minus quas ea quidem ad.', 'Mr. Charles Smitham I', '2024-09-24 00:49:25', '2024-09-24 00:49:25'),
(6, 'Tristian Connelly', 'Quod quia dolorem ducimus harum quo non adipisci doloribus consequatur rerum beatae vitae deleniti sit enim ut nostrum vel illo in et eos minus magnam provident accusantium temporibus laborum laboriosam excepturi ad et ut eveniet suscipit aliquam odio non totam accusamus aut inventore dolor eveniet fuga qui labore similique accusantium et fuga consectetur dolores labore ad eum et qui consectetur fuga eos repellat ut quia soluta nemo sed aut sunt hic fugit eaque est minus aut mollitia commodi non in rerum est nostrum repellendus maxime vel totam veritatis reiciendis sed voluptatem a id consequuntur alias ut optio sunt quisquam voluptatibus qui molestiae impedit illo quia aut rerum quisquam distinctio ipsam sit consequatur delectus sit distinctio minus consectetur.', 'Monroe Hyatt', '2024-09-24 00:49:25', '2024-09-24 00:49:25'),
(7, 'Gabe Hermann', 'Tempore quisquam omnis accusantium maiores in aut provident nihil asperiores aut enim accusantium voluptatum ut odio in dolor quae doloribus voluptatum quo sapiente quibusdam ab vel rerum ipsam autem illo at odio magni quaerat velit ad reprehenderit quis molestiae qui blanditiis iste tempore impedit tempore mollitia quod deserunt modi fuga esse non tempora dolorem vitae aliquid tenetur illum sequi quidem ea sequi aliquam facilis omnis quos ipsa perspiciatis modi illum explicabo similique iusto laboriosam commodi expedita ab molestias quia beatae alias eum veniam molestiae libero magnam sint qui adipisci quia cumque libero quia nisi tempora excepturi dolorem rerum quo molestiae autem eum nesciunt consequatur earum quasi voluptatum rerum recusandae ipsa et voluptatem explicabo perspiciatis non reiciendis illo est voluptates ratione eum quasi magni perferendis nostrum sequi excepturi dolorum exercitationem.', 'Natasha Terry', '2024-09-24 00:49:25', '2024-09-24 00:49:25'),
(9, 'Veda O\'Hara', 'Impedit aut est velit nihil debitis corrupti voluptatum ut qui culpa ex vero expedita quo sit at veritatis sed architecto deleniti iusto temporibus rerum sit itaque explicabo quos qui perspiciatis sed voluptates et saepe ducimus harum ut voluptas accusantium sequi quis natus eos optio sed rem ducimus ut et doloremque id deleniti voluptatem magnam aut accusamus amet sit nisi doloribus voluptate at suscipit minima illo similique consequatur voluptatem quia porro architecto perspiciatis velit sint ea culpa quos ipsam sunt modi voluptates rem ea.', 'Billie Macejkovic', '2024-09-24 00:49:25', '2024-09-24 00:49:25'),
(10, 'Russell Kreiger', 'Maiores voluptatem voluptas temporibus delectus architecto atque ea eveniet rerum aliquam necessitatibus ipsam non nostrum veniam aut rerum eius beatae alias recusandae quis deserunt qui rerum omnis necessitatibus nobis et omnis eveniet voluptatem ipsam ut autem cum quis sit totam blanditiis quia et maxime vel aut iure provident quia molestias tempora non est hic aut impedit nam ex hic est delectus occaecati sunt officia dolore consequatur itaque ut id ad cum est aut corrupti quia voluptatem et maiores reiciendis sed iure aliquam id quibusdam voluptatem earum earum eos est doloremque corporis architecto voluptas nihil facilis natus qui consectetur repudiandae occaecati ut consequatur enim et quas qui aut autem velit nobis repellat eaque ea ipsa voluptatum tenetur dolorum dolorem est voluptatem in qui sed qui et libero quae quos quod omnis quis provident et at.', 'Santa Altenwerth III', '2024-09-24 00:49:25', '2024-09-24 00:49:25'),
(11, 'Prof. D\'angelo Miller II', 'Explicabo aut vitae rem perferendis omnis error qui architecto voluptatem ad eius repellendus temporibus qui.', 'Prof. Dameon DuBuque MD', '2024-09-24 00:49:25', '2024-09-24 00:49:25'),
(12, 'Estrella Schinner DDS', 'Quos voluptatem ut aperiam rem vel eos quia commodi vitae voluptatem molestiae exercitationem nulla vitae libero saepe molestiae iure ut sit animi ut ex architecto dolorem voluptatem sit aut nemo est repellendus repellendus consequatur optio velit perferendis dolores corrupti omnis quia fuga officiis quam delectus dignissimos pariatur fugit nisi aut consequatur aut et odio pariatur libero et corrupti ut et sed sit explicabo unde aut quas nam autem sunt doloremque doloremque impedit error quaerat totam odio repellendus voluptatem voluptatum quo qui.', 'Donald Yundt', '2024-09-24 00:49:25', '2024-09-24 00:49:25'),
(13, 'Amor Venenoso', 'Iure consectetur culpa rerum aut voluptates numquam vel maiores maiores sit est sit ipsum velit quos .', 'Paula perez', '2024-09-24 03:05:21', '2024-09-24 03:05:21'),
(14, 'Amor Venenoso y rabioso', 'Iure consectetur culpa rerum aut voluptates numquam vel maiores maiores sit est sit ipsum velit quos .', 'Paula perez 2', '2024-09-24 03:10:35', '2024-09-24 03:10:35'),
(15, 'Amor locooso y', 'Iure consectetur culpa rerum aut voluptates numquam vel maiores maiores sit est sit ipsum velit quos .', 'Paula perez 8', '2024-09-25 06:10:26', '2024-09-25 06:10:26'),
(17, 'Amor', 'Iure', 'Paula gomez 8', '2024-09-29 03:47:27', '2024-09-29 03:47:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_post_post_id_foreign` (`post_id`),
  ADD KEY `category_post_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
