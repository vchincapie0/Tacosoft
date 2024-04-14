-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2024 at 03:31 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tacosoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
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
(33, 'Can add existenciamp', 9, 'add_existenciamp'),
(34, 'Can change existenciamp', 9, 'change_existenciamp'),
(35, 'Can delete existenciamp', 9, 'delete_existenciamp'),
(36, 'Can view existenciamp', 9, 'view_existenciamp'),
(37, 'Can add materia prima', 10, 'add_materiaprima'),
(38, 'Can change materia prima', 10, 'change_materiaprima'),
(39, 'Can delete materia prima', 10, 'delete_materiaprima'),
(40, 'Can view materia prima', 10, 'view_materiaprima'),
(41, 'Can add materia prima generica', 11, 'add_materiaprimagenerica'),
(42, 'Can change materia prima generica', 11, 'change_materiaprimagenerica'),
(43, 'Can delete materia prima generica', 11, 'delete_materiaprimagenerica'),
(44, 'Can view materia prima generica', 11, 'view_materiaprimagenerica'),
(45, 'Can add user', 12, 'add_user'),
(46, 'Can change user', 12, 'change_user'),
(47, 'Can delete user', 12, 'delete_user'),
(48, 'Can view user', 12, 'view_user'),
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
(61, 'Can add pedidos', 16, 'add_pedidos'),
(62, 'Can change pedidos', 16, 'change_pedidos'),
(63, 'Can delete pedidos', 16, 'delete_pedidos'),
(64, 'Can view pedidos', 16, 'view_pedidos'),
(65, 'Can add facturas', 17, 'add_facturas'),
(66, 'Can change facturas', 17, 'change_facturas'),
(67, 'Can delete facturas', 17, 'delete_facturas'),
(68, 'Can view facturas', 17, 'view_facturas'),
(69, 'Can add iva', 18, 'add_iva'),
(70, 'Can change iva', 18, 'change_iva'),
(71, 'Can delete iva', 18, 'delete_iva'),
(72, 'Can view iva', 18, 'view_iva'),
(73, 'Can add procesamiento', 19, 'add_procesamiento'),
(74, 'Can change procesamiento', 19, 'change_procesamiento'),
(75, 'Can delete procesamiento', 19, 'delete_procesamiento'),
(76, 'Can view procesamiento', 19, 'view_procesamiento'),
(77, 'Can add picado', 20, 'add_picado'),
(78, 'Can change picado', 20, 'change_picado'),
(79, 'Can delete picado', 20, 'delete_picado'),
(80, 'Can view picado', 20, 'view_picado'),
(81, 'Can add equipos', 21, 'add_equipos'),
(82, 'Can change equipos', 21, 'change_equipos'),
(83, 'Can delete equipos', 21, 'delete_equipos'),
(84, 'Can view equipos', 21, 'view_equipos'),
(85, 'Can add coccion', 22, 'add_coccion'),
(86, 'Can change coccion', 22, 'change_coccion'),
(87, 'Can delete coccion', 22, 'delete_coccion'),
(88, 'Can view coccion', 22, 'view_coccion'),
(89, 'Can add producto terminado', 23, 'add_productoterminado'),
(90, 'Can change producto terminado', 23, 'change_productoterminado'),
(91, 'Can delete producto terminado', 23, 'delete_productoterminado'),
(92, 'Can view producto terminado', 23, 'view_productoterminado'),
(93, 'Can add existencia pt', 24, 'add_existenciapt'),
(94, 'Can change existencia pt', 24, 'change_existenciapt'),
(95, 'Can delete existencia pt', 24, 'delete_existenciapt'),
(96, 'Can view existencia pt', 24, 'view_existenciapt'),
(97, 'Can add empaque producto terminado', 25, 'add_empaqueproductoterminado'),
(98, 'Can change empaque producto terminado', 25, 'change_empaqueproductoterminado'),
(99, 'Can delete empaque producto terminado', 25, 'delete_empaqueproductoterminado'),
(100, 'Can view empaque producto terminado', 25, 'view_empaqueproductoterminado'),
(101, 'Can add caracteristicas organolepticas pt', 26, 'add_caracteristicasorganolepticaspt'),
(102, 'Can change caracteristicas organolepticas pt', 26, 'change_caracteristicasorganolepticaspt'),
(103, 'Can delete caracteristicas organolepticas pt', 26, 'delete_caracteristicasorganolepticaspt'),
(104, 'Can view caracteristicas organolepticas pt', 26, 'view_caracteristicasorganolepticaspt'),
(105, 'Can add producto terminado generico', 27, 'add_productoterminadogenerico'),
(106, 'Can change producto terminado generico', 27, 'change_productoterminadogenerico'),
(107, 'Can delete producto terminado generico', 27, 'delete_productoterminadogenerico'),
(108, 'Can view producto terminado generico', 27, 'view_productoterminadogenerico'),
(109, 'Can add vacio', 28, 'add_vacio'),
(110, 'Can change vacio', 28, 'change_vacio'),
(111, 'Can delete vacio', 28, 'delete_vacio'),
(112, 'Can view vacio', 28, 'view_vacio');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
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
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-04-13 21:02:30.260926', '1', 'Pollo', 1, '[{\"added\": {}}]', 11, 1),
(2, '2024-04-13 21:02:35.767397', '2', 'Tomate', 1, '[{\"added\": {}}]', 11, 1),
(3, '2024-04-13 21:02:43.002186', '3', 'Queso Doble Crema', 1, '[{\"added\": {}}]', 11, 1),
(4, '2024-04-13 21:02:48.377064', '4', 'Cebolla', 1, '[{\"added\": {}}]', 11, 1),
(5, '2024-04-13 21:02:53.178899', '5', 'Cilantro', 1, '[{\"added\": {}}]', 11, 1),
(6, '2024-04-13 21:04:40.509398', '6', 'Pimentón', 1, '[{\"added\": {}}]', 11, 1),
(7, '2024-04-13 21:09:41.073823', '1', 'Pollo', 2, '[]', 11, 1),
(8, '2024-04-13 21:09:49.809770', '2', 'Tomate', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 11, 1),
(9, '2024-04-13 21:09:53.067761', '3', 'Queso Doble Crema', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 11, 1),
(10, '2024-04-13 21:09:56.436676', '4', 'Cebolla', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 11, 1),
(11, '2024-04-13 21:10:03.788315', '5', 'Cilantro', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 11, 1),
(12, '2024-04-13 21:10:08.005440', '6', 'Pimentón', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 11, 1),
(13, '2024-04-13 21:10:51.559364', '7', 'Chorizo', 1, '[{\"added\": {}}]', 11, 1),
(14, '2024-04-13 21:11:44.686294', '8', 'Limón', 1, '[{\"added\": {}}]', 11, 1),
(15, '2024-04-13 21:12:05.865892', '9', 'Pulpa de aguacate', 1, '[{\"added\": {}}]', 11, 1),
(16, '2024-04-13 21:12:26.904139', '10', 'Ají', 1, '[{\"added\": {}}]', 11, 1),
(17, '2024-04-13 21:13:29.267423', '11', 'Panela', 1, '[{\"added\": {}}]', 11, 1),
(18, '2024-04-13 21:13:56.421152', '12', 'Vinagre', 1, '[{\"added\": {}}]', 11, 1),
(19, '2024-04-13 21:14:20.740432', '1', 'Pechuga de Pollo', 2, '[{\"changed\": {\"fields\": [\"Nombre\"]}}]', 11, 1),
(20, '2024-04-13 21:14:34.588312', '13', 'Sal', 1, '[{\"added\": {}}]', 11, 1),
(21, '2024-04-13 21:15:07.698195', '14', 'Aguacate', 1, '[{\"added\": {}}]', 11, 1),
(22, '2024-04-13 21:15:31.457645', '15', 'Azúcar', 1, '[{\"added\": {}}]', 11, 1),
(23, '2024-04-13 21:15:45.502405', '16', 'Ajo', 1, '[{\"added\": {}}]', 11, 1),
(24, '2024-04-13 21:15:56.529928', '17', 'Pimienta', 1, '[{\"added\": {}}]', 11, 1),
(25, '2024-04-13 21:16:09.863458', '18', 'Mayonesa', 1, '[{\"added\": {}}]', 11, 1),
(26, '2024-04-13 21:16:33.871827', '19', 'BBQ', 1, '[{\"added\": {}}]', 11, 1),
(27, '2024-04-13 21:18:50.632704', '1', 'Pollo Desmechado', 1, '[{\"added\": {}}]', 27, 1),
(28, '2024-04-13 21:19:11.863520', '20', 'Carne', 1, '[{\"added\": {}}]', 11, 1),
(29, '2024-04-13 21:19:56.997155', '2', 'Carne Desmechada', 1, '[{\"added\": {}}]', 27, 1),
(30, '2024-04-13 21:20:18.792290', '3', 'Chorizo', 1, '[{\"added\": {}}]', 27, 1),
(31, '2024-04-13 21:21:01.276735', '4', 'Guacamole', 1, '[{\"added\": {}}]', 27, 1),
(32, '2024-04-13 21:22:15.322448', '21', 'Mazorca', 1, '[{\"added\": {}}]', 11, 1),
(33, '2024-04-13 21:22:39.775440', '5', 'Mazorca Desgranada', 1, '[{\"added\": {}}]', 27, 1),
(34, '2024-04-13 21:23:24.731994', '6', 'Pico de Gallo', 1, '[{\"added\": {}}]', 27, 1),
(35, '2024-04-13 21:24:05.431369', '7', 'Pulpa de aguacate', 1, '[{\"added\": {}}]', 27, 1),
(36, '2024-04-13 21:25:56.289547', '8', 'Salsa de Cilantro', 1, '[{\"added\": {}}]', 27, 1),
(37, '2024-04-13 21:29:36.273311', '1', 'vivian', 2, '[{\"changed\": {\"fields\": [\"Administrador\"]}}]', 12, 1),
(38, '2024-04-13 21:29:40.836187', '2', 'johan', 2, '[{\"changed\": {\"fields\": [\"Administrador\"]}}]', 12, 1),
(39, '2024-04-13 21:29:44.249240', '3', 'kevin', 2, '[{\"changed\": {\"fields\": [\"Administrador\"]}}]', 12, 1),
(40, '2024-04-13 21:29:48.914055', '4', 'daniel', 2, '[{\"changed\": {\"fields\": [\"Administrador\"]}}]', 12, 1),
(41, '2024-04-13 21:38:36.245570', '5123656', '5123656', 3, '', 10, 1),
(42, '2024-04-13 21:38:52.303366', '512365', '512365', 3, '', 10, 1),
(43, '2024-04-13 21:47:49.964783', '1', '0.0', 1, '[{\"added\": {}}]', 18, 1),
(44, '2024-04-13 21:47:55.467539', '2', '5.0', 1, '[{\"added\": {}}]', 18, 1),
(45, '2024-04-13 21:48:01.034719', '3', '19.0', 1, '[{\"added\": {}}]', 18, 1),
(46, '2024-04-13 22:00:19.356782', '1', 'Guantes', 1, '[{\"added\": {}}]', 13, 1),
(47, '2024-04-13 22:00:24.541140', '2', 'Cofias', 1, '[{\"added\": {}}]', 13, 1),
(48, '2024-04-13 22:00:32.059631', '3', 'Delantal', 1, '[{\"added\": {}}]', 13, 1),
(49, '2024-04-13 23:30:01.353822', '1', 'Cloro', 1, '[{\"added\": {}}]', 8, 1),
(50, '2024-04-13 23:30:09.442908', '2', 'Vinagre', 1, '[{\"added\": {}}]', 8, 1),
(51, '2024-04-14 01:21:11.178282', '2', '67809-Aguacate-Cloro', 3, '', 7, 1),
(52, '2024-04-14 01:21:11.206664', '1', '123453-Cebolla-Cloro', 3, '', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(17, 'facturas', 'facturas'),
(18, 'facturas', 'iva'),
(14, 'insumos', 'implementostrabajo'),
(13, 'insumos', 'insumosgenerico'),
(6, 'materiaprima', 'caracteristicasorganolepticas'),
(7, 'materiaprima', 'desinfeccion'),
(8, 'materiaprima', 'desinfectantegenerico'),
(9, 'materiaprima', 'existenciamp'),
(10, 'materiaprima', 'materiaprima'),
(11, 'materiaprima', 'materiaprimagenerica'),
(16, 'pedidos', 'pedidos'),
(22, 'procesamiento', 'coccion'),
(21, 'procesamiento', 'equipos'),
(20, 'procesamiento', 'picado'),
(19, 'procesamiento', 'procesamiento'),
(26, 'productoterminado', 'caracteristicasorganolepticaspt'),
(25, 'productoterminado', 'empaqueproductoterminado'),
(24, 'productoterminado', 'existenciapt'),
(23, 'productoterminado', 'productoterminado'),
(27, 'productoterminado', 'productoterminadogenerico'),
(28, 'productoterminado', 'vacio'),
(15, 'proveedores', 'proveedores'),
(5, 'sessions', 'session'),
(12, 'users', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-04-13 20:51:29.921985'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-04-13 20:51:29.987210'),
(3, 'auth', '0001_initial', '2024-04-13 20:51:30.275898'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-04-13 20:51:30.327700'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-04-13 20:51:30.336557'),
(6, 'auth', '0004_alter_user_username_opts', '2024-04-13 20:51:30.342002'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-04-13 20:51:30.350188'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-04-13 20:51:30.353423'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-04-13 20:51:30.359680'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-04-13 20:51:30.367852'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-04-13 20:51:30.374506'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-04-13 20:51:30.389020'),
(13, 'auth', '0011_update_proxy_permissions', '2024-04-13 20:51:30.396340'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-04-13 20:51:30.403808'),
(15, 'users', '0001_initial', '2024-04-13 20:51:30.684771'),
(16, 'admin', '0001_initial', '2024-04-13 20:51:30.809244'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-04-13 20:51:30.816553'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-04-13 20:51:30.829348'),
(19, 'proveedores', '0001_initial', '2024-04-13 20:51:30.858460'),
(20, 'materiaprima', '0001_initial', '2024-04-13 20:51:30.946723'),
(21, 'insumos', '0001_initial', '2024-04-13 20:51:31.085244'),
(22, 'pedidos', '0001_initial', '2024-04-13 20:51:31.448408'),
(23, 'facturas', '0001_initial', '2024-04-13 20:51:31.471422'),
(24, 'facturas', '0002_initial', '2024-04-13 20:51:31.664969'),
(25, 'materiaprima', '0002_initial', '2024-04-13 20:51:32.069997'),
(26, 'pedidos', '0002_initial', '2024-04-13 20:51:32.145385'),
(27, 'procesamiento', '0001_initial', '2024-04-13 20:51:32.499401'),
(28, 'productoterminado', '0001_initial', '2024-04-13 20:51:33.230170'),
(29, 'sessions', '0001_initial', '2024-04-13 20:51:33.262573'),
(30, 'materiaprima', '0003_remove_materiaprima_mp_tipo_and_more', '2024-04-13 21:08:55.669925'),
(31, 'materiaprima', '0004_alter_materiaprimagenerica_mp_tipo', '2024-04-13 22:33:38.233777'),
(32, 'pedidos', '0003_alter_pedidos_pedi_fecha_alter_pedidos_pedi_user', '2024-04-13 22:33:39.852457');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('tezrd9im4o7ylstgk7d9sn9d31q0rd18', '.eJxVjMsOgjAUBf-la9PQCrfUpXu-obmvCmpKQmFl_HclYaHbMzPnZRJu65i2qkuaxFyMM6ffjZAfWnYgdyy32fJc1mUiuyv2oNUOs-jzerh_ByPW8Vu35BofoW-Bct9niY59VhRwHSJxAN-qniMEcCTQCAfstBHtmABJ2bw_7Xk48Q:1rvmmX:z2Er7KKYRLovIP1rBTGzFIvZ2qbqmjx_ZdPLc2Gny0g', '2024-04-27 23:27:37.432967');

-- --------------------------------------------------------

--
-- Table structure for table `facturas_facturas`
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

--
-- Dumping data for table `facturas_facturas`
--

INSERT INTO `facturas_facturas` (`num_factura`, `fac_fechaLlegada`, `fac_numeroUnidades`, `fac_subtotal`, `fac_total`, `img_factura`, `fac_numeroPedido_id`, `fac_proveedor_id`, `fac_iva_id`) VALUES
(234566, '2024-04-13', 150, 5000, 5950, 'facturas/factura1_dNRlqBm.png', 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `facturas_iva`
--

CREATE TABLE `facturas_iva` (
  `id` bigint(20) NOT NULL,
  `valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facturas_iva`
--

INSERT INTO `facturas_iva` (`id`, `valor`) VALUES
(1, 0),
(2, 5),
(3, 19);

-- --------------------------------------------------------

--
-- Table structure for table `insumos_implementostrabajo`
--

CREATE TABLE `insumos_implementostrabajo` (
  `it_codigo` int(11) NOT NULL,
  `it_cantidad` int(11) NOT NULL,
  `it_fechaEntrega` date NOT NULL,
  `it_estado` varchar(1) NOT NULL,
  `it_nombre_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `insumos_implementostrabajo`
--

INSERT INTO `insumos_implementostrabajo` (`it_codigo`, `it_cantidad`, `it_fechaEntrega`, `it_estado`, `it_nombre_id`) VALUES
(1, 500, '2024-04-13', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `insumos_insumosgenerico`
--

CREATE TABLE `insumos_insumosgenerico` (
  `id` bigint(20) NOT NULL,
  `it_nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `insumos_insumosgenerico`
--

INSERT INTO `insumos_insumosgenerico` (`id`, `it_nombre`) VALUES
(1, 'Guantes'),
(2, 'Cofias'),
(3, 'Delantal');

-- --------------------------------------------------------

--
-- Table structure for table `materiaprima_caracteristicasorganolepticas`
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
-- Dumping data for table `materiaprima_caracteristicasorganolepticas`
--

INSERT INTO `materiaprima_caracteristicasorganolepticas` (`id`, `olor`, `textura`, `limpieza`, `empaque`, `color`, `estado`, `mp_lote_id`) VALUES
(1, 1, 1, 1, 0, 0, '1', 64332);

-- --------------------------------------------------------

--
-- Table structure for table `materiaprima_desinfeccion`
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

--
-- Dumping data for table `materiaprima_desinfeccion`
--

INSERT INTO `materiaprima_desinfeccion` (`id`, `concentracion`, `tiempo_inicio`, `tiempo_fin`, `obsevacion`, `responsable_id`, `des_nombre_id`, `mp_lote_id`) VALUES
(3, 23, '20:17:00.000000', '21:17:00.000000', 'weds', 1, 2, 64332);

-- --------------------------------------------------------

--
-- Table structure for table `materiaprima_desinfectantegenerico`
--

CREATE TABLE `materiaprima_desinfectantegenerico` (
  `id` bigint(20) NOT NULL,
  `des_nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materiaprima_desinfectantegenerico`
--

INSERT INTO `materiaprima_desinfectantegenerico` (`id`, `des_nombre`) VALUES
(1, 'Cloro'),
(2, 'Vinagre');

-- --------------------------------------------------------

--
-- Table structure for table `materiaprima_existenciamp`
--

CREATE TABLE `materiaprima_existenciamp` (
  `exiMP_codigo` int(10) UNSIGNED NOT NULL CHECK (`exiMP_codigo` >= 0),
  `exiMP_cantidadIngresada` bigint(20) UNSIGNED NOT NULL CHECK (`exiMP_cantidadIngresada` >= 0),
  `exiMP_cantidadEgresada` bigint(20) UNSIGNED NOT NULL CHECK (`exiMP_cantidadEgresada` >= 0),
  `mp_lote_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materiaprima_materiaprima`
--

CREATE TABLE `materiaprima_materiaprima` (
  `mp_lote` int(11) NOT NULL,
  `mp_cantidad` int(11) NOT NULL,
  `mp_fechallegada` date NOT NULL,
  `mp_fechavencimiento` date NOT NULL,
  `mp_nombre_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materiaprima_materiaprima`
--

INSERT INTO `materiaprima_materiaprima` (`mp_lote`, `mp_cantidad`, `mp_fechallegada`, `mp_fechavencimiento`, `mp_nombre_id`) VALUES
(64332, 4000, '2024-04-13', '2024-07-17', 1),
(67809, 100, '2024-01-01', '2024-01-01', 14),
(123453, 40, '2024-01-01', '2024-01-01', 4);

-- --------------------------------------------------------

--
-- Table structure for table `materiaprima_materiaprimagenerica`
--

CREATE TABLE `materiaprima_materiaprimagenerica` (
  `id` bigint(20) NOT NULL,
  `mp_nombre` varchar(50) NOT NULL,
  `mp_tipo` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materiaprima_materiaprimagenerica`
--

INSERT INTO `materiaprima_materiaprimagenerica` (`id`, `mp_nombre`, `mp_tipo`) VALUES
(1, 'Pechuga de Pollo', '0'),
(2, 'Tomate', '2'),
(3, 'Queso Doble Crema', '1'),
(4, 'Cebolla', '2'),
(5, 'Cilantro', '2'),
(6, 'Pimentón', '2'),
(7, 'Chorizo', '0'),
(8, 'Limón', '3'),
(9, 'Pulpa de aguacate', '3'),
(10, 'Ají', '2'),
(11, 'Panela', '4'),
(12, 'Vinagre', '4'),
(13, 'Sal', '4'),
(14, 'Aguacate', '3'),
(15, 'Azúcar', '4'),
(16, 'Ajo', '2'),
(17, 'Pimienta', '4'),
(18, 'Mayonesa', '4'),
(19, 'BBQ', '4'),
(20, 'Carne', '0'),
(21, 'Mazorca', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pedidos_pedidos`
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

--
-- Dumping data for table `pedidos_pedidos`
--

INSERT INTO `pedidos_pedidos` (`id`, `ref_pedido`, `pedi_fecha`, `pedi_estado`, `pedi_comprobatePago`, `pedi_proveedor_id`, `pedi_user_id`) VALUES
(1, 453322, '2024-04-13', '0', '232322', 1, 1),
(5, 34567, '2024-04-13', '1', '24356787', 2, 1),
(7, 76543, '2024-04-13', '2', '34342', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pedidos_pedidos_pedi_insumos`
--

CREATE TABLE `pedidos_pedidos_pedi_insumos` (
  `id` bigint(20) NOT NULL,
  `pedidos_id` int(11) NOT NULL,
  `implementostrabajo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pedidos_pedidos_pedi_insumos`
--

INSERT INTO `pedidos_pedidos_pedi_insumos` (`id`, `pedidos_id`, `implementostrabajo_id`) VALUES
(5, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pedidos_pedidos_pedi_materiaprima`
--

CREATE TABLE `pedidos_pedidos_pedi_materiaprima` (
  `id` bigint(20) NOT NULL,
  `pedidos_id` int(11) NOT NULL,
  `materiaprima_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pedidos_pedidos_pedi_materiaprima`
--

INSERT INTO `pedidos_pedidos_pedi_materiaprima` (`id`, `pedidos_id`, `materiaprima_id`) VALUES
(1, 1, 67809),
(2, 1, 123453),
(3, 7, 67809);

-- --------------------------------------------------------

--
-- Table structure for table `procesamiento_coccion`
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
-- Table structure for table `procesamiento_equipos`
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
-- Table structure for table `procesamiento_picado`
--

CREATE TABLE `procesamiento_picado` (
  `id` bigint(20) NOT NULL,
  `pica_cantidad` int(11) NOT NULL,
  `pica_check` varchar(1) NOT NULL,
  `cod_procesamiento_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `procesamiento_procesamiento`
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
-- Table structure for table `procesamiento_procesamiento_proces_materiaprima`
--

CREATE TABLE `procesamiento_procesamiento_proces_materiaprima` (
  `id` bigint(20) NOT NULL,
  `procesamiento_id` int(11) NOT NULL,
  `materiaprima_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productoterminado_caracteristicasorganolepticaspt`
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
-- Table structure for table `productoterminado_empaqueproductoterminado`
--

CREATE TABLE `productoterminado_empaqueproductoterminado` (
  `id` bigint(20) NOT NULL,
  `emp_pesoKg` double NOT NULL,
  `emp_cantidadBolsas` int(11) NOT NULL,
  `pt_lote_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productoterminado_existenciapt`
--

CREATE TABLE `productoterminado_existenciapt` (
  `id` bigint(20) NOT NULL,
  `exisPT_CantidadIngresada` int(11) NOT NULL,
  `exisPT_CantidadEgresada` int(11) NOT NULL,
  `pt_lote_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productoterminado_productoterminado`
--

CREATE TABLE `productoterminado_productoterminado` (
  `pt_lote` int(11) NOT NULL,
  `pt_cantidad` int(11) NOT NULL,
  `pt_fechapreparacion` date NOT NULL,
  `pt_fechavencimiento` date NOT NULL,
  `idCoccion_id` bigint(20) NOT NULL,
  `idPicado_id` bigint(20) NOT NULL,
  `pt_nombre_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productoterminado_productoterminadogenerico`
--

CREATE TABLE `productoterminado_productoterminadogenerico` (
  `id` bigint(20) NOT NULL,
  `pt_nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productoterminado_productoterminadogenerico`
--

INSERT INTO `productoterminado_productoterminadogenerico` (`id`, `pt_nombre`) VALUES
(1, 'Pollo Desmechado'),
(2, 'Carne Desmechada'),
(3, 'Chorizo'),
(4, 'Guacamole'),
(5, 'Mazorca Desgranada'),
(6, 'Pico de Gallo'),
(7, 'Pulpa de aguacate'),
(8, 'Salsa de Cilantro');

-- --------------------------------------------------------

--
-- Table structure for table `productoterminado_productoterminadogenerico_materiaprimausada`
--

CREATE TABLE `productoterminado_productoterminadogenerico_materiaprimausada` (
  `id` bigint(20) NOT NULL,
  `productoterminadogenerico_id` bigint(20) NOT NULL,
  `materiaprimagenerica_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productoterminado_productoterminadogenerico_materiaprimausada`
--

INSERT INTO `productoterminado_productoterminadogenerico_materiaprimausada` (`id`, `productoterminadogenerico_id`, `materiaprimagenerica_id`) VALUES
(1, 1, 1),
(3, 1, 6),
(2, 1, 13),
(6, 2, 6),
(5, 2, 13),
(4, 2, 20),
(7, 3, 7),
(8, 4, 2),
(9, 4, 4),
(10, 4, 5),
(11, 4, 8),
(12, 4, 9),
(13, 4, 10),
(14, 4, 12),
(15, 4, 13),
(16, 5, 11),
(17, 5, 21),
(18, 6, 2),
(19, 6, 4),
(20, 6, 5),
(21, 6, 8),
(22, 6, 12),
(23, 6, 13),
(24, 7, 14),
(25, 8, 5),
(26, 8, 8),
(27, 8, 10),
(28, 8, 12),
(29, 8, 13),
(30, 8, 15),
(31, 8, 16),
(32, 8, 17),
(33, 8, 18);

-- --------------------------------------------------------

--
-- Table structure for table `productoterminado_vacio`
--

CREATE TABLE `productoterminado_vacio` (
  `id` bigint(20) NOT NULL,
  `cantidad_bolsas_rechazadas` int(11) NOT NULL,
  `cantidad_bolsas_liberadas` int(11) NOT NULL,
  `pt_lote_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proveedores_proveedores`
--

CREATE TABLE `proveedores_proveedores` (
  `prov_id` int(11) NOT NULL,
  `nit` int(11) NOT NULL,
  `prov_nombre` varchar(40) NOT NULL,
  `prov_telefono` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proveedores_proveedores`
--

INSERT INTO `proveedores_proveedores` (`prov_id`, `nit`, `prov_nombre`, `prov_telefono`) VALUES
(1, 367893092, 'Las verduras del amor', '3187652345'),
(2, 345678987, 'Insumos de la esquina', '3187652345');

-- --------------------------------------------------------

--
-- Table structure for table `users_user`
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
-- Dumping data for table `users_user`
--

INSERT INTO `users_user` (`id`, `password`, `last_login`, `first_name`, `email`, `is_active`, `date_joined`, `username`, `name`, `last_name`, `is_admin`, `is_employee`, `is_staff`, `is_superuser`) VALUES
(1, 'pbkdf2_sha256$720000$TZjlnmVZdQ5mXYuAuHIqyR$RSqhNx25YwfusXXekW/uQle+/wmdqZL53ZFtMnT1UbQ=', '2024-04-13 23:27:37.423750', '', '', 1, '2024-04-13 20:52:09.000000', 'vivian', 'Vivian', 'Hincapie', 1, 0, 1, 1),
(2, 'pbkdf2_sha256$720000$vbsmmQw52EGISStKERanuS$RSw4UWXxvUTotd6hnzWFnqZQFUcSb9VFyUOoEiYvw70=', '2024-04-13 23:19:01.793683', '', '', 1, '2024-04-13 20:53:25.000000', 'johan', 'Johan', 'Tovar', 1, 0, 1, 1),
(3, 'pbkdf2_sha256$720000$JmODhrZHmyCL8qLuyP6oqR$jbFIA5058bnFM4L+YRgpzzUxi0EgXao9Jsl9A8c3NBw=', NULL, '', '', 1, '2024-04-13 20:54:53.000000', 'kevin', 'Kevin', 'Albarracin', 1, 0, 1, 1),
(4, 'pbkdf2_sha256$720000$FRfBeKWBUzzWIZODXia9Jp$DCFeWXD59T07Qxc8yJrPKjAUaLfvlZ1KFQJQN+RWXbU=', NULL, '', '', 1, '2024-04-13 20:55:13.000000', 'daniel', 'Daniel', 'Castro', 1, 0, 1, 1),
(5, 'pbkdf2_sha256$720000$XdJFWTQsDkYMTTZ789Jrq1$SBbOSoSA8WP0t294OcEP85+5j4foUQJsORzUee3E1hI=', NULL, '', '', 1, '2024-04-13 21:31:10.340743', 'cjimenez22', 'Carlos', 'Jimenez', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_user_groups`
--

CREATE TABLE `users_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_user_user_permissions`
--

CREATE TABLE `users_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `facturas_facturas`
--
ALTER TABLE `facturas_facturas`
  ADD PRIMARY KEY (`num_factura`),
  ADD KEY `facturas_facturas_fac_numeroPedido_id_fd746173_fk_pedidos_p` (`fac_numeroPedido_id`),
  ADD KEY `facturas_facturas_fac_proveedor_id_88c2f86a_fk_proveedor` (`fac_proveedor_id`),
  ADD KEY `facturas_facturas_fac_iva_id_bbfc3a11_fk_facturas_iva_id` (`fac_iva_id`);

--
-- Indexes for table `facturas_iva`
--
ALTER TABLE `facturas_iva`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insumos_implementostrabajo`
--
ALTER TABLE `insumos_implementostrabajo`
  ADD PRIMARY KEY (`it_codigo`),
  ADD KEY `insumos_implementost_it_nombre_id_c42e2b27_fk_insumos_i` (`it_nombre_id`);

--
-- Indexes for table `insumos_insumosgenerico`
--
ALTER TABLE `insumos_insumosgenerico`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materiaprima_caracteristicasorganolepticas`
--
ALTER TABLE `materiaprima_caracteristicasorganolepticas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materiaprima_caracte_mp_lote_id_95f75499_fk_materiapr` (`mp_lote_id`);

--
-- Indexes for table `materiaprima_desinfeccion`
--
ALTER TABLE `materiaprima_desinfeccion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materiaprima_desinfe_responsable_id_2ff1c09f_fk_users_use` (`responsable_id`),
  ADD KEY `materiaprima_desinfe_des_nombre_id_7b4537f3_fk_materiapr` (`des_nombre_id`),
  ADD KEY `materiaprima_desinfe_mp_lote_id_62d9fec8_fk_materiapr` (`mp_lote_id`);

--
-- Indexes for table `materiaprima_desinfectantegenerico`
--
ALTER TABLE `materiaprima_desinfectantegenerico`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materiaprima_existenciamp`
--
ALTER TABLE `materiaprima_existenciamp`
  ADD PRIMARY KEY (`exiMP_codigo`),
  ADD KEY `materiaprima_existen_mp_lote_id_fdb972fd_fk_materiapr` (`mp_lote_id`);

--
-- Indexes for table `materiaprima_materiaprima`
--
ALTER TABLE `materiaprima_materiaprima`
  ADD PRIMARY KEY (`mp_lote`),
  ADD KEY `materiaprima_materia_mp_nombre_id_fbd4ce88_fk_materiapr` (`mp_nombre_id`);

--
-- Indexes for table `materiaprima_materiaprimagenerica`
--
ALTER TABLE `materiaprima_materiaprimagenerica`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedidos_pedidos`
--
ALTER TABLE `pedidos_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref_pedido` (`ref_pedido`),
  ADD KEY `pedidos_pedidos_pedi_proveedor_id_25486401_fk_proveedor` (`pedi_proveedor_id`),
  ADD KEY `pedidos_pedidos_pedi_user_id_e51c09ad_fk_users_user_id` (`pedi_user_id`);

--
-- Indexes for table `pedidos_pedidos_pedi_insumos`
--
ALTER TABLE `pedidos_pedidos_pedi_insumos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pedidos_pedidos_pedi_ins_pedidos_id_implementostr_7c0c5e55_uniq` (`pedidos_id`,`implementostrabajo_id`),
  ADD KEY `pedidos_pedidos_pedi_implementostrabajo_i_eb66a06e_fk_insumos_i` (`implementostrabajo_id`);

--
-- Indexes for table `pedidos_pedidos_pedi_materiaprima`
--
ALTER TABLE `pedidos_pedidos_pedi_materiaprima`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pedidos_pedidos_pedi_mat_pedidos_id_materiaprima__317c5dab_uniq` (`pedidos_id`,`materiaprima_id`),
  ADD KEY `pedidos_pedidos_pedi_materiaprima_id_68484054_fk_materiapr` (`materiaprima_id`);

--
-- Indexes for table `procesamiento_coccion`
--
ALTER TABLE `procesamiento_coccion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `procesamiento_coccio_cod_procesamiento_id_eff9cbb8_fk_procesami` (`cod_procesamiento_id`);

--
-- Indexes for table `procesamiento_equipos`
--
ALTER TABLE `procesamiento_equipos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `procesamiento_equipo_cod_procesamiento_id_ac3cf2f6_fk_procesami` (`cod_procesamiento_id`);

--
-- Indexes for table `procesamiento_picado`
--
ALTER TABLE `procesamiento_picado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `procesamiento_picado_cod_procesamiento_id_179b7cfd_fk_procesami` (`cod_procesamiento_id`);

--
-- Indexes for table `procesamiento_procesamiento`
--
ALTER TABLE `procesamiento_procesamiento`
  ADD PRIMARY KEY (`cod_procesamiento`);

--
-- Indexes for table `procesamiento_procesamiento_proces_materiaprima`
--
ALTER TABLE `procesamiento_procesamiento_proces_materiaprima`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `procesamiento_procesamie_procesamiento_id_materia_3cf6dd58_uniq` (`procesamiento_id`,`materiaprima_id`),
  ADD KEY `procesamiento_proces_materiaprima_id_2475e44e_fk_materiapr` (`materiaprima_id`);

--
-- Indexes for table `productoterminado_caracteristicasorganolepticaspt`
--
ALTER TABLE `productoterminado_caracteristicasorganolepticaspt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoterminado_ca_pt_lote_id_f24d0d6e_fk_productot` (`pt_lote_id`);

--
-- Indexes for table `productoterminado_empaqueproductoterminado`
--
ALTER TABLE `productoterminado_empaqueproductoterminado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoterminado_em_pt_lote_id_38d19ed1_fk_productot` (`pt_lote_id`);

--
-- Indexes for table `productoterminado_existenciapt`
--
ALTER TABLE `productoterminado_existenciapt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoterminado_ex_pt_lote_id_a8a4490b_fk_productot` (`pt_lote_id`);

--
-- Indexes for table `productoterminado_productoterminado`
--
ALTER TABLE `productoterminado_productoterminado`
  ADD PRIMARY KEY (`pt_lote`),
  ADD KEY `productoterminado_pr_pt_nombre_id_ff84b486_fk_productot` (`pt_nombre_id`),
  ADD KEY `productoterminado_pr_idCoccion_id_695be24c_fk_procesami` (`idCoccion_id`),
  ADD KEY `productoterminado_pr_idPicado_id_64723a97_fk_procesami` (`idPicado_id`);

--
-- Indexes for table `productoterminado_productoterminadogenerico`
--
ALTER TABLE `productoterminado_productoterminadogenerico`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productoterminado_productoterminadogenerico_materiaprimausada`
--
ALTER TABLE `productoterminado_productoterminadogenerico_materiaprimausada`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `productoterminado_produc_productoterminadogeneric_4c9db2c7_uniq` (`productoterminadogenerico_id`,`materiaprimagenerica_id`),
  ADD KEY `productoterminado_pr_materiaprimagenerica_11048d81_fk_materiapr` (`materiaprimagenerica_id`);

--
-- Indexes for table `productoterminado_vacio`
--
ALTER TABLE `productoterminado_vacio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoterminado_va_pt_lote_id_2bc8447f_fk_productot` (`pt_lote_id`);

--
-- Indexes for table `proveedores_proveedores`
--
ALTER TABLE `proveedores_proveedores`
  ADD PRIMARY KEY (`prov_id`),
  ADD UNIQUE KEY `nit` (`nit`);

--
-- Indexes for table `users_user`
--
ALTER TABLE `users_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users_user_groups`
--
ALTER TABLE `users_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  ADD KEY `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_user_permissions_user_id_permission_id_43338c45_uniq` (`user_id`,`permission_id`),
  ADD KEY `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `facturas_iva`
--
ALTER TABLE `facturas_iva`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `insumos_implementostrabajo`
--
ALTER TABLE `insumos_implementostrabajo`
  MODIFY `it_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `insumos_insumosgenerico`
--
ALTER TABLE `insumos_insumosgenerico`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `materiaprima_caracteristicasorganolepticas`
--
ALTER TABLE `materiaprima_caracteristicasorganolepticas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `materiaprima_desinfeccion`
--
ALTER TABLE `materiaprima_desinfeccion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `materiaprima_desinfectantegenerico`
--
ALTER TABLE `materiaprima_desinfectantegenerico`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `materiaprima_materiaprimagenerica`
--
ALTER TABLE `materiaprima_materiaprimagenerica`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pedidos_pedidos`
--
ALTER TABLE `pedidos_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pedidos_pedidos_pedi_insumos`
--
ALTER TABLE `pedidos_pedidos_pedi_insumos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pedidos_pedidos_pedi_materiaprima`
--
ALTER TABLE `pedidos_pedidos_pedi_materiaprima`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `procesamiento_coccion`
--
ALTER TABLE `procesamiento_coccion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `procesamiento_equipos`
--
ALTER TABLE `procesamiento_equipos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `procesamiento_picado`
--
ALTER TABLE `procesamiento_picado`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `procesamiento_procesamiento`
--
ALTER TABLE `procesamiento_procesamiento`
  MODIFY `cod_procesamiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `procesamiento_procesamiento_proces_materiaprima`
--
ALTER TABLE `procesamiento_procesamiento_proces_materiaprima`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productoterminado_caracteristicasorganolepticaspt`
--
ALTER TABLE `productoterminado_caracteristicasorganolepticaspt`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productoterminado_empaqueproductoterminado`
--
ALTER TABLE `productoterminado_empaqueproductoterminado`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productoterminado_existenciapt`
--
ALTER TABLE `productoterminado_existenciapt`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productoterminado_productoterminado`
--
ALTER TABLE `productoterminado_productoterminado`
  MODIFY `pt_lote` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productoterminado_productoterminadogenerico`
--
ALTER TABLE `productoterminado_productoterminadogenerico`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `productoterminado_productoterminadogenerico_materiaprimausada`
--
ALTER TABLE `productoterminado_productoterminadogenerico_materiaprimausada`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `productoterminado_vacio`
--
ALTER TABLE `productoterminado_vacio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proveedores_proveedores`
--
ALTER TABLE `proveedores_proveedores`
  MODIFY `prov_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_user`
--
ALTER TABLE `users_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_user_groups`
--
ALTER TABLE `users_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `facturas_facturas`
--
ALTER TABLE `facturas_facturas`
  ADD CONSTRAINT `facturas_facturas_fac_iva_id_bbfc3a11_fk_facturas_iva_id` FOREIGN KEY (`fac_iva_id`) REFERENCES `facturas_iva` (`id`),
  ADD CONSTRAINT `facturas_facturas_fac_numeroPedido_id_fd746173_fk_pedidos_p` FOREIGN KEY (`fac_numeroPedido_id`) REFERENCES `pedidos_pedidos` (`id`),
  ADD CONSTRAINT `facturas_facturas_fac_proveedor_id_88c2f86a_fk_proveedor` FOREIGN KEY (`fac_proveedor_id`) REFERENCES `proveedores_proveedores` (`prov_id`);

--
-- Constraints for table `insumos_implementostrabajo`
--
ALTER TABLE `insumos_implementostrabajo`
  ADD CONSTRAINT `insumos_implementost_it_nombre_id_c42e2b27_fk_insumos_i` FOREIGN KEY (`it_nombre_id`) REFERENCES `insumos_insumosgenerico` (`id`);

--
-- Constraints for table `materiaprima_caracteristicasorganolepticas`
--
ALTER TABLE `materiaprima_caracteristicasorganolepticas`
  ADD CONSTRAINT `materiaprima_caracte_mp_lote_id_95f75499_fk_materiapr` FOREIGN KEY (`mp_lote_id`) REFERENCES `materiaprima_materiaprima` (`mp_lote`);

--
-- Constraints for table `materiaprima_desinfeccion`
--
ALTER TABLE `materiaprima_desinfeccion`
  ADD CONSTRAINT `materiaprima_desinfe_des_nombre_id_7b4537f3_fk_materiapr` FOREIGN KEY (`des_nombre_id`) REFERENCES `materiaprima_desinfectantegenerico` (`id`),
  ADD CONSTRAINT `materiaprima_desinfe_mp_lote_id_62d9fec8_fk_materiapr` FOREIGN KEY (`mp_lote_id`) REFERENCES `materiaprima_materiaprima` (`mp_lote`),
  ADD CONSTRAINT `materiaprima_desinfe_responsable_id_2ff1c09f_fk_users_use` FOREIGN KEY (`responsable_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `materiaprima_existenciamp`
--
ALTER TABLE `materiaprima_existenciamp`
  ADD CONSTRAINT `materiaprima_existen_mp_lote_id_fdb972fd_fk_materiapr` FOREIGN KEY (`mp_lote_id`) REFERENCES `materiaprima_materiaprima` (`mp_lote`);

--
-- Constraints for table `materiaprima_materiaprima`
--
ALTER TABLE `materiaprima_materiaprima`
  ADD CONSTRAINT `materiaprima_materia_mp_nombre_id_fbd4ce88_fk_materiapr` FOREIGN KEY (`mp_nombre_id`) REFERENCES `materiaprima_materiaprimagenerica` (`id`);

--
-- Constraints for table `pedidos_pedidos`
--
ALTER TABLE `pedidos_pedidos`
  ADD CONSTRAINT `pedidos_pedidos_pedi_proveedor_id_25486401_fk_proveedor` FOREIGN KEY (`pedi_proveedor_id`) REFERENCES `proveedores_proveedores` (`prov_id`),
  ADD CONSTRAINT `pedidos_pedidos_pedi_user_id_e51c09ad_fk_users_user_id` FOREIGN KEY (`pedi_user_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `pedidos_pedidos_pedi_insumos`
--
ALTER TABLE `pedidos_pedidos_pedi_insumos`
  ADD CONSTRAINT `pedidos_pedidos_pedi_implementostrabajo_i_eb66a06e_fk_insumos_i` FOREIGN KEY (`implementostrabajo_id`) REFERENCES `insumos_implementostrabajo` (`it_codigo`),
  ADD CONSTRAINT `pedidos_pedidos_pedi_pedidos_id_862621ad_fk_pedidos_p` FOREIGN KEY (`pedidos_id`) REFERENCES `pedidos_pedidos` (`id`);

--
-- Constraints for table `pedidos_pedidos_pedi_materiaprima`
--
ALTER TABLE `pedidos_pedidos_pedi_materiaprima`
  ADD CONSTRAINT `pedidos_pedidos_pedi_materiaprima_id_68484054_fk_materiapr` FOREIGN KEY (`materiaprima_id`) REFERENCES `materiaprima_materiaprima` (`mp_lote`),
  ADD CONSTRAINT `pedidos_pedidos_pedi_pedidos_id_d50eb29d_fk_pedidos_p` FOREIGN KEY (`pedidos_id`) REFERENCES `pedidos_pedidos` (`id`);

--
-- Constraints for table `procesamiento_coccion`
--
ALTER TABLE `procesamiento_coccion`
  ADD CONSTRAINT `procesamiento_coccio_cod_procesamiento_id_eff9cbb8_fk_procesami` FOREIGN KEY (`cod_procesamiento_id`) REFERENCES `procesamiento_procesamiento` (`cod_procesamiento`);

--
-- Constraints for table `procesamiento_equipos`
--
ALTER TABLE `procesamiento_equipos`
  ADD CONSTRAINT `procesamiento_equipo_cod_procesamiento_id_ac3cf2f6_fk_procesami` FOREIGN KEY (`cod_procesamiento_id`) REFERENCES `procesamiento_procesamiento` (`cod_procesamiento`);

--
-- Constraints for table `procesamiento_picado`
--
ALTER TABLE `procesamiento_picado`
  ADD CONSTRAINT `procesamiento_picado_cod_procesamiento_id_179b7cfd_fk_procesami` FOREIGN KEY (`cod_procesamiento_id`) REFERENCES `procesamiento_procesamiento` (`cod_procesamiento`);

--
-- Constraints for table `procesamiento_procesamiento_proces_materiaprima`
--
ALTER TABLE `procesamiento_procesamiento_proces_materiaprima`
  ADD CONSTRAINT `procesamiento_proces_materiaprima_id_2475e44e_fk_materiapr` FOREIGN KEY (`materiaprima_id`) REFERENCES `materiaprima_materiaprima` (`mp_lote`),
  ADD CONSTRAINT `procesamiento_proces_procesamiento_id_3b1663d1_fk_procesami` FOREIGN KEY (`procesamiento_id`) REFERENCES `procesamiento_procesamiento` (`cod_procesamiento`);

--
-- Constraints for table `productoterminado_caracteristicasorganolepticaspt`
--
ALTER TABLE `productoterminado_caracteristicasorganolepticaspt`
  ADD CONSTRAINT `productoterminado_ca_pt_lote_id_f24d0d6e_fk_productot` FOREIGN KEY (`pt_lote_id`) REFERENCES `productoterminado_productoterminado` (`pt_lote`);

--
-- Constraints for table `productoterminado_empaqueproductoterminado`
--
ALTER TABLE `productoterminado_empaqueproductoterminado`
  ADD CONSTRAINT `productoterminado_em_pt_lote_id_38d19ed1_fk_productot` FOREIGN KEY (`pt_lote_id`) REFERENCES `productoterminado_productoterminado` (`pt_lote`);

--
-- Constraints for table `productoterminado_existenciapt`
--
ALTER TABLE `productoterminado_existenciapt`
  ADD CONSTRAINT `productoterminado_ex_pt_lote_id_a8a4490b_fk_productot` FOREIGN KEY (`pt_lote_id`) REFERENCES `productoterminado_productoterminado` (`pt_lote`);

--
-- Constraints for table `productoterminado_productoterminado`
--
ALTER TABLE `productoterminado_productoterminado`
  ADD CONSTRAINT `productoterminado_pr_idCoccion_id_695be24c_fk_procesami` FOREIGN KEY (`idCoccion_id`) REFERENCES `procesamiento_coccion` (`id`),
  ADD CONSTRAINT `productoterminado_pr_idPicado_id_64723a97_fk_procesami` FOREIGN KEY (`idPicado_id`) REFERENCES `procesamiento_picado` (`id`),
  ADD CONSTRAINT `productoterminado_pr_pt_nombre_id_ff84b486_fk_productot` FOREIGN KEY (`pt_nombre_id`) REFERENCES `productoterminado_productoterminadogenerico` (`id`);

--
-- Constraints for table `productoterminado_productoterminadogenerico_materiaprimausada`
--
ALTER TABLE `productoterminado_productoterminadogenerico_materiaprimausada`
  ADD CONSTRAINT `productoterminado_pr_materiaprimagenerica_11048d81_fk_materiapr` FOREIGN KEY (`materiaprimagenerica_id`) REFERENCES `materiaprima_materiaprimagenerica` (`id`),
  ADD CONSTRAINT `productoterminado_pr_productoterminadogen_886b1217_fk_productot` FOREIGN KEY (`productoterminadogenerico_id`) REFERENCES `productoterminado_productoterminadogenerico` (`id`);

--
-- Constraints for table `productoterminado_vacio`
--
ALTER TABLE `productoterminado_vacio`
  ADD CONSTRAINT `productoterminado_va_pt_lote_id_2bc8447f_fk_productot` FOREIGN KEY (`pt_lote_id`) REFERENCES `productoterminado_productoterminado` (`pt_lote`);

--
-- Constraints for table `users_user_groups`
--
ALTER TABLE `users_user_groups`
  ADD CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  ADD CONSTRAINT `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `users_user_user_permissions_user_id_20aca447_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
