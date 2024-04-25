-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 24-04-2024 a las 22:51:51
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
(21, 'Can add desinfectante generico', 6, 'add_desinfectantegenerico'),
(22, 'Can change desinfectante generico', 6, 'change_desinfectantegenerico'),
(23, 'Can delete desinfectante generico', 6, 'delete_desinfectantegenerico'),
(24, 'Can view desinfectante generico', 6, 'view_desinfectantegenerico'),
(25, 'Can add materia prima', 7, 'add_materiaprima'),
(26, 'Can change materia prima', 7, 'change_materiaprima'),
(27, 'Can delete materia prima', 7, 'delete_materiaprima'),
(28, 'Can view materia prima', 7, 'view_materiaprima'),
(29, 'Can add materia prima generica', 8, 'add_materiaprimagenerica'),
(30, 'Can change materia prima generica', 8, 'change_materiaprimagenerica'),
(31, 'Can delete materia prima generica', 8, 'delete_materiaprimagenerica'),
(32, 'Can view materia prima generica', 8, 'view_materiaprimagenerica'),
(33, 'Can add desinfeccion', 9, 'add_desinfeccion'),
(34, 'Can change desinfeccion', 9, 'change_desinfeccion'),
(35, 'Can delete desinfeccion', 9, 'delete_desinfeccion'),
(36, 'Can view desinfeccion', 9, 'view_desinfeccion'),
(37, 'Can add caracteristicas organolepticas', 10, 'add_caracteristicasorganolepticas'),
(38, 'Can change caracteristicas organolepticas', 10, 'change_caracteristicasorganolepticas'),
(39, 'Can delete caracteristicas organolepticas', 10, 'delete_caracteristicasorganolepticas'),
(40, 'Can view caracteristicas organolepticas', 10, 'view_caracteristicasorganolepticas'),
(41, 'Can add user', 11, 'add_user'),
(42, 'Can change user', 11, 'change_user'),
(43, 'Can delete user', 11, 'delete_user'),
(44, 'Can view user', 11, 'view_user'),
(45, 'Can add insumos generico', 12, 'add_insumosgenerico'),
(46, 'Can change insumos generico', 12, 'change_insumosgenerico'),
(47, 'Can delete insumos generico', 12, 'delete_insumosgenerico'),
(48, 'Can view insumos generico', 12, 'view_insumosgenerico'),
(49, 'Can add implementos trabajo', 13, 'add_implementostrabajo'),
(50, 'Can change implementos trabajo', 13, 'change_implementostrabajo'),
(51, 'Can delete implementos trabajo', 13, 'delete_implementostrabajo'),
(52, 'Can view implementos trabajo', 13, 'view_implementostrabajo'),
(53, 'Can add proveedores', 14, 'add_proveedores'),
(54, 'Can change proveedores', 14, 'change_proveedores'),
(55, 'Can delete proveedores', 14, 'delete_proveedores'),
(56, 'Can view proveedores', 14, 'view_proveedores'),
(57, 'Can add pedidos', 15, 'add_pedidos'),
(58, 'Can change pedidos', 15, 'change_pedidos'),
(59, 'Can delete pedidos', 15, 'delete_pedidos'),
(60, 'Can view pedidos', 15, 'view_pedidos'),
(61, 'Can add iva', 16, 'add_iva'),
(62, 'Can change iva', 16, 'change_iva'),
(63, 'Can delete iva', 16, 'delete_iva'),
(64, 'Can view iva', 16, 'view_iva'),
(65, 'Can add facturas', 17, 'add_facturas'),
(66, 'Can change facturas', 17, 'change_facturas'),
(67, 'Can delete facturas', 17, 'delete_facturas'),
(68, 'Can view facturas', 17, 'view_facturas'),
(69, 'Can add procesamiento', 18, 'add_procesamiento'),
(70, 'Can change procesamiento', 18, 'change_procesamiento'),
(71, 'Can delete procesamiento', 18, 'delete_procesamiento'),
(72, 'Can view procesamiento', 18, 'view_procesamiento'),
(73, 'Can add picado', 19, 'add_picado'),
(74, 'Can change picado', 19, 'change_picado'),
(75, 'Can delete picado', 19, 'delete_picado'),
(76, 'Can view picado', 19, 'view_picado'),
(77, 'Can add equipos', 20, 'add_equipos'),
(78, 'Can change equipos', 20, 'change_equipos'),
(79, 'Can delete equipos', 20, 'delete_equipos'),
(80, 'Can view equipos', 20, 'view_equipos'),
(81, 'Can add coccion', 21, 'add_coccion'),
(82, 'Can change coccion', 21, 'change_coccion'),
(83, 'Can delete coccion', 21, 'delete_coccion'),
(84, 'Can view coccion', 21, 'view_coccion'),
(85, 'Can add producto terminado', 22, 'add_productoterminado'),
(86, 'Can change producto terminado', 22, 'change_productoterminado'),
(87, 'Can delete producto terminado', 22, 'delete_productoterminado'),
(88, 'Can view producto terminado', 22, 'view_productoterminado'),
(89, 'Can add existencia pt', 23, 'add_existenciapt'),
(90, 'Can change existencia pt', 23, 'change_existenciapt'),
(91, 'Can delete existencia pt', 23, 'delete_existenciapt'),
(92, 'Can view existencia pt', 23, 'view_existenciapt'),
(93, 'Can add empaque producto terminado', 24, 'add_empaqueproductoterminado'),
(94, 'Can change empaque producto terminado', 24, 'change_empaqueproductoterminado'),
(95, 'Can delete empaque producto terminado', 24, 'delete_empaqueproductoterminado'),
(96, 'Can view empaque producto terminado', 24, 'view_empaqueproductoterminado'),
(97, 'Can add caracteristicas organolepticas pt', 25, 'add_caracteristicasorganolepticaspt'),
(98, 'Can change caracteristicas organolepticas pt', 25, 'change_caracteristicasorganolepticaspt'),
(99, 'Can delete caracteristicas organolepticas pt', 25, 'delete_caracteristicasorganolepticaspt'),
(100, 'Can view caracteristicas organolepticas pt', 25, 'view_caracteristicasorganolepticaspt'),
(101, 'Can add producto terminado generico', 26, 'add_productoterminadogenerico'),
(102, 'Can change producto terminado generico', 26, 'change_productoterminadogenerico'),
(103, 'Can delete producto terminado generico', 26, 'delete_productoterminadogenerico'),
(104, 'Can view producto terminado generico', 26, 'view_productoterminadogenerico'),
(105, 'Can add vacio', 27, 'add_vacio'),
(106, 'Can change vacio', 27, 'change_vacio'),
(107, 'Can delete vacio', 27, 'delete_vacio'),
(108, 'Can view vacio', 27, 'view_vacio'),
(109, 'Can add existencia mp', 28, 'add_existenciamp'),
(110, 'Can change existencia mp', 28, 'change_existenciamp'),
(111, 'Can delete existencia mp', 28, 'delete_existenciamp'),
(112, 'Can view existencia mp', 28, 'view_existenciamp');

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
(28, 'existencias', 'existenciamp'),
(17, 'facturas', 'facturas'),
(16, 'facturas', 'iva'),
(13, 'insumos', 'implementostrabajo'),
(12, 'insumos', 'insumosgenerico'),
(10, 'materiaprima', 'caracteristicasorganolepticas'),
(9, 'materiaprima', 'desinfeccion'),
(6, 'materiaprima', 'desinfectantegenerico'),
(7, 'materiaprima', 'materiaprima'),
(8, 'materiaprima', 'materiaprimagenerica'),
(15, 'pedidos', 'pedidos'),
(21, 'procesamiento', 'coccion'),
(20, 'procesamiento', 'equipos'),
(19, 'procesamiento', 'picado'),
(18, 'procesamiento', 'procesamiento'),
(25, 'productoterminado', 'caracteristicasorganolepticaspt'),
(24, 'productoterminado', 'empaqueproductoterminado'),
(23, 'productoterminado', 'existenciapt'),
(22, 'productoterminado', 'productoterminado'),
(26, 'productoterminado', 'productoterminadogenerico'),
(27, 'productoterminado', 'vacio'),
(14, 'proveedores', 'proveedores'),
(5, 'sessions', 'session'),
(11, 'users', 'user');

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
(1, 'contenttypes', '0001_initial', '2024-04-24 20:49:39.262796'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-04-24 20:49:39.345788'),
(3, 'auth', '0001_initial', '2024-04-24 20:49:39.652216'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-04-24 20:49:39.720374'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-04-24 20:49:39.737301'),
(6, 'auth', '0004_alter_user_username_opts', '2024-04-24 20:49:39.749928'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-04-24 20:49:39.763951'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-04-24 20:49:39.767357'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-04-24 20:49:39.779920'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-04-24 20:49:39.797026'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-04-24 20:49:39.811682'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-04-24 20:49:39.836329'),
(13, 'auth', '0011_update_proxy_permissions', '2024-04-24 20:49:39.850210'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-04-24 20:49:39.867135'),
(15, 'users', '0001_initial', '2024-04-24 20:49:40.238877'),
(16, 'admin', '0001_initial', '2024-04-24 20:49:40.415064'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-04-24 20:49:40.431422'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-04-24 20:49:40.449188'),
(19, 'materiaprima', '0001_initial', '2024-04-24 20:49:40.891721'),
(20, 'existencias', '0001_initial', '2024-04-24 20:49:40.994997'),
(21, 'proveedores', '0001_initial', '2024-04-24 20:49:41.049697'),
(22, 'insumos', '0001_initial', '2024-04-24 20:49:41.154101'),
(23, 'pedidos', '0001_initial', '2024-04-24 20:49:41.666098'),
(24, 'facturas', '0001_initial', '2024-04-24 20:49:41.977121'),
(25, 'procesamiento', '0001_initial', '2024-04-24 20:49:42.445605'),
(26, 'productoterminado', '0001_initial', '2024-04-24 20:49:43.163957'),
(27, 'sessions', '0001_initial', '2024-04-24 20:49:43.215094');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `fac_numeroPedido_id` int(11) NOT NULL,
  `fac_proveedor_id` int(11) NOT NULL,
  `fac_iva_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas_iva`
--

CREATE TABLE `facturas_iva` (
  `id` bigint(20) NOT NULL,
  `valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `pedi_user_id` bigint(20) DEFAULT NULL
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
  `idCoccion_id` bigint(20) DEFAULT NULL,
  `idPicado_id` bigint(20) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productoterminado_productoterminadogenerico_materiaprimausada`
--

CREATE TABLE `productoterminado_productoterminadogenerico_materiaprimausada` (
  `id` bigint(20) NOT NULL,
  `productoterminadogenerico_id` bigint(20) NOT NULL,
  `materiaprimagenerica_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `prov_telefono` varchar(10) NOT NULL
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
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_employee` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users_user`
--

INSERT INTO `users_user` (`id`, `password`, `last_login`, `first_name`, `email`, `is_active`, `date_joined`, `username`, `name`, `last_name`, `is_admin`, `is_employee`, `is_staff`, `is_superuser`) VALUES
(1, 'pbkdf2_sha256$720000$oNWAzajQ8EuBhudaBh8rkn$c2RqOIbYVsWoan4XL9IfIz31sfBxCEYKNGVtOVCstu4=', NULL, '', '', 1, '2024-04-24 20:50:49.538966', 'johan', 'johan', 'tovar', 0, 0, 1, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `facturas_iva`
--
ALTER TABLE `facturas_iva`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `insumos_implementostrabajo`
--
ALTER TABLE `insumos_implementostrabajo`
  MODIFY `it_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `insumos_insumosgenerico`
--
ALTER TABLE `insumos_insumosgenerico`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materiaprima_materiaprimagenerica`
--
ALTER TABLE `materiaprima_materiaprimagenerica`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos_pedidos`
--
ALTER TABLE `pedidos_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productoterminado_productoterminadogenerico_materiaprimausada`
--
ALTER TABLE `productoterminado_productoterminadogenerico_materiaprimausada`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT de la tabla `users_user`
--
ALTER TABLE `users_user`
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
  ADD CONSTRAINT `productoterminado_pr_idCoccion_id_695be24c_fk_procesami` FOREIGN KEY (`idCoccion_id`) REFERENCES `procesamiento_coccion` (`id`),
  ADD CONSTRAINT `productoterminado_pr_idPicado_id_64723a97_fk_procesami` FOREIGN KEY (`idPicado_id`) REFERENCES `procesamiento_picado` (`id`),
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
