-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2022 a las 03:44:14
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inmobiliaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_habitado`
--

CREATE TABLE `tbl_habitado` (
  `cod_inmueble` varchar(20) NOT NULL,
  `ced_persona` varchar(20) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_habitado`
--

INSERT INTO `tbl_habitado` (`cod_inmueble`, `ced_persona`, `fecha`) VALUES
('01', '1001', '2022-10-14'),
('01', '1039', '0000-00-00'),
('01', '1039', '2022-10-16'),
('02', '1001', '2022-10-14'),
('02', '1100', '2022-10-10'),
('03', '1010', '2022-10-15'),
('03', '1100', '2022-10-15'),
('04', '1002', '2022-10-15'),
('05', '1001', '2022-10-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_inmueble`
--

CREATE TABLE `tbl_inmueble` (
  `codigo` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_inmueble`
--

INSERT INTO `tbl_inmueble` (`codigo`, `nombre`, `direccion`) VALUES
('01', 'Casa Laureles', 'CRA 84'),
('02', 'Casa Colores', 'CRA 85'),
('03', 'Casa Aranjuez', 'CRA 86'),
('04', 'Casa Milagrosa', 'CRA 87'),
('05', 'Casa Buenos Aires', 'CRA 88');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_persona`
--

CREATE TABLE `tbl_persona` (
  `cedula` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_persona`
--

INSERT INTO `tbl_persona` (`cedula`, `nombre`, `apellido`, `correo`) VALUES
('1001', 'Jorge Luis', 'Gutierres', 'gutierres@'),
('1002', 'Pablo', 'Tovar', 'pablo@'),
('1010', 'Carlos Vives', 'Gonzales', 'gonzales@'),
('1039', 'Samuel David', 'Jimenez Hernandez', 'samuelhz@'),
('1100', 'Anyi Zareth', 'Quientero Roman', 'Anyi@');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_habitado`
--
ALTER TABLE `tbl_habitado`
  ADD PRIMARY KEY (`cod_inmueble`,`ced_persona`,`fecha`),
  ADD KEY `ced_persona` (`ced_persona`);

--
-- Indices de la tabla `tbl_inmueble`
--
ALTER TABLE `tbl_inmueble`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `tbl_persona`
--
ALTER TABLE `tbl_persona`
  ADD PRIMARY KEY (`cedula`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_habitado`
--
ALTER TABLE `tbl_habitado`
  ADD CONSTRAINT `tbl_habitado_ibfk_1` FOREIGN KEY (`ced_persona`) REFERENCES `tbl_persona` (`cedula`),
  ADD CONSTRAINT `tbl_habitado_ibfk_2` FOREIGN KEY (`cod_inmueble`) REFERENCES `tbl_inmueble` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
