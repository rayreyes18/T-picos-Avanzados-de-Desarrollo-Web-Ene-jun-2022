-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-06-2022 a las 16:52:21
-- Versión del servidor: 10.4.21-MariaDB-log
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bookreviews`
--

CREATE TABLE `bookreviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Review` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bookreviews`
--

INSERT INTO `bookreviews` (`id`, `Review`, `user_id`, `book_id`, `created_at`, `updated_at`) VALUES
(1, 'Un buen libro', 5, 1, '2022-06-02 23:33:34', '2022-06-02 23:33:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Editorial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` int(11) NOT NULL,
  `Author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Reading_age` int(11) NOT NULL,
  `Format` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Review` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Score` int(11) NOT NULL,
  `Image` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bookstore_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `books`
--

INSERT INTO `books` (`id`, `Tittle`, `Genre`, `Editorial`, `Price`, `Author`, `Reading_age`, `Format`, `Review`, `Score`, `Image`, `user_id`, `bookstore_id`, `created_at`, `updated_at`) VALUES
(1, 'Ciudades de humo', 'Distopia', 'Crossbooks México', 999, 'Joana Marcús', 16, 'Pasta fea', 'Muy chafa', 1, 'https://www.gandhi.com.mx/media/catalog/product/9/7/9786070785542_b336.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=&width=&canvas', 4, 1, NULL, '2022-06-02 23:36:40'),
(2, 'El mapa de los anhelos', 'Romance', 'Planeta México', 300, 'Alice Kellen', 18, 'Pasta dura', '¿Y si te diesen un mapa para descubrir quién eres? ¿Seguirías la ruta marcada hasta el final? Imagina que estás destinada a salvar a tu hermana, pero al final ella muere y la razón de tu existencia se desvanece. Eso es lo que le ocurre a Grace Peterson, la chica que siempre se ha sentido invisible, la que nunca ha salido de Nebraska, la que colecciona palabras y ve pasar los días refugiada en la monotonía.', 10, 'https://www.gandhi.com.mx/media/catalog/product/9/7/9786070786280_f194.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=&width=&canvas=:', 6, 3, NULL, NULL),
(3, 'Gallant', 'Distopia', 'Umbriel', 260, 'V.E.Schawab', 12, 'Pasta blanda', 'Lo único que Olivia Prior conserva de su pasado es el diario de su madre. Entonces recibe una carta invitándola a regresar a Gallant, su hogar. Pero cuando llega, nadie la está esperando. Sin embargo, Olivia no está dispuesta a marcharse. No importa si su primo Matthew es desagradable con ella, o si ve espíritus rondando por los pasillos. Olivia sabe que Gallant oculta secretos, y está decidida a descubrirlos.', 8, 'https://www.gandhi.com.mx/media/catalog/product/t/m/tmp9786077483946_56b8.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=&width=&canvas=: ', 5, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bookstorecomments`
--

CREATE TABLE `bookstorecomments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Review` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bookstore_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bookstorecomments`
--

INSERT INTO `bookstorecomments` (`id`, `Review`, `user_id`, `bookstore_id`, `created_at`, `updated_at`) VALUES
(1, 'Muy mala librería', 4, 1, '2022-06-02 09:51:52', '2022-06-02 09:51:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bookstores`
--

CREATE TABLE `bookstores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Mandated` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `City` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` int(11) NOT NULL,
  `Mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Web` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Review` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bookstores`
--

INSERT INTO `bookstores` (`id`, `Name`, `Mandated`, `Address`, `City`, `Phone`, `Mail`, `Web`, `Review`, `Image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Gonvil', 'Fernando Sánchez Juárez', 'Manuel M. Ponce #282', 'Aguascalientes', 9483352, 'gonvill@gmail.com', 'https://www.gonvill.com.mx/', 'En medio de un caos en el que más de una editorial y más de una librería se han visto amenazadas de cerrar, La Moraleja abre sus puertas para enfrentar a un mundo cambiante no desde la moral, pero sí desde las palabras albergadas en sus estanterías. Ubicado a un costado del Cine Tonalá, este local de vidrio y madera, que ya existía como librería, toma un nuevo aire con el objetivo.', 'https://scontent.fgdl3-1.fna.fbcdn.net/v/t39.30808-6/285711335_7469941933079728_4382814857770804501_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeFu332jdZwLdqZoC6QCLbvIK6hCASsFVn4rqEIBKwVWfjKdxtFyaRr-DwgHJpLVTSBk9GH72WvuGqya1pwizcPc&_nc_ohc=LcfsrwM0vzcAX8Boa92&_nc_ht=scontent.fgdl3-1.fna&oh=00_AT83cJakYokqueZ9kbISps5-Wph1UabTLt-ZFPqN4Q2zLg&oe=629DB7C0', 1, NULL, '2022-06-01 01:46:09'),
(2, 'Gandhi', 'Oscar Vera Silva', 'Romo #102\n', 'Zacatecas', 6792354, 'gandhi@gmail.com ', 'https://www.gandhi.com.mx', 'El espacio creado por la librera y editora Selva Hernández y el diseñador y escritor Alejandro Magallanes cobró forma en noviembre de 2016. El catálogo se alimenta de sellos independientes mexicanos; por ejemplo Ediciones Acapulco (de la que Selva es dueña), Tumbona, Mangos de Hacha, Filo de Caballos, La Cifra, Magenta, Ediciones Naranjo, Tecolote, Sexto Piso, Almadía, Zorro Rojo.', 'https://scontent.fgdl3-1.fna.fbcdn.net/v/t39.30808-6/285767777_7469942099746378_4031127263461396954_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeFwTROR7ZLYCrV7Hs4Zkk-IodY_ix9qurih1j-LH2q6uD8r7maUkeDtTcuJU__E4zLHX88a9EImCN_LRLSs9e6m&_nc_ohc=Vg8TYWwfDH4AX836FR-&_nc_ht=scontent.fgdl3-1.fna&oh=00_AT8wSsN87eyhqI5eKi4ryQpIhltMcsJSPdLUo7Ro4nvsRg&oe=629E7AA8', 1, '2022-06-01 05:57:23', '2022-06-01 05:57:23'),
(3, 'El sotano', 'Susana Guerrero Ceja', 'Nieto #302\n', 'Guadalajara', 9342901, 'elsotano@gmail.com', 'https://www.elsotano.com.mx/', 'Es iniciativa de Savvy Studio, un colectivo que lo mismo hace diseño –gráfico o industrial– que publicidad o arquitectura. Casa Bosques tiene la curaduría de Jorge de la Garza, quien también selecciona editoriales y publicaciones independientes. El acervo de libros y revistas está claramente marcado a la arquitectura, el arte, la moda y el diseño, pero también encuentras literatura, sobre todo esos títulos muy ciudados y que dan preferencia al diseño del ejemplar en sí.', 'https://www.ecosur.mx/libros/wp-content/uploads/sites/3/2015/11/insurgentes_fachada_web.jpg ', 1, '2022-06-01 22:25:30', '2022-06-01 22:25:30'),
(4, 'Porrúa', 'Daniel Ceja Vega\r\n', 'Adoratrices #224\r\n', 'Guanajuato', 3870213, 'porrua@gmail.com', 'https://www.porrua.com.mx/', 'Aunque esta librería está especializada en libros de corte religioso, guarda como secreto una gran colección de libros infantiles y juveniles. Encontrarás títulos desde 10 pesos de todo tipo, como cuentos para colorear y novelas de aventuras. También venden juguetes didácticos a precios económicos.', 'https://scontent.fgdl3-1.fna.fbcdn.net/v/t39.30808-6/285823090_7469942173079704_5510581690201843397_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeGudbGtN6cmf5srNOb7RAEIx0mDuNsp_pzHSYO42yn-nFWfUYwupNax_vBfNc_oYvZ26Nc177LP3QhwDJEWDMeA&_nc_ohc=y7B2tKkBukoAX8iaLcC&_nc_ht=scontent.fgdl3-1.fna&oh=00_AT_k9Xy9SFqipUU5XNgFvye6hCwwBUiNXBdbhd9Ce8adkQ&oe=629EC6B2', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bookstoresusers`
--

CREATE TABLE `bookstoresusers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bookstore_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_05_25_043005_create_bookstores_table', 1),
(11, '2022_05_25_055045_create_books_table', 1),
(12, '2022_05_25_055507_create_bookstoresusers_table', 1),
(13, '2022_05_25_055542_create_usersbooks_table', 1),
(14, '2022_05_28_232710_create_bookreviews_table', 1),
(15, '2022_05_28_232928_create_bookstorecomments_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0028b91c8ed71d6199f2a5dc92d1e18d784b4c50dcc26096ca01a511c62499cc7db6c95e1e304da8', 9, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 23:31:35', '2022-06-02 23:31:35', '2023-06-02 18:31:35'),
('00f47ee48f283de2070f4a919ab189de0a94846a1f08f5be39069861beb49fd0e1bb045aff81add5', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-03 11:08:43', '2022-06-03 11:08:43', '2023-06-03 06:08:43'),
('01b01128ce11f3acb8a2946b91aa8822725affade40753fa0549e50ec40f4b88513fd83d6e11949a', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 15:07:14', '2022-06-02 15:07:14', '2023-06-02 10:07:14'),
('036c6321b0e4b016aec6926d8cc4caafee550cca86b3f5eca584af719d97a1d42b5f489c7a0d8377', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-05-31 22:32:33', '2022-05-31 22:32:33', '2023-05-31 17:32:33'),
('03ee6087609c9f67f139e9a2502c312261f0bb3e8bdd9ad8ea5f0847a078312b29092dfea7e6501f', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:24:00', '2022-06-02 13:24:00', '2023-06-02 08:24:00'),
('042eb311dee621f36367d16346f70f08aec2efad8eeede87e34eabfe7510a4bf1eeb4ef218fc334a', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 14:47:55', '2022-06-02 14:47:55', '2023-06-02 09:47:55'),
('046f5c4c5624ecc5df3cfab9b0a3e7a028089aec4152e39f60b0ed4f83c1cd17fd2113804856a7e7', 6, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 02:01:10', '2022-06-02 02:01:10', '2023-06-01 21:01:10'),
('065ae917041eb4e8a7162e7c1ded0298ff50e326b250c69759f59c1269c6b55828ff3947aa8c12a4', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-03 11:15:06', '2022-06-03 11:15:06', '2023-06-03 06:15:06'),
('074dafe788ea3e1741253eba36c54b4ef707bfc3ac11a9a2c4c0810fa1661998e52ae1e6d7ecab52', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 19:34:35', '2022-06-02 19:34:35', '2023-06-02 14:34:35'),
('0757a217ce993ee5a24e5eb58b8d0d063d88f593a5ce54d691caf5d196233f543b2b18a16b275974', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 12:52:04', '2022-06-02 12:52:04', '2023-06-02 07:52:04'),
('086974cdcb33996bf37561ad741ba4be1185a9f68bd925481a24a38c826e3211f740143fb4fed7b1', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:10:50', '2022-06-02 13:10:50', '2023-06-02 08:10:50'),
('0a1cf4d9f2ccd813c9567edb17eb999684e3a7b66e7d86731ea56ef3b126338c7cb5c819e1b3a88f', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-05-31 22:32:33', '2022-05-31 22:32:33', '2023-05-31 17:32:33'),
('0d694266809355823a94de9bf7093f4b88fed16151d8269ae5c198aa38be30181c49244ee931b5ea', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:12:02', '2022-06-02 13:12:02', '2023-06-02 08:12:02'),
('0dd2e0b6e79081cb48d2ee4ebbc8045334292e4b6879f442d96e6dc19e99a4950f94d0f3eede176f', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:25:51', '2022-06-02 13:25:51', '2023-06-02 08:25:51'),
('0f92b50ad7c98aacee8c441c661cadb8de80be1222df039ffdae5ec987ee74952e90bc107824eac4', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:47:37', '2022-06-02 13:47:37', '2023-06-02 08:47:37'),
('0fb9c4dfc1a29ef56118f7c318db702252fe04de1eb52ed58b3cf6cbd5d1ea4021efbd03bcccf4b4', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-03 19:43:51', '2022-06-03 19:43:51', '2023-06-03 14:43:51'),
('0fbd01b8c355969683a19cc9ccaba3bfae1dacab187ca7ca2fe85db0ce444049919662b5d16c69fa', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:03:24', '2022-06-02 13:03:24', '2023-06-02 08:03:24'),
('11a5472352c069e5c4e2544062baa713e9b4638a26270e51567924c391f27d79aba069ad5b38b717', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 15:09:28', '2022-06-02 15:09:28', '2023-06-02 10:09:28'),
('1362f1bca877fd7aa1d98060b8fb6658f21d435fbbd7b2a469dd9ae0fac9a6f808e061d6ae59d45c', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-05-31 22:32:47', '2022-05-31 22:32:47', '2023-05-31 17:32:47'),
('13f44a8960cd42d0fabb0c477784dfed4b466a6916e8c0a439c163e2de68ac62de5475f8a132093a', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 15:07:14', '2022-06-02 15:07:14', '2023-06-02 10:07:14'),
('145f6c976ac90c94e47feefc19cdd9ce48a764f3d4a9ddb701c0372cd995f33fe2e3b1101ac260e0', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 12:52:48', '2022-06-02 12:52:48', '2023-06-02 07:52:48'),
('16d88774c00f6411c29af51b657da79487024e159e252960fd5522e030f94a2331a023dd869cceb6', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 21:58:03', '2022-06-02 21:58:03', '2023-06-02 16:58:03'),
('17a10406e08c9fa00da278d9deca2e9ad90f0dc61378a33a7c8593154bbcee5b3ad44ee60ab3697d', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 14:50:09', '2022-06-02 14:50:09', '2023-06-02 09:50:09'),
('1de326ebe31cf6aaf43135ba4a21c3641cebe1b94d333ecec73fe15af805ca64583c5af5859f1bee', 9, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 23:31:17', '2022-06-02 23:31:17', '2023-06-02 18:31:17'),
('1fe0afad93d9e2532083e05b9878598c6cddc312112828b08d178b87decbb9a51e3dc4350b52d08c', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:00:28', '2022-06-02 13:00:28', '2023-06-02 08:00:28'),
('20854eae30e605b9cad7f99ee3c5a9230c5d91517d8e1fa46643c2570e18f2ecfc9d3b25418ce103', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 14:33:12', '2022-06-02 14:33:12', '2023-06-02 09:33:12'),
('216d8855dac2e80b3989c719a2ded39b6997511dc164f44066d4a69f1d09275ecd4f4f1f93d49927', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:08:12', '2022-06-02 13:08:12', '2023-06-02 08:08:12'),
('21af2dac0978db91020b90c6e9c772855cf04248ab335ddc8170962e4b79accb579d23741a4707d7', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 12:56:08', '2022-06-02 12:56:08', '2023-06-02 07:56:08'),
('21ff88b1037939859b9ff572dc0e31b86a3a3cab698362ad244749ad74d71e62b8e4c025a09158d9', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:16:32', '2022-06-02 13:16:32', '2023-06-02 08:16:32'),
('222956424c1902053a99de2fccbee97bc9990598a0227a35954e92992e2701663386a8bef899a954', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:36:21', '2022-06-02 13:36:21', '2023-06-02 08:36:21'),
('2300da97ee8e74668fe99b79c72b552e15194b25fdd0a48a54b9e14336cba2c6b1550b54e0b77bb7', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:13:01', '2022-06-02 13:13:01', '2023-06-02 08:13:01'),
('25ab6f8956ac441d3eab5d494e36a0abf20e14db0d9c578ca37ebf88947ab2f988d307861726c49a', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 03:55:48', '2022-06-02 03:55:48', '2023-06-01 22:55:48'),
('29f85c428eef50dbc4bf7c679041ee7e15c717210001e94ed1fa060201dee36cb0800301f1ed8821', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:51:40', '2022-06-02 13:51:40', '2023-06-02 08:51:40'),
('2bd40c9058892ef39160fcd3e4935f718ace8bd70ab157fe309f74e64fd858c32e7bb234e3b35a56', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 12:54:34', '2022-06-02 12:54:34', '2023-06-02 07:54:34'),
('2ce69a37caf51612d92ba5d347bc8c5c83b989f593bf6d3211e7fcb07781f012ee3375207d01c1f0', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 18:41:51', '2022-06-02 18:41:51', '2023-06-02 13:41:51'),
('2f8ff71351d127f17b41404ef8ab2e08a53be44ec57d9484117eaa848d05b8a15197ee1cd3c98afe', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:30:59', '2022-06-02 13:30:59', '2023-06-02 08:30:59'),
('304b697f52765bf8c7ed163071af2e013c092f3b745f9a06571b906d97819b9dc62717d29ecd132a', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 12:56:52', '2022-06-02 12:56:52', '2023-06-02 07:56:52'),
('31967b58d7939747e6f7b58c70f19015a7ece1e981b10916546b942268a4db575620aaa6ed8eb7c1', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 14:45:05', '2022-06-02 14:45:05', '2023-06-02 09:45:05'),
('331259593db019040d2cccc304734a1021d4e105d2f3b36cdd6449626ace78e0997b6fa64fc1c53d', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 22:37:24', '2022-06-02 22:37:24', '2023-06-02 17:37:24'),
('34e516274e9dec3154ec67ec2cbe8a8e75017db7df20cd990cdcd4901032443d4b7ea94387324a2b', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 19:40:48', '2022-06-02 19:40:48', '2023-06-02 14:40:48'),
('36acb8c39034a75a1b3781d7f3e2c1dc878a9b0f1148e259b1cb9408fef14e89ca82e6fc867e123c', 5, 3, 'LaravelAuthApp', '[]', 0, '2022-05-31 22:33:18', '2022-05-31 22:33:18', '2023-05-31 17:33:18'),
('3b58ccbf0aec16c6a82b4ac96f749fc820e7c4d49b1567f006b0d4e2a2b8ca7aee39b0a6b31c7cf1', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 19:39:41', '2022-06-02 19:39:41', '2023-06-02 14:39:41'),
('3c2d0ef0ac0fb2981d883f73cc6f4e638320bbf37a68ae09775c7215f957f948c205eb3e84d41c8b', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 21:26:33', '2022-06-02 21:26:33', '2023-06-02 16:26:33'),
('40f96e7204be9c9fa4ff528623dbe00ed1e10ccbadfb8cd80eaf2f144dc4f7609ccbf862a4d67738', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 19:00:50', '2022-06-02 19:00:50', '2023-06-02 14:00:50'),
('42b33ccbf08bf3d05498c18aa033cecce71b0ea20a4a498b51b6946a2d07ea3c46c315257ddc6f88', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:33:38', '2022-06-02 13:33:38', '2023-06-02 08:33:38'),
('4364944e018d5bd7ab44846a16531417e36e62a0dc39d69c9637207bd4a15e0b08eb96f264f4b9ef', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 18:59:51', '2022-06-02 18:59:51', '2023-06-02 13:59:51'),
('4410d63eee55e12f0e175c8dc9a93d690492ae6cf646f25cbec2050ac8f7180957282b00a3da5e9b', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-03 08:24:58', '2022-06-03 08:24:58', '2023-06-03 03:24:58'),
('47df5df0cc4784aaf1984efa3863e44338fd03b33b0aec9dbc4fc1e500497055eb65f9173d072323', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:52:38', '2022-06-02 13:52:38', '2023-06-02 08:52:38'),
('4c139243464e03c3ffbf7c950ace0c7d2eb1d6b8099f2bea75034a9aafde728ab883201b10c98a77', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:44:22', '2022-06-02 13:44:22', '2023-06-02 08:44:22'),
('4cb2a699a17677d9fb3edc700096eff2239270a7a1294de958bb9f408a790c65f4cdea3d9d8d5b0d', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:18:01', '2022-06-02 13:18:01', '2023-06-02 08:18:01'),
('59d19cad1432514b879b83244275ac8d312afa897982535786fe4b08a1e2f79d1f333e091afb90dc', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:43:33', '2022-06-02 13:43:33', '2023-06-02 08:43:33'),
('5b55a2e32e1f7232009184cd476f1c98305ac08e775e5f8c57e43e884ab9a5b157eaf3ba8a4e3f20', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 14:56:45', '2022-06-02 14:56:45', '2023-06-02 09:56:45'),
('5ceb122eb1b48a0cf55db60175e7dcb12ffd4c3c1953644e6e63e42f638f29023cc0794ab3994972', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 15:12:31', '2022-06-02 15:12:31', '2023-06-02 10:12:31'),
('5e60c42b01204444604ba9e7b825d7e00f4e4f2220823b1f6437d66260c8b193c818e6c825e1cd9b', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:46:12', '2022-06-02 13:46:12', '2023-06-02 08:46:12'),
('61b6e0a26e388a65cdc95728f191aaf9c7e904d830046d9d9e3bbfd5cead0a2a128b420e7a2c38a7', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:26:12', '2022-06-02 13:26:12', '2023-06-02 08:26:12'),
('642990792d4ac5121322da6e310caefd6605c18d58b4943fb698983c6916eb139eb50ca72a4dd015', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 15:07:15', '2022-06-02 15:07:15', '2023-06-02 10:07:15'),
('66460506e36281716166243ad623357f2b20cfaeaff8c392afe365836f7e0fd417ef0b6ce9b45cd9', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:35:24', '2022-06-02 13:35:24', '2023-06-02 08:35:24'),
('66af01fdc085376cb65d5b4b421b0ba4b86e44dabd0fca95407d69fe904c99a9f7f8cf64312f3553', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 19:42:05', '2022-06-02 19:42:05', '2023-06-02 14:42:05'),
('6a751036146daa523142a7fcdfbb562a4b7c3e1a70598ce9431c0cd25eea1cb4650c324b457b8c21', 7, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 23:21:25', '2022-06-02 23:21:25', '2023-06-02 18:21:25'),
('6e559924a76003c9d3cc66747edeb131eaa974c3a49603770e7ffa9a3ded9f6de26bee680944d65b', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 23:34:56', '2022-06-02 23:34:56', '2023-06-02 18:34:56'),
('709a1aab4e6c2c3a991ea2681b1d6a7defb0dbb847dd2def09503bb27c0416a5dafaea52d45865d2', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:41:33', '2022-06-02 13:41:33', '2023-06-02 08:41:33'),
('796fae3181211c533b4eb45c7431d1fab96c4a7d186d8f345d3da397687c9438956c1f7389fe4449', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:40:44', '2022-06-02 13:40:44', '2023-06-02 08:40:44'),
('79a2de853da183cae00ecd76c790d17c3c6d992271ecb8429eaa3a0c1a00b5fc28c31225f85caf4b', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-05-31 22:32:33', '2022-05-31 22:32:33', '2023-05-31 17:32:33'),
('7fe2428269d5a6edbdc09121aef65fb954349fb4f9d5b0adbbccbbb39da540a1ecf5b954a04d23dc', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-03 11:04:02', '2022-06-03 11:04:02', '2023-06-03 06:04:02'),
('83c95e01dd8088ce3d06c0481e9be05c0faaeb688c009ebfd1e13cd73025f50faac46118e6526de0', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:28:18', '2022-06-02 13:28:18', '2023-06-02 08:28:18'),
('899db5721de53884394da6600f6d2b45c32e42e893f691c94e98df142a1b94eabd9915a1db717751', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 12:55:13', '2022-06-02 12:55:13', '2023-06-02 07:55:13'),
('8f6a21deeb4426b60d6c3928a21b6298c02749ecf11ef158aac8011eb10b8fb50c6284593feab22a', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:35:52', '2022-06-02 13:35:52', '2023-06-02 08:35:52'),
('909d47962556cbb24f5a7ab571dead07a006c0ac88d1d67fa089840fc51db8ef9b6f059a43412079', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-01 23:03:03', '2022-06-01 23:03:03', '2023-06-01 18:03:03'),
('97dd57bfb77914ffbbc2eeeb66825700de0b345dc020e162a7ed3ed93e9b492e1db0e08754620a5a', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-01 22:49:23', '2022-06-01 22:49:23', '2023-06-01 17:49:23'),
('99d43e9dccce677563244d07efec24f3d68ea74c6bb13a25e3b8f6a3807ea15e972079ac8cbca035', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-03 19:47:48', '2022-06-03 19:47:48', '2023-06-03 14:47:48'),
('9a8f2774c483039853dabe77e38b71b10b1333da9e3f8014f6b94e4a6e036351a0f568b09d283bcb', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 03:57:30', '2022-06-02 03:57:30', '2023-06-01 22:57:30'),
('9c85ec9036fe103979d1a0567faaa34c370708bbbcb3ffbeff2fdf074b7a17ce680917ce84c7ac6b', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:19:07', '2022-06-02 13:19:07', '2023-06-02 08:19:07'),
('a3aa6304a3b904cb5d6b698ee44ae941d3f80634af96109514f40eeb24df6eb884c48fed1795fb78', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:53:45', '2022-06-02 13:53:45', '2023-06-02 08:53:45'),
('a5f6a8fde91cd0f892fe082bbc5bde1b2e1923f7b46b7400203b5310af7baa0f9c2440b78d2b498d', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 15:11:32', '2022-06-02 15:11:32', '2023-06-02 10:11:32'),
('a63d589799b27b0e5d39dfbbb0e47f206d36da2027082b62826eee7c1ab0771cf3c188c8a295ff87', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:39:51', '2022-06-02 13:39:51', '2023-06-02 08:39:51'),
('a784f1502f37ca67680ad74449036b6c2a71332a9f3390169cad9d60c5e7edd5bd10572a2562c090', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:27:30', '2022-06-02 13:27:30', '2023-06-02 08:27:30'),
('abd691193b794f068c260a0aabcf65ac53604ec18aed6bdc2de804c2e2b182b4be7ed06ecbb25092', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:29:07', '2022-06-02 13:29:07', '2023-06-02 08:29:07'),
('ad55b9a3cb9dcf3cf5c68f06989c4af4bed7b5327181129b5f2ac9d36e982031ed4a2f88e3520402', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-03 11:04:02', '2022-06-03 11:04:02', '2023-06-03 06:04:02'),
('af1b384d99d97df1141a738c4376f2d5912045090e3b033a305e158514e30cb05d23fc4c382c757d', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 15:07:15', '2022-06-02 15:07:15', '2023-06-02 10:07:15'),
('b0678de202e732a671950a1f35c10ff93017e6f62651d9ac65cc9ef909b262d49ddc6010e6e083b4', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 14:34:00', '2022-06-02 14:34:00', '2023-06-02 09:34:00'),
('b8691b8262b7a675eaa5f6729e323d6ce60178d4b4f7ece50d111b46361d20554bba5d7cb8a32c0c', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 14:52:23', '2022-06-02 14:52:23', '2023-06-02 09:52:23'),
('ba06ae34f155dfb86f643fc344394331adfa212ff8ea1594a59bf2ec58299a5a6518804a3030eaf5', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 19:33:30', '2022-06-02 19:33:30', '2023-06-02 14:33:30'),
('bd2468c50fd21badcadb88ca02e5ec1c0f953849ee099e1b66a1ec94c5c5e17df503bc7097935972', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 18:55:32', '2022-06-02 18:55:32', '2023-06-02 13:55:32'),
('bf9614878290214764ae3e4fd320c2c60e8904231be344709b98e567480c6db0fd409f69a3463b9b', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-01 23:19:17', '2022-06-01 23:19:17', '2023-06-01 18:19:17'),
('bfe018a7934dc077c59f6fea0c8575b213e0258f948dc8499bb693d342540dc0789ce3d18a42b03f', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 14:40:11', '2022-06-02 14:40:11', '2023-06-02 09:40:11'),
('c120109b115eebafa27611954e6eaf4512a16192d6221d65e410d8038678f81996fbbdede2d7c2de', 7, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 23:21:12', '2022-06-02 23:21:12', '2023-06-02 18:21:12'),
('c2463937a38142d46a040ac3da9538a163f1a95e01f08e80bca36b18877a58b7bcb84e4b8cf2e4ee', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 14:36:22', '2022-06-02 14:36:22', '2023-06-02 09:36:22'),
('c2a55bf49031ffd12e88fa68755c2eb61188e9bb215f79bac9a2dc182be36ccf2cee74ec971f4e93', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:21:15', '2022-06-02 13:21:15', '2023-06-02 08:21:15'),
('c9071c0ebb82a8590ae91ca9a99cce73878d288ebc17d4453f6614949ee252c88ba0e5dad2ddc4dc', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 15:10:47', '2022-06-02 15:10:47', '2023-06-02 10:10:47'),
('c9ceda58f6071b39cc47d6241a3b8437a8f2927267b994ab56a5d4daef530cc31bdffacd82825808', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 15:07:50', '2022-06-02 15:07:50', '2023-06-02 10:07:50'),
('cb6530b8cd35d4f6e1ac99d7036a955a830209651709dd3683b7cd30016ec01cd2f9289ff1e3c071', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 15:07:14', '2022-06-02 15:07:14', '2023-06-02 10:07:14'),
('cbc8eec9706490b90fd82b09ea809e0de79465798f7609f8b1a54c617ffd05202346db7ee52c8ab9', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 14:47:24', '2022-06-02 14:47:24', '2023-06-02 09:47:24'),
('cd1940ca88c4c44de7b1fc083ef41a8b86b5fa97c147e3c9392ee78fa13356331da2b86481556f9b', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-03 08:20:29', '2022-06-03 08:20:29', '2023-06-03 03:20:29'),
('cd98143373ee00059f4892be3697661b1e7a298e66a9b679b95193657331e689f954bc235d3cd747', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 21:59:47', '2022-06-02 21:59:47', '2023-06-02 16:59:47'),
('d180b4885a624085e54fbe8b4b738fca608448d053fc76fccd215fb21cd3bb84139cc4bf16e673c4', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:20:42', '2022-06-02 13:20:42', '2023-06-02 08:20:42'),
('d26177c8a973c626b450c1cbc78a91aa73e458c49c7ede466139df33d5124f390c8310848cebf00d', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:19:49', '2022-06-02 13:19:49', '2023-06-02 08:19:49'),
('d76662b18bee01066b18f2e64e9c71564e13b6b79b27265a5c9cb214d8d339deb30c4fa4ef69aa56', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:34:29', '2022-06-02 13:34:29', '2023-06-02 08:34:29'),
('d76c9f5e9403f358ecd787cce9b54e942e65c83c610a04b7ddb94b7a1107f952a767336c499858f8', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 14:41:00', '2022-06-02 14:41:00', '2023-06-02 09:41:00'),
('d89895456d4e133aea282c94d35e30690f0a952cbf757ecfee98d2250ac21718bc0b903406aedff3', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-03 08:20:29', '2022-06-03 08:20:29', '2023-06-03 03:20:29'),
('d9bf24d821ea491b2d01bf0d968bae781fb6f018b83274c7f05733d83aee49b25ae6813f9beedfd3', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 14:51:18', '2022-06-02 14:51:18', '2023-06-02 09:51:18'),
('de8bcf0f2fbbca5b6030a92f674cb8654bb9283235a38c037ca78990b318b7ef8c816ded6514578c', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 19:32:12', '2022-06-02 19:32:12', '2023-06-02 14:32:12'),
('dfb74bbe6e43febbd337fe6aec5190729fb4c164ca25bfbc72723839116222039d66fb1bb4168b84', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-03 08:20:29', '2022-06-03 08:20:29', '2023-06-03 03:20:29'),
('e316b138b1fbca13d83bf1fc056eac09dc974561b0d7e7cf2667484b8bf5554b1d398ee1233d8301', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 19:30:18', '2022-06-02 19:30:18', '2023-06-02 14:30:18'),
('e4db970272b7e79b75102ed83bf2efcbd5665f8438d5b65e481108bffab90ba26fea76636aeece4a', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 14:46:49', '2022-06-02 14:46:49', '2023-06-02 09:46:49'),
('e6c12f5338fef767b64a0cb4663a6a58dd84cd23e187709de259db81054967b7c2c55663281c3cc1', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 12:51:34', '2022-06-02 12:51:34', '2023-06-02 07:51:34'),
('e832a787de7211f3c30900ea434af3ca838f63270ac9c8600e621915116c538ee3adfcec2009ac4f', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:48:29', '2022-06-02 13:48:29', '2023-06-02 08:48:29'),
('e9f93cac84664b3eecc135d4ba3af6cb466f37bc92d3a591ef8b9ad9752a58de91d5186837dee277', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 14:32:25', '2022-06-02 14:32:25', '2023-06-02 09:32:25'),
('eb9d310debb1f3a064e48ea71574fc9ede336a40283cee945981c695504ef8b9fb2341046716a0d2', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 23:17:50', '2022-06-02 23:17:50', '2023-06-02 18:17:50'),
('f00dcf8b3170208a78af4ddd0987aa75526c389c793597d45304a593f3c94ed04cdfa97b6951a363', 4, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 21:57:44', '2022-06-02 21:57:44', '2023-06-02 16:57:44'),
('f34f66791162bf0fe7d46b4d586fd04b5fe1936db75e030c2a94b4d326266f3acb4669f73883b6ad', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 13:07:36', '2022-06-02 13:07:36', '2023-06-02 08:07:36'),
('f71289d4d69f1b7fdcdbb56b4954cf97b6a7309c8495d2963f62bb1aac2117aa5ab3a1c2edc39ba7', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 18:56:27', '2022-06-02 18:56:27', '2023-06-02 13:56:27'),
('f76051281d347b9c1480ba3e73af368fbf6ccc922c89edceade41da4b6f77b722cf714ee85778d48', 1, 3, 'LaravelAuthApp', '[]', 0, '2022-06-02 14:54:21', '2022-06-02 14:54:21', '2023-06-02 09:54:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'NqCGYd1HoNAtlfSckutcNX7s0RsBBQu3rReVKQz6', NULL, 'http://localhost', 1, 0, 0, '2022-05-31 22:31:33', '2022-05-31 22:31:33'),
(2, NULL, 'Laravel Password Grant Client', 'uW5U8Ixxj0G54OX1ZF2lGKn5MkbbhVOTfhBTbsa0', 'users', 'http://localhost', 0, 1, 0, '2022-05-31 22:31:33', '2022-05-31 22:31:33'),
(3, NULL, 'Laravel Personal Access Client', 'NLEZpADntlvIIBGUzbsuFEeyfrIJEaqiiBHdcH9W', NULL, 'http://localhost', 1, 0, 0, '2022-05-31 22:31:38', '2022-05-31 22:31:38'),
(4, NULL, 'Laravel Password Grant Client', 'dWH9W1on9kO2ikMEQzywW56Q1uc1YuFCmfzs8x7a', 'users', 'http://localhost', 0, 1, 0, '2022-05-31 22:31:38', '2022-05-31 22:31:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-05-31 22:31:33', '2022-05-31 22:31:33'),
(2, 3, '2022-05-31 22:31:38', '2022-05-31 22:31:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Raymundo Emmanuel', 'ray@admin.com', 2, NULL, '$2y$10$Ad5x2eExxv0TDXgwZyMlUuR4NHxzKFZA7MHiwBGdq2xwTXSWrawT2', NULL, '2022-05-31 22:28:03', '2022-05-31 22:28:03'),
(4, 'Carolina Lugo Parga', 'caro@gmail.com', 1, NULL, '$2y$10$CwdO571tTEJ0EvopWcDtPeXQ5PKUym6rdEj/SZAYm2TxCG95PgL/G', NULL, '2022-05-31 22:29:21', '2022-05-31 22:29:21'),
(5, 'Gama Gonzalez', 'gama@gmail.com', 1, NULL, '$2y$10$0FKZ4c8BWwc3kXRx3jLx2uwmK/fy7lhvnU3avuRdsBcJjlatJaGU.', NULL, '2022-05-31 22:33:18', '2022-05-31 22:33:18'),
(6, 'Roberto Reyes', 'rober@gmail.com', 1, NULL, '$2y$10$n29Gb8rzcUnfCqu.9C8cHuEQdMntdbSplKuYhH.HMlQWkv4CwSsb6', NULL, '2022-06-02 02:01:10', '2022-06-02 02:01:10'),
(7, 'Omar Gonzalez', 'omar@gmail.com', 1, NULL, '$2y$10$L1bCQT5znp8TifkfGMQoxe7D0tHkByZG2wgY5pPxO1vRBB7dJqVFm', NULL, '2022-06-02 23:21:12', '2022-06-02 23:21:12'),
(9, 'Jorge Humberto', 'jorge@gmail.com', 1, NULL, '$2y$10$76bOs4EWVuVqBndRZRflm.zzN4enxGogTtaA2mGNzRZjGhMW1oRTy', NULL, '2022-06-02 23:31:17', '2022-06-02 23:31:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usersbooks`
--

CREATE TABLE `usersbooks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bookreviews`
--
ALTER TABLE `bookreviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookreviews_user_id_foreign` (`user_id`),
  ADD KEY `bookreviews_book_id_foreign` (`book_id`);

--
-- Indices de la tabla `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_user_id_foreign` (`user_id`),
  ADD KEY `books_bookstore_id_foreign` (`bookstore_id`);

--
-- Indices de la tabla `bookstorecomments`
--
ALTER TABLE `bookstorecomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookstorecomments_user_id_foreign` (`user_id`),
  ADD KEY `bookstorecomments_bookstore_id_foreign` (`bookstore_id`);

--
-- Indices de la tabla `bookstores`
--
ALTER TABLE `bookstores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookstores_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `bookstoresusers`
--
ALTER TABLE `bookstoresusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookstoresusers_bookstore_id_foreign` (`bookstore_id`),
  ADD KEY `bookstoresusers_user_id_foreign` (`user_id`);

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
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usersbooks`
--
ALTER TABLE `usersbooks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersbooks_book_id_foreign` (`book_id`),
  ADD KEY `usersbooks_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bookreviews`
--
ALTER TABLE `bookreviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `bookstorecomments`
--
ALTER TABLE `bookstorecomments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `bookstores`
--
ALTER TABLE `bookstores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `bookstoresusers`
--
ALTER TABLE `bookstoresusers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usersbooks`
--
ALTER TABLE `usersbooks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bookreviews`
--
ALTER TABLE `bookreviews`
  ADD CONSTRAINT `bookreviews_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookreviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_bookstore_id_foreign` FOREIGN KEY (`bookstore_id`) REFERENCES `bookstores` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `bookstorecomments`
--
ALTER TABLE `bookstorecomments`
  ADD CONSTRAINT `bookstorecomments_bookstore_id_foreign` FOREIGN KEY (`bookstore_id`) REFERENCES `bookstores` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookstorecomments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `bookstores`
--
ALTER TABLE `bookstores`
  ADD CONSTRAINT `bookstores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `bookstoresusers`
--
ALTER TABLE `bookstoresusers`
  ADD CONSTRAINT `bookstoresusers_bookstore_id_foreign` FOREIGN KEY (`bookstore_id`) REFERENCES `bookstores` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookstoresusers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usersbooks`
--
ALTER TABLE `usersbooks`
  ADD CONSTRAINT `usersbooks_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `usersbooks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
