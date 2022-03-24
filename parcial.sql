-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-03-2022 a las 15:04:09
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `parcial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `poliza`
--

CREATE TABLE IF NOT EXISTS `poliza` (
  `cc_usuario` varchar(25) COLLATE utf8_bin NOT NULL,
  `tipovh` varchar(250) COLLATE utf8_bin NOT NULL,
  `modelo` varchar(250) COLLATE utf8_bin NOT NULL,
  `marca` varchar(250) COLLATE utf8_bin NOT NULL,
  `año` varchar(250) COLLATE utf8_bin NOT NULL,
  `placa` varchar(250) COLLATE utf8_bin NOT NULL,
  `serial` varchar(250) COLLATE utf8_bin NOT NULL,
  `valor` varchar(250) COLLATE utf8_bin NOT NULL,
  `costo` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `poliza`
--

INSERT INTO `poliza` (`cc_usuario`, `tipovh`, `modelo`, `marca`, `año`, `placa`, `serial`, `valor`, `costo`) VALUES
('324', 'MOTO', '23', '23', '23', '23', 'di8y7', '2000', 2020),
('324', 'MOTO', '23', '23', '23', '23', 'di8y7', '2000', 2020),
('1234', 'MOTO', '32', '23', '2000', '342', '2343', '1000', 1010);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `polizatotal`
--

CREATE TABLE IF NOT EXISTS `polizatotal` (
  `nombre` varchar(200) COLLATE utf8_bin NOT NULL,
  `serial` varchar(200) COLLATE utf8_bin NOT NULL,
  `cc_usuario` varchar(200) COLLATE utf8_bin NOT NULL,
  `valor` varchar(200) COLLATE utf8_bin NOT NULL,
  `costo` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `polizatotal`
--

INSERT INTO `polizatotal` (`nombre`, `serial`, `cc_usuario`, `valor`, `costo`) VALUES
('Equipo', 'ewds13', '12', '400', 440),
('3', '32', '32', '123', 0),
('Lampara', 'j65b8216n', '12', '200', 220),
('Estereo', '3poi2n', '1004', '800', 880),
('faro', 'oju8h7g', '324', '326', 358),
('Radio', '7655', '2343', '500', 550),
('Radio', '7655', '2343', '500', 550);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `cc` varchar(25) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(250) COLLATE utf8_bin NOT NULL,
  `mail` varchar(250) COLLATE utf8_bin NOT NULL,
  `direccion` varchar(250) COLLATE utf8_bin NOT NULL,
  `civil` varchar(250) COLLATE utf8_bin NOT NULL,
  `sexo` varchar(250) COLLATE utf8_bin NOT NULL,
  `edad` varchar(250) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`cc`, `nombre`, `mail`, `direccion`, `civil`, `sexo`, `edad`) VALUES
('324', 'Miguel', 'miguelbermudez333@gmail.com', 'call13 av34', 'soltero', 'M', '21'),
('2343', 'Diego', 'diegoac@gmail.com', 'call13 av34', 'Casado', 'F', '23');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
