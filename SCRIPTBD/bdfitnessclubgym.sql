-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 30-03-2022 a las 04:04:24
-- Versión del servidor: 8.0.27
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
  `Id` int NOT NULL,
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
  `FechaRegistro` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Id`, `Identificacion`, `PrimerNombre`, `PrimerApellido`, `SegundoApellido`, `FechaNacimiento`, `Sexo`, `Celular`, `Correo`, `TipoIdentificacion`, `Direccion`, `FechaRegistro`) VALUES
(1, '77775555112', 'Kevin', 'Mendoza', 'gomez cantillo', '2022-04-07', 'M', '3044345354', 'servidorkgc@gmail.com', 'Cedula de Ciudadania', 'urbanizacion nando marin', '0000-00-00 00:00:00'),
(2, '56565677777', 'Pedro', 'Mendoza', 'gomez cantillo', '1999-10-11', 'M', '3044345354', 'servidorkgc@gmail.com', 'Cedula de Ciudadania', 'urbanizacion nando marin', '0000-00-00 00:00:00'),
(3, '56565677477', 'Kevin', 'Mendoza', 'gomez cantillo', '1999-10-10', 'M', '3044345354', 'servidorkgc@gmail.com', 'Cedula de Ciudadania', 'urbanizacion nando marin', '0000-00-00 00:00:00'),
(4, '838323', 'Kevin', 'Romano', 'gomez cantillo', '1980-10-10', 'M', '3016657878', 'servidorkgc@gmail.com', 'Tarjeta de Identidad', 'urbanizacion nando marin', '0000-00-00 00:00:00'),
(5, '34342343434', 'Kevin', 'Romano', 'gomez cantillo', '1999-10-10', 'M', '3016657878', 'servidorkgc@gmail.com', 'Cedula de Extranjeria', 'urbanizacion nando marin', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `Identificacion` varchar(12) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `PrimerNombre` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `PrimerApellido` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `SegundoApellido` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `FechaNacimiento` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Sexo` varchar(2) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Celular` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Correo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TipoIdentificacion` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Direccion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `FechaRegistro` timestamp NOT NULL,
  `TipoSuscripcion` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `SubTotal` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Cantidad` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Total` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `FechaFin` date NOT NULL,
  `CodigoFactura` char(8) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`Identificacion`, `PrimerNombre`, `PrimerApellido`, `SegundoApellido`, `FechaNacimiento`, `Sexo`, `Celular`, `Correo`, `TipoIdentificacion`, `Direccion`, `FechaRegistro`, `TipoSuscripcion`, `SubTotal`, `Cantidad`, `Total`, `FechaFin`, `CodigoFactura`) VALUES
('1065853708', 'kevin', 'feef', 'fefefef', '11101999', 'M', '23232', 'kevingcnemexix@gmail.com', 'CC', 'CALLE', '2022-03-30 03:55:05', 'MES', '20000', '2', '40000', '2022-03-15', '3QUUNDOF');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Identificacion`, `Usuario`, `Contraseña`) VALUES
('1065853708', 'Administrador', 'admin');

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
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
