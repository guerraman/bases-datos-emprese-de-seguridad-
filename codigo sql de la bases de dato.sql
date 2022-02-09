-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2022 a las 09:22:30
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empresa-seguridad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arma`
--

CREATE TABLE `arma` (
  `cod_arma` int(30) NOT NULL,
  `nombre_arma` varchar(30) DEFAULT NULL,
  `tipo_arma` varchar(30) DEFAULT NULL,
  `cod_vigilante` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `arma`
--

INSERT INTO `arma` (`cod_arma`, `nombre_arma`, `tipo_arma`, `cod_vigilante`) VALUES
(50, 'Heckler & Koch ', 'pistola', 30),
(51, 'Heckler & Koch ', 'pistola', 31),
(52, 'Heckler & Koch ', 'pistola', 32),
(53, 'Heckler & Koch ', 'pistola', 33),
(54, 'ruger ', 'revolver', 34),
(55, 'ruger ', 'revolver', 35),
(56, 'ruger ', 'revolver', 36);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `cod_empresa` int(30) NOT NULL,
  `nombre_empresa` varchar(30) DEFAULT NULL,
  `direccion_empresa` varchar(30) DEFAULT NULL,
  `correo_empresa` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`cod_empresa`, `nombre_empresa`, `direccion_empresa`, `correo_empresa`) VALUES
(20, 'VIGINORTE-BARRANQUILLA', 'CLL 80 # 12 -15', 'vigibarran45@gmail.com'),
(21, 'VIGINORTE-MONTERIA', 'Cr 6 # 28-26', 'vigimonteria1@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefe`
--

CREATE TABLE `jefe` (
  `cod_jefe` int(30) NOT NULL,
  `id_jefe` int(30) DEFAULT NULL,
  `nombre_jefe` varchar(30) DEFAULT NULL,
  `telefono_jefe` varchar(30) DEFAULT NULL,
  `direccion_jefe` varchar(30) DEFAULT NULL,
  `correo_jefe` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `jefe`
--

INSERT INTO `jefe` (`cod_jefe`, `id_jefe`, `nombre_jefe`, `telefono_jefe`, `direccion_jefe`, `correo_jefe`) VALUES
(1, 10516932, 'HUGO ANDRÉS CAMARGO VARGAS ', '3153579994', 'CRA. 3 # 18 A 06', 'ejecutivo74@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perro`
--

CREATE TABLE `perro` (
  `cod_perro` int(30) NOT NULL,
  `nombre_perro` varchar(30) DEFAULT NULL,
  `raza_perro` varchar(30) DEFAULT NULL,
  `cod_vigilante` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perro`
--

INSERT INTO `perro` (`cod_perro`, `nombre_perro`, `raza_perro`, `cod_vigilante`) VALUES
(60, 'caramelo', 'Pastor alemán', 30),
(61, 'beto', 'Pastor alemán', 31),
(62, 'maxwel', 'Bullmastiff', 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supervisor`
--

CREATE TABLE `supervisor` (
  `cod_supervisor` int(30) NOT NULL,
  `id_supervisor` int(30) DEFAULT NULL,
  `nombre_supervisor` varchar(30) DEFAULT NULL,
  `telefono_supervisor` varchar(30) DEFAULT NULL,
  `direccion_supervisor` varchar(30) DEFAULT NULL,
  `correo_supervisor` varchar(30) DEFAULT NULL,
  `cod_jefe` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `supervisor`
--

INSERT INTO `supervisor` (`cod_supervisor`, `id_supervisor`, `nombre_supervisor`, `telefono_supervisor`, `direccion_supervisor`, `correo_supervisor`, `cod_jefe`) VALUES
(10, 76323459, 'JORGE ESTEBAN REY BOTERO', '3007680366', 'CALLE 57 # 48-04 APTO 401', 'botyt87@gmai.com', 1),
(11, 10537683, 'JUAN ESTEBAN LANAO SÁNCHEZ', '3002775454', 'CRA. 7 # 33 -49 APTO.404', 'ghos78@gmai.com', 1),
(12, 76317155, 'JUAN SEBASTIAN TARQUINO ACOSTA', '3133887677', 'CLL 10 # 14 A -62', 'tarcosta4@gmai.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `cod_vehiculo` int(30) NOT NULL,
  `placa_vehiculo` varchar(30) DEFAULT NULL,
  `tipo_vehiculo` varchar(30) DEFAULT NULL,
  `marca_vehiculo` varchar(30) DEFAULT NULL,
  `cod_vigilante` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`cod_vehiculo`, `placa_vehiculo`, `tipo_vehiculo`, `marca_vehiculo`, `cod_vigilante`) VALUES
(40, 'gft-250', 'motocicleta', 'TVS', 30),
(41, 'ttr-463', 'motocicleta', 'TVS', 31),
(42, 'fdr-234', 'camioneta', 'Volkswagen', 32),
(43, 'trd-213', 'camioneta', 'Volkswagen', 33),
(44, 'tgk-785', 'carro valores', '', 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vigilante`
--

CREATE TABLE `vigilante` (
  `cod_vigilante` int(30) NOT NULL,
  `id_vigilante` varchar(30) DEFAULT NULL,
  `nombre_vigilante` varchar(30) DEFAULT NULL,
  `telefono_vigilante` varchar(30) DEFAULT NULL,
  `direccion_vigilante` varchar(30) DEFAULT NULL,
  `correo_vigilante` varchar(30) DEFAULT NULL,
  `cod_supervisor` int(30) DEFAULT NULL,
  `cod_empresa` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vigilante`
--

INSERT INTO `vigilante` (`cod_vigilante`, `id_vigilante`, `nombre_vigilante`, `telefono_vigilante`, `direccion_vigilante`, `correo_vigilante`, `cod_supervisor`, `cod_empresa`) VALUES
(30, '34538776', 'MARIO FERNANDO GARZÓN MUÑOZ', '3163983333', 'Cr9 A 35-01 L-3', 'thorfern54@gmail.com', 11, 21),
(31, '10545657', 'OSCAR FABIAN CASTELLANOS ROJAS', '3002144490', 'Cr8 38-20', 'gemafds6@gmail.com', 11, 21),
(32, '10539634', 'OSCAR JULIAN ULLOA ORJUELA ', '3133923323', 'Cr2 27-41', 'oscarjulian5@gmail.com', 11, 21),
(33, '34528262', 'PABLO URIBE ANTIA ', '3154477102', 'Cr2 44-39 ', 'puribenb@gmail.com', 12, 21),
(34, '79459964', 'RAFAEL ALEJANDRO GONZALEZ ROJA', '3153335172', 'Cr4 34-20 ', 'rafaelwtr@gmail.com', 12, 21),
(35, '79390100', 'RICARDO VEGA ZAMBRANO', '3182824086', 'Cl 21 3-05 ', 'calcuwer5@gmail.com', 12, 21),
(36, '10256615', 'SEBASTIAN BORDA MELGUIZO', '315-8718763', 'Dg48 A 12-61  ', 'sebask4@gmail.com', 12, 21);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arma`
--
ALTER TABLE `arma`
  ADD PRIMARY KEY (`cod_arma`),
  ADD KEY `cod_vigilante` (`cod_vigilante`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`cod_empresa`);

--
-- Indices de la tabla `jefe`
--
ALTER TABLE `jefe`
  ADD PRIMARY KEY (`cod_jefe`);

--
-- Indices de la tabla `perro`
--
ALTER TABLE `perro`
  ADD PRIMARY KEY (`cod_perro`),
  ADD KEY `cod_vigilante` (`cod_vigilante`);

--
-- Indices de la tabla `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`cod_supervisor`),
  ADD KEY `cod_jefe` (`cod_jefe`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`cod_vehiculo`),
  ADD KEY `cod_vigilante` (`cod_vigilante`);

--
-- Indices de la tabla `vigilante`
--
ALTER TABLE `vigilante`
  ADD PRIMARY KEY (`cod_vigilante`),
  ADD KEY `cod_supervisor` (`cod_supervisor`),
  ADD KEY `cod_empresa` (`cod_empresa`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `arma`
--
ALTER TABLE `arma`
  ADD CONSTRAINT `arma_ibfk_1` FOREIGN KEY (`cod_vigilante`) REFERENCES `vigilante` (`cod_vigilante`);

--
-- Filtros para la tabla `perro`
--
ALTER TABLE `perro`
  ADD CONSTRAINT `perro_ibfk_1` FOREIGN KEY (`cod_vigilante`) REFERENCES `vigilante` (`cod_vigilante`);

--
-- Filtros para la tabla `supervisor`
--
ALTER TABLE `supervisor`
  ADD CONSTRAINT `supervisor_ibfk_1` FOREIGN KEY (`cod_jefe`) REFERENCES `jefe` (`cod_jefe`);

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `vehiculo_ibfk_1` FOREIGN KEY (`cod_vigilante`) REFERENCES `vigilante` (`cod_vigilante`);

--
-- Filtros para la tabla `vigilante`
--
ALTER TABLE `vigilante`
  ADD CONSTRAINT `vigilante_ibfk_1` FOREIGN KEY (`cod_supervisor`) REFERENCES `supervisor` (`cod_supervisor`),
  ADD CONSTRAINT `vigilante_ibfk_2` FOREIGN KEY (`cod_empresa`) REFERENCES `empresa` (`cod_empresa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
