-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2021 a las 20:55:48
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sanatoriomargarita`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cards`
--

CREATE TABLE `cards` (
  `id` int(10) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `titulo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cards`
--

INSERT INTO `cards` (`id`, `imagen`, `titulo`) VALUES
(1, './images/imgCards/residencia.jpg', 'Residencias Medicas'),
(2, './images/imgCards/guardia.jpg', 'Guardias 24 hr'),
(3, './images/imgCards/especialidades.jpg', 'Especialidades Medicas'),
(4, './images/imgCards/laboratorio.jpg', 'Laboratorio'),
(5, './images/imgCards/covid.jpeg\r\n', 'Test Rapido Covid'),
(6, './images/imgCards/cardiovascular.jpg', 'Control Preventivo Cardiovascular'),
(7, './images/imgCards/internacion.jpg', 'Internaciones Clinicas y Quirurgicas'),
(8, './images/imgCards/diagnostico.jpg', 'Diagnostico por Imagenes'),
(9, './images/imgCards/kinesiologia.jpg', 'Kinesiologia y Rehabilitacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(100) NOT NULL,
  `tipoDoc` varchar(200) NOT NULL,
  `numeroDoc` int(200) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `contraseña` varchar(200) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `laboratorios` varchar(200) DEFAULT NULL,
  `diagnostico` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id`, `tipoDoc`, `numeroDoc`, `correo`, `contraseña`, `nombre`, `apellido`, `laboratorios`, `diagnostico`) VALUES
(1, 'DNI', 95728051, 'danyel2705@gmail.com', '12345', '', '', NULL, NULL),
(2, 'PASAPORTE', 965234825, 'ajsndjabn@hotmail.com', '54321', '', '', NULL, NULL),
(3, 'LE', 662326565, 'hashdbahsd@gmail.com', '987', '', '', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
