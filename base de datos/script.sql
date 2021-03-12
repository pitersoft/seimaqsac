-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-03-2021 a las 21:42:09
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `basesistema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso`
--

CREATE TABLE `acceso` (
  `idacceso` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fecha_hora_acceso` datetime NOT NULL,
  `ip_conexion` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acceso`
--

INSERT INTO `acceso` (`idacceso`, `idusuario`, `fecha_hora_acceso`, `ip_conexion`) VALUES
(6, 1, '2021-03-12 16:01:29', 414243424),
(7, 2, '2021-03-12 16:05:46', 132332323),
(8, 3, '2021-03-12 16:03:46', 45635430),
(9, 4, '2021-03-12 16:28:35', 245543453),
(10, 5, '2021-03-12 16:29:37', 74454254),
(11, 6, '2021-03-12 16:30:06', 15782584),
(12, 7, '2021-03-12 16:30:54', 78994562),
(13, 9, '2021-03-12 16:32:03', 142424175);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles`
--

CREATE TABLE `niveles` (
  `idnivel` int(11) NOT NULL,
  `nivel` varchar(40) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `niveles`
--

INSERT INTO `niveles` (`idnivel`, `nivel`, `descripcion`, `estado`) VALUES
(1, 'Cliente', 'Persona Natural que compra productos para su consumo.', ''),
(2, 'Vendedor', 'Persona Natural o Jurídica que vende los productos comprados.', ''),
(3, 'Proovedor', 'Persona Jurídica encargada del abastecimiento de los productos.', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `idnivel` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(18) NOT NULL,
  `login` varchar(25) NOT NULL,
  `estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `idnivel`, `nombre`, `apellidos`, `email`, `password`, `login`, `estado`) VALUES
(1, 1, 'Gustavo', 'Graos Santos', 'grgs95859@gmail.com', '91018371095859', '', ''),
(2, 2, ' La Esquina', 'Bodega', 'bodegalaesquina@gmail.com', 'bodegalaesquina', '', ''),
(3, 3, 'LG', 'Empresa de electrodomesticos', 'lg@gmail.com', 'lg15425453', '', ''),
(4, 1, 'Andres', 'Jimenez Quispe', 'andresjq@gmail.com', '21212152andres', '', ''),
(5, 2, 'EL Comercio', 'Bodega', 'el comercio@gmail.com', '36543elcomercio', '', ''),
(6, 3, 'Doña Gumi', 'Abarrotes', 'contacto@doñagumi.com.pe', 'doñagumi132146', '', ''),
(7, 1, 'Fernado', 'Gomez Perez', 'fernandogp@gmail.com', 'fernando5646', '', ''),
(8, 2, 'Vallejo', 'Bodega', 'bvallejo@gmail.com', 'bvallejo1432', '', ''),
(9, 3, 'Reyes', 'Articulos de Plásticos', 'contacto@reyes.com', 'reyes5664', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD PRIMARY KEY (`idacceso`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`idnivel`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `idnivel` (`idnivel`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acceso`
--
ALTER TABLE `acceso`
  MODIFY `idacceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `niveles`
--
ALTER TABLE `niveles`
  MODIFY `idnivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD CONSTRAINT `acceso_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idnivel`) REFERENCES `niveles` (`idnivel`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
