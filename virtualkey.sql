-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:33065
-- Tiempo de generación: 14-12-2021 a las 21:50:02
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `virtualkey`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agencia`
--

CREATE TABLE `agencia` (
  `ID AGENCIA` int(11) NOT NULL,
  `NIT/CC` int(15) NOT NULL,
  `Valor flete` int(11) NOT NULL,
  `Guia` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID CLIENTE` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Dirección destino` varchar(45) NOT NULL,
  `Teléfono` int(15) NOT NULL,
  `Factura de venta` varchar(45) NOT NULL,
  `Correo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `despacho`
--

CREATE TABLE `despacho` (
  `ID DESPACHO` int(11) NOT NULL,
  `FECHA SALIDA` datetime NOT NULL,
  `FECHA ENTREGA` datetime NOT NULL,
  `DESPACHADOR` varchar(45) NOT NULL,
  `FACTURA` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `importacion de informacion`
--

CREATE TABLE `importacion de informacion` (
  `Codproducto` varchar(15) NOT NULL,
  `IDAGENCIA` int(15) NOT NULL,
  `FRA DE VENTA` varchar(15) NOT NULL,
  `FECHA DE VENTA` datetime NOT NULL,
  `FECHA DE DESPACHO` datetime NOT NULL,
  `ID CLIENTE` int(15) NOT NULL,
  `DIRECCION CLIENTE` varchar(45) NOT NULL,
  `DIRECCION DESTINO` varchar(45) NOT NULL,
  `CANTIDAD PRODUCTO` int(15) NOT NULL,
  `TOTAL DESPACHO` int(45) NOT NULL,
  `PESO POR PRODUCTO` int(11) NOT NULL,
  `COSTO POR FLETE` int(11) NOT NULL,
  `FECHA DE ENTREGA` int(11) NOT NULL,
  `TOTAL VENTA` int(11) NOT NULL,
  `COSTO VTA X CLIENTE` int(11) NOT NULL,
  `COSTO PRODUCTO` int(11) NOT NULL,
  `GUIA DESPACHO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `ID PRODUCTO` int(11) NOT NULL,
  `Nombproducto` int(45) NOT NULL,
  `Codigo` varchar(45) NOT NULL,
  `Peso` int(11) NOT NULL,
  `Costo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `login` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `contraseña` varchar(10) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `Tipo de usuario` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `login`, `apellido`, `contraseña`, `Correo`, `Tipo de usuario`) VALUES
(1, 'GUSTAVOADOLFO', 'CORREAISAZA', '123456', 'gusisa@une.net.co', 'ADMOR'),
(2, 'ISABELCRISTINA', 'CORREABALVIN', '123456', 'isacoba@une.net.co', 'CLIENT'),
(3, 'LILIANA', 'GARCIA', '123456', 'liliana.garciaa@salazaryherrera.edu.co', 'INVITA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agencia`
--
ALTER TABLE `agencia`
  ADD PRIMARY KEY (`ID AGENCIA`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID CLIENTE`);

--
-- Indices de la tabla `despacho`
--
ALTER TABLE `despacho`
  ADD PRIMARY KEY (`ID DESPACHO`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`ID PRODUCTO`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agencia`
--
ALTER TABLE `agencia`
  MODIFY `ID AGENCIA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `despacho`
--
ALTER TABLE `despacho`
  MODIFY `ID DESPACHO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `ID PRODUCTO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
