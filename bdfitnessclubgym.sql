-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-08-2022 a las 23:48:46
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdfitnessclubgym`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Id` int(11) NOT NULL,
  `Identificacion` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `PrimerNombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `PrimerApellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `SegundoApellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `Sexo` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `Celular` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `TipoIdentificacion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Direccion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Id`, `Identificacion`, `PrimerNombre`, `PrimerApellido`, `SegundoApellido`, `FechaNacimiento`, `Sexo`, `Celular`, `Correo`, `TipoIdentificacion`, `Direccion`, `FechaRegistro`) VALUES
(8, '1065851701', 'Sebastian', 'Carillo', 'Almanza', '1999-08-04', 'M', '3206552930', 'sebacarrilloalmanza@gmail.com', 'Cedula de Ciudadania', 'manzana k casa 6 tobia daza', '2022-04-04 19:56:56'),
(9, '1003244177', 'maria CAMILA', 'CORONEL', 'LIJNARES', '2001-05-15', 'F', '3208330044', 'cristianalarc9@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-04 20:02:16'),
(10, '1193560202', 'DAVID', 'ARTEGA', 'OSORIO', '2002-08-08', 'M', '3004315783', 'cristianalarc96@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-04 20:14:50'),
(11, '56087950', 'ESMERALDA', 'GALINDO', 'MARTINEZ', '1976-12-28', 'F', '3135125688', 'esmeraldagalindomartinez@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-04 20:29:33'),
(12, '1067599938', 'yeiris liseth', 'gonzalesz', 'velasquez', '2006-01-20', 'F', '3013422130', 'yeirisgonzalez25@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-04 20:51:05'),
(13, '1003377714', 'carlos', 'martinez', 'opina', '2001-11-30', 'M', '3016360949', 'calejo3011@hotmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-04 21:06:43'),
(14, '1003383640', 'linda ', 'martinez', 'torrez', '2001-10-11', 'F', '3136866142', 'lindanayethmartineztorres@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-04-04 23:24:01'),
(15, '3205934253', 'alfredo', 'ortega', 'orozco', '1991-04-05', 'M', '3205934253', 'cristianalarcon2109@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-04 23:55:24'),
(16, '391100311', 'diana', 'opino', 'melina', '1984-01-09', 'F', '3016832836', 'losmellos2_4@hotmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-05 00:29:47'),
(17, '1193478284', 'anuar', 'oñate', 'pitre', '1999-03-04', 'M', '3043470678', 'anuaryel15@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-05 00:33:50'),
(18, '1065647959', 'kellis', 'romero', 'padilla', '2022-04-05', 'F', '3147168671', 'jegalindo1996@hotmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-05 20:04:30'),
(19, '1001978336', 'dilan', 'alargon', 'alargon', '2022-04-05', 'M', '3023398954', 'dilanxxww@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-05 20:32:53'),
(20, '1235340036', 'jhaidanis', 'perales', 'herrera', '2022-04-05', 'F', '3043562026', 'cristianalarcoffn109@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-05 20:53:47'),
(21, '1193554305', 'jader', 'mindiola', 'martinez', '2022-04-05', 'M', '3024663805', 'cristianalarvvvcon109@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-1066', '2022-04-05 21:26:56'),
(22, '1065643159', 'yisel', 'martinez ', 'oñate', '2022-04-05', 'F', '3135131499', 'cristianalarcobbn109@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-05 23:57:32'),
(23, '1082376130', 'brisida', 'rocha', 'hernandez', '2022-04-06', 'F', '3209500255', 'bricerh1998@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-108', '2022-04-07 02:17:46'),
(24, '1065647028', 'jeancarlos', 'tapias', 'hernandez', '2022-04-06', 'M', '3017000829', 'ingjetapias@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-109', '2022-04-07 02:23:08'),
(25, '1003318002', 'donali', 'granados', 'granados', '2022-04-09', 'F', '3008551298', 'donalisgranados@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-107', '2022-04-09 11:45:46'),
(26, '1003232239', 'valentina', 'maldonado', 'rodriguez', '2022-04-09', 'F', '3046422421', 'Grgrines3@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-108', '2022-04-09 11:48:17'),
(27, '1065835089', 'nellis', 'garcias', 'garcias', '2022-04-09', 'F', '3105992859', 'Neigarcas7@gmail.com', 'Cedula de Ciudadania', 'carrera 34a calle 30 #26-106', '2022-04-09 11:50:40'),
(28, '1065826853', 'katty', 'buges', 'buges', '2022-04-13', 'F', '3004591765', 'kbiges_96@hotmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-1077', '2022-04-17 22:20:00'),
(29, '1065655309', 'jean carlo', 'jimenez', 'jimenez', '2022-03-28', 'M', '3107862714', 'sebacarrilloalmanza@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-17 22:21:36'),
(30, '72209941', 'edwin', 'guzmán', 'guzmán', '1975-04-05', 'M', '3005630012', 'gedwin119@hotmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-108', '2022-04-18 12:42:52'),
(31, '1065842907', 'zoila', 'barguil', 'barguil', '2022-05-07', 'F', '3226984810', 'celenia1998@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-107', '2022-05-03 12:44:49'),
(32, '1003087212', 'dayis', 'redondo', 'redondo', '2022-05-21', 'F', '3182130835', 'danyredco@hotmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-108', '2022-05-03 12:46:27'),
(33, '1065811306', 'aide', 'sequeda', 'sequeda', '2022-05-21', 'F', '3046142259', 'aide.maroz@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-03 12:48:21'),
(34, '1066865923', 'nathalys', 'meriño', 'meriño', '2022-05-28', 'F', '3243669697', 'nathaloy2019@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-03 12:50:44'),
(35, '1067592130', 'oscar ', 'carrillo', 'carrillo', '2022-05-26', 'M', '3012421232', 'carrillo2018oscar@gmail.com', 'Cedula de Ciudadania', 'manzana k casa 6 tobia daza', '2022-05-03 12:53:08'),
(36, '1065857189', 'maria', 'betania', 'de loan hoz', '2022-05-13', 'F', '3004315789', 'Rojasbetania482@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-03 12:55:01'),
(37, '111111', 'tatiana', 'caceres', 'rojuas', '2022-05-21', 'F', '3002811428', 'tatianacacere@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-03 13:01:42'),
(38, '1065600435', 'cristian', 'carabid', 'ochoa', '2022-05-03', 'M', '3025330777', 'geravidcristian@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-03 17:00:31'),
(39, '1065839911', 'stfany ', 'zuleta', 'palmera', '2022-05-27', 'F', '3006576866', 'zuletasttefany@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-03 17:02:20'),
(40, '1003243009', 'sergio', 'alvarez', 'vidales', '2022-05-28', 'F', '3017709111', 'sergiostevan.2805@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-03 17:04:19'),
(41, '1192758914', 'daniela ', 'moron', 'blandon', '2022-05-20', 'F', '3014708775', 'danielakarolina4@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-03 17:06:19'),
(42, '1122406586', 'loreth', 'diaz', 'guerra', '2022-05-28', 'F', '3160401991', 'lomadigue@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-03 17:08:06'),
(43, '37332673', 'noraxy', 'arevalo', 'arevalo', '2022-05-18', 'F', '3733267386', 'cristianalarc67@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-03 17:10:04'),
(44, '1006638639', 'kendris', 'rodriguez', 'rodriguez', '2022-05-11', 'F', '3023860989', 'esmeraldagalindomartinez@gmail.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-03 17:12:38'),
(45, '1003380198', 'norelly', 'garcia', 'castro', '2022-05-12', 'F', '3023860985', 'cristianalarc96@gmail.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-03 17:14:41'),
(46, '1120242480', 'alex', 'sierra', 'rivera', '2022-05-12', 'M', '3145709230', 'yeirisgonzalez25@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-03 17:15:58'),
(47, '1003315264', 'mayren ', 'villalobos', 'marin', '2022-05-05', 'F', '3186683196', 'mayren020villalobos@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-03 17:17:52'),
(48, '1065839826', 'alvaro', 'osono', 'osono', '2022-05-27', 'M', '3215405234', 'ajosorio@unicesar.edu.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-03 17:19:59'),
(49, '1003236757', 'andrea', 'castro', 'castro', '2022-05-11', 'F', '3023860988', 'ac5969953@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-05-05 19:43:56'),
(50, '1087784803', 'maurucio', 'oliveros', 'oliveros', '2022-05-02', 'M', '3023860880', 'mazooliverosmauricio@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 19:46:32'),
(51, '1065839615', 'andres ', 'CORONEL', 'CORONEL', '2022-05-02', 'M', '3206552938', 'ancoronel85@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 19:48:36'),
(52, '1003313087', 'jose', 'bugues', 'bugues', '2022-05-05', 'M', '3206552939', 'josebrujes02@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 19:50:48'),
(53, '1003244177', 'maria', 'coronell', 'coronell', '2022-05-17', 'F', '3023860987', 'mcamilacoronell@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 19:55:20'),
(54, '1066864681', 'vanesa', 'mendoza', 'mendoza', '2022-05-03', 'F', '3043860980', 'vanems1303@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 19:57:16'),
(55, '3148519151', 'naylin', 'sequeda', 'sequeda', '2022-05-11', 'F', '3148519151', 'cristianalarcon6109@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 19:59:01'),
(56, '1065818193', 'angela', 'gomez', 'pava', '2022-05-26', 'F', '1065818193', 'angelapavapava@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 20:02:49'),
(57, '1003235116', 'valentina', 'bohoequez', 'martesino', '2022-05-23', 'F', '1003235116', 'valentinaborquezmontesinos4@gmail', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 20:05:23'),
(58, '1003235116', 'enuar', 'gomez', 'vergara', '2022-05-05', 'M', '1003235116', 'e.uvar1737@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 20:10:29'),
(59, '1065850563', 'yesmin', 'mareno', 'mareno', '2022-05-19', 'F', '1065850563', 'yesmin0527@hotmaill.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 20:13:37'),
(60, '1003233151', 'luis', 'gutierrez', 'borrejo', '2022-05-16', 'M', '1003233151', 'luisgutierrez2002@hotmailo.com', 'Seleccione el tipo de identifi', 'francisco de paula ', '2022-05-05 20:16:58'),
(61, '1067817647', 'heriberto', 'gonzalez', 'gonzalez', '2022-05-19', 'M', '1067817647', 'sebacarrilloalmanz77a@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 20:20:05'),
(62, '1065848727', 'yirleydis', 'mercado', 'caballero', '2022-05-28', 'F', '1065848727', 'mirledysmercado02@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 20:47:34'),
(63, '1003231269', 'jesica', 'ortiz ', 'garcias', '2022-05-27', 'F', '1003231269', 'jessicaohzgar@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:02:31'),
(64, '1003240197', 'angie', 'ortiz', 'garcias', '2022-05-12', 'F', '1003240197', 'anliorga24@gmai.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:08:52'),
(65, '1065599565', 'jose', 'hernandez', 'hernandez', '2022-05-19', 'M', '1065599565', 'joseangelhernandez@ingenieros.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:18:25'),
(66, '1067599938', 'yeiyis', 'gonzalez', 'gonzalez', '2022-06-01', 'F', '1067599938', 'yeirisgonzalez5@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:20:39'),
(67, '1128191298', 'yiselis', 'orozco', 'orozco', '2022-06-09', 'F', '1128191298', 'yeirisorozco23@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:23:12'),
(68, '1001978336', 'dilan', 'arango', 'ortiz', '2022-06-08', 'M', '1001978336', 'dsavagon@unicesar.edu.co', 'Tarjeta de Identidad', 'francisco de paula ', '2022-05-05 21:26:01'),
(69, '1065618772', 'nelson', 'guerra', 'ossa', '2022-05-12', 'M', '1065618772', 'nelsonguerra0518@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:28:15'),
(70, '1066866925', 'edinson', 'gutierrez', 'valest', '2022-05-30', 'M', '1066866925', 'santyy543@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:31:03'),
(71, '1152934179', 'cesar', 'cassianis', 'vega', '2022-05-13', 'M', '3217080098', 'sebacarrilloalmanza55@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 19:53:43'),
(72, '1066269072', 'susana', 'cervantes', 'cervantes', '2022-05-05', 'F', '1066269072', 'susanadsp15@gmail.com', 'Seleccione el tipo de identifi', 'francisco de paula ', '2022-05-11 19:56:21'),
(73, '1007519901', 'maria jose', 'jimenez', 'jiminez', '2022-05-06', 'F', '1007519901', 'mjjimenez19979@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 19:58:37'),
(74, '1235339422', 'lucelis', 'garcias ', 'polo', '2022-05-12', 'F', '1235339422', 'lgarciaspolo99@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:01:37'),
(75, '1065575521', 'edmeson', 'fruto', 'arias', '2022-05-17', 'F', '1065575521', 'emeson112004@gmial.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:05:26'),
(76, '1065814845', 'robison', 'pardo', 'pardo', '2022-05-05', 'M', '1065814845', 'robisonpardohernandez@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:11:01'),
(77, '1051679385', 'paola', 'cassaleth', 'cassaleth', '2022-05-20', 'Se', '1051679385', 'paolacassaleth@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:14:24'),
(78, '11935370120', 'deiver ', 'mindiola', 'mindiola', '2022-06-01', 'M', '1193537012', 'deiverjavieres@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:16:53'),
(79, '49608297', 'lina', 'martinez', 'martinez', '2022-05-19', 'F', '4960829754', 'linamar3003@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:20:00'),
(80, '1003266127', 'silieth', 'martinez', 'martinez', '2022-05-25', 'F', '1003266127', '14silieth@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:21:52'),
(81, '1010145150', 'lised', 'peinado', 'peinado', '2022-05-22', 'F', '1010145150', 'lissed07@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:23:48'),
(82, '1010142006', 'daniela', 'ortiz', 'muños', '2022-05-14', 'F', '1010142006', 'odaniela@unicesar.edu.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:27:29'),
(83, '1065836629', 'camila', 'pinzón', 'pinzón', '2022-05-20', 'F', '1065836629', 'camilapinzonospina@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:31:05'),
(84, '10675932130', 'oscar', 'carrillo', 'carrillo', '2022-05-19', 'M', '1067593213', 'carrillo2018oscar@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:34:44'),
(85, '1232888775', 'rosalba', 'fuente', 'martinez', '2022-05-31', 'F', '1232888775', 'rosalbafuentes17@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:44:40'),
(86, '1065807500', 'rolando', 'toloza', 'ariza', '2022-05-26', 'M', '1065807500', 'rolandocontador18@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:49:21'),
(87, '10656433159', 'yisel', 'martinez', 'oñates', '2022-06-03', 'F', '1065643315', 'yipamao@gmil.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:52:43'),
(88, '1073814427', 'carlos', 'lora', 'ortiz', '2022-05-19', 'M', '1073814427', 'caoticos2289@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:55:58'),
(89, '1082376130', 'briseida', 'rocha', 'hernandez', '2022-05-19', 'F', '1082376130', 'bricerh1998@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 21:00:29'),
(90, '3145039272', 'carlos', 'andres', 'jaime', '2022-05-04', 'M', '3145039272', 'kayzv@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 20:10:05'),
(91, '3163642326', 'luisa frenanda', 'mejia ', 'sandoval', '2022-05-06', 'F', '3163642326', 'lfernandamejia@hotmai.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 20:17:13'),
(92, '1065847028', 'javier', 'figueroa', 'montero', '2022-05-03', 'M', '1065847028', 'javiermontero.4@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 20:20:41'),
(93, '1065589681', 'paola', 'neina ', 'utria', '2022-05-03', 'F', '1065589681', 'neinapaola340@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 20:30:37'),
(94, '1065653014', 'angie', 'rosado', 'rosado', '2022-05-02', 'F', '1065653014', 'Angievalentinarosadoenhenique@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 20:43:22'),
(95, '3222755014', 'maria gabriela', 'piedra hita', 'piedra hita', '2022-05-01', 'F', '3222755014', 'mariiossa10@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 20:56:11'),
(96, '1065136900', 'luis', 'david', 'vargas', '2022-05-03', 'M', '3006949426', 'ldvargas@unicesar.edu.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 21:05:30'),
(97, '1003231467', 'diana ', 'margarita', 'pacheco', '2022-05-03', 'F', '3173618710', 'dianamargaritapacheco@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 21:10:07'),
(98, '1193121075', 'enrique', 'vidal', 'acosta', '2022-05-02', 'M', '3043764999', 'vidalki789@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 21:12:51'),
(99, '10033242437', 'karen', 'brito', 'granados', '2022-05-04', 'F', '3052218110', 'kbritogranandos@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 21:14:58'),
(100, '1065658790', 'andrea', 'valencia', 'valencia', '2022-05-01', 'F', '1065658790', 'andy-charloota@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 21:30:34'),
(101, '1193560202', 'david ', 'arteaga', 'arteaga', '2022-05-03', 'M', '1193560202', 'daarteaga@unicesar.edu.com', 'Seleccione el tipo de identifi', 'francisco de paula ', '2022-05-31 21:34:43'),
(102, '1007205725', 'bladimir', 'zarate', 'zarate', '2022-05-03', 'M', '1007205725', 'bladzarate10@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 21:37:19'),
(103, '1065850935', 'nicolas ', 'david', 'rodriguez', '2022-05-03', 'M', '1065850935', 'ndavidrodriguez@unicesar.edu.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 21:41:24'),
(104, '1066865923', 'nathalu', 'meriño', 'varela', '2022-05-03', 'F', '1066865923', 'nathaly2019@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 21:47:54'),
(105, '3147353860', 'jesus', 'herrera', 'herrera', '2022-05-05', 'M', '3147353860', 'jesu4armando68@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 21:55:37'),
(106, '3146546227', 'betania', 'de la hoz', 'de la hoz', '2022-05-13', 'F', '3146546227', 'Rojasbetania482@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 21:58:10'),
(107, '32160756490', 'janni', 'moralez', ' zambrano', '2022-05-02', 'F', '3216075649', 'jannimoraleszambrano@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 22:01:11'),
(108, '3022764573', 'yuixa', 'morales', 'zambrano', '2022-05-03', 'F', '3022764573', 'yulixsamoraleszambrano@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 22:04:48'),
(109, '3243162232', 'grexo', 'arrirta', 'rojas', '2022-05-01', 'M', '3243162232', 'gracearrietas@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 22:11:52'),
(110, '3226316853', 'mary', 'soleydis', 'navarro', '2022-05-03', 'F', '3226316853', 'mnmarilayo37@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 22:15:23'),
(111, '1143128490', 'angie', 'rodriguez', 'villadiego', '0000-00-00', 'F', '3005630012', 'gedwin119@hotmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-06-22 22:47:46'),
(112, '3233180885', 'lesli ', 'castellar', 'castellar', '2022-06-01', 'F', '3023860980', 'cristianalarconrr109@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-23 20:10:08'),
(113, '00000000', 'daniel', 'castelar', 'castelar', '2022-06-15', 'M', '3023860980', 'cristianalarcon109@gmail.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-23 20:11:35'),
(114, '000000', 'madigan', 'castellar', 'castellar', '2022-06-04', 'F', '3023860980', 'cristianalarcon109@gmail.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-23 20:13:20'),
(115, '00000000', 'mama', 'castellar', 'castellar', '2022-05-31', 'Se', '3023860980', 'cristianalarcon109@gmail.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-23 20:14:49'),
(116, '00000000', 'karol', 'carrillo', 'carrillo', '2022-06-23', 'F', '3023860980', 'cristianalarcon1109@gmail.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-23 20:16:21'),
(117, '1065591534', 'tomas', 'olantero', 'olantero', '2022-06-23', 'F', '3023860980', 'habitatoyrgn@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-23 20:31:06'),
(118, '1066095362', 'wendy', 'orozco', 'orozco', '2022-06-22', 'F', '3005630016', 'cristianalarcon1090@gmail.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-23 20:33:07'),
(119, '1003376188', 'lauras', 'duarte', 'rojas', '2022-06-12', 'F', '3023860989', 'cristianalarcon1809@gmail.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-23 20:36:13'),
(120, '00000000', 'angie', 'personalizado', 'personalizado', '2022-06-23', 'F', '3023860989', 'sebacarrill12oalmanza@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-23 20:41:28'),
(121, '1065830002', 'tatiana', 'angulo', 'angulo', '2022-06-16', 'F', '3023860980', 'yeirisg12onzalez25@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-23 20:42:43'),
(122, '77096341', 'enrique', 'brito  ', 'romero', '2022-06-06', 'M', '3176464323', 'britoenrrinque@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-23 20:47:48'),
(123, '00000000', 'surley', 'arias', 'arias', '2022-06-13', 'F', '3023860987', 'cristian56alarcon109@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-23 20:51:13'),
(124, '3153786671', 'yuneth', 'colpas', 'colpas', '2022-06-16', 'F', '3023860980', 'yanethcolpas2000@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-23 20:55:04'),
(125, '10823766130', 'briseida', 'rocha', 'hernandez', '2022-06-09', 'F', '3023860987', 'bricerc1998@gmailcom', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-23 21:41:56'),
(126, '1003379453', 'sharol', 'cerro', 'perez', '2022-07-01', 'F', '3023860987', 'sharolcerro3019@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-23 21:44:09'),
(127, '00000000', 'camilo', 'televisor', 'televisor', '2022-06-03', 'M', '3023860880', 'cristianalarc45on109@gmail.co', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-1060', '2022-06-25 12:49:55'),
(128, '3122042836', 'juan david', 'garces', 'pavo', '2022-06-18', 'Se', '3023860987', 'cristianalarcon1098@gmail.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-25 12:51:29'),
(129, '1193395264', 'alberto', 'blanco', 'blanco', '2022-06-06', 'M', '3217389311', 'sebacarrilloalmanza7777@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-25 12:55:35'),
(130, '3023114972', 'camila', 'pinzon', 'pinzon', '2022-06-17', 'M', '3023860986', 'gedwin1619@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-25 12:56:57'),
(131, '1003232540', 'carolais', 'perez', 'gonzales', '2022-06-17', 'M', '3126819790', 'perezcarolais@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-25 13:10:28'),
(132, '1065812714', 'yuris', 'llanos', 'rodriguez', '2022-06-07', 'F', '3023860890', 'yurisllanos@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-29 20:51:31'),
(133, '1002650213', 'yenis', 'sueca', 'pita', '2022-06-12', 'F', '1002650213', 'cristianalarcon1209@gmail.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-29 20:55:33'),
(134, '3158962051', 'sandrid', 'laguna', 'neira', '2022-06-07', 'F', '3158962051', 'neirapaola340@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-29 21:10:18'),
(135, '3158962051', 'paola', 'neira', 'letria', '2022-06-09', 'F', '3158962051', 'cristianalarcon2109@gmail.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-29 21:15:27'),
(136, '1128151215', 'ena', 'rivera', 'orozco', '2022-06-25', 'F', '1128151215', 'karolina94@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-29 21:19:03'),
(137, '00000000', 'geña', 'geña', 'geña', '2022-06-09', 'F', '3023860979', 'cristianalarcon10u9@gmail.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-29 21:21:11'),
(138, '100338045', 'ronald', 'murillo', 'murillo', '2022-06-04', 'M', '1003380457', 'ronalmurilloalmanza@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-29 21:24:01'),
(139, '00000000', 'valeria', 'perez', 'perez', '2022-06-20', 'F', '3023860980', 'cristianalarcon8976109@gmail.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-29 21:25:07'),
(140, '1007595935', 'isabel', ' cabellos', ' cabellos', '2022-06-21', 'F', '1007595935', 'michellcastrocarcamo@gmil.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-29 21:27:36'),
(141, '3012421232', 'oscar', 'almendrales', 'carillo', '2022-06-09', 'M', '3012421232', 'carrillo2018oscar@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-29 21:30:51'),
(142, '1065581160', 'gilbert', 'gil', 'gil', '2022-06-23', 'F', '1065581160', 'cristianalarcon1098965@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-29 21:33:29'),
(143, '1003375819', 'sandy', 'gonzales', 'gonzales', '2022-06-29', 'F', '1003375819', 'sandymgl001@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-29 21:37:00'),
(144, '1066288997', 'isabel', 'viloria', 'viloria', '2022-06-23', 'F', '1066288997', 'carrillo2018oscar789@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-06-29 21:38:51'),
(145, '1003317101', 'david', 'almanza', 'almanza', '2022-06-10', 'M', '1003317101', 'carrillo2018oser46car@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-29 21:42:27'),
(146, '1055919686', 'jaquelin', 'llanos', 'llanos', '2022-07-01', 'F', '1055919686', 'cristianalarcon109897898@gmail.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-29 21:50:03'),
(147, '1003198104', 'lina', 'reyes', 'reyes', '2022-06-23', 'F', '1003198104', 'cristianalarc786on109@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-29 21:51:25'),
(148, '10033381015', 'yeleimys', 'moreno', 'moreno', '2022-06-16', 'F', '1003338101', 'yaleimisoreno15@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-29 21:57:06'),
(149, '1003381755', 'valentina', 'florez', 'florez', '2022-06-04', 'F', '1003381755', 'carrillo201889oscar@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-29 21:59:20'),
(150, '3128875190', 'laura', 'sanjuan', 'sanjuan', '2022-07-14', 'F', '1006455385', 'laurasanjuaneslava2021@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-05 19:50:05'),
(151, '1065130666', 'alvaro', 'barrio ', 'vega', '2022-08-04', 'M', '3024166383', 'albarrios91@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-05 19:54:11'),
(152, '1003315264', 'mayren', 'villaloboz', 'marin', '2022-07-28', 'F', '3186683196', 'mayren2020villalobos@gmail.con', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-05 20:05:25'),
(153, '1055919686', 'jakelin', 'llanos', 'llanos', '2022-07-21', 'F', '1055919686', 'jakellamos17@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-05 20:09:54'),
(154, '1105685892', 'david', 'narvaez', 'parres', '2022-07-19', 'M', '3115699671', 'telcamada@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-05 20:12:23'),
(155, '10655984276', 'andre', 'ochoa', 'molina', '2022-07-16', 'M', '3242677412', 'andresit0001988@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-05 20:14:21'),
(156, '1065847122', 'giovany', 'fuente', 'mejia', '2022-07-22', 'F', '3234531566', 'gioivanafuentesmejia@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-05 20:18:23'),
(157, '1003380098', 'valentina', 'bohorquez', 'montesinos', '2022-07-28', 'F', '1003380098', 'valentinaborquezmontesinos4@gmail', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-05 20:21:05'),
(158, '3015039553', 'paola', 'soto', 'soto', '2022-07-23', 'F', '3015039553', 'paola.ps681@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 19:56:43'),
(159, '3104621626', 'maria jose', 'padilla', 'padilla', '2022-07-18', 'F', '3104621626', 'mpadillaraad@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 20:01:28'),
(160, '3004429031', 'dana', 'gomez', 'gomez', '2022-07-23', 'F', '3004429031', 'carrillo2018oscar6@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 20:06:38'),
(161, '3205700837', 'wendys', 'valderrama', 'ospina', '2022-07-16', 'F', '3205700837', 'wendyiivalderrama@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 20:59:15'),
(162, '1003379371', 'maria jose', 'herrera', 'herrera', '2022-07-23', 'F', '3023860985', 'mj.herrera593@gmai.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 21:16:32'),
(163, '1067591530', 'karol', 'laguna', 'pretel', '2022-07-26', 'F', '1067591530', 'karollaguna@gmailo.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 22:03:46'),
(164, '39420350', 'elcy', 'torres', 'correa', '2022-07-27', 'F', '3942035089', 'elcytorrescorrea@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 22:06:43'),
(165, '49770786', 'martinella', 'moolina', 'figueron', '2022-07-20', 'F', '3023860780', 'martinellymolina@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 22:11:09'),
(166, '1014183647', 'derly', 'cifuente', 'cruz', '2022-07-14', 'F', '3023860988', 'dcifuentes@uniguajira.ed.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 22:14:18'),
(167, '1003233283', 'lineys', 'martiz', 'castro', '2022-07-21', 'F', '1003233283', 'lineysmartiz@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 22:17:21'),
(168, '1065850563', 'yesmin', 'moreno', 'moreno', '2022-07-12', 'F', '1065850563', 'yesmin0527@hotmaill.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 22:20:29'),
(169, '1010093807', 'carolina', 'lopez', 'lopez', '2022-07-13', 'F', '1010093807', 'carolopez970503@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 22:31:11'),
(170, '1005845719', 'amanda ', 'conteras', 'conteras', '2022-07-07', 'F', '1005845719', 'lamandacontreras@unicesar.edu.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 22:34:58'),
(171, '1003238057', 'marol', 'andrade', 'gomez', '2022-07-07', 'F', '1003238057', 'marolandrade@gmial.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 22:39:45'),
(172, '1065849647', 'julitza', 'arias', 'gomez', '2022-07-07', 'F', '1065849647', 'julitsaarias11@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 22:41:31'),
(173, '1003379016', 'sara', 'caldera', 'martinez', '2022-07-19', 'F', '1003379016', 'saracalderam12@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 22:49:41'),
(174, '1193537430', 'daniel', 'josue', 'urueña', '2022-07-12', 'F', '1193537430', 'daniel15jum@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 22:52:59'),
(175, '1003242620', 'grey', 'yance', 'ruiz', '2022-07-07', 'F', '1003242620', 'greyyance09@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 22:54:20'),
(176, '1010126026', 'mateo', 'pereira', 'mejia', '2022-07-20', 'M', '1010126026', 'mateoandres112@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 22:57:05'),
(177, '1127046736', 'rosibel', 'salas', 'gomez', '2022-07-21', 'F', '1127046736', 'rosibelsalasgomez93@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 22:59:00'),
(178, '3013926076', 'emerson', 'fruto', 'arias', '2022-07-06', 'M', '3013926076', 'emerson112004@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 23:09:34'),
(179, '1003238354', 'shirleza', 'arias', 'arias', '2022-07-12', 'F', '1003238354', 'shirlezaarias@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 23:14:05'),
(180, '1007463060', 'leonela', 'santiago', 'passo', '2022-07-01', 'F', '1007463060', 'leotucaja@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 23:16:40'),
(181, '1003241942', 'alvaro', 'galindo', 'polo', '2022-07-07', 'M', '1003241942', 'alvarojosegalindopolo76@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 23:21:34'),
(182, '111111', 'karol', 'rosa', 'perez', '2022-07-09', 'F', '3023160980', 'carrillo2066618oscar@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 23:42:23'),
(183, '3135666445', 'jhoel', 'sampayo', 'sampayo', '2022-08-04', 'F', '3135666445', 'carrillo2018o8scar@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-08-01 19:32:27'),
(184, '1003317101', 'david', 'almanza', 'almanza', '2022-08-04', 'M', '3146359666', 'carrillo20188oscar@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-08-01 19:35:29'),
(185, '1065589450', 'laura', 'ariza', 'sanchez', '2022-08-04', 'F', '3053103890', 'cristianalarcon10978@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-08-01 19:38:17'),
(186, '1065663075', 'cindy', 'vasquez ', 'lopez', '2022-08-05', 'F', '3044934916', 'tiramisuu94@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-08-01 19:42:30'),
(187, '1066866982', 'gustavo', 'martinez', 'martinez', '2022-08-13', 'F', '1066866982', 'carrillo2018i0oscar@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-08-01 19:47:25'),
(188, '1010056250', 'lina', 'ramos', 'molina', '2022-08-19', 'F', '3175357962', 'linamar03@gmiail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-08-01 19:52:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `Identificacion` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `PrimerNombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `PrimerApellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `SegundoApellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `FechaNacimiento` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Sexo` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `Celular` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `TipoIdentificacion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Direccion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `TipoSuscripcion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `SubTotal` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Cantidad` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Total` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `FechaFin` date NOT NULL,
  `CodigoFactura` char(8) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`Identificacion`, `PrimerNombre`, `PrimerApellido`, `SegundoApellido`, `FechaNacimiento`, `Sexo`, `Celular`, `Correo`, `TipoIdentificacion`, `Direccion`, `FechaRegistro`, `TipoSuscripcion`, `SubTotal`, `Cantidad`, `Total`, `FechaFin`, `CodigoFactura`) VALUES
('1065851701', 'Sebastian', 'Carillo', 'Almanza', '1999-08-04', 'M', '3206552930', 'sebacarrilloalmanza@gmail.com', 'Cedula de Ciudadania', 'manzana k casa 6 tobia daza', '2022-04-04 19:57:27', 'Mensualidad', '45000', '1', '45000', '2022-05-04', 'JQJWZYYU'),
('1003244177', 'maria CAMILA', 'CORONEL', 'LIJNARES', '2001-05-15', 'F', '3208330044', 'cristianalarc9@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-04 20:04:14', 'Mensualidad', '45000', '1', '45000', '2022-05-04', 'R2JPPVN0'),
('1193560202', 'DAVID', 'ARTEGA', 'OSORIO', '2002-08-08', 'M', '3004315783', 'cristianalarc96@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-04 20:16:06', 'Mensualidad', '45000', '1', '45000', '2022-05-04', 'XCELTX3I'),
('56087950', 'ESMERALDA', 'GALINDO', 'MARTINEZ', '1976-12-28', 'F', '3135125688', 'esmeraldagalindomartinez@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-04 20:30:24', 'Mensualidad', '45000', '1', '45000', '2022-05-04', 'GK4Q0Y5W'),
('1067599938', 'yeiris liseth', 'gonzalesz', 'velasquez', '2006-01-20', 'F', '3013422130', 'yeirisgonzalez25@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-04 20:51:49', 'Mensualidad', '45000', '1', '45000', '2022-05-04', 'C9C4DXBG'),
('1003377714', 'carlos', 'martinez', 'opina', '2001-11-30', 'M', '3016360949', 'calejo3011@hotmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-04 21:07:39', 'Mensualidad', '45000', '1', '45000', '2022-05-04', 'HGAC3DEM'),
('1003383640', 'linda ', 'martinez', 'torrez', '2001-10-11', 'F', '3136866142', 'lindanayethmartineztorres@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-04-04 23:25:16', 'Mensualidad', '45000', '1', '45000', '2022-05-04', 'O0C5WQR6'),
('3205934253', 'alfredo', 'ortega', 'orozco', '1991-04-05', 'M', '3205934253', 'cristianalarcon2109@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-04 23:56:34', 'Mensualidad', '45000', '1', '45000', '2022-05-04', 'BG1RKOP4'),
('391100311', 'diana', 'opino', 'melina', '1984-01-09', 'F', '3016832836', 'losmellos2_4@hotmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-05 00:30:40', 'Mensualidad', '45000', '1', '45000', '2022-05-04', '7FARDY68'),
('1193478284', 'anuar', 'oñate', 'pitre', '1999-03-04', 'M', '3043470678', 'anuaryel15@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-05 00:34:37', 'Mensualidad', '45000', '1', '45000', '2022-05-04', 'T3E5OC63'),
('1065647959', 'kellis', 'romero', 'padilla', '2022-04-05', 'F', '3147168671', 'jegalindo1996@hotmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-05 20:05:00', 'Mensualidad', '45000', '1', '45000', '2022-05-05', 'M4NLBMDG'),
('1001978336', 'dilan', 'alargon', 'alargon', '2022-04-05', 'M', '3023398954', 'dilanxxww@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-05 20:33:18', 'Mensualidad', '45000', '1', '45000', '2022-05-05', 'P9MOFL83'),
('1235340036', 'jhaidanis', 'perales', 'herrera', '2022-04-05', 'F', '3043562026', 'cristianalarcoffn109@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-05 20:55:14', 'Mensualidad', '45000', '1', '45000', '2022-05-05', 'ILZU2PYM'),
('1193554305', 'jader', 'mindiola', 'martinez', '2022-04-05', 'M', '3024663805', 'cristianalarvvvcon109@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-1066', '2022-04-05 21:27:22', 'Mensualidad', '45000', '1', '45000', '2022-05-05', 'U5GWZL2L'),
('1065643159', 'yisel', 'martinez ', 'oñate', '2022-04-05', 'F', '3135131499', 'cristianalarcobbn109@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-05 23:57:59', 'Mensualidad', '45000', '1', '45000', '2022-05-05', 'P5I146JO'),
('1082376130', 'brisida', 'rocha', 'hernandez', '2022-04-06', 'F', '3209500255', 'bricerh1998@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-108', '2022-04-07 02:18:34', 'Mensualidad', '45000', '1', '45000', '2022-05-06', 'OP6NO00L'),
('1065647028', 'jeancarlos', 'tapias', 'hernandez', '2022-04-06', 'M', '3017000829', 'ingjetapias@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-109', '2022-04-07 02:24:21', 'Mensualidad', '45000', '1', '45000', '2022-05-06', '5F8AJNG4'),
('1065835089', 'nellis', 'garcias', 'garcias', '2022-04-09', 'F', '3105992859', 'Neigarcas7@gmail.com', 'Cedula de Ciudadania', 'carrera 34a calle 30 #26-106', '2022-04-09 11:51:29', 'Mensualidad', '45000', '1', '45000', '2022-04-07', '7Z74URH4'),
('1003232239', 'valentina', 'maldonado', 'rodriguez', '2022-04-09', 'F', '3046422421', 'Grgrines3@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-108', '2022-04-09 11:52:03', 'Mensualidad', '45000', '1', '45000', '2022-04-08', '9FYMJY7D'),
('1003318002', 'donali', 'granados', 'granados', '2022-04-09', 'F', '3008551298', 'donalisgranados@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-107', '2022-04-09 11:52:27', 'Mensualidad', '45000', '1', '45000', '2022-04-08', 'VU1TIOT8'),
('1065655309', 'jean carlo', 'jimenez', 'jimenez', '2022-03-28', 'M', '3107862714', 'sebacarrilloalmanza@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-17 22:22:45', 'Mensualidad', '45000', '1', '45000', '2022-04-11', 'W0G4Y5W1'),
('1065826853', 'katty', 'buges', 'buges', '2022-04-13', 'F', '3004591765', 'kbiges_96@hotmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-1077', '2022-04-17 22:23:27', 'Mensualidad', '45000', '1', '45000', '2022-04-13', 'FSUPRIHO'),
('72209941', 'edwin', 'guzmán', 'guzmán', '1975-04-05', 'M', '3005630012', 'gedwin119@hotmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-108', '2022-04-18 12:43:25', 'Mensualidad', '45000', '1', '45000', '2022-05-18', 'CNWKL3JF'),
('1065655309', 'jean carlo', 'jimenez', 'jimenez', '2022-03-28', 'M', '3107862714', 'sebacarrilloalmanza@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-04-18 12:46:41', 'Mensualidad', '45000', '1', '45000', '2022-05-11', 'WC2NYDZ9'),
('1065842907', 'zoila', 'barguil', 'barguil', '2022-05-07', 'F', '3226984810', 'celenia1998@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-107', '2022-05-03 12:56:16', 'Mensualidad', '45000', '1', '45000', '2022-05-19', 'OP4P6MJG'),
('1003087212', 'dayis', 'redondo', 'redondo', '2022-05-21', 'F', '3182130835', 'danyredco@hotmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-108', '2022-05-03 12:56:44', 'Mensualidad', '45000', '1', '45000', '2022-05-19', 'S1IBEXMY'),
('1065811306', 'aide', 'sequeda', 'sequeda', '2022-05-21', 'F', '3046142259', 'aide.maroz@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-03 12:57:14', 'Mensualidad', '45000', '1', '45000', '2022-05-19', 'F76HTVG8'),
('1066865923', 'nathalys', 'meriño', 'meriño', '2022-05-28', 'F', '3243669697', 'nathaloy2019@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-03 12:57:47', 'Mensualidad', '45000', '1', '45000', '2022-05-20', 'TGM8J2WX'),
('1067592130', 'oscar ', 'carrillo', 'carrillo', '2022-05-26', 'M', '3012421232', 'carrillo2018oscar@gmail.com', 'Cedula de Ciudadania', 'manzana k casa 6 tobia daza', '2022-05-03 12:59:04', 'Mensualidad', '45000', '1', '45000', '2022-05-14', 'TTVBPTFZ'),
('1065857189', 'maria', 'betania', 'de loan hoz', '2022-05-13', 'F', '3004315789', 'Rojasbetania482@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-03 12:59:36', 'Mensualidad', '45000', '1', '45000', '2022-05-22', 'AWLIR60P'),
('1066866925', 'edinson', 'gutierrez', 'valest', '2022-05-30', 'M', '1066866925', 'santyy543@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:31:53', 'Mensualidad', '45000', '1', '45000', '2022-06-05', 'U91ZHJ4D'),
('1065618772', 'nelson', 'guerra', 'ossa', '2022-05-12', 'M', '1065618772', 'nelsonguerra0518@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:32:27', 'Mensualidad', '45000', '1', '45000', '2022-06-05', 'LBS3813W'),
('1128191298', 'yiselis', 'orozco', 'orozco', '2022-06-09', 'F', '1128191298', 'yeirisorozco23@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:33:57', 'Mensualidad', '45000', '1', '45000', '2022-06-05', 'Q7CULBEO'),
('1065599565', 'jose', 'hernandez', 'hernandez', '2022-05-19', 'M', '1065599565', 'joseangelhernandez@ingenieros.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:35:25', 'Mensualidad', '45000', '1', '45000', '2022-06-05', 'PYU5T7IS'),
('1003240197', 'angie', 'ortiz', 'garcias', '2022-05-12', 'F', '1003240197', 'anliorga24@gmai.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:35:56', 'Mensualidad', '45000', '1', '45000', '2022-06-05', 'SCU4475J'),
('1003231269', 'jesica', 'ortiz ', 'garcias', '2022-05-27', 'F', '1003231269', 'jessicaohzgar@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:36:20', 'Mensualidad', '45000', '1', '45000', '2022-06-05', 'VWLTS2UA'),
('1065848727', 'yirleydis', 'mercado', 'caballero', '2022-05-28', 'F', '1065848727', 'mirledysmercado02@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:36:55', 'Mensualidad', '45000', '1', '45000', '2022-06-05', '54HFM6HQ'),
('1067817647', 'heriberto', 'gonzalez', 'gonzalez', '2022-05-19', 'M', '1067817647', 'sebacarrilloalmanz77a@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:38:22', 'Mensualidad', '45000', '1', '45000', '2022-06-03', 'ZOGMQBWX'),
('1003233151', 'luis', 'gutierrez', 'borrejo', '2022-05-16', 'M', '1003233151', 'luisgutierrez2002@hotmailo.com', 'Seleccione el tipo de identifi', 'francisco de paula ', '2022-05-05 21:39:03', 'Mensualidad', '45000', '1', '45000', '2022-06-03', '7Z5RCU1P'),
('1065850563', 'yesmin', 'mareno', 'mareno', '2022-05-19', 'F', '1065850563', 'yesmin0527@hotmaill.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:39:42', 'Mensualidad', '45000', '1', '45000', '2022-06-03', '1FYT3SHB'),
('1003235116', '', '', '', '', '', '', '', '', '', '2022-05-05 21:40:26', 'Mensualidad', '45000', '1', '45000', '2022-06-03', 'XIO98512'),
('1065818193', 'angela', 'gomez', 'pava', '2022-05-26', 'F', '1065818193', 'angelapavapava@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:41:35', 'Mensualidad', '45000', '1', '', '2022-06-03', 'O4FEAEWH'),
('3148519151', 'naylin', 'sequeda', 'sequeda', '2022-05-11', 'F', '3148519151', 'cristianalarcon6109@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:42:17', 'Mensualidad', '45000', '1', '45000', '2022-06-03', '7JRDAY3H'),
('1066864681', 'vanesa', 'mendoza', 'mendoza', '2022-05-03', 'F', '3043860980', 'vanems1303@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:42:56', 'Mensualidad', '45000', '1', '45000', '2022-06-03', 'WYTJZC8C'),
('1003244177', '', '', '', '', '', '', '', '', '', '2022-05-05 21:43:33', 'Mensualidad', '45000', '1', '45000', '2022-06-03', 'BBLEDESC'),
('1003313087', 'jose', 'bugues', 'bugues', '2022-05-05', 'M', '3206552939', 'josebrujes02@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:44:12', 'Mensualidad', '45000', '1', '45000', '2022-06-02', 'U5L9V9MY'),
('1065839615', 'andres ', 'CORONEL', 'CORONEL', '2022-05-02', 'M', '3206552938', 'ancoronel85@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-05 21:45:31', 'Rutina', '3000', '15', '45000', '2022-05-17', 'NESUK1YD'),
('1152934179', 'cesar', 'cassianis', 'vega', '2022-05-13', 'M', '3217080098', 'sebacarrilloalmanza55@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 19:54:22', 'Mensualidad', '45000', '1', '45000', '2022-06-11', '6A8RO7MP'),
('1066269072', 'susana', 'cervantes', 'cervantes', '2022-05-05', 'F', '1066269072', 'susanadsp15@gmail.com', 'Seleccione el tipo de identifi', 'francisco de paula ', '2022-05-11 19:56:52', 'Mensualidad', '45000', '1', '45000', '2022-06-10', 'C0FCOUYJ'),
('1007519901', 'maria jose', 'jimenez', 'jiminez', '2022-05-06', 'F', '1007519901', 'mjjimenez19979@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 19:59:10', 'Mensualidad', '45000', '1', '45000', '2022-06-10', 'HHAB3V7S'),
('1235339422', 'lucelis', 'garcias ', 'polo', '2022-05-12', 'F', '1235339422', 'lgarciaspolo99@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:02:02', 'Mensualidad', '45000', '1', '45000', '2022-06-10', 'RX56NV1N'),
('1065575521', 'edmeson', 'fruto', 'arias', '2022-05-17', 'F', '1065575521', 'emeson112004@gmial.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:06:09', 'Mensualidad', '45000', '1', '45000', '2022-06-10', '5P1BSRN1'),
('1065814845', 'robison', 'pardo', 'pardo', '2022-05-05', 'M', '1065814845', 'robisonpardohernandez@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:11:33', 'Mensualidad', '45000', '1', '45000', '2022-06-11', 'VYXQMXPU'),
('1051679385', 'paola', 'cassaleth', 'cassaleth', '2022-05-20', 'Se', '1051679385', 'paolacassaleth@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:14:54', 'Mensualidad', '45000', '1', '45000', '2022-06-10', 'TM2802BX'),
('11935370120', 'deiver ', 'mindiola', 'mindiola', '2022-06-01', 'M', '1193537012', 'deiverjavieres@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:17:16', 'Mensualidad', '45000', '1', '45000', '2022-06-09', 'TUWP5OW1'),
('49608297', 'lina', 'martinez', 'martinez', '2022-05-19', 'F', '4960829754', 'linamar3003@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:20:29', 'Mensualidad', '45000', '1', '45000', '2022-06-09', 'FF81MCRJ'),
('1003266127', 'silieth', 'martinez', 'martinez', '2022-05-25', 'F', '1003266127', '14silieth@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:22:16', 'Mensualidad', '45000', '1', '45000', '2022-06-09', 'LLVAG789'),
('1010145150', 'lised', 'peinado', 'peinado', '2022-05-22', 'F', '1010145150', 'lissed07@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:24:14', 'Mensualidad', '45000', '1', '45000', '2022-06-09', 'BTSDOMU8'),
('1010142006', 'daniela', 'ortiz', 'muños', '2022-05-14', 'F', '1010142006', 'odaniela@unicesar.edu.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:28:00', 'Mensualidad', '45000', '1', '45000', '2022-06-09', 'IQWBBS2M'),
('1065836629', 'camila', 'pinzón', 'pinzón', '2022-05-20', 'F', '1065836629', 'camilapinzonospina@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:31:41', 'Mensualidad', '45000', '1', '45000', '2022-06-10', 'UB2IWLVU'),
('1232888775', 'rosalba', 'fuente', 'martinez', '2022-05-31', 'F', '1232888775', 'rosalbafuentes17@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:45:50', 'Rutina', '3000', '15', '45000', '2022-05-25', 'BM2CHRON'),
('1065807500', 'rolando', 'toloza', 'ariza', '2022-05-26', 'M', '1065807500', 'rolandocontador18@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:50:00', 'Mensualidad', '45000', '1', '45000', '2022-06-10', '0P9A2EPD'),
('1065643159', 'yisel', 'martinez ', 'oñate', '2022-04-05', 'F', '3135131499', 'cristianalarcobbn109@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-05-11 20:53:14', 'Mensualidad', '45000', '1', '45000', '2022-06-09', 'JLJWK68S'),
('1073814427', 'carlos', 'lora', 'ortiz', '2022-05-19', 'M', '1073814427', 'caoticos2289@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-11 20:56:29', 'Mensualidad', '45000', '1', '45000', '2022-06-11', 'BZR7UD2B'),
('1082376130', '', '', '', '', '', '', '', '', '', '2022-05-11 21:02:06', 'Mensualidad', '45000', '1', '45000', '2022-06-11', 'F6H6M0G1'),
('3145039272', 'carlos', 'andres', 'jaime', '2022-05-04', 'M', '3145039272', 'kayzv@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 20:10:53', 'Mensualidad', '45000', '1', '45000', '2022-06-12', 'GXW3PTF7'),
('3163642326', 'luisa frenanda', 'mejia ', 'sandoval', '2022-05-06', 'F', '3163642326', 'lfernandamejia@hotmai.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 20:17:51', 'Mensualidad', '45000', '1', '45000', '2022-06-12', 'THJYL8LB'),
('1065847028', 'javier', 'figueroa', 'montero', '2022-05-03', 'M', '1065847028', 'javiermontero.4@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 20:21:25', 'Mensualidad', '45000', '1', '45000', '2022-06-13', 'FWXH9UCO'),
('1065589681', 'paola', 'neina ', 'utria', '2022-05-03', 'F', '1065589681', 'neinapaola340@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 20:31:17', 'Mensualidad', '45000', '1', '45000', '2022-06-26', 'KSTNVI2A'),
('1065653014', 'angie', 'rosado', 'rosado', '2022-05-02', 'F', '1065653014', 'Angievalentinarosadoenhenique@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 20:44:05', 'Mensualidad', '45000', '1', '45000', '2022-06-13', '2B8J9BVU'),
('3222755014', 'maria gabriela', 'piedra hita', 'piedra hita', '2022-05-01', 'F', '3222755014', 'mariiossa10@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 20:56:47', 'Mensualidad', '45000', '1', '45000', '2022-06-16', 'HIFEPV2Z'),
('1065136900', 'luis', 'david', 'vargas', '2022-05-03', 'M', '3006949426', 'ldvargas@unicesar.edu.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 21:05:59', 'Mensualidad', '45000', '1', '45000', '2022-06-16', 'CVKLOX9Z'),
('1003231467', 'diana ', 'margarita', 'pacheco', '2022-05-03', 'F', '3173618710', 'dianamargaritapacheco@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 21:10:37', 'Mensualidad', '45000', '1', '45000', '2022-06-16', 'ZQNGJ5M1'),
('1193121075', 'enrique', 'vidal', 'acosta', '2022-05-02', 'M', '3043764999', 'vidalki789@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 21:13:29', 'Mensualidad', '45000', '1', '45000', '2022-06-16', '2YS4EDG0'),
('10033242437', 'karen', 'brito', 'granados', '2022-05-04', 'F', '3052218110', 'kbritogranandos@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 21:15:31', 'Mensualidad', '45000', '1', '45000', '2022-06-18', '1JG3Q8D8'),
('1065658790', 'andrea', 'valencia', 'valencia', '2022-05-01', 'F', '1065658790', 'andy-charloota@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 21:31:20', 'Mensualidad', '45000', '1', '45000', '2022-06-23', '2SGWNWQE'),
('1193560202', '', '', '', '', '', '', '', '', '', '2022-05-31 21:35:25', 'Mensualidad', '45000', '1', '45000', '2022-06-23', 'JBJUN0LF'),
('1007205725', 'bladimir', 'zarate', 'zarate', '2022-05-03', 'M', '1007205725', 'bladzarate10@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 21:37:58', 'Mensualidad', '45000', '1', '45000', '2022-06-23', 'O1KYMWNF'),
('1065850935', 'nicolas ', 'david', 'rodriguez', '2022-05-03', 'M', '1065850935', 'ndavidrodriguez@unicesar.edu.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 21:42:03', 'Mensualidad', '45000', '1', '45000', '2022-06-23', '5Y41O60L'),
('1066865923', '', '', '', '', '', '', '', '', '', '2022-05-31 21:48:31', 'Mensualidad', '45000', '1', '45000', '2022-06-23', 'WP39L0FT'),
('3147353860', 'jesus', 'herrera', 'herrera', '2022-05-05', 'M', '3147353860', 'jesu4armando68@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 21:56:08', 'Mensualidad', '45000', '1', '45000', '2022-06-24', 'C7CF0OR9'),
('3146546227', 'betania', 'de la hoz', 'de la hoz', '2022-05-13', 'F', '3146546227', 'Rojasbetania482@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 21:58:42', 'Mensualidad', '45000', '1', '45000', '2022-06-24', '8UHAZDJ1'),
('32160756490', 'janni', 'moralez', ' zambrano', '2022-05-02', 'F', '3216075649', 'jannimoraleszambrano@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 22:01:45', 'Mensualidad', '45000', '1', '45000', '2022-06-24', '752I7G3Y'),
('3022764573', 'yuixa', 'morales', 'zambrano', '2022-05-03', 'F', '3022764573', 'yulixsamoraleszambrano@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 22:05:15', 'Mensualidad', '45000', '1', '45000', '2022-06-24', 'AM7F1HHL'),
('3243162232', 'grexo', 'arrirta', 'rojas', '2022-05-01', 'M', '3243162232', 'gracearrietas@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 22:12:33', 'Mensualidad', '45000', '1', '45000', '2022-06-24', '0J7G4EAV'),
('3226316853', 'mary', 'soleydis', 'navarro', '2022-05-03', 'F', '3226316853', 'mnmarilayo37@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-05-31 22:15:48', 'Mensualidad', '45000', '1', '45000', '2022-06-24', 'ZPFRXTT1'),
('1003313087', 'jose', 'bugues', 'bugues', '2022-05-05', 'M', '3206552939', 'josebrujes02@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-06-25 12:58:47', 'Mensualidad', '45000', '1', '45000', '2022-07-10', 'X7JMPJ7K'),
('1065812714', 'yuris', 'llanos', 'rodriguez', '2022-06-07', 'F', '3023860890', 'yurisllanos@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-01 19:57:41', 'Mensualidad', '45000', '1', '45000', '2022-07-24', '2PVXKAZ7'),
('1002650213', 'yenis', 'sueca', 'pita', '2022-06-12', 'F', '1002650213', 'cristianalarcon1209@gmail.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-01 19:58:56', 'Mensualidad', '45000', '1', '45000', '2022-07-25', 'IKHHDDU8'),
('3158962051', '', '', '', '', '', '', '', '', '', '2022-07-01 20:00:42', 'Mensualidad', '45000', '1', '45000', '2022-07-27', 'NGDEFJ3P'),
('1128151215', 'ena', 'rivera', 'orozco', '2022-06-25', 'F', '1128151215', 'karolina94@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-01 20:01:55', 'Mensualidad', '45000', '1', '45000', '2022-07-27', 'BTPFQYXW'),
('00000000', '', '', '', '', '', '', '', '', '', '2022-07-01 20:02:40', 'Mensualidad', '45000', '2', '90000', '2022-07-27', 'R9JYL9HQ'),
('100338045', 'ronald', 'murillo', 'murillo', '2022-06-04', 'M', '1003380457', 'ronalmurilloalmanza@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-01 20:06:55', 'Mensualidad', '45000', '1', '45000', '2022-07-27', '7JT0HEEF'),
('00000000', '', '', '', '', '', '', '', '', '', '2022-07-01 20:07:24', 'Mensualidad', '45000', '1', '45000', '2022-07-27', 'LHSMP0US'),
('1007595935', 'isabel', ' cabellos', ' cabellos', '2022-06-21', 'F', '1007595935', 'michellcastrocarcamo@gmil.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-01 20:08:40', 'Mensualidad', '45000', '1', '45000', '2022-07-27', '42SAXJYF'),
('3012421232', 'oscar', 'almendrales', 'carillo', '2022-06-09', 'M', '3012421232', 'carrillo2018oscar@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-01 20:10:16', 'Mensualidad', '45000', '2', '90000', '2022-07-28', 'Z6JZAQSQ'),
('1065581160', 'gilbert', 'gil', 'gil', '2022-06-23', 'F', '1065581160', 'cristianalarcon1098965@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-01 20:11:22', 'Mensualidad', '45000', '1', '45000', '2022-07-28', 'NS124P0U'),
('1003375819', 'sandy', 'gonzales', 'gonzales', '2022-06-29', 'F', '1003375819', 'sandymgl001@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-01 20:12:20', 'Mensualidad', '45000', '1', '45000', '2022-07-28', 'ASOVUQDK'),
('1066288997', 'isabel', 'viloria', 'viloria', '2022-06-23', 'F', '1066288997', 'carrillo2018oscar789@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-07-01 20:13:01', 'Mensualidad', '45000', '1', '45000', '2022-07-28', 'TRC03B5E'),
('1003317101', 'david', 'almanza', 'almanza', '2022-06-10', 'M', '1003317101', 'carrillo2018oser46car@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-01 20:13:56', 'Mensualidad', '45000', '1', '45000', '2022-07-28', 'EAZ3I18Z'),
('1055919686', 'jaquelin', 'llanos', 'llanos', '2022-07-01', 'F', '1055919686', 'cristianalarcon109897898@gmail.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-01 20:14:25', 'Mensualidad', '45000', '1', '45000', '2022-07-28', '5P1WPKEM'),
('1003198104', 'lina', 'reyes', 'reyes', '2022-06-23', 'F', '1003198104', 'cristianalarc786on109@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-01 20:14:55', 'Mensualidad', '45000', '1', '45000', '2022-07-28', 'FFQOFE3O'),
('10033381015', 'yeleimys', 'moreno', 'moreno', '2022-06-16', 'F', '1003338101', 'yaleimisoreno15@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-01 20:15:30', 'Mensualidad', '45000', '1', '45000', '2022-07-28', '8QZLVIZV'),
('1003381755', 'valentina', 'florez', 'florez', '2022-06-04', 'F', '1003381755', 'carrillo201889oscar@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-01 20:16:39', 'Mensualidad', '45000', '1', '45000', '2022-07-29', 'EVT4FEVN'),
('1065818193', 'angela', 'gomez', 'pava', '2022-05-26', 'F', '1065818193', 'angelapavapava@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 22:26:50', 'Mensualidad', '45000', '1', '45000', '2022-08-11', '7Y29GAT4'),
('1003318002', 'donali', 'granados', 'granados', '2022-04-09', 'F', '3008551298', 'donalisgranados@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-107', '2022-07-12 22:44:04', 'Mensualidad', '45000', '1', '45000', '2022-08-11', 'ZTC4P6JT'),
('1003313087', 'jose', 'bugues', 'bugues', '2022-05-05', 'M', '3206552939', 'josebrujes02@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-12 23:00:34', 'Mensualidad', '45000', '1', '45000', '2022-08-11', 'A5DS71JR'),
('3153786671', 'yuneth', 'colpas', 'colpas', '2022-06-16', 'F', '3023860980', 'yanethcolpas2000@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-13 12:27:50', 'Mensualidad', '45000', '1', '45000', '2022-07-18', 'UU3W20IA'),
('3153786671', 'yuneth', 'colpas', 'colpas', '2022-06-16', 'F', '3023860980', 'yanethcolpas2000@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-13 12:29:37', 'Mensualidad', '45000', '1', '45000', '2022-07-16', '24MJRF64'),
('1003313087', 'jose', 'bugues', 'bugues', '2022-05-05', 'M', '3206552939', 'josebrujes02@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 19:41:25', 'Mensualidad', '45000', '1', '45000', '2022-08-11', 'RG3KXCO9'),
('1127046736', 'rosibel', 'salas', 'gomez', '2022-07-21', 'F', '1127046736', 'rosibelsalasgomez93@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 19:42:48', 'Mensualidad', '45000', '1', '45000', '2022-08-11', 'GZHZVKUM'),
('1010126026', 'mateo', 'pereira', 'mejia', '2022-07-20', 'M', '1010126026', 'mateoandres112@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 19:43:26', 'Mensualidad', '45000', '1', '45000', '2022-08-11', '0TTQDQSY'),
('1003242620', 'grey', 'yance', 'ruiz', '2022-07-07', 'F', '1003242620', 'greyyance09@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 19:43:55', 'Mensualidad', '45000', '1', '45000', '2022-08-11', '2XYBWF46'),
('1193537430', 'daniel', 'josue', 'urueña', '2022-07-12', 'F', '1193537430', 'daniel15jum@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 19:44:27', 'Mensualidad', '45000', '1', '45000', '2022-08-11', 'B2483KP7'),
('1003379016', 'sara', 'caldera', 'martinez', '2022-07-19', 'F', '1003379016', 'saracalderam12@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 19:44:56', 'Mensualidad', '45000', '1', '45000', '2022-08-11', 'BCJCFW66'),
('1003318002', 'donali', 'granados', 'granados', '2022-04-09', 'F', '3008551298', 'donalisgranados@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-107', '2022-07-18 19:49:33', 'Mensualidad', '45000', '1', '45000', '2022-08-11', '05A7KMWF'),
('1065849647', 'julitza', 'arias', 'gomez', '2022-07-07', 'F', '1065849647', 'julitsaarias11@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 19:50:23', 'Mensualidad', '45000', '1', '45000', '2022-08-11', 'K4M18R4Z'),
('1003238057', 'marol', 'andrade', 'gomez', '2022-07-07', 'F', '1003238057', 'marolandrade@gmial.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 19:50:52', 'Mensualidad', '45000', '1', '45000', '2022-08-11', 'HSYUSJ3B'),
('1010093807', 'carolina', 'lopez', 'lopez', '2022-07-13', 'F', '1010093807', 'carolopez970503@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 19:51:21', 'Mensualidad', '45000', '1', '45000', '2022-08-11', '3WZ7FWSU'),
('1065818193', 'angela', 'gomez', 'pava', '2022-05-26', 'F', '1065818193', 'angelapavapava@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 19:51:49', 'Mensualidad', '45000', '1', '45000', '2022-08-11', 'WYVHR9DH'),
('1065850563', '', '', '', '', '', '', '', '', '', '2022-07-18 19:52:55', 'Mensualidad', '45000', '1', '45000', '2022-08-11', 'QVK38877'),
('1003233283', 'lineys', 'martiz', 'castro', '2022-07-21', 'F', '1003233283', 'lineysmartiz@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 19:53:43', 'Mensualidad', '45000', '1', '45000', '2022-08-11', 'C1YZ0ET6'),
('1014183647', 'derly', 'cifuente', 'cruz', '2022-07-14', 'F', '3023860988', 'dcifuentes@uniguajira.ed.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 19:54:49', 'Mensualidad', '45000', '1', '45000', '2022-08-12', 'OY8B79NL'),
('49770786', 'martinella', 'moolina', 'figueron', '2022-07-20', 'F', '3023860780', 'martinellymolina@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 19:55:16', 'Mensualidad', '45000', '1', '45000', '2022-08-12', 'NRLBSY7H'),
('39420350', 'elcy', 'torres', 'correa', '2022-07-27', 'F', '3942035089', 'elcytorrescorrea@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 19:55:55', 'Mensualidad', '45000', '1', '45000', '2022-08-12', 'RDNZOGFG'),
('1003379371', 'maria jose', 'herrera', 'herrera', '2022-07-23', 'F', '3023860985', 'mj.herrera593@gmai.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 19:56:22', 'Mensualidad', '45000', '1', '45000', '2022-08-12', 'B038B6DS'),
('1067591530', 'karol', 'laguna', 'pretel', '2022-07-26', 'F', '1067591530', 'karollaguna@gmailo.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 19:57:15', 'Mensualidad', '45000', '1', '45000', '2022-08-12', '7E0NSSUR'),
('1003379453', 'sharol', 'cerro', 'perez', '2022-07-01', 'F', '3023860987', 'sharolcerro3019@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-07-18 20:00:40', 'Mensualidad', '45000', '1', '45000', '2022-08-12', 'BBRO0UZ8'),
('3135666445', 'jhoel', 'sampayo', 'sampayo', '2022-08-04', 'F', '3135666445', 'carrillo2018o8scar@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-08-01 19:33:21', 'Mensualidad', '45000', '1', '45000', '2022-08-25', 'F70P5FBG'),
('1003317101', '', '', '', '', '', '', '', '', '', '2022-08-01 19:36:05', 'Mensualidad', '45000', '1', '45000', '2022-08-28', '5HVSHBPD'),
('1065589450', 'laura', 'ariza', 'sanchez', '2022-08-04', 'F', '3053103890', 'cristianalarcon10978@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-08-01 19:38:49', 'Mensualidad', '45000', '1', '45000', '2022-08-25', 'MKUHQPY2'),
('1065643159', 'yisel', 'martinez ', 'oñate', '2022-04-05', 'F', '3135131499', 'cristianalarcobbn109@gmail.com', 'Cedula de Ciudadania', 'carrera 30 a calle 30 #26-106', '2022-08-01 19:40:21', 'Mensualidad', '45000', '1', '45000', '2022-08-25', 'XV381A0M'),
('1065663075', 'cindy', 'vasquez ', 'lopez', '2022-08-05', 'F', '3044934916', 'tiramisuu94@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-08-01 19:43:06', 'Mensualidad', '45000', '1', '45000', '2022-08-25', 'DENP2NFV'),
('3023114972', 'camila', 'pinzon', 'pinzon', '2022-06-17', 'M', '3023860986', 'gedwin1619@hotmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-08-01 19:44:04', 'Mensualidad', '45000', '1', '45000', '2022-08-25', 'NQ4K0T0K'),
('1066866982', 'gustavo', 'martinez', 'martinez', '2022-08-13', 'F', '1066866982', 'carrillo2018i0oscar@gmail.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-08-01 19:48:26', 'Mensualidad', '45000', '1', '45000', '2022-08-25', 'FZ6689HK'),
('1002650213', 'yenis', 'sueca', 'pita', '2022-06-12', 'F', '1002650213', 'cristianalarcon1209@gmail.co', 'Cedula de Ciudadania', 'francisco de paula ', '2022-08-01 19:49:09', 'Mensualidad', '45000', '1', '45000', '2022-08-25', 'YXNW4A3M'),
('1065599565', 'jose', 'hernandez', 'hernandez', '2022-05-19', 'M', '1065599565', 'joseangelhernandez@ingenieros.com', 'Cedula de Ciudadania', 'francisco de paula ', '2022-08-01 19:55:57', 'Mensualidad', '45000', '1', '45000', '2022-08-26', '1D4OXMIG');

--
-- Disparadores `facturas`
--
DELIMITER $$
CREATE TRIGGER `facturas_before_insert` BEFORE INSERT ON `facturas` FOR EACH ROW BEGIN

    declare str_len int default 8;
    declare ready int default 0;
    declare rnd_str text;
    while not ready do
        set rnd_str := lpad(conv(floor(rand()*pow(36,str_len)), 10, 36), str_len, 0);
        if not exists (select * from facturas where CodigoFactura = rnd_str) then
            set new.CodigoFactura = rnd_str;
            set ready := 1;
        end if;
    end while;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Identificacion` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `Usuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Contraseña` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Identificacion`, `Usuario`, `Contraseña`) VALUES
('1143128490', 'Angie', 'Angie2020');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Id`,`Identificacion`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD UNIQUE KEY `CodigoFactura` (`CodigoFactura`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Identificacion`,`Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
