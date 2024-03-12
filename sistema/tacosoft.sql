-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 12-03-2024 a las 18:21:36
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

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

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Administrador'),
(2, 'Operario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(41, 1, 41),
(42, 1, 42),
(43, 1, 43),
(44, 1, 44),
(45, 1, 45),
(46, 1, 46),
(47, 1, 47),
(48, 1, 48),
(54, 2, 21),
(55, 2, 22),
(56, 2, 23),
(57, 2, 24),
(58, 2, 25),
(59, 2, 26),
(60, 2, 27),
(61, 2, 28),
(62, 2, 29),
(63, 2, 30),
(64, 2, 31),
(49, 2, 32),
(50, 2, 37),
(51, 2, 38),
(52, 2, 39),
(53, 2, 40);

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
(21, 'Can add materia prima', 6, 'add_materiaprima'),
(22, 'Can change materia prima', 6, 'change_materiaprima'),
(23, 'Can delete materia prima', 6, 'delete_materiaprima'),
(24, 'Can view materia prima', 6, 'view_materiaprima'),
(25, 'Can add desinfeccion', 7, 'add_desinfeccion'),
(26, 'Can change desinfeccion', 7, 'change_desinfeccion'),
(27, 'Can delete desinfeccion', 7, 'delete_desinfeccion'),
(28, 'Can view desinfeccion', 7, 'view_desinfeccion'),
(29, 'Can add caracteristicas organolepticas', 8, 'add_caracteristicasorganolepticas'),
(30, 'Can change caracteristicas organolepticas', 8, 'change_caracteristicasorganolepticas'),
(31, 'Can delete caracteristicas organolepticas', 8, 'delete_caracteristicasorganolepticas'),
(32, 'Can view caracteristicas organolepticas', 8, 'view_caracteristicasorganolepticas'),
(33, 'Can add user', 9, 'add_user'),
(34, 'Can change user', 9, 'change_user'),
(35, 'Can delete user', 9, 'delete_user'),
(36, 'Can view user', 9, 'view_user'),
(37, 'Can add implementos trabajo', 10, 'add_implementostrabajo'),
(38, 'Can change implementos trabajo', 10, 'change_implementostrabajo'),
(39, 'Can delete implementos trabajo', 10, 'delete_implementostrabajo'),
(40, 'Can view implementos trabajo', 10, 'view_implementostrabajo'),
(41, 'Can add proveedores', 11, 'add_proveedores'),
(42, 'Can change proveedores', 11, 'change_proveedores'),
(43, 'Can delete proveedores', 11, 'delete_proveedores'),
(44, 'Can view proveedores', 11, 'view_proveedores'),
(45, 'Can add pedidos', 12, 'add_pedidos'),
(46, 'Can change pedidos', 12, 'change_pedidos'),
(47, 'Can delete pedidos', 12, 'delete_pedidos'),
(48, 'Can view pedidos', 12, 'view_pedidos'),
(49, 'Can add facturas', 13, 'add_facturas'),
(50, 'Can change facturas', 13, 'change_facturas'),
(51, 'Can delete facturas', 13, 'delete_facturas'),
(52, 'Can view facturas', 13, 'view_facturas'),
(53, 'Can add procesamiento', 14, 'add_procesamiento'),
(54, 'Can change procesamiento', 14, 'change_procesamiento'),
(55, 'Can delete procesamiento', 14, 'delete_procesamiento'),
(56, 'Can view procesamiento', 14, 'view_procesamiento'),
(57, 'Can add coccion', 15, 'add_coccion'),
(58, 'Can change coccion', 15, 'change_coccion'),
(59, 'Can delete coccion', 15, 'delete_coccion'),
(60, 'Can view coccion', 15, 'view_coccion'),
(61, 'Can add equipos', 16, 'add_equipos'),
(62, 'Can change equipos', 16, 'change_equipos'),
(63, 'Can delete equipos', 16, 'delete_equipos'),
(64, 'Can view equipos', 16, 'view_equipos'),
(65, 'Can add picado', 17, 'add_picado'),
(66, 'Can change picado', 17, 'change_picado'),
(67, 'Can delete picado', 17, 'delete_picado'),
(68, 'Can view picado', 17, 'view_picado');

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

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-02-22 20:49:45.257530', '1', 'Administrador', 1, '[{\"added\": {}}]', 3, 1),
(2, '2024-02-22 20:50:02.617562', '1', 'Administrador', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 1),
(3, '2024-02-22 20:51:25.349525', '2', 'Operario', 1, '[{\"added\": {}}]', 3, 1),
(4, '2024-02-22 21:41:45.952196', '1', '123456789-Andres la carne de usted', 1, '[{\"added\": {}}]', 11, 1),
(5, '2024-02-22 21:42:12.436247', '1234543', '1234543-Carne de Res', 1, '[{\"added\": {}}]', 6, 1),
(6, '2024-02-22 21:42:40.600330', '292823', '292823-Pollo', 1, '[{\"added\": {}}]', 6, 1),
(7, '2024-02-22 21:42:42.857969', '1', '8765489-0', 1, '[{\"added\": {}}]', 12, 1),
(8, '2024-02-22 22:01:57.505143', '2', '9283322-Insumos de la esquina', 1, '[{\"added\": {}}]', 11, 1),
(9, '2024-02-22 22:02:26.261017', '1', '1-Guantes-2024-02-22', 1, '[{\"added\": {}}]', 10, 1),
(10, '2024-02-22 22:02:40.100180', '2', '2-Cofias-2024-02-22', 1, '[{\"added\": {}}]', 10, 1),
(11, '2024-02-22 22:02:42.259328', '2', '28272-1', 1, '[{\"added\": {}}]', 12, 1),
(12, '2024-02-22 23:33:59.815902', '3', '9383733-2', 1, '[{\"added\": {}}]', 12, 1),
(13, '2024-02-27 16:11:43.205734', '1', '12345699-123456789-Andres la carne de usted-8765489-0-1200000.19', 1, '[{\"added\": {}}]', 13, 1);

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
(13, 'facturas', 'facturas'),
(10, 'insumos', 'implementostrabajo'),
(8, 'materiaprima', 'caracteristicasorganolepticas'),
(7, 'materiaprima', 'desinfeccion'),
(6, 'materiaprima', 'materiaprima'),
(12, 'pedidos', 'pedidos'),
(15, 'procesamiento', 'coccion'),
(16, 'procesamiento', 'equipos'),
(17, 'procesamiento', 'picado'),
(14, 'procesamiento', 'procesamiento'),
(11, 'proveedores', 'proveedores'),
(5, 'sessions', 'session'),
(9, 'users', 'user');

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
(1, 'contenttypes', '0001_initial', '2024-02-22 20:46:00.052614'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-02-22 20:46:00.118397'),
(3, 'auth', '0001_initial', '2024-02-22 20:46:00.370254'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-02-22 20:46:00.420427'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-02-22 20:46:00.426488'),
(6, 'auth', '0004_alter_user_username_opts', '2024-02-22 20:46:00.437053'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-02-22 20:46:00.443144'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-02-22 20:46:00.446050'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-02-22 20:46:00.453070'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-02-22 20:46:00.457832'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-02-22 20:46:00.463349'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-02-22 20:46:00.476504'),
(13, 'auth', '0011_update_proxy_permissions', '2024-02-22 20:46:00.486390'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-02-22 20:46:00.492927'),
(15, 'users', '0001_initial', '2024-02-22 20:46:00.819336'),
(16, 'admin', '0001_initial', '2024-02-22 20:46:00.944396'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-02-22 20:46:00.951822'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-22 20:46:00.959094'),
(19, 'insumos', '0001_initial', '2024-02-22 20:46:00.974868'),
(20, 'materiaprima', '0001_initial', '2024-02-22 20:46:01.114969'),
(21, 'proveedores', '0001_initial', '2024-02-22 20:46:01.152296'),
(22, 'pedidos', '0001_initial', '2024-02-22 20:46:01.547407'),
(23, 'pedidos', '0002_initial', '2024-02-22 20:46:01.639518'),
(24, 'sessions', '0001_initial', '2024-02-22 20:46:01.682820'),
(25, 'facturas', '0001_initial', '2024-02-27 16:06:59.718376'),
(26, 'facturas', '0002_remove_facturas_id_alter_facturas_num_factura', '2024-03-08 14:27:42.535658'),
(27, 'procesamiento', '0001_initial', '2024-03-11 17:39:05.532354'),
(28, 'procesamiento', '0002_coccion_equipos_picado', '2024-03-11 21:05:14.178156');

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
('39ahjh92pia3jn216ousbd4e44s1fwg9', '.eJxVjEsOAiEQBe_C2hBoPopL956BNN0gowaSYWZlvLtOMgvdvqp6LxFxXWpcR57jxOIsjDj8bgnpkdsG-I7t1iX1tsxTkpsidzrktXN-Xnb376DiqN_aE2oNWqHTlsmdAJx3hQlULiZZfzScnM8QSuaASmlHQL5A4GKTRSPeH9dXN-s:1rk5jk:YWbRQD-1ooZuxpr0lF0AzBKRiRkAdQG6byoWxrbdt4s', '2024-03-26 17:16:24.414846'),
('6hen4lorp2hdfvvw5ru8amjm6b805ej1', '.eJxVjMsOwiAQRf-FtSG8JoBL934DGZhBqoYmpV0Z_12bdKHbe865L5FwW1vaBi9pInEWWpx-t4zlwX0HdMd-m2WZ-7pMWe6KPOiQ15n4eTncv4OGo31rJCDHGiCyMxRjVVZ5D1URh1xrdEErb7UNoDMUh8Z4W7JTUCFjMFG8P9bRN0g:1rddNZ:88ci_cn4yTZIz45kZ32wa1Xb1-pMn62uFcjUYZCeY_8', '2024-03-08 21:46:49.984687'),
('8ynaoldzv12i5070j0gsp6df5lfxxixe', '.eJxVjMsOwiAQRf-FtSG8JoBL934DGZhBqoYmpV0Z_12bdKHbe865L5FwW1vaBi9pInEWWpx-t4zlwX0HdMd-m2WZ-7pMWe6KPOiQ15n4eTncv4OGo31rJCDHGiCyMxRjVVZ5D1URh1xrdEErb7UNoDMUh8Z4W7JTUCFjMFG8P9bRN0g:1rdsvZ:LB9gYbakfDgx613LACN87bdkL4x-bPh5LLR3uLyKu2Y', '2024-03-09 14:22:57.177782'),
('js4y0rvlql4eod5xgsisdgr2p19ftnn0', '.eJxVjMsOwiAQRf-FtSG8JoBL934DGZhBqoYmpV0Z_12bdKHbe865L5FwW1vaBi9pInEWWpx-t4zlwX0HdMd-m2WZ-7pMWe6KPOiQ15n4eTncv4OGo31rJCDHGiCyMxRjVVZ5D1URh1xrdEErb7UNoDMUh8Z4W7JTUCFjMFG8P9bRN0g:1rf00D:2i2ee-Vj8sQkZK17zM2dGw6VNt9sXexfqrlwCM-KysM', '2024-03-12 16:08:21.011277'),
('o05r9o8ufvf08eb4hs9gzdji7z19ug8r', '.eJxVjMsOwiAQRf-FtSG8JoBL934DGZhBqoYmpV0Z_12bdKHbe865L5FwW1vaBi9pInEWWpx-t4zlwX0HdMd-m2WZ-7pMWe6KPOiQ15n4eTncv4OGo31rJCDHGiCyMxRjVVZ5D1URh1xrdEErb7UNoDMUh8Z4W7JTUCFjMFG8P9bRN0g:1rdJcs:-sy4rXjOn3TVC6uqka1XBpdPO_JTySB71Qjo01h68b0', '2024-03-08 00:41:18.414833'),
('vq3vrolg5t8o4xgpxvkqe0akhbime3u6', '.eJxVjMsOwiAQRf-FtSG8JoBL934DGZhBqoYmpV0Z_12bdKHbe865L5FwW1vaBi9pInEWWpx-t4zlwX0HdMd-m2WZ-7pMWe6KPOiQ15n4eTncv4OGo31rJCDHGiCyMxRjVVZ5D1URh1xrdEErb7UNoDMUh8Z4W7JTUCFjMFG8P9bRN0g:1reee9:EW6Rf3_dYCKvGx0YYqdlwtA4X2FxAn1IfDgJzgIELbc', '2024-03-11 17:20:09.167242');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas_facturas`
--

CREATE TABLE `facturas_facturas` (
  `num_factura` int(10) UNSIGNED NOT NULL CHECK (`num_factura` >= 0),
  `fac_fechaLlegada` date NOT NULL,
  `fac_numeroUnidades` int(10) UNSIGNED NOT NULL CHECK (`fac_numeroUnidades` >= 0),
  `fac_subtotal` double NOT NULL,
  `fac_iva` double NOT NULL,
  `img_factura` varchar(100) DEFAULT NULL,
  `fac_numeroPedido_id` int(11) NOT NULL,
  `fac_proveedor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facturas_facturas`
--

INSERT INTO `facturas_facturas` (`num_factura`, `fac_fechaLlegada`, `fac_numeroUnidades`, `fac_subtotal`, `fac_iva`, `img_factura`, `fac_numeroPedido_id`, `fac_proveedor_id`) VALUES
(34234234, '2024-03-10', 23342, 2342, 2342342, '', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos_implementostrabajo`
--

CREATE TABLE `insumos_implementostrabajo` (
  `it_codigo` int(11) NOT NULL,
  `it_nombre` varchar(50) NOT NULL,
  `it_cantidad` int(11) NOT NULL,
  `it_fechaEntrega` date NOT NULL,
  `it_estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `insumos_implementostrabajo`
--

INSERT INTO `insumos_implementostrabajo` (`it_codigo`, `it_nombre`, `it_cantidad`, `it_fechaEntrega`, `it_estado`) VALUES
(1, 'Guantes', 1500, '2024-02-22', '0'),
(2, 'Cofias', 400, '2024-02-22', '0');

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

--
-- Volcado de datos para la tabla `materiaprima_caracteristicasorganolepticas`
--

INSERT INTO `materiaprima_caracteristicasorganolepticas` (`id`, `olor`, `textura`, `limpieza`, `empaque`, `color`, `estado`, `mp_lote_id`) VALUES
(1, 1, 0, 0, 0, 0, '1', 123454),
(2, 1, 1, 1, 0, 0, '0', 123454),
(3, 1, 1, 1, 0, 0, '0', 123454),
(4, 1, 1, 1, 1, 1, '0', 123454),
(5, 1, 1, 1, 0, 1, '1', 1234543),
(6, 1, 1, 0, 0, 0, '0', 123454);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiaprima_desinfeccion`
--

CREATE TABLE `materiaprima_desinfeccion` (
  `id` bigint(20) NOT NULL,
  `des_nombre` varchar(20) NOT NULL,
  `concentracion` int(11) NOT NULL,
  `responsable` varchar(50) NOT NULL,
  `tiempo_inicio` time(6) NOT NULL,
  `tiempo_fin` time(6) NOT NULL,
  `obsevacion` varchar(100) NOT NULL,
  `mp_lote_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiaprima_materiaprima`
--

CREATE TABLE `materiaprima_materiaprima` (
  `mp_lote` int(11) NOT NULL,
  `mp_nombre` varchar(50) NOT NULL,
  `mp_tipo` varchar(1) NOT NULL,
  `mp_cantidad` int(11) NOT NULL,
  `mp_fechallegada` date NOT NULL,
  `mp_fechavencimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materiaprima_materiaprima`
--

INSERT INTO `materiaprima_materiaprima` (`mp_lote`, `mp_nombre`, `mp_tipo`, `mp_cantidad`, `mp_fechallegada`, `mp_fechavencimiento`) VALUES
(123454, 'cebolla', '2', 10044, '2024-01-27', '2024-02-01'),
(263893, 'Tomate', '3', 3000, '2024-01-19', '2024-01-30'),
(292823, 'Pollo', '0', 2000, '2024-02-22', '2024-02-24'),
(1234543, 'Carne de Res', '0', 1500, '2024-02-22', '2024-02-25');

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
  `pedi_proveedor_id` int(11) NOT NULL,
  `pedi_user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos_pedidos`
--

INSERT INTO `pedidos_pedidos` (`id`, `ref_pedido`, `pedi_fecha`, `pedi_estado`, `pedi_comprobatePago`, `pedi_proveedor_id`, `pedi_user_id`) VALUES
(1, 8765489, '2024-02-22', '0', '23456787', 1, 2),
(2, 28272, '2024-02-22', '1', '64327986', 2, 1),
(3, 9383733, '2024-02-22', '2', '24356787', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_pedidos_pedi_insumos`
--

CREATE TABLE `pedidos_pedidos_pedi_insumos` (
  `id` bigint(20) NOT NULL,
  `pedidos_id` int(11) NOT NULL,
  `implementostrabajo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos_pedidos_pedi_insumos`
--

INSERT INTO `pedidos_pedidos_pedi_insumos` (`id`, `pedidos_id`, `implementostrabajo_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_pedidos_pedi_materiaprima`
--

CREATE TABLE `pedidos_pedidos_pedi_materiaprima` (
  `id` bigint(20) NOT NULL,
  `pedidos_id` int(11) NOT NULL,
  `materiaprima_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos_pedidos_pedi_materiaprima`
--

INSERT INTO `pedidos_pedidos_pedi_materiaprima` (`id`, `pedidos_id`, `materiaprima_id`) VALUES
(3, 1, 263893);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesamiento_coccion`
--

CREATE TABLE `procesamiento_coccion` (
  `id` bigint(20) NOT NULL,
  `cocc_tiempoCoccion` int(11) NOT NULL,
  `cocc_temperaturafinal` double NOT NULL,
  `cocc_check` varchar(1) NOT NULL,
  `cod_procesamiento_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesamiento_equipos`
--

CREATE TABLE `procesamiento_equipos` (
  `id` bigint(20) NOT NULL,
  `equi_encargadoCocina` varchar(50) NOT NULL,
  `equi_encargadoEntrega` varchar(50) NOT NULL,
  `equi_calidad` varchar(1) NOT NULL,
  `equi_nombre` varchar(50) NOT NULL,
  `equi_check` varchar(1) NOT NULL,
  `cod_procesamiento_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesamiento_picado`
--

CREATE TABLE `procesamiento_picado` (
  `id` bigint(20) NOT NULL,
  `pica_cantidad` int(11) NOT NULL,
  `pica_check` varchar(1) NOT NULL,
  `cod_procesamiento_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesamiento_procesamiento`
--

CREATE TABLE `procesamiento_procesamiento` (
  `cod_procesamiento` int(11) NOT NULL,
  `proces_nombreProd` varchar(50) NOT NULL,
  `proces_pesoMpCruda` double NOT NULL,
  `proces_pesoPostProceso` double NOT NULL,
  `proces_merma` double NOT NULL,
  `proces_check` varchar(1) NOT NULL
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
-- Estructura de tabla para la tabla `proveedores_proveedores`
--

CREATE TABLE `proveedores_proveedores` (
  `prov_id` int(11) NOT NULL,
  `nit` int(11) NOT NULL,
  `prov_nombre` varchar(40) NOT NULL,
  `prov_telefono` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores_proveedores`
--

INSERT INTO `proveedores_proveedores` (`prov_id`, `nit`, `prov_nombre`, `prov_telefono`) VALUES
(1, 123456789, 'Andres la carne de usted', '3187652345'),
(2, 9283322, 'Insumos de la esquina', '315678222'),
(3, 1019132790, 'Las verduras del amor', '6371122334');

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
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `rol` varchar(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users_user`
--

INSERT INTO `users_user` (`id`, `password`, `last_login`, `first_name`, `email`, `is_active`, `date_joined`, `username`, `name`, `last_name`, `rol`, `is_staff`, `is_superuser`) VALUES
(1, 'pbkdf2_sha256$720000$NaNbxIW1MU87jGkVbvaOb1$W+3QzPOvcjG3WiBI4/sTy3W5iXXZ6tAzyyshJR+kznY=', '2024-02-27 16:08:21.007276', '', '', 1, '2024-02-22 20:47:52.526221', 'vivian', 'vivian', 'hincapie', '', 1, 1),
(2, 'pbkdf2_sha256$720000$g04vaCZer7ZAbUquHC94Ri$J0o0aclrkfxTaSQpYFjZYsFvIE8eNksw1zl85Fqy33o=', NULL, '', '', 1, '2024-02-23 00:43:34.756560', 'ihincapie', 'Ivan', 'Hincapie', '1', 0, 0),
(3, 'pbkdf2_sha256$720000$WS3lFoJUcqyi0ZVgT4OKpl$ITLOazqrmyEqK2dQLTS9x3tKI0e2DKJJg5Gd7aVM0lU=', '2024-03-12 17:16:24.401584', '', '', 1, '2024-02-29 16:36:07.231505', 'johan', 'johan', 'tovar', '', 1, 1),
(4, 'pbkdf2_sha256$720000$e0fqnzlexlt1HBq3TMovxT$gqSym8yvGN+taZ88WjVxfmoLI+J5jZKWrseSKRFfEpI=', NULL, '', '', 1, '2024-03-12 17:19:16.069187', 'kevin', 'kevin', 'albarracin', '', 1, 1),
(5, 'pbkdf2_sha256$720000$rrhhQOAyutCxMI15lSwIdB$xdJ+PcSwmnRHn2kgF2JiWDnXDRbh9RWAw5isZdbtPY4=', NULL, '', '', 1, '2024-03-12 17:19:33.998526', 'daniel', 'daniel', 'castro', '', 1, 1);

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
-- Indices de la tabla `facturas_facturas`
--
ALTER TABLE `facturas_facturas`
  ADD PRIMARY KEY (`num_factura`),
  ADD KEY `facturas_facturas_fac_numeroPedido_id_fd746173_fk_pedidos_p` (`fac_numeroPedido_id`),
  ADD KEY `facturas_facturas_fac_proveedor_id_88c2f86a_fk_proveedor` (`fac_proveedor_id`);

--
-- Indices de la tabla `insumos_implementostrabajo`
--
ALTER TABLE `insumos_implementostrabajo`
  ADD PRIMARY KEY (`it_codigo`);

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
  ADD KEY `materiaprima_desinfe_mp_lote_id_62d9fec8_fk_materiapr` (`mp_lote_id`);

--
-- Indices de la tabla `materiaprima_materiaprima`
--
ALTER TABLE `materiaprima_materiaprima`
  ADD PRIMARY KEY (`mp_lote`);

--
-- Indices de la tabla `pedidos_pedidos`
--
ALTER TABLE `pedidos_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref_pedido` (`ref_pedido`),
  ADD KEY `pedidos_pedidos_pedi_proveedor_id_25486401_fk_proveedor` (`pedi_proveedor_id`),
  ADD KEY `pedidos_pedidos_pedi_user_id_e51c09ad_fk_users_user_id` (`pedi_user_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `procesamiento_coccio_cod_procesamiento_id_eff9cbb8_fk_procesami` (`cod_procesamiento_id`);

--
-- Indices de la tabla `procesamiento_equipos`
--
ALTER TABLE `procesamiento_equipos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `procesamiento_equipo_cod_procesamiento_id_ac3cf2f6_fk_procesami` (`cod_procesamiento_id`);

--
-- Indices de la tabla `procesamiento_picado`
--
ALTER TABLE `procesamiento_picado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `procesamiento_picado_cod_procesamiento_id_179b7cfd_fk_procesami` (`cod_procesamiento_id`);

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
-- Indices de la tabla `proveedores_proveedores`
--
ALTER TABLE `proveedores_proveedores`
  ADD PRIMARY KEY (`prov_id`),
  ADD UNIQUE KEY `nit` (`nit`);

--
-- Indices de la tabla `users_user`
--
ALTER TABLE `users_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `insumos_implementostrabajo`
--
ALTER TABLE `insumos_implementostrabajo`
  MODIFY `it_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `materiaprima_caracteristicasorganolepticas`
--
ALTER TABLE `materiaprima_caracteristicasorganolepticas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `materiaprima_desinfeccion`
--
ALTER TABLE `materiaprima_desinfeccion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos_pedidos`
--
ALTER TABLE `pedidos_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pedidos_pedidos_pedi_insumos`
--
ALTER TABLE `pedidos_pedidos_pedi_insumos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pedidos_pedidos_pedi_materiaprima`
--
ALTER TABLE `pedidos_pedidos_pedi_materiaprima`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `procesamiento_coccion`
--
ALTER TABLE `procesamiento_coccion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `procesamiento_equipos`
--
ALTER TABLE `procesamiento_equipos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `procesamiento_picado`
--
ALTER TABLE `procesamiento_picado`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT de la tabla `proveedores_proveedores`
--
ALTER TABLE `proveedores_proveedores`
  MODIFY `prov_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users_user`
--
ALTER TABLE `users_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- Filtros para la tabla `facturas_facturas`
--
ALTER TABLE `facturas_facturas`
  ADD CONSTRAINT `facturas_facturas_fac_numeroPedido_id_fd746173_fk_pedidos_p` FOREIGN KEY (`fac_numeroPedido_id`) REFERENCES `pedidos_pedidos` (`id`),
  ADD CONSTRAINT `facturas_facturas_fac_proveedor_id_88c2f86a_fk_proveedor` FOREIGN KEY (`fac_proveedor_id`) REFERENCES `proveedores_proveedores` (`prov_id`);

--
-- Filtros para la tabla `materiaprima_caracteristicasorganolepticas`
--
ALTER TABLE `materiaprima_caracteristicasorganolepticas`
  ADD CONSTRAINT `materiaprima_caracte_mp_lote_id_95f75499_fk_materiapr` FOREIGN KEY (`mp_lote_id`) REFERENCES `materiaprima_materiaprima` (`mp_lote`);

--
-- Filtros para la tabla `materiaprima_desinfeccion`
--
ALTER TABLE `materiaprima_desinfeccion`
  ADD CONSTRAINT `materiaprima_desinfe_mp_lote_id_62d9fec8_fk_materiapr` FOREIGN KEY (`mp_lote_id`) REFERENCES `materiaprima_materiaprima` (`mp_lote`);

--
-- Filtros para la tabla `pedidos_pedidos`
--
ALTER TABLE `pedidos_pedidos`
  ADD CONSTRAINT `pedidos_pedidos_pedi_proveedor_id_25486401_fk_proveedor` FOREIGN KEY (`pedi_proveedor_id`) REFERENCES `proveedores_proveedores` (`prov_id`),
  ADD CONSTRAINT `pedidos_pedidos_pedi_user_id_e51c09ad_fk_users_user_id` FOREIGN KEY (`pedi_user_id`) REFERENCES `users_user` (`id`);

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
-- Filtros para la tabla `procesamiento_coccion`
--
ALTER TABLE `procesamiento_coccion`
  ADD CONSTRAINT `procesamiento_coccio_cod_procesamiento_id_eff9cbb8_fk_procesami` FOREIGN KEY (`cod_procesamiento_id`) REFERENCES `procesamiento_procesamiento` (`cod_procesamiento`);

--
-- Filtros para la tabla `procesamiento_equipos`
--
ALTER TABLE `procesamiento_equipos`
  ADD CONSTRAINT `procesamiento_equipo_cod_procesamiento_id_ac3cf2f6_fk_procesami` FOREIGN KEY (`cod_procesamiento_id`) REFERENCES `procesamiento_procesamiento` (`cod_procesamiento`);

--
-- Filtros para la tabla `procesamiento_picado`
--
ALTER TABLE `procesamiento_picado`
  ADD CONSTRAINT `procesamiento_picado_cod_procesamiento_id_179b7cfd_fk_procesami` FOREIGN KEY (`cod_procesamiento_id`) REFERENCES `procesamiento_procesamiento` (`cod_procesamiento`);

--
-- Filtros para la tabla `procesamiento_procesamiento_proces_materiaprima`
--
ALTER TABLE `procesamiento_procesamiento_proces_materiaprima`
  ADD CONSTRAINT `procesamiento_proces_materiaprima_id_2475e44e_fk_materiapr` FOREIGN KEY (`materiaprima_id`) REFERENCES `materiaprima_materiaprima` (`mp_lote`),
  ADD CONSTRAINT `procesamiento_proces_procesamiento_id_3b1663d1_fk_procesami` FOREIGN KEY (`procesamiento_id`) REFERENCES `procesamiento_procesamiento` (`cod_procesamiento`);

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
