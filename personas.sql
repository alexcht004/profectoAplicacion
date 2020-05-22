-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 22-05-2020 a las 13:42:57
-- Versión del servidor: 8.0.18
-- Versión de PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `personas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `codigo` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domicilio` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rfc` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `Nss` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nombre` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaIngreso` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaNacimiento` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigo` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` double NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo`, `nombre`, `precio`, `cantidad`) VALUES
('uno', 'uno', 12, 12),
('dos', 'dos', 13, 13),
('tres', 'tres', 13, 13),
('lambo', 'lambo', 100000, 100000),
('dies', 'dies', 800, 800);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proovedores`
--

CREATE TABLE `proovedores` (
  `nombre` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domicilio` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giro` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnicos`
--

CREATE TABLE `tecnicos` (
  `codigo` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `especialidad` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empresa` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
