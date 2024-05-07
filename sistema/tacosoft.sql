-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2024 a las 00:22:43
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tacosoft`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add caracteristicas organolepticas', 6, 'add_caracteristicasorganolepticas'),
(22, 'Can change caracteristicas organolepticas', 6, 'change_caracteristicasorganolepticas'),
(23, 'Can delete caracteristicas organolepticas', 6, 'delete_caracteristicasorganolepticas'),
(24, 'Can view caracteristicas organolepticas', 6, 'view_caracteristicasorganolepticas'),
(25, 'Can add desinfeccion', 7, 'add_desinfeccion'),
(26, 'Can change desinfeccion', 7, 'change_desinfeccion'),
(27, 'Can delete desinfeccion', 7, 'delete_desinfeccion'),
(28, 'Can view desinfeccion', 7, 'view_desinfeccion'),
(29, 'Can add desinfectante generico', 8, 'add_desinfectantegenerico'),
(30, 'Can change desinfectante generico', 8, 'change_desinfectantegenerico'),
(31, 'Can delete desinfectante generico', 8, 'delete_desinfectantegenerico'),
(32, 'Can view desinfectante generico', 8, 'view_desinfectantegenerico'),
(33, 'Can add materia prima', 9, 'add_materiaprima'),
(34, 'Can change materia prima', 9, 'change_materiaprima'),
(35, 'Can delete materia prima', 9, 'delete_materiaprima'),
(36, 'Can view materia prima', 9, 'view_materiaprima'),
(37, 'Can add materia prima generica', 10, 'add_materiaprimagenerica'),
(38, 'Can change materia prima generica', 10, 'change_materiaprimagenerica'),
(39, 'Can delete materia prima generica', 10, 'delete_materiaprimagenerica'),
(40, 'Can view materia prima generica', 10, 'view_materiaprimagenerica'),
(41, 'Can add user', 11, 'add_user'),
(42, 'Can change user', 11, 'change_user'),
(43, 'Can delete user', 11, 'delete_user'),
(44, 'Can view user', 11, 'view_user'),
(45, 'Can add user audit', 12, 'add_useraudit'),
(46, 'Can change user audit', 12, 'change_useraudit'),
(47, 'Can delete user audit', 12, 'delete_useraudit'),
(48, 'Can view user audit', 12, 'view_useraudit'),
(49, 'Can add insumos generico', 13, 'add_insumosgenerico'),
(50, 'Can change insumos generico', 13, 'change_insumosgenerico'),
(51, 'Can delete insumos generico', 13, 'delete_insumosgenerico'),
(52, 'Can view insumos generico', 13, 'view_insumosgenerico'),
(53, 'Can add implementos trabajo', 14, 'add_implementostrabajo'),
(54, 'Can change implementos trabajo', 14, 'change_implementostrabajo'),
(55, 'Can delete implementos trabajo', 14, 'delete_implementostrabajo'),
(56, 'Can view implementos trabajo', 14, 'view_implementostrabajo'),
(57, 'Can add proveedores', 15, 'add_proveedores'),
(58, 'Can change proveedores', 15, 'change_proveedores'),
(59, 'Can delete proveedores', 15, 'delete_proveedores'),
(60, 'Can view proveedores', 15, 'view_proveedores'),
(61, 'Can add proveedores audit', 16, 'add_proveedoresaudit'),
(62, 'Can change proveedores audit', 16, 'change_proveedoresaudit'),
(63, 'Can delete proveedores audit', 16, 'delete_proveedoresaudit'),
(64, 'Can view proveedores audit', 16, 'view_proveedoresaudit'),
(65, 'Can add pedidos audit', 17, 'add_pedidosaudit'),
(66, 'Can change pedidos audit', 17, 'change_pedidosaudit'),
(67, 'Can delete pedidos audit', 17, 'delete_pedidosaudit'),
(68, 'Can view pedidos audit', 17, 'view_pedidosaudit'),
(69, 'Can add pedidos', 18, 'add_pedidos'),
(70, 'Can change pedidos', 18, 'change_pedidos'),
(71, 'Can delete pedidos', 18, 'delete_pedidos'),
(72, 'Can view pedidos', 18, 'view_pedidos'),
(73, 'Can add facturas', 19, 'add_facturas'),
(74, 'Can change facturas', 19, 'change_facturas'),
(75, 'Can delete facturas', 19, 'delete_facturas'),
(76, 'Can view facturas', 19, 'view_facturas'),
(77, 'Can add facturas audit', 20, 'add_facturasaudit'),
(78, 'Can change facturas audit', 20, 'change_facturasaudit'),
(79, 'Can delete facturas audit', 20, 'delete_facturasaudit'),
(80, 'Can view facturas audit', 20, 'view_facturasaudit'),
(81, 'Can add iva', 21, 'add_iva'),
(82, 'Can change iva', 21, 'change_iva'),
(83, 'Can delete iva', 21, 'delete_iva'),
(84, 'Can view iva', 21, 'view_iva'),
(85, 'Can add coccion', 22, 'add_coccion'),
(86, 'Can change coccion', 22, 'change_coccion'),
(87, 'Can delete coccion', 22, 'delete_coccion'),
(88, 'Can view coccion', 22, 'view_coccion'),
(89, 'Can add equipos', 23, 'add_equipos'),
(90, 'Can change equipos', 23, 'change_equipos'),
(91, 'Can delete equipos', 23, 'delete_equipos'),
(92, 'Can view equipos', 23, 'view_equipos'),
(93, 'Can add picado', 24, 'add_picado'),
(94, 'Can change picado', 24, 'change_picado'),
(95, 'Can delete picado', 24, 'delete_picado'),
(96, 'Can view picado', 24, 'view_picado'),
(97, 'Can add procesamiento', 25, 'add_procesamiento'),
(98, 'Can change procesamiento', 25, 'change_procesamiento'),
(99, 'Can delete procesamiento', 25, 'delete_procesamiento'),
(100, 'Can view procesamiento', 25, 'view_procesamiento'),
(101, 'Can add producto terminado', 26, 'add_productoterminado'),
(102, 'Can change producto terminado', 26, 'change_productoterminado'),
(103, 'Can delete producto terminado', 26, 'delete_productoterminado'),
(104, 'Can view producto terminado', 26, 'view_productoterminado'),
(105, 'Can add existencia pt', 27, 'add_existenciapt'),
(106, 'Can change existencia pt', 27, 'change_existenciapt'),
(107, 'Can delete existencia pt', 27, 'delete_existenciapt'),
(108, 'Can view existencia pt', 27, 'view_existenciapt'),
(109, 'Can add empaque producto terminado', 28, 'add_empaqueproductoterminado'),
(110, 'Can change empaque producto terminado', 28, 'change_empaqueproductoterminado'),
(111, 'Can delete empaque producto terminado', 28, 'delete_empaqueproductoterminado'),
(112, 'Can view empaque producto terminado', 28, 'view_empaqueproductoterminado'),
(113, 'Can add caracteristicas organolepticas pt', 29, 'add_caracteristicasorganolepticaspt'),
(114, 'Can change caracteristicas organolepticas pt', 29, 'change_caracteristicasorganolepticaspt'),
(115, 'Can delete caracteristicas organolepticas pt', 29, 'delete_caracteristicasorganolepticaspt'),
(116, 'Can view caracteristicas organolepticas pt', 29, 'view_caracteristicasorganolepticaspt'),
(117, 'Can add producto terminado generico', 30, 'add_productoterminadogenerico'),
(118, 'Can change producto terminado generico', 30, 'change_productoterminadogenerico'),
(119, 'Can delete producto terminado generico', 30, 'delete_productoterminadogenerico'),
(120, 'Can view producto terminado generico', 30, 'view_productoterminadogenerico'),
(121, 'Can add vacio', 31, 'add_vacio'),
(122, 'Can change vacio', 31, 'change_vacio'),
(123, 'Can delete vacio', 31, 'delete_vacio'),
(124, 'Can view vacio', 31, 'view_vacio'),
(125, 'Can add existencia mp', 32, 'add_existenciamp'),
(126, 'Can change existencia mp', 32, 'change_existenciamp'),
(127, 'Can delete existencia mp', 32, 'delete_existenciamp'),
(128, 'Can view existencia mp', 32, 'view_existenciamp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(32, 'existencias', 'existenciamp'),
(19, 'facturas', 'facturas'),
(20, 'facturas', 'facturasaudit'),
(21, 'facturas', 'iva'),
(14, 'insumos', 'implementostrabajo'),
(13, 'insumos', 'insumosgenerico'),
(6, 'materiaprima', 'caracteristicasorganolepticas'),
(7, 'materiaprima', 'desinfeccion'),
(8, 'materiaprima', 'desinfectantegenerico'),
(9, 'materiaprima', 'materiaprima'),
(10, 'materiaprima', 'materiaprimagenerica'),
(18, 'pedidos', 'pedidos'),
(17, 'pedidos', 'pedidosaudit'),
(22, 'procesamiento', 'coccion'),
(23, 'procesamiento', 'equipos'),
(24, 'procesamiento', 'picado'),
(25, 'procesamiento', 'procesamiento'),
(29, 'productoterminado', 'caracteristicasorganolepticaspt'),
(28, 'productoterminado', 'empaqueproductoterminado'),
(27, 'productoterminado', 'existenciapt'),
(26, 'productoterminado', 'productoterminado'),
(30, 'productoterminado', 'productoterminadogenerico'),
(31, 'productoterminado', 'vacio'),
(15, 'proveedores', 'proveedores'),
(16, 'proveedores', 'proveedoresaudit'),
(5, 'sessions', 'session'),
(11, 'users', 'user'),
(12, 'users', 'useraudit');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-05-06 22:10:59.140326'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-05-06 22:10:59.302406'),
(3, 'auth', '0001_initial', '2024-05-06 22:10:59.734428'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-05-06 22:10:59.853409'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-05-06 22:10:59.869037'),
(6, 'auth', '0004_alter_user_username_opts', '2024-05-06 22:10:59.891497'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-05-06 22:10:59.972402'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-05-06 22:11:00.006507'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-05-06 22:11:00.038911'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-05-06 22:11:00.129420'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-05-06 22:11:00.160263'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-05-06 22:11:00.224312'),
(13, 'auth', '0011_update_proxy_permissions', '2024-05-06 22:11:00.295743'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-05-06 22:11:00.330003'),
(15, 'users', '0001_initial', '2024-05-06 22:11:01.221971'),
(16, 'admin', '0001_initial', '2024-05-06 22:11:01.445884'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-05-06 22:11:01.477807'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-05-06 22:11:01.524426'),
(19, 'materiaprima', '0001_initial', '2024-05-06 22:11:01.668366'),
(20, 'existencias', '0001_initial', '2024-05-06 22:11:01.699618'),
(21, 'existencias', '0002_initial', '2024-05-06 22:11:01.836534'),
(22, 'proveedores', '0001_initial', '2024-05-06 22:11:01.947603'),
(23, 'insumos', '0001_initial', '2024-05-06 22:11:02.633498'),
(24, 'pedidos', '0001_initial', '2024-05-06 22:11:03.213657'),
(25, 'pedidos', '0002_initial', '2024-05-06 22:11:03.353040'),
(26, 'facturas', '0001_initial', '2024-05-06 22:11:03.471285'),
(27, 'facturas', '0002_initial', '2024-05-06 22:11:03.584566'),
(28, 'facturas', '0003_initial', '2024-05-06 22:11:03.702083'),
(29, 'facturas', '0004_initial', '2024-05-06 22:11:04.248979'),
(30, 'materiaprima', '0002_initial', '2024-05-06 22:11:04.860507'),
(31, 'pedidos', '0003_initial', '2024-05-06 22:11:05.268775'),
(32, 'procesamiento', '0001_initial', '2024-05-06 22:11:05.910480'),
(33, 'productoterminado', '0001_initial', '2024-05-06 22:11:07.008353'),
(34, 'proveedores', '0002_initial', '2024-05-06 22:11:07.354119'),
(35, 'sessions', '0001_initial', '2024-05-06 22:11:07.502179');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('xg45gyjulqjjwttjvor7voq56fpaiz6z', '.eJxVjMEOwiAQRP-FsyFbF2Hx6N1vICysUjU0Ke3J-O_SpAe9zCTzZuatQlyXEtYmcxizOiujDr8Zx_SUuoH8iPU-6TTVZR5ZbxW906avU5bXZe_-HZTYSl9HYsIMPACISZAw3ryw9WwNdIOTd2gECQawlLMTc0RnPDogcl3V5wvVBzaJ:1s46gq:bMPgi_Ft5GH0eDa2dhIHIvk5H0LXLTK_AfquhBV1qFk', '2024-05-20 22:20:08.035714');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `existencias_existenciamp`
--

CREATE TABLE `existencias_existenciamp` (
  `codigo` int(10) UNSIGNED NOT NULL CHECK (`codigo` >= 0),
  `cantidadIngresada` int(10) UNSIGNED NOT NULL CHECK (`cantidadIngresada` >= 0),
  `cantidadEgresada` int(10) UNSIGNED NOT NULL CHECK (`cantidadEgresada` >= 0),
  `mp_lote_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas_facturas`
--

CREATE TABLE `facturas_facturas` (
  `num_factura` int(10) UNSIGNED NOT NULL CHECK (`num_factura` >= 0),
  `fac_fechaLlegada` date NOT NULL,
  `fac_numeroUnidades` int(10) UNSIGNED NOT NULL CHECK (`fac_numeroUnidades` >= 0),
  `fac_subtotal` double NOT NULL,
  `fac_total` double NOT NULL,
  `img_factura` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `fac_numeroPedido_id` int(11) NOT NULL,
  `fac_proveedor_id` int(11) NOT NULL,
  `fac_iva_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas_facturasaudit`
--

CREATE TABLE `facturas_facturasaudit` (
  `id` bigint(20) NOT NULL,
  `action` varchar(1) NOT NULL,
  `details` longtext DEFAULT NULL,
  `changed_at` datetime(6) NOT NULL,
  `changed_by_id` bigint(20) DEFAULT NULL,
  `factura_id` int(10) UNSIGNED NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `proveedor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas_iva`
--

CREATE TABLE `facturas_iva` (
  `id` bigint(20) NOT NULL,
  `valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facturas_iva`
--

INSERT INTO `facturas_iva` (`id`, `valor`) VALUES
(1, 0),
(2, 5),
(3, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos_implementostrabajo`
--

CREATE TABLE `insumos_implementostrabajo` (
  `it_codigo` int(11) NOT NULL,
  `it_cantidad` int(11) NOT NULL,
  `it_fechaEntrega` date NOT NULL,
  `it_estado` varchar(1) NOT NULL,
  `it_nombre_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos_insumosgenerico`
--

CREATE TABLE `insumos_insumosgenerico` (
  `id` bigint(20) NOT NULL,
  `it_nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `insumos_insumosgenerico`
--

INSERT INTO `insumos_insumosgenerico` (`id`, `it_nombre`) VALUES
(1, 'Guantes'),
(2, 'Cofias'),
(3, 'Guantes de goma'),
(4, 'Delantal'),
(5, 'Bolsas x600 G');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiaprima_caracteristicasorganolepticas`
--

CREATE TABLE `materiaprima_caracteristicasorganolepticas` (
  `id` bigint(20) NOT NULL,
  `olor` tinyint(1) NOT NULL,
  `textura` tinyint(1) NOT NULL,
  `limpieza` tinyint(1) NOT NULL,
  `empaque` tinyint(1) NOT NULL,
  `color` tinyint(1) NOT NULL,
  `estado` varchar(1) NOT NULL,
  `mp_lote_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiaprima_desinfeccion`
--

CREATE TABLE `materiaprima_desinfeccion` (
  `id` bigint(20) NOT NULL,
  `concentracion` int(11) NOT NULL,
  `tiempo_inicio` time(6) NOT NULL,
  `tiempo_fin` time(6) NOT NULL,
  `obsevacion` varchar(100) DEFAULT NULL,
  `responsable_id` bigint(20) DEFAULT NULL,
  `des_nombre_id` bigint(20) NOT NULL,
  `mp_lote_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiaprima_desinfectantegenerico`
--

CREATE TABLE `materiaprima_desinfectantegenerico` (
  `id` bigint(20) NOT NULL,
  `des_nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materiaprima_desinfectantegenerico`
--

INSERT INTO `materiaprima_desinfectantegenerico` (`id`, `des_nombre`) VALUES
(1, 'Cloro'),
(2, 'Peróxido de Hidrógeno (Agua Oxigenada)'),
(3, 'Vinagre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiaprima_materiaprima`
--

CREATE TABLE `materiaprima_materiaprima` (
  `mp_lote` int(11) NOT NULL,
  `mp_cantidad` int(11) NOT NULL,
  `mp_fechallegada` date NOT NULL,
  `mp_fechavencimiento` date NOT NULL,
  `mp_nombre_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiaprima_materiaprimagenerica`
--

CREATE TABLE `materiaprima_materiaprimagenerica` (
  `id` bigint(20) NOT NULL,
  `mp_nombre` varchar(50) NOT NULL,
  `mp_tipo` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materiaprima_materiaprimagenerica`
--

INSERT INTO `materiaprima_materiaprimagenerica` (`id`, `mp_nombre`, `mp_tipo`) VALUES
(1, 'Pechuga de Pollo', '0'),
(2, 'Pimenton', '2'),
(3, 'Sal', '4'),
(4, 'Chorizo', '0'),
(5, 'Polvo para mezcla', '4'),
(6, 'Ajos', '2'),
(7, 'BBQ', '4'),
(8, 'Mayonesa', '4'),
(9, 'Vinagre', '4'),
(10, 'Zumo de Limón', '4'),
(11, 'Azúcar', '4'),
(12, 'Cilantro', '2'),
(13, 'Ají', '2'),
(14, 'Pimienta', '4'),
(15, 'Tomate', '3'),
(16, 'Cebolla', '2'),
(17, 'Limón', '3'),
(18, 'Pulpa de aguacate', '3'),
(19, 'Mazorca', '2'),
(20, 'Panela', '4'),
(21, 'Carne', '0'),
(22, 'Aguacate', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_pedidos`
--

CREATE TABLE `pedidos_pedidos` (
  `id` int(11) NOT NULL,
  `ref_pedido` int(11) NOT NULL,
  `pedi_fecha` date NOT NULL,
  `pedi_estado` varchar(1) NOT NULL,
  `pedi_comprobatePago` varchar(45) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `pedi_proveedor_id` int(11) NOT NULL,
  `pedi_user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_pedidosaudit`
--

CREATE TABLE `pedidos_pedidosaudit` (
  `id` bigint(20) NOT NULL,
  `action` varchar(1) NOT NULL,
  `details` longtext DEFAULT NULL,
  `changed_at` datetime(6) NOT NULL,
  `changed_by_id` bigint(20) DEFAULT NULL,
  `pedido_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_pedidos_pedi_insumos`
--

CREATE TABLE `pedidos_pedidos_pedi_insumos` (
  `id` bigint(20) NOT NULL,
  `pedidos_id` int(11) NOT NULL,
  `implementostrabajo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_pedidos_pedi_materiaprima`
--

CREATE TABLE `pedidos_pedidos_pedi_materiaprima` (
  `id` bigint(20) NOT NULL,
  `pedidos_id` int(11) NOT NULL,
  `materiaprima_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesamiento_coccion`
--

CREATE TABLE `procesamiento_coccion` (
  `id_coccion` int(11) NOT NULL,
  `cocc_nombre` varchar(50) NOT NULL,
  `cocc_cantidad` int(11) NOT NULL,
  `cocc_pesoMPposproceso` double NOT NULL,
  `cocc_merma` double NOT NULL,
  `cocc_tiempoCoccion` time(6) NOT NULL,
  `cocc_temperaturafinal` double NOT NULL,
  `cocc_check` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesamiento_equipos`
--

CREATE TABLE `procesamiento_equipos` (
  `id_equipo` int(11) NOT NULL,
  `equi_encargadoCocina` varchar(50) NOT NULL,
  `equi_encargadoEntrega` varchar(50) NOT NULL,
  `equi_calidad` varchar(1) NOT NULL,
  `equi_nombre` varchar(50) NOT NULL,
  `equi_check` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesamiento_picado`
--

CREATE TABLE `procesamiento_picado` (
  `cod_procesamiento` int(11) NOT NULL,
  `pica_nombre` varchar(50) NOT NULL,
  `pica_cantidad` int(11) NOT NULL,
  `pica_pesoMPposproceso` double NOT NULL,
  `pica_merma` double NOT NULL,
  `pica_check` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `procesamiento_picado`
--

INSERT INTO `procesamiento_picado` (`cod_procesamiento`, `pica_nombre`, `pica_cantidad`, `pica_pesoMPposproceso`, `pica_merma`, `pica_check`) VALUES
(1, 'algo aqui', 239, 38, 200, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesamiento_procesamiento`
--

CREATE TABLE `procesamiento_procesamiento` (
  `cod_procesamiento` int(11) NOT NULL,
  `proces_pesoMP` double NOT NULL,
  `proces_pesoPostProceso` double NOT NULL,
  `proces_merma` double NOT NULL,
  `proces_estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesamiento_procesamiento_proces_materiaprima`
--

CREATE TABLE `procesamiento_procesamiento_proces_materiaprima` (
  `id` bigint(20) NOT NULL,
  `procesamiento_id` int(11) NOT NULL,
  `materiaprima_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productoterminado_caracteristicasorganolepticaspt`
--

CREATE TABLE `productoterminado_caracteristicasorganolepticaspt` (
  `id` bigint(20) NOT NULL,
  `observaciones` varchar(50) NOT NULL,
  `olor` tinyint(1) NOT NULL,
  `sabor` tinyint(1) NOT NULL,
  `textura` tinyint(1) NOT NULL,
  `color` tinyint(1) NOT NULL,
  `estado` varchar(1) NOT NULL,
  `pt_lote_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productoterminado_empaqueproductoterminado`
--

CREATE TABLE `productoterminado_empaqueproductoterminado` (
  `id` bigint(20) NOT NULL,
  `emp_pesoKg` double NOT NULL,
  `emp_cantidadBolsas` int(11) NOT NULL,
  `pt_lote_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productoterminado_existenciapt`
--

CREATE TABLE `productoterminado_existenciapt` (
  `id` bigint(20) NOT NULL,
  `exisPT_CantidadIngresada` int(11) NOT NULL,
  `exisPT_CantidadEgresada` int(11) NOT NULL,
  `pt_lote_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productoterminado_productoterminado`
--

CREATE TABLE `productoterminado_productoterminado` (
  `pt_lote` int(11) NOT NULL,
  `pt_cantidad` int(11) NOT NULL,
  `pt_fechapreparacion` date NOT NULL,
  `pt_fechavencimiento` date NOT NULL,
  `idCoccion_id` int(11) DEFAULT NULL,
  `idPicado_id` int(11) DEFAULT NULL,
  `pt_nombre_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productoterminado_productoterminadogenerico`
--

CREATE TABLE `productoterminado_productoterminadogenerico` (
  `id` bigint(20) NOT NULL,
  `pt_nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productoterminado_productoterminadogenerico`
--

INSERT INTO `productoterminado_productoterminadogenerico` (`id`, `pt_nombre`) VALUES
(1, 'Pollo Desmechado'),
(2, 'Chorizo Picado'),
(3, 'Salsa de la Casa'),
(4, 'Salsa de Cilantro'),
(5, 'Pico de Gallo'),
(6, 'Guacamole'),
(7, 'Mazorca Desgranada'),
(8, 'Carne Desmechada'),
(9, 'Pulpa de aguacate');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productoterminado_productoterminadogenerico_materiaprimausada`
--

CREATE TABLE `productoterminado_productoterminadogenerico_materiaprimausada` (
  `id` bigint(20) NOT NULL,
  `productoterminadogenerico_id` bigint(20) NOT NULL,
  `materiaprimagenerica_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productoterminado_productoterminadogenerico_materiaprimausada`
--

INSERT INTO `productoterminado_productoterminadogenerico_materiaprimausada` (`id`, `productoterminadogenerico_id`, `materiaprimagenerica_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 3, 5),
(6, 3, 6),
(7, 3, 7),
(8, 4, 3),
(9, 4, 6),
(10, 4, 8),
(11, 4, 9),
(12, 4, 10),
(13, 4, 11),
(14, 4, 12),
(15, 4, 13),
(16, 5, 3),
(17, 5, 9),
(18, 5, 12),
(19, 5, 15),
(20, 5, 16),
(21, 5, 17),
(22, 6, 3),
(23, 6, 9),
(24, 6, 12),
(25, 6, 13),
(26, 6, 15),
(27, 6, 16),
(28, 6, 17),
(29, 6, 18),
(30, 7, 19),
(31, 7, 20),
(32, 8, 2),
(33, 8, 3),
(34, 8, 21),
(35, 9, 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productoterminado_vacio`
--

CREATE TABLE `productoterminado_vacio` (
  `id` bigint(20) NOT NULL,
  `cantidad_bolsas_rechazadas` int(11) NOT NULL,
  `cantidad_bolsas_liberadas` int(11) NOT NULL,
  `pt_lote_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_proveedores`
--

CREATE TABLE `proveedores_proveedores` (
  `prov_id` int(11) NOT NULL,
  `nit` int(11) NOT NULL,
  `prov_nombre` varchar(40) NOT NULL,
  `prov_telefono` varchar(10) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_proveedoresaudit`
--

CREATE TABLE `proveedores_proveedoresaudit` (
  `id` bigint(20) NOT NULL,
  `action` varchar(1) NOT NULL,
  `details` longtext DEFAULT NULL,
  `changed_at` datetime(6) NOT NULL,
  `changed_by_id` bigint(20) DEFAULT NULL,
  `proveedor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_user`
--

CREATE TABLE `users_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `first_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_employee` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users_user`
--

INSERT INTO `users_user` (`id`, `password`, `last_login`, `first_name`, `email`, `date_joined`, `username`, `name`, `last_name`, `is_admin`, `is_employee`, `is_staff`, `is_superuser`, `is_active`, `deleted`) VALUES
(1, 'pbkdf2_sha256$720000$6roiVQl2QxBuki4zFtLDYe$4vflIwPDRbTK1/OgD5hoJjVmi2DFUaF6ftHHVIcJKVU=', '2024-05-06 17:21:09.230970', '', '', '2024-05-04 22:57:43.000000', 'vivian', 'vivian', 'hincapie', 1, 0, 1, 1, 1, 0),
(2, 'pbkdf2_sha256$720000$HowSwCtLihx5hMEdXIBC5W$Xn0hAgKD+nR06p2/BazYYoTSDuz6Eitmpgb0eYDAbsc=', NULL, '', '', '2024-05-06 20:34:17.000000', 'johan', 'Johan', 'Tovar', 1, 0, 1, 1, 1, 0),
(3, 'pbkdf2_sha256$720000$LRc3cfODr9aR3AozjMUjYI$0N+4j36IJYcnNksmZ10VxHZ/WP7SfpSfktcTMq3jFXs=', NULL, '', '', '2024-05-06 20:35:32.000000', 'kevin', 'Kevin', 'Albarracin', 1, 0, 1, 1, 1, 0),
(4, 'pbkdf2_sha256$720000$mvBGT0fChzDlnAP6XcdRrh$N8Pi61BzW14jA/1Tg2sZ2c5L05VDabPL3/s+Cai+BnU=', '2024-05-06 22:20:08.020090', '', '', '2024-05-06 20:35:59.000000', 'daniel', 'Daniel', 'Castro', 1, 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_useraudit`
--

CREATE TABLE `users_useraudit` (
  `id` bigint(20) NOT NULL,
  `action` varchar(1) NOT NULL,
  `details` longtext DEFAULT NULL,
  `changed_at` datetime(6) NOT NULL,
  `changed_by_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users_useraudit`
--

INSERT INTO `users_useraudit` (`id`, `action`, `details`, `changed_at`, `changed_by_id`, `user_id`) VALUES
(1, 'U', 'La información de Daniel Castro ha sido actualizado.', '2024-05-06 22:20:08.035714', 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_user_groups`
--

CREATE TABLE `users_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_user_user_permissions`
--

CREATE TABLE `users_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `existencias_existenciamp`
--
ALTER TABLE `existencias_existenciamp`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `existencias_existenc_mp_lote_id_0a5a77d4_fk_materiapr` (`mp_lote_id`);

--
-- Indices de la tabla `facturas_facturas`
--
ALTER TABLE `facturas_facturas`
  ADD PRIMARY KEY (`num_factura`),
  ADD KEY `facturas_facturas_fac_numeroPedido_id_fd746173_fk_pedidos_p` (`fac_numeroPedido_id`),
  ADD KEY `facturas_facturas_fac_proveedor_id_88c2f86a_fk_proveedor` (`fac_proveedor_id`),
  ADD KEY `facturas_facturas_fac_iva_id_bbfc3a11_fk_facturas_iva_id` (`fac_iva_id`);

--
-- Indices de la tabla `facturas_facturasaudit`
--
ALTER TABLE `facturas_facturasaudit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facturas_facturasaudit_changed_by_id_cc12251a_fk_users_user_id` (`changed_by_id`),
  ADD KEY `facturas_facturasaud_factura_id_96ecab91_fk_facturas_` (`factura_id`),
  ADD KEY `facturas_facturasaudit_pedido_id_ea477019_fk_pedidos_pedidos_id` (`pedido_id`),
  ADD KEY `facturas_facturasaud_proveedor_id_7028722d_fk_proveedor` (`proveedor_id`);

--
-- Indices de la tabla `facturas_iva`
--
ALTER TABLE `facturas_iva`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `insumos_implementostrabajo`
--
ALTER TABLE `insumos_implementostrabajo`
  ADD PRIMARY KEY (`it_codigo`),
  ADD KEY `insumos_implementost_it_nombre_id_c42e2b27_fk_insumos_i` (`it_nombre_id`);

--
-- Indices de la tabla `insumos_insumosgenerico`
--
ALTER TABLE `insumos_insumosgenerico`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materiaprima_caracteristicasorganolepticas`
--
ALTER TABLE `materiaprima_caracteristicasorganolepticas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materiaprima_caracte_mp_lote_id_95f75499_fk_materiapr` (`mp_lote_id`);

--
-- Indices de la tabla `materiaprima_desinfeccion`
--
ALTER TABLE `materiaprima_desinfeccion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materiaprima_desinfe_responsable_id_2ff1c09f_fk_users_use` (`responsable_id`),
  ADD KEY `materiaprima_desinfe_des_nombre_id_7b4537f3_fk_materiapr` (`des_nombre_id`),
  ADD KEY `materiaprima_desinfe_mp_lote_id_62d9fec8_fk_materiapr` (`mp_lote_id`);

--
-- Indices de la tabla `materiaprima_desinfectantegenerico`
--
ALTER TABLE `materiaprima_desinfectantegenerico`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materiaprima_materiaprima`
--
ALTER TABLE `materiaprima_materiaprima`
  ADD PRIMARY KEY (`mp_lote`),
  ADD KEY `materiaprima_materia_mp_nombre_id_fbd4ce88_fk_materiapr` (`mp_nombre_id`);

--
-- Indices de la tabla `materiaprima_materiaprimagenerica`
--
ALTER TABLE `materiaprima_materiaprimagenerica`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos_pedidos`
--
ALTER TABLE `pedidos_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref_pedido` (`ref_pedido`),
  ADD KEY `pedidos_pedidos_pedi_proveedor_id_25486401_fk_proveedor` (`pedi_proveedor_id`),
  ADD KEY `pedidos_pedidos_pedi_user_id_e51c09ad_fk_users_user_id` (`pedi_user_id`);

--
-- Indices de la tabla `pedidos_pedidosaudit`
--
ALTER TABLE `pedidos_pedidosaudit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidos_pedidosaudit_changed_by_id_8fc62972_fk_users_user_id` (`changed_by_id`),
  ADD KEY `pedidos_pedidosaudit_pedido_id_e6a0dffb_fk_pedidos_pedidos_id` (`pedido_id`);

--
-- Indices de la tabla `pedidos_pedidos_pedi_insumos`
--
ALTER TABLE `pedidos_pedidos_pedi_insumos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pedidos_pedidos_pedi_ins_pedidos_id_implementostr_7c0c5e55_uniq` (`pedidos_id`,`implementostrabajo_id`),
  ADD KEY `pedidos_pedidos_pedi_implementostrabajo_i_eb66a06e_fk_insumos_i` (`implementostrabajo_id`);

--
-- Indices de la tabla `pedidos_pedidos_pedi_materiaprima`
--
ALTER TABLE `pedidos_pedidos_pedi_materiaprima`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pedidos_pedidos_pedi_mat_pedidos_id_materiaprima__317c5dab_uniq` (`pedidos_id`,`materiaprima_id`),
  ADD KEY `pedidos_pedidos_pedi_materiaprima_id_68484054_fk_materiapr` (`materiaprima_id`);

--
-- Indices de la tabla `procesamiento_coccion`
--
ALTER TABLE `procesamiento_coccion`
  ADD PRIMARY KEY (`id_coccion`);

--
-- Indices de la tabla `procesamiento_equipos`
--
ALTER TABLE `procesamiento_equipos`
  ADD PRIMARY KEY (`id_equipo`);

--
-- Indices de la tabla `procesamiento_picado`
--
ALTER TABLE `procesamiento_picado`
  ADD PRIMARY KEY (`cod_procesamiento`);

--
-- Indices de la tabla `procesamiento_procesamiento`
--
ALTER TABLE `procesamiento_procesamiento`
  ADD PRIMARY KEY (`cod_procesamiento`);

--
-- Indices de la tabla `procesamiento_procesamiento_proces_materiaprima`
--
ALTER TABLE `procesamiento_procesamiento_proces_materiaprima`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `procesamiento_procesamie_procesamiento_id_materia_3cf6dd58_uniq` (`procesamiento_id`,`materiaprima_id`),
  ADD KEY `procesamiento_proces_materiaprima_id_2475e44e_fk_materiapr` (`materiaprima_id`);

--
-- Indices de la tabla `productoterminado_caracteristicasorganolepticaspt`
--
ALTER TABLE `productoterminado_caracteristicasorganolepticaspt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoterminado_ca_pt_lote_id_f24d0d6e_fk_productot` (`pt_lote_id`);

--
-- Indices de la tabla `productoterminado_empaqueproductoterminado`
--
ALTER TABLE `productoterminado_empaqueproductoterminado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoterminado_em_pt_lote_id_38d19ed1_fk_productot` (`pt_lote_id`);

--
-- Indices de la tabla `productoterminado_existenciapt`
--
ALTER TABLE `productoterminado_existenciapt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoterminado_ex_pt_lote_id_a8a4490b_fk_productot` (`pt_lote_id`);

--
-- Indices de la tabla `productoterminado_productoterminado`
--
ALTER TABLE `productoterminado_productoterminado`
  ADD PRIMARY KEY (`pt_lote`),
  ADD KEY `productoterminado_pr_pt_nombre_id_ff84b486_fk_productot` (`pt_nombre_id`),
  ADD KEY `productoterminado_pr_idCoccion_id_695be24c_fk_procesami` (`idCoccion_id`),
  ADD KEY `productoterminado_pr_idPicado_id_64723a97_fk_procesami` (`idPicado_id`);

--
-- Indices de la tabla `productoterminado_productoterminadogenerico`
--
ALTER TABLE `productoterminado_productoterminadogenerico`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productoterminado_productoterminadogenerico_materiaprimausada`
--
ALTER TABLE `productoterminado_productoterminadogenerico_materiaprimausada`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `productoterminado_produc_productoterminadogeneric_4c9db2c7_uniq` (`productoterminadogenerico_id`,`materiaprimagenerica_id`),
  ADD KEY `productoterminado_pr_materiaprimagenerica_11048d81_fk_materiapr` (`materiaprimagenerica_id`);

--
-- Indices de la tabla `productoterminado_vacio`
--
ALTER TABLE `productoterminado_vacio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoterminado_va_pt_lote_id_2bc8447f_fk_productot` (`pt_lote_id`);

--
-- Indices de la tabla `proveedores_proveedores`
--
ALTER TABLE `proveedores_proveedores`
  ADD PRIMARY KEY (`prov_id`),
  ADD UNIQUE KEY `nit` (`nit`);

--
-- Indices de la tabla `proveedores_proveedoresaudit`
--
ALTER TABLE `proveedores_proveedoresaudit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proveedores_proveedo_changed_by_id_76d2348e_fk_users_use` (`changed_by_id`),
  ADD KEY `proveedores_proveedo_proveedor_id_df80d758_fk_proveedor` (`proveedor_id`);

--
-- Indices de la tabla `users_user`
--
ALTER TABLE `users_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `users_useraudit`
--
ALTER TABLE `users_useraudit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_useraudit_changed_by_id_d12f96be_fk_users_user_id` (`changed_by_id`),
  ADD KEY `users_useraudit_user_id_f6dddc0f_fk_users_user_id` (`user_id`);

--
-- Indices de la tabla `users_user_groups`
--
ALTER TABLE `users_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  ADD KEY `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_user_permissions_user_id_permission_id_43338c45_uniq` (`user_id`,`permission_id`),
  ADD KEY `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `facturas_facturasaudit`
--
ALTER TABLE `facturas_facturasaudit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facturas_iva`
--
ALTER TABLE `facturas_iva`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `insumos_implementostrabajo`
--
ALTER TABLE `insumos_implementostrabajo`
  MODIFY `it_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `insumos_insumosgenerico`
--
ALTER TABLE `insumos_insumosgenerico`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `materiaprima_caracteristicasorganolepticas`
--
ALTER TABLE `materiaprima_caracteristicasorganolepticas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materiaprima_desinfeccion`
--
ALTER TABLE `materiaprima_desinfeccion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materiaprima_desinfectantegenerico`
--
ALTER TABLE `materiaprima_desinfectantegenerico`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `materiaprima_materiaprimagenerica`
--
ALTER TABLE `materiaprima_materiaprimagenerica`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `pedidos_pedidos`
--
ALTER TABLE `pedidos_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos_pedidosaudit`
--
ALTER TABLE `pedidos_pedidosaudit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos_pedidos_pedi_insumos`
--
ALTER TABLE `pedidos_pedidos_pedi_insumos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos_pedidos_pedi_materiaprima`
--
ALTER TABLE `pedidos_pedidos_pedi_materiaprima`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `procesamiento_coccion`
--
ALTER TABLE `procesamiento_coccion`
  MODIFY `id_coccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `procesamiento_equipos`
--
ALTER TABLE `procesamiento_equipos`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `procesamiento_picado`
--
ALTER TABLE `procesamiento_picado`
  MODIFY `cod_procesamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `procesamiento_procesamiento`
--
ALTER TABLE `procesamiento_procesamiento`
  MODIFY `cod_procesamiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `procesamiento_procesamiento_proces_materiaprima`
--
ALTER TABLE `procesamiento_procesamiento_proces_materiaprima`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productoterminado_caracteristicasorganolepticaspt`
--
ALTER TABLE `productoterminado_caracteristicasorganolepticaspt`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productoterminado_empaqueproductoterminado`
--
ALTER TABLE `productoterminado_empaqueproductoterminado`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productoterminado_existenciapt`
--
ALTER TABLE `productoterminado_existenciapt`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productoterminado_productoterminado`
--
ALTER TABLE `productoterminado_productoterminado`
  MODIFY `pt_lote` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productoterminado_productoterminadogenerico`
--
ALTER TABLE `productoterminado_productoterminadogenerico`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productoterminado_productoterminadogenerico_materiaprimausada`
--
ALTER TABLE `productoterminado_productoterminadogenerico_materiaprimausada`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `productoterminado_vacio`
--
ALTER TABLE `productoterminado_vacio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedores_proveedores`
--
ALTER TABLE `proveedores_proveedores`
  MODIFY `prov_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedores_proveedoresaudit`
--
ALTER TABLE `proveedores_proveedoresaudit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users_user`
--
ALTER TABLE `users_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users_useraudit`
--
ALTER TABLE `users_useraudit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users_user_groups`
--
ALTER TABLE `users_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Filtros para la tabla `existencias_existenciamp`
--
ALTER TABLE `existencias_existenciamp`
  ADD CONSTRAINT `existencias_existenc_mp_lote_id_0a5a77d4_fk_materiapr` FOREIGN KEY (`mp_lote_id`) REFERENCES `materiaprima_materiaprima` (`mp_lote`);

--
-- Filtros para la tabla `facturas_facturas`
--
ALTER TABLE `facturas_facturas`
  ADD CONSTRAINT `facturas_facturas_fac_iva_id_bbfc3a11_fk_facturas_iva_id` FOREIGN KEY (`fac_iva_id`) REFERENCES `facturas_iva` (`id`),
  ADD CONSTRAINT `facturas_facturas_fac_numeroPedido_id_fd746173_fk_pedidos_p` FOREIGN KEY (`fac_numeroPedido_id`) REFERENCES `pedidos_pedidos` (`id`),
  ADD CONSTRAINT `facturas_facturas_fac_proveedor_id_88c2f86a_fk_proveedor` FOREIGN KEY (`fac_proveedor_id`) REFERENCES `proveedores_proveedores` (`prov_id`);

--
-- Filtros para la tabla `facturas_facturasaudit`
--
ALTER TABLE `facturas_facturasaudit`
  ADD CONSTRAINT `facturas_facturasaud_factura_id_96ecab91_fk_facturas_` FOREIGN KEY (`factura_id`) REFERENCES `facturas_facturas` (`num_factura`),
  ADD CONSTRAINT `facturas_facturasaud_proveedor_id_7028722d_fk_proveedor` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores_proveedores` (`prov_id`),
  ADD CONSTRAINT `facturas_facturasaudit_changed_by_id_cc12251a_fk_users_user_id` FOREIGN KEY (`changed_by_id`) REFERENCES `users_user` (`id`),
  ADD CONSTRAINT `facturas_facturasaudit_pedido_id_ea477019_fk_pedidos_pedidos_id` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos_pedidos` (`id`);

--
-- Filtros para la tabla `insumos_implementostrabajo`
--
ALTER TABLE `insumos_implementostrabajo`
  ADD CONSTRAINT `insumos_implementost_it_nombre_id_c42e2b27_fk_insumos_i` FOREIGN KEY (`it_nombre_id`) REFERENCES `insumos_insumosgenerico` (`id`);

--
-- Filtros para la tabla `materiaprima_caracteristicasorganolepticas`
--
ALTER TABLE `materiaprima_caracteristicasorganolepticas`
  ADD CONSTRAINT `materiaprima_caracte_mp_lote_id_95f75499_fk_materiapr` FOREIGN KEY (`mp_lote_id`) REFERENCES `materiaprima_materiaprima` (`mp_lote`);

--
-- Filtros para la tabla `materiaprima_desinfeccion`
--
ALTER TABLE `materiaprima_desinfeccion`
  ADD CONSTRAINT `materiaprima_desinfe_des_nombre_id_7b4537f3_fk_materiapr` FOREIGN KEY (`des_nombre_id`) REFERENCES `materiaprima_desinfectantegenerico` (`id`),
  ADD CONSTRAINT `materiaprima_desinfe_mp_lote_id_62d9fec8_fk_materiapr` FOREIGN KEY (`mp_lote_id`) REFERENCES `materiaprima_materiaprima` (`mp_lote`),
  ADD CONSTRAINT `materiaprima_desinfe_responsable_id_2ff1c09f_fk_users_use` FOREIGN KEY (`responsable_id`) REFERENCES `users_user` (`id`);

--
-- Filtros para la tabla `materiaprima_materiaprima`
--
ALTER TABLE `materiaprima_materiaprima`
  ADD CONSTRAINT `materiaprima_materia_mp_nombre_id_fbd4ce88_fk_materiapr` FOREIGN KEY (`mp_nombre_id`) REFERENCES `materiaprima_materiaprimagenerica` (`id`);

--
-- Filtros para la tabla `pedidos_pedidos`
--
ALTER TABLE `pedidos_pedidos`
  ADD CONSTRAINT `pedidos_pedidos_pedi_proveedor_id_25486401_fk_proveedor` FOREIGN KEY (`pedi_proveedor_id`) REFERENCES `proveedores_proveedores` (`prov_id`),
  ADD CONSTRAINT `pedidos_pedidos_pedi_user_id_e51c09ad_fk_users_user_id` FOREIGN KEY (`pedi_user_id`) REFERENCES `users_user` (`id`);

--
-- Filtros para la tabla `pedidos_pedidosaudit`
--
ALTER TABLE `pedidos_pedidosaudit`
  ADD CONSTRAINT `pedidos_pedidosaudit_changed_by_id_8fc62972_fk_users_user_id` FOREIGN KEY (`changed_by_id`) REFERENCES `users_user` (`id`),
  ADD CONSTRAINT `pedidos_pedidosaudit_pedido_id_e6a0dffb_fk_pedidos_pedidos_id` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos_pedidos` (`id`);

--
-- Filtros para la tabla `pedidos_pedidos_pedi_insumos`
--
ALTER TABLE `pedidos_pedidos_pedi_insumos`
  ADD CONSTRAINT `pedidos_pedidos_pedi_implementostrabajo_i_eb66a06e_fk_insumos_i` FOREIGN KEY (`implementostrabajo_id`) REFERENCES `insumos_implementostrabajo` (`it_codigo`),
  ADD CONSTRAINT `pedidos_pedidos_pedi_pedidos_id_862621ad_fk_pedidos_p` FOREIGN KEY (`pedidos_id`) REFERENCES `pedidos_pedidos` (`id`);

--
-- Filtros para la tabla `pedidos_pedidos_pedi_materiaprima`
--
ALTER TABLE `pedidos_pedidos_pedi_materiaprima`
  ADD CONSTRAINT `pedidos_pedidos_pedi_materiaprima_id_68484054_fk_materiapr` FOREIGN KEY (`materiaprima_id`) REFERENCES `materiaprima_materiaprima` (`mp_lote`),
  ADD CONSTRAINT `pedidos_pedidos_pedi_pedidos_id_d50eb29d_fk_pedidos_p` FOREIGN KEY (`pedidos_id`) REFERENCES `pedidos_pedidos` (`id`);

--
-- Filtros para la tabla `procesamiento_procesamiento_proces_materiaprima`
--
ALTER TABLE `procesamiento_procesamiento_proces_materiaprima`
  ADD CONSTRAINT `procesamiento_proces_materiaprima_id_2475e44e_fk_materiapr` FOREIGN KEY (`materiaprima_id`) REFERENCES `materiaprima_materiaprima` (`mp_lote`),
  ADD CONSTRAINT `procesamiento_proces_procesamiento_id_3b1663d1_fk_procesami` FOREIGN KEY (`procesamiento_id`) REFERENCES `procesamiento_procesamiento` (`cod_procesamiento`);

--
-- Filtros para la tabla `productoterminado_caracteristicasorganolepticaspt`
--
ALTER TABLE `productoterminado_caracteristicasorganolepticaspt`
  ADD CONSTRAINT `productoterminado_ca_pt_lote_id_f24d0d6e_fk_productot` FOREIGN KEY (`pt_lote_id`) REFERENCES `productoterminado_productoterminado` (`pt_lote`);

--
-- Filtros para la tabla `productoterminado_empaqueproductoterminado`
--
ALTER TABLE `productoterminado_empaqueproductoterminado`
  ADD CONSTRAINT `productoterminado_em_pt_lote_id_38d19ed1_fk_productot` FOREIGN KEY (`pt_lote_id`) REFERENCES `productoterminado_productoterminado` (`pt_lote`);

--
-- Filtros para la tabla `productoterminado_existenciapt`
--
ALTER TABLE `productoterminado_existenciapt`
  ADD CONSTRAINT `productoterminado_ex_pt_lote_id_a8a4490b_fk_productot` FOREIGN KEY (`pt_lote_id`) REFERENCES `productoterminado_productoterminado` (`pt_lote`);

--
-- Filtros para la tabla `productoterminado_productoterminado`
--
ALTER TABLE `productoterminado_productoterminado`
  ADD CONSTRAINT `productoterminado_pr_idCoccion_id_695be24c_fk_procesami` FOREIGN KEY (`idCoccion_id`) REFERENCES `procesamiento_coccion` (`id_coccion`),
  ADD CONSTRAINT `productoterminado_pr_idPicado_id_64723a97_fk_procesami` FOREIGN KEY (`idPicado_id`) REFERENCES `procesamiento_picado` (`cod_procesamiento`),
  ADD CONSTRAINT `productoterminado_pr_pt_nombre_id_ff84b486_fk_productot` FOREIGN KEY (`pt_nombre_id`) REFERENCES `productoterminado_productoterminadogenerico` (`id`);

--
-- Filtros para la tabla `productoterminado_productoterminadogenerico_materiaprimausada`
--
ALTER TABLE `productoterminado_productoterminadogenerico_materiaprimausada`
  ADD CONSTRAINT `productoterminado_pr_materiaprimagenerica_11048d81_fk_materiapr` FOREIGN KEY (`materiaprimagenerica_id`) REFERENCES `materiaprima_materiaprimagenerica` (`id`),
  ADD CONSTRAINT `productoterminado_pr_productoterminadogen_886b1217_fk_productot` FOREIGN KEY (`productoterminadogenerico_id`) REFERENCES `productoterminado_productoterminadogenerico` (`id`);

--
-- Filtros para la tabla `productoterminado_vacio`
--
ALTER TABLE `productoterminado_vacio`
  ADD CONSTRAINT `productoterminado_va_pt_lote_id_2bc8447f_fk_productot` FOREIGN KEY (`pt_lote_id`) REFERENCES `productoterminado_productoterminado` (`pt_lote`);

--
-- Filtros para la tabla `proveedores_proveedoresaudit`
--
ALTER TABLE `proveedores_proveedoresaudit`
  ADD CONSTRAINT `proveedores_proveedo_changed_by_id_76d2348e_fk_users_use` FOREIGN KEY (`changed_by_id`) REFERENCES `users_user` (`id`),
  ADD CONSTRAINT `proveedores_proveedo_proveedor_id_df80d758_fk_proveedor` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores_proveedores` (`prov_id`);

--
-- Filtros para la tabla `users_useraudit`
--
ALTER TABLE `users_useraudit`
  ADD CONSTRAINT `users_useraudit_changed_by_id_d12f96be_fk_users_user_id` FOREIGN KEY (`changed_by_id`) REFERENCES `users_user` (`id`),
  ADD CONSTRAINT `users_useraudit_user_id_f6dddc0f_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Filtros para la tabla `users_user_groups`
--
ALTER TABLE `users_user_groups`
  ADD CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Filtros para la tabla `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  ADD CONSTRAINT `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `users_user_user_permissions_user_id_20aca447_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
