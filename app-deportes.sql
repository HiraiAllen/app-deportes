-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-03-2024 a las 02:37:24
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `app-deportes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atletas`
--

CREATE TABLE `atletas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `cc` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `atletas`
--

INSERT INTO `atletas` (`id`, `name`, `lastname`, `cc`, `city`, `country`) VALUES
(1, 'Juan', 'García', 123456789, 'Cali', 'Colombia'),
(2, 'María', 'Martínez', 987654321, 'Cali', 'Colombia'),
(3, 'Pedro', 'Hernández', 456789123, 'Cali', 'Colombia'),
(4, 'Ana', 'López', 789123456, 'Cali', 'Colombia'),
(5, 'Carlos', 'Rodríguez', 321654987, 'Medellin', 'Colombia'),
(6, 'Laura', 'Gómez', 654987321, 'Medellin', 'Colombia'),
(7, 'Sergio', 'Díaz', 987321654, 'Medellin', 'Colombia'),
(8, 'Paula', 'Sánchez', 456123789, 'Medellin', 'Colombia'),
(9, 'Diego', 'Ramírez', 852963741, 'Cali', 'Colombia'),
(10, 'Luisa', 'Perez', 159263478, 'Cali', 'Colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atletas_deportes`
--

CREATE TABLE `atletas_deportes` (
  `id` int(11) NOT NULL,
  `deportes_id` int(11) DEFAULT NULL,
  `atletas_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `atletas_deportes`
--

INSERT INTO `atletas_deportes` (`id`, `deportes_id`, `atletas_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 2, 2),
(6, 3, 2),
(7, 5, 2),
(8, 6, 2),
(9, 1, 3),
(10, 2, 3),
(11, 3, 3),
(12, 4, 3),
(13, 1, 4),
(14, 3, 4),
(15, 4, 4),
(16, 6, 4),
(17, 1, 5),
(18, 2, 5),
(19, 3, 5),
(20, 4, 5),
(21, 2, 6),
(22, 3, 6),
(23, 4, 6),
(24, 5, 6),
(25, 1, 7),
(26, 2, 7),
(27, 4, 7),
(28, 6, 7),
(29, 1, 8),
(30, 3, 8),
(31, 5, 8),
(32, 7, 8),
(33, 1, 9),
(34, 3, 9),
(35, 4, 9),
(36, 5, 9),
(37, 2, 10),
(38, 4, 10),
(39, 5, 10),
(40, 7, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportes`
--

CREATE TABLE `deportes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `deportes`
--

INSERT INTO `deportes` (`id`, `name`) VALUES
(1, 'Fútbol'),
(2, 'Ciclismo'),
(3, 'Atletismo'),
(4, 'Natación'),
(5, 'Baloncesto'),
(6, 'Voleibol'),
(7, 'Ultimate Frisbee');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`id`, `name`, `address`, `city`, `country`) VALUES
(1, 'Univalle', 'Calle 13 #100-00', 'Cali', 'Colombia'),
(2, 'Coldeportes', 'Calle 22 #10-72', 'Cali', 'Colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes_deportes`
--

CREATE TABLE `sedes_deportes` (
  `id` int(11) NOT NULL,
  `sedes_id` int(11) DEFAULT NULL,
  `deportes_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sedes_deportes`
--

INSERT INTO `sedes_deportes` (`id`, `sedes_id`, `deportes_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 6),
(6, 2, 1),
(7, 2, 2),
(8, 2, 4),
(9, 2, 5),
(10, 2, 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `atletas`
--
ALTER TABLE `atletas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `atletas_deportes`
--
ALTER TABLE `atletas_deportes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deportes_id` (`deportes_id`),
  ADD KEY `atletas_id` (`atletas_id`);

--
-- Indices de la tabla `deportes`
--
ALTER TABLE `deportes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sedes_deportes`
--
ALTER TABLE `sedes_deportes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sedes_id` (`sedes_id`),
  ADD KEY `deportes_id` (`deportes_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `atletas`
--
ALTER TABLE `atletas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `atletas_deportes`
--
ALTER TABLE `atletas_deportes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `deportes`
--
ALTER TABLE `deportes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sedes_deportes`
--
ALTER TABLE `sedes_deportes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `atletas_deportes`
--
ALTER TABLE `atletas_deportes`
  ADD CONSTRAINT `atletas_deportes_ibfk_1` FOREIGN KEY (`deportes_id`) REFERENCES `deportes` (`id`),
  ADD CONSTRAINT `atletas_deportes_ibfk_2` FOREIGN KEY (`atletas_id`) REFERENCES `atletas` (`id`);

--
-- Filtros para la tabla `sedes_deportes`
--
ALTER TABLE `sedes_deportes`
  ADD CONSTRAINT `sedes_deportes_ibfk_1` FOREIGN KEY (`sedes_id`) REFERENCES `sedes` (`id`),
  ADD CONSTRAINT `sedes_deportes_ibfk_2` FOREIGN KEY (`deportes_id`) REFERENCES `deportes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
