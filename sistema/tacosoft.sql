-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2024 at 06:32 PM
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

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Administrador'),
(2, 'Operario');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group_permissions`
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
(48, 'Can view pedidos', 12, 'view_pedidos');

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
(12, '2024-02-22 23:33:59.815902', '3', '9383733-2', 1, '[{\"added\": {}}]', 12, 1);

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
(10, 'insumos', 'implementostrabajo'),
(8, 'materiaprima', 'caracteristicasorganolepticas'),
(7, 'materiaprima', 'desinfeccion'),
(6, 'materiaprima', 'materiaprima'),
(12, 'pedidos', 'pedidos'),
(11, 'proveedores', 'proveedores'),
(5, 'sessions', 'session'),
(9, 'users', 'user');

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
(24, 'sessions', '0001_initial', '2024-02-22 20:46:01.682820');

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
('6hen4lorp2hdfvvw5ru8amjm6b805ej1', '.eJxVjMsOwiAQRf-FtSG8JoBL934DGZhBqoYmpV0Z_12bdKHbe865L5FwW1vaBi9pInEWWpx-t4zlwX0HdMd-m2WZ-7pMWe6KPOiQ15n4eTncv4OGo31rJCDHGiCyMxRjVVZ5D1URh1xrdEErb7UNoDMUh8Z4W7JTUCFjMFG8P9bRN0g:1rddNZ:88ci_cn4yTZIz45kZ32wa1Xb1-pMn62uFcjUYZCeY_8', '2024-03-08 21:46:49.984687'),
('8ynaoldzv12i5070j0gsp6df5lfxxixe', '.eJxVjMsOwiAQRf-FtSG8JoBL934DGZhBqoYmpV0Z_12bdKHbe865L5FwW1vaBi9pInEWWpx-t4zlwX0HdMd-m2WZ-7pMWe6KPOiQ15n4eTncv4OGo31rJCDHGiCyMxRjVVZ5D1URh1xrdEErb7UNoDMUh8Z4W7JTUCFjMFG8P9bRN0g:1rdsvZ:LB9gYbakfDgx613LACN87bdkL4x-bPh5LLR3uLyKu2Y', '2024-03-09 14:22:57.177782'),
('o05r9o8ufvf08eb4hs9gzdji7z19ug8r', '.eJxVjMsOwiAQRf-FtSG8JoBL934DGZhBqoYmpV0Z_12bdKHbe865L5FwW1vaBi9pInEWWpx-t4zlwX0HdMd-m2WZ-7pMWe6KPOiQ15n4eTncv4OGo31rJCDHGiCyMxRjVVZ5D1URh1xrdEErb7UNoDMUh8Z4W7JTUCFjMFG8P9bRN0g:1rdJcs:-sy4rXjOn3TVC6uqka1XBpdPO_JTySB71Qjo01h68b0', '2024-03-08 00:41:18.414833'),
('vq3vrolg5t8o4xgpxvkqe0akhbime3u6', '.eJxVjMsOwiAQRf-FtSG8JoBL934DGZhBqoYmpV0Z_12bdKHbe865L5FwW1vaBi9pInEWWpx-t4zlwX0HdMd-m2WZ-7pMWe6KPOiQ15n4eTncv4OGo31rJCDHGiCyMxRjVVZ5D1URh1xrdEErb7UNoDMUh8Z4W7JTUCFjMFG8P9bRN0g:1reee9:EW6Rf3_dYCKvGx0YYqdlwtA4X2FxAn1IfDgJzgIELbc', '2024-03-11 17:20:09.167242');

-- --------------------------------------------------------

--
-- Table structure for table `insumos_implementostrabajo`
--

CREATE TABLE `insumos_implementostrabajo` (
  `it_codigo` int(11) NOT NULL,
  `it_nombre` varchar(50) NOT NULL,
  `it_cantidad` int(11) NOT NULL,
  `it_fechaEntrega` date NOT NULL,
  `it_estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `insumos_implementostrabajo`
--

INSERT INTO `insumos_implementostrabajo` (`it_codigo`, `it_nombre`, `it_cantidad`, `it_fechaEntrega`, `it_estado`) VALUES
(1, 'Guantes', 1500, '2024-02-22', '0'),
(2, 'Cofias', 400, '2024-02-22', '0'),
(3, 'Botas', 3000, '2027-05-14', '0');

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

-- --------------------------------------------------------

--
-- Table structure for table `materiaprima_desinfeccion`
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
-- Table structure for table `materiaprima_materiaprima`
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
-- Dumping data for table `materiaprima_materiaprima`
--

INSERT INTO `materiaprima_materiaprima` (`mp_lote`, `mp_nombre`, `mp_tipo`, `mp_cantidad`, `mp_fechallegada`, `mp_fechavencimiento`) VALUES
(123454, 'cebolla', '2', 10044, '2024-01-27', '2024-02-01'),
(263893, 'Tomate', '3', 3000, '2024-01-19', '2024-01-30'),
(292823, 'Pollo', '0', 2000, '2024-02-22', '2024-02-24'),
(1234543, 'Carne de Res', '0', 1500, '2024-02-22', '2024-02-25');

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
  `pedi_user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pedidos_pedidos`
--

INSERT INTO `pedidos_pedidos` (`id`, `ref_pedido`, `pedi_fecha`, `pedi_estado`, `pedi_comprobatePago`, `pedi_proveedor_id`, `pedi_user_id`) VALUES
(1, 8765489, '2024-02-22', '0', '23456787', 1, 1),
(2, 28272, '2024-02-22', '1', '64327986', 2, 1),
(3, 9383733, '2024-02-22', '2', '24356787', 2, 1);

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
(1, 2, 1),
(2, 2, 2),
(3, 3, 2);

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
(2, 1, 292823),
(1, 1, 1234543);

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
(1, 123456789, 'Andres la carne de usted', '3187652345'),
(2, 9283322, 'Insumos de la esquina', '315678222'),
(3, 1019132790, 'Las verduras del amor', '6371122334');

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
  `rol` varchar(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_user`
--

INSERT INTO `users_user` (`id`, `password`, `last_login`, `first_name`, `email`, `is_active`, `date_joined`, `username`, `name`, `last_name`, `rol`, `is_staff`, `is_superuser`) VALUES
(1, 'pbkdf2_sha256$720000$NaNbxIW1MU87jGkVbvaOb1$W+3QzPOvcjG3WiBI4/sTy3W5iXXZ6tAzyyshJR+kznY=', '2024-02-26 17:20:09.146754', '', '', 1, '2024-02-22 20:47:52.526221', 'vivian', 'vivian', 'hincapie', '', 1, 1),
(2, 'pbkdf2_sha256$720000$g04vaCZer7ZAbUquHC94Ri$J0o0aclrkfxTaSQpYFjZYsFvIE8eNksw1zl85Fqy33o=', NULL, '', '', 1, '2024-02-23 00:43:34.756560', 'ihincapie', 'Ivan', 'Hincapie', '1', 0, 0);

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
-- Indexes for table `insumos_implementostrabajo`
--
ALTER TABLE `insumos_implementostrabajo`
  ADD PRIMARY KEY (`it_codigo`);

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
  ADD KEY `materiaprima_desinfe_mp_lote_id_62d9fec8_fk_materiapr` (`mp_lote_id`);

--
-- Indexes for table `materiaprima_materiaprima`
--
ALTER TABLE `materiaprima_materiaprima`
  ADD PRIMARY KEY (`mp_lote`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `insumos_implementostrabajo`
--
ALTER TABLE `insumos_implementostrabajo`
  MODIFY `it_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `materiaprima_caracteristicasorganolepticas`
--
ALTER TABLE `materiaprima_caracteristicasorganolepticas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materiaprima_desinfeccion`
--
ALTER TABLE `materiaprima_desinfeccion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pedidos_pedidos`
--
ALTER TABLE `pedidos_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pedidos_pedidos_pedi_insumos`
--
ALTER TABLE `pedidos_pedidos_pedi_insumos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pedidos_pedidos_pedi_materiaprima`
--
ALTER TABLE `pedidos_pedidos_pedi_materiaprima`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `proveedores_proveedores`
--
ALTER TABLE `proveedores_proveedores`
  MODIFY `prov_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_user`
--
ALTER TABLE `users_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `materiaprima_caracteristicasorganolepticas`
--
ALTER TABLE `materiaprima_caracteristicasorganolepticas`
  ADD CONSTRAINT `materiaprima_caracte_mp_lote_id_95f75499_fk_materiapr` FOREIGN KEY (`mp_lote_id`) REFERENCES `materiaprima_materiaprima` (`mp_lote`);

--
-- Constraints for table `materiaprima_desinfeccion`
--
ALTER TABLE `materiaprima_desinfeccion`
  ADD CONSTRAINT `materiaprima_desinfe_mp_lote_id_62d9fec8_fk_materiapr` FOREIGN KEY (`mp_lote_id`) REFERENCES `materiaprima_materiaprima` (`mp_lote`);

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
