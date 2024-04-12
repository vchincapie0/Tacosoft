-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2024 at 02:53 AM
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
(29, 'Can add existenciamp', 8, 'add_existenciamp'),
(30, 'Can change existenciamp', 8, 'change_existenciamp'),
(31, 'Can delete existenciamp', 8, 'delete_existenciamp'),
(32, 'Can view existenciamp', 8, 'view_existenciamp'),
(33, 'Can add materia prima', 9, 'add_materiaprima'),
(34, 'Can change materia prima', 9, 'change_materiaprima'),
(35, 'Can delete materia prima', 9, 'delete_materiaprima'),
(36, 'Can view materia prima', 9, 'view_materiaprima'),
(37, 'Can add user', 10, 'add_user'),
(38, 'Can change user', 10, 'change_user'),
(39, 'Can delete user', 10, 'delete_user'),
(40, 'Can view user', 10, 'view_user'),
(41, 'Can add implementos trabajo', 11, 'add_implementostrabajo'),
(42, 'Can change implementos trabajo', 11, 'change_implementostrabajo'),
(43, 'Can delete implementos trabajo', 11, 'delete_implementostrabajo'),
(44, 'Can view implementos trabajo', 11, 'view_implementostrabajo'),
(45, 'Can add proveedores', 12, 'add_proveedores'),
(46, 'Can change proveedores', 12, 'change_proveedores'),
(47, 'Can delete proveedores', 12, 'delete_proveedores'),
(48, 'Can view proveedores', 12, 'view_proveedores'),
(49, 'Can add pedidos', 13, 'add_pedidos'),
(50, 'Can change pedidos', 13, 'change_pedidos'),
(51, 'Can delete pedidos', 13, 'delete_pedidos'),
(52, 'Can view pedidos', 13, 'view_pedidos'),
(53, 'Can add facturas', 14, 'add_facturas'),
(54, 'Can change facturas', 14, 'change_facturas'),
(55, 'Can delete facturas', 14, 'delete_facturas'),
(56, 'Can view facturas', 14, 'view_facturas'),
(57, 'Can add procesamiento', 15, 'add_procesamiento'),
(58, 'Can change procesamiento', 15, 'change_procesamiento'),
(59, 'Can delete procesamiento', 15, 'delete_procesamiento'),
(60, 'Can view procesamiento', 15, 'view_procesamiento'),
(61, 'Can add picado', 16, 'add_picado'),
(62, 'Can change picado', 16, 'change_picado'),
(63, 'Can delete picado', 16, 'delete_picado'),
(64, 'Can view picado', 16, 'view_picado'),
(65, 'Can add equipos', 17, 'add_equipos'),
(66, 'Can change equipos', 17, 'change_equipos'),
(67, 'Can delete equipos', 17, 'delete_equipos'),
(68, 'Can view equipos', 17, 'view_equipos'),
(69, 'Can add coccion', 18, 'add_coccion'),
(70, 'Can change coccion', 18, 'change_coccion'),
(71, 'Can delete coccion', 18, 'delete_coccion'),
(72, 'Can view coccion', 18, 'view_coccion'),
(73, 'Can add producto terminado', 19, 'add_productoterminado'),
(74, 'Can change producto terminado', 19, 'change_productoterminado'),
(75, 'Can delete producto terminado', 19, 'delete_productoterminado'),
(76, 'Can view producto terminado', 19, 'view_productoterminado'),
(77, 'Can add caracteristicas organolepticas pt', 20, 'add_caracteristicasorganolepticaspt'),
(78, 'Can change caracteristicas organolepticas pt', 20, 'change_caracteristicasorganolepticaspt'),
(79, 'Can delete caracteristicas organolepticas pt', 20, 'delete_caracteristicasorganolepticaspt'),
(80, 'Can view caracteristicas organolepticas pt', 20, 'view_caracteristicasorganolepticaspt'),
(81, 'Can add existencia pt', 21, 'add_existenciapt'),
(82, 'Can change existencia pt', 21, 'change_existenciapt'),
(83, 'Can delete existencia pt', 21, 'delete_existenciapt'),
(84, 'Can view existencia pt', 21, 'view_existenciapt'),
(85, 'Can add empaque producto terminado', 22, 'add_empaqueproductoterminado'),
(86, 'Can change empaque producto terminado', 22, 'change_empaqueproductoterminado'),
(87, 'Can delete empaque producto terminado', 22, 'delete_empaqueproductoterminado'),
(88, 'Can view empaque producto terminado', 22, 'view_empaqueproductoterminado'),
(89, 'Can add vacio', 23, 'add_vacio'),
(90, 'Can change vacio', 23, 'change_vacio'),
(91, 'Can delete vacio', 23, 'delete_vacio'),
(92, 'Can view vacio', 23, 'view_vacio'),
(93, 'Can add iva', 24, 'add_iva'),
(94, 'Can change iva', 24, 'change_iva'),
(95, 'Can delete iva', 24, 'delete_iva'),
(96, 'Can view iva', 24, 'view_iva');

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
(2, '2024-04-11 00:02:19.803785', '5', 'vivian', 2, '[{\"changed\": {\"fields\": [\"Administrador\"]}}]', 10, 5),
(3, '2024-04-11 15:03:06.019821', '124555', '124555-12313123-lkjsfjsfdjkljlksd-57575675-0-4845.0', 2, '[{\"changed\": {\"fields\": [\"Img factura\"]}}]', 14, 5),
(4, '2024-04-11 17:49:00.918783', '1', '0.5', 1, '[{\"added\": {}}]', 24, 5),
(5, '2024-04-11 17:49:10.835531', '2', '0.19', 1, '[{\"added\": {}}]', 24, 5),
(6, '2024-04-11 17:49:16.506837', '1', '0.05', 2, '[{\"changed\": {\"fields\": [\"IVA\"]}}]', 24, 5),
(7, '2024-04-11 17:49:27.368887', '3', '0.00', 1, '[{\"added\": {}}]', 24, 5),
(8, '2024-04-11 23:35:26.774551', '2', '19.0', 2, '[{\"changed\": {\"fields\": [\"IVA\"]}}]', 24, 5),
(9, '2024-04-11 23:35:32.206625', '1', '5.0', 2, '[{\"changed\": {\"fields\": [\"IVA\"]}}]', 24, 5);

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
(14, 'facturas', 'facturas'),
(24, 'facturas', 'iva'),
(11, 'insumos', 'implementostrabajo'),
(6, 'materiaprima', 'caracteristicasorganolepticas'),
(7, 'materiaprima', 'desinfeccion'),
(8, 'materiaprima', 'existenciamp'),
(9, 'materiaprima', 'materiaprima'),
(13, 'pedidos', 'pedidos'),
(18, 'procesamiento', 'coccion'),
(17, 'procesamiento', 'equipos'),
(16, 'procesamiento', 'picado'),
(15, 'procesamiento', 'procesamiento'),
(20, 'productoterminado', 'caracteristicasorganolepticaspt'),
(22, 'productoterminado', 'empaqueproductoterminado'),
(21, 'productoterminado', 'existenciapt'),
(19, 'productoterminado', 'productoterminado'),
(23, 'productoterminado', 'vacio'),
(12, 'proveedores', 'proveedores'),
(5, 'sessions', 'session'),
(10, 'users', 'user');

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
(1, 'contenttypes', '0001_initial', '2024-03-15 17:18:21.008605'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-03-15 17:18:21.059415'),
(3, 'auth', '0001_initial', '2024-03-15 17:18:21.284458'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-03-15 17:18:21.348460'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-03-15 17:18:21.355045'),
(6, 'auth', '0004_alter_user_username_opts', '2024-03-15 17:18:21.362088'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-03-15 17:18:21.369439'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-03-15 17:18:21.374319'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-03-15 17:18:21.380828'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-03-15 17:18:21.386790'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-03-15 17:18:21.393822'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-03-15 17:18:21.406505'),
(13, 'auth', '0011_update_proxy_permissions', '2024-03-15 17:18:21.412887'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-03-15 17:18:21.416709'),
(15, 'users', '0001_initial', '2024-03-15 17:18:21.735840'),
(16, 'admin', '0001_initial', '2024-03-15 17:18:21.862015'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-03-15 17:18:21.862015'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-15 17:18:21.887449'),
(19, 'proveedores', '0001_initial', '2024-03-15 17:18:21.922040'),
(20, 'materiaprima', '0001_initial', '2024-03-15 17:18:21.981468'),
(21, 'insumos', '0001_initial', '2024-03-15 17:18:21.986879'),
(22, 'pedidos', '0001_initial', '2024-03-15 17:18:22.327113'),
(23, 'facturas', '0001_initial', '2024-03-15 17:18:22.335288'),
(24, 'facturas', '0002_initial', '2024-03-15 17:18:22.474037'),
(25, 'materiaprima', '0002_initial', '2024-03-15 17:18:22.709566'),
(26, 'pedidos', '0002_initial', '2024-03-15 17:18:22.788390'),
(27, 'procesamiento', '0001_initial', '2024-03-15 17:18:23.203606'),
(28, 'sessions', '0001_initial', '2024-03-15 17:18:23.236441'),
(29, 'materiaprima', '0003_alter_desinfeccion_obsevacion', '2024-03-18 18:16:48.975849'),
(30, 'productoterminado', '0001_initial', '2024-03-18 20:39:36.228491'),
(31, 'materiaprima', '0004_alter_desinfeccion_responsable', '2024-03-22 15:46:12.876477'),
(32, 'procesamiento', '0002_remove_procesamiento_proces_nombreprod_and_more', '2024-03-22 15:46:12.937424'),
(33, 'productoterminado', '0002_productoterminado_pt_cantidad', '2024-03-22 15:46:12.962161'),
(34, 'users', '0002_remove_user_rol_user_is_admin_user_is_employee', '2024-04-10 17:46:39.444867'),
(35, 'facturas', '0003_facturas_fac_total_alter_facturas_fac_subtotal', '2024-04-11 15:28:26.209266'),
(36, 'facturas', '0004_iva_alter_facturas_fac_iva', '2024-04-11 17:45:51.654588'),
(37, 'facturas', '0005_alter_iva_valor', '2024-04-11 17:55:51.336757');

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
('18pu7xtixvv02m725rvjxmuu9jhxcfda', '.eJxVjEEOwiAQRe_C2hAZyAAu3XsGMsAgVQNJaVfGu9smXej2vff_WwRalxrWwXOYsrgIEKdfFik9ue0iP6jdu0y9LfMU5Z7Iww5565lf16P9O6g06rZWjGcs3hcGNEgWk1UMzuvsoqZUVEHNymtAa5Uy6Fw0G0oeHGTwWny-zHg21w:1rnh1Z:HiVu7NBoEeit1azpyENCGODrPqcGZYPMPebQGn4MrRg', '2024-04-05 15:41:41.834884'),
('96sb3ve2kew14kjt7e8xn9umvy2t0q00', '.eJxVjEsOwiAUAO_C2hCw5UFduvcM5H1AqoYmpV0Z725IutDtzGTeKuK-lbi3tMZZ1EU5dfplhPxMtQt5YL0vmpe6rTPpnujDNn1bJL2uR_s3KNhK347IPsOEcoYkAp5yRrGWjaMQ3GAsEfkAk_UANDCD89kaIJLRQCD1-QL_xjg3:1ruhsn:RNjn1cKXDb4_aOTSCW2YYkHLRyZm5JoIDaWAGIhOhGk', '2024-04-25 00:01:37.843407'),
('n7os63w7z3wekn11v9m2sbfoea9xghu1', '.eJxVjEsOwiAUAO_C2hCw5UFduvcM5H1AqoYmpV0Z725IutDtzGTeKuK-lbi3tMZZ1EU5dfplhPxMtQt5YL0vmpe6rTPpnujDNn1bJL2uR_s3KNhK347IPsOEcoYkAp5yRrGWjaMQ3GAsEfkAk_UANDCD89kaIJLRQCD1-QL_xjg3:1rv1zx:g9pav0I0PVlMOXD7yT7cF_W2OIRWOJmsoJITwQIeU0U', '2024-04-25 21:30:21.144187'),
('vdd3kv4gt6kfynz59xvb59z70vmh7ay3', '.eJxVjMEOwiAQRP-FsyEWKAsevfsNZBcWqRpISnsy_rtt0oPeJvPezFsEXJcS1s5zmJK4iEGcfjvC-OS6g_TAem8ytrrME8ldkQft8tYSv66H-3dQsJdtrQC9B_Cj9Yh8hqwzMRHAiJkUg9WAKhI7l9lGdmSM3iIMSSevwIjPF_lJOI0:1rlBEE:JfUuXBaCcsbcy3MgEE0fsMiYHPxcXHnGEHZErwHnr4I', '2024-03-29 17:20:22.090769'),
('wxyukbyjrur4cn2rktw7pr32qcu1p5c1', '.eJxVjMEOwiAQRP-FsyEWKAsevfsNZBcWqRpISnsy_rtt0oPeJvPezFsEXJcS1s5zmJK4iEGcfjvC-OS6g_TAem8ytrrME8ldkQft8tYSv66H-3dQsJdtrQC9B_Cj9Yh8hqwzMRHAiJkUg9WAKhI7l9lGdmSM3iIMSSevwIjPF_lJOI0:1rmGlC:fey0X3YvWG2mgJToQ07Rwre1haMIPDSFYNx79QwkyaU', '2024-04-01 17:26:54.596993');

-- --------------------------------------------------------

--
-- Table structure for table `facturas_facturas`
--

CREATE TABLE `facturas_facturas` (
  `num_factura` int(10) UNSIGNED NOT NULL CHECK (`num_factura` >= 0),
  `fac_fechaLlegada` date NOT NULL,
  `fac_numeroUnidades` int(10) UNSIGNED NOT NULL CHECK (`fac_numeroUnidades` >= 0),
  `fac_subtotal` double NOT NULL,
  `fac_iva_id` bigint(20) NOT NULL,
  `img_factura` varchar(100) DEFAULT NULL,
  `fac_numeroPedido_id` int(11) NOT NULL,
  `fac_proveedor_id` int(11) NOT NULL,
  `fac_total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facturas_facturas`
--

INSERT INTO `facturas_facturas` (`num_factura`, `fac_fechaLlegada`, `fac_numeroUnidades`, `fac_subtotal`, `fac_iva_id`, `img_factura`, `fac_numeroPedido_id`, `fac_proveedor_id`, `fac_total`) VALUES
(234566, '2024-01-17', 500, 5000, 2, 'facturas/factura1.png', 1, 1, 5950);

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
(1, 5),
(2, 19),
(3, 0);

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
(1, 1, 1, 1, 1, 1, '0', 123456);

-- --------------------------------------------------------

--
-- Table structure for table `materiaprima_desinfeccion`
--

CREATE TABLE `materiaprima_desinfeccion` (
  `id` bigint(20) NOT NULL,
  `des_nombre` varchar(20) NOT NULL,
  `concentracion` int(11) NOT NULL,
  `tiempo_inicio` time(6) NOT NULL,
  `tiempo_fin` time(6) NOT NULL,
  `obsevacion` varchar(100) DEFAULT NULL,
  `responsable_id` bigint(20) DEFAULT NULL,
  `mp_lote_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(123456, 'Carne de Res', '0', 5000, '2024-03-15', '2024-04-20'),
(92827373, 'Queso', '1', 3500, '2024-03-18', '2024-03-25');

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
(1, 57575675, '2024-01-01', '0', '131313443575', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pedidos_pedidos_pedi_insumos`
--

CREATE TABLE `pedidos_pedidos_pedi_insumos` (
  `id` bigint(20) NOT NULL,
  `pedidos_id` int(11) NOT NULL,
  `implementostrabajo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 1, 92827373);

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
  `PT_lote_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productoterminado_empaqueproductoterminado`
--

CREATE TABLE `productoterminado_empaqueproductoterminado` (
  `id` bigint(20) NOT NULL,
  `Emp_pesoKgPT` double NOT NULL,
  `Emp_cantidadBolsas` int(11) NOT NULL,
  `PT_lote_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productoterminado_existenciapt`
--

CREATE TABLE `productoterminado_existenciapt` (
  `id` bigint(20) NOT NULL,
  `ExisPT_CantidadIngresada` int(11) NOT NULL,
  `ExisPT_CantidadEgresada` int(11) NOT NULL,
  `PT_lote_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productoterminado_productoterminado`
--

CREATE TABLE `productoterminado_productoterminado` (
  `PT_lote` int(11) NOT NULL,
  `PT_prodNombre` varchar(50) NOT NULL,
  `PT_fechapreparacion` date NOT NULL,
  `PT_fechavencimiento` date NOT NULL,
  `IdCoccion_id` bigint(20) NOT NULL,
  `IdPicado_id` bigint(20) NOT NULL,
  `PT_cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productoterminado_vacio`
--

CREATE TABLE `productoterminado_vacio` (
  `id` bigint(20) NOT NULL,
  `Cantidad_bolsas_rechazadas` int(11) NOT NULL,
  `Cantidad_bolsas_liberadas` int(11) NOT NULL,
  `PT_lote_id` int(11) NOT NULL
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
(1, 12313123, 'lkjsfjsfdjkljlksd', '3209873456');

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
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_employee` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_user`
--

INSERT INTO `users_user` (`id`, `password`, `last_login`, `first_name`, `email`, `is_active`, `date_joined`, `username`, `name`, `last_name`, `is_staff`, `is_superuser`, `is_admin`, `is_employee`) VALUES
(2, 'pbkdf2_sha256$720000$cdwZXOypYZB66MBKy4reYX$DiR/T7mSXR7Z7bk4SWz5/Bs2mi8k8J7ZU9EgVIjfcFs=', '2024-03-22 15:41:41.824590', '', '', 1, '2024-03-18 20:12:48.279701', 'johan', 'johan', 'tovar', 1, 1, 0, 0),
(3, 'pbkdf2_sha256$720000$sIse1QLpC0vXbWFwD1JCpM$yBtm60+Gdayv+GjBlDKLrORZZjPKAkBhXOmDXU3bN+c=', '2024-04-11 00:01:17.869176', '', '', 1, '2024-04-10 19:20:13.435578', 'jgon23', 'Jaime', 'Gonzalez', 0, 0, 0, 1),
(4, 'pbkdf2_sha256$720000$ngUxG3pYsMXvFmQ0iyXBWs$2rsa3UKApMVqktb4+Z26x/KixpWwuDpiRuvxPpySJAA=', '2024-04-11 21:29:28.076758', '', '', 1, '2024-04-10 23:52:13.668170', 'oper12', 'operario', 'operariol', 0, 0, 0, 1),
(5, 'pbkdf2_sha256$720000$Gh8MlFZM4fDkztKBGeLHlg$/WvnsbQl17a6ys5MCf2nunxfIQXau0qcQI/ILJ1fqC4=', '2024-04-11 21:30:21.136226', '', '', 1, '2024-04-11 00:00:11.000000', 'vivian', 'vivian', 'hincapie', 1, 1, 1, 0);

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
  ADD KEY `facturas_facturas_fac_iva_id_bbfc3a11` (`fac_iva_id`);

--
-- Indexes for table `facturas_iva`
--
ALTER TABLE `facturas_iva`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `materiaprima_desinfe_responsable_id_2ff1c09f_fk_users_use` (`responsable_id`),
  ADD KEY `materiaprima_desinfe_mp_lote_id_62d9fec8_fk_materiapr` (`mp_lote_id`);

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
  ADD KEY `productoterminado_ca_PT_lote_id_0cdf5b33_fk_productot` (`PT_lote_id`);

--
-- Indexes for table `productoterminado_empaqueproductoterminado`
--
ALTER TABLE `productoterminado_empaqueproductoterminado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoterminado_em_PT_lote_id_a397b6b6_fk_productot` (`PT_lote_id`);

--
-- Indexes for table `productoterminado_existenciapt`
--
ALTER TABLE `productoterminado_existenciapt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoterminado_ex_PT_lote_id_de9d35d0_fk_productot` (`PT_lote_id`);

--
-- Indexes for table `productoterminado_productoterminado`
--
ALTER TABLE `productoterminado_productoterminado`
  ADD PRIMARY KEY (`PT_lote`),
  ADD KEY `productoterminado_pr_IdCoccion_id_acf65f26_fk_procesami` (`IdCoccion_id`),
  ADD KEY `productoterminado_pr_IdPicado_id_8b372127_fk_procesami` (`IdPicado_id`);

--
-- Indexes for table `productoterminado_vacio`
--
ALTER TABLE `productoterminado_vacio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoterminado_va_PT_lote_id_20c58538_fk_productot` (`PT_lote_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `facturas_iva`
--
ALTER TABLE `facturas_iva`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `insumos_implementostrabajo`
--
ALTER TABLE `insumos_implementostrabajo`
  MODIFY `it_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materiaprima_caracteristicasorganolepticas`
--
ALTER TABLE `materiaprima_caracteristicasorganolepticas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `materiaprima_desinfeccion`
--
ALTER TABLE `materiaprima_desinfeccion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pedidos_pedidos`
--
ALTER TABLE `pedidos_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pedidos_pedidos_pedi_insumos`
--
ALTER TABLE `pedidos_pedidos_pedi_insumos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pedidos_pedidos_pedi_materiaprima`
--
ALTER TABLE `pedidos_pedidos_pedi_materiaprima`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `PT_lote` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productoterminado_vacio`
--
ALTER TABLE `productoterminado_vacio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proveedores_proveedores`
--
ALTER TABLE `proveedores_proveedores`
  MODIFY `prov_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Constraints for table `materiaprima_caracteristicasorganolepticas`
--
ALTER TABLE `materiaprima_caracteristicasorganolepticas`
  ADD CONSTRAINT `materiaprima_caracte_mp_lote_id_95f75499_fk_materiapr` FOREIGN KEY (`mp_lote_id`) REFERENCES `materiaprima_materiaprima` (`mp_lote`);

--
-- Constraints for table `materiaprima_desinfeccion`
--
ALTER TABLE `materiaprima_desinfeccion`
  ADD CONSTRAINT `materiaprima_desinfe_mp_lote_id_62d9fec8_fk_materiapr` FOREIGN KEY (`mp_lote_id`) REFERENCES `materiaprima_materiaprima` (`mp_lote`),
  ADD CONSTRAINT `materiaprima_desinfe_responsable_id_2ff1c09f_fk_users_use` FOREIGN KEY (`responsable_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `materiaprima_existenciamp`
--
ALTER TABLE `materiaprima_existenciamp`
  ADD CONSTRAINT `materiaprima_existen_mp_lote_id_fdb972fd_fk_materiapr` FOREIGN KEY (`mp_lote_id`) REFERENCES `materiaprima_materiaprima` (`mp_lote`);

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
  ADD CONSTRAINT `productoterminado_ca_PT_lote_id_0cdf5b33_fk_productot` FOREIGN KEY (`PT_lote_id`) REFERENCES `productoterminado_productoterminado` (`PT_lote`);

--
-- Constraints for table `productoterminado_empaqueproductoterminado`
--
ALTER TABLE `productoterminado_empaqueproductoterminado`
  ADD CONSTRAINT `productoterminado_em_PT_lote_id_a397b6b6_fk_productot` FOREIGN KEY (`PT_lote_id`) REFERENCES `productoterminado_productoterminado` (`PT_lote`);

--
-- Constraints for table `productoterminado_existenciapt`
--
ALTER TABLE `productoterminado_existenciapt`
  ADD CONSTRAINT `productoterminado_ex_PT_lote_id_de9d35d0_fk_productot` FOREIGN KEY (`PT_lote_id`) REFERENCES `productoterminado_productoterminado` (`PT_lote`);

--
-- Constraints for table `productoterminado_productoterminado`
--
ALTER TABLE `productoterminado_productoterminado`
  ADD CONSTRAINT `productoterminado_pr_IdCoccion_id_acf65f26_fk_procesami` FOREIGN KEY (`IdCoccion_id`) REFERENCES `procesamiento_coccion` (`id`),
  ADD CONSTRAINT `productoterminado_pr_IdPicado_id_8b372127_fk_procesami` FOREIGN KEY (`IdPicado_id`) REFERENCES `procesamiento_picado` (`id`);

--
-- Constraints for table `productoterminado_vacio`
--
ALTER TABLE `productoterminado_vacio`
  ADD CONSTRAINT `productoterminado_va_PT_lote_id_20c58538_fk_productot` FOREIGN KEY (`PT_lote_id`) REFERENCES `productoterminado_productoterminado` (`PT_lote`);

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
