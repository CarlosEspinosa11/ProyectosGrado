-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2022 a las 04:13:23
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parcialsegundocorte`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cedula_admin` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `contra_admin` varchar(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `cedula_admin`, `contra_admin`) VALUES
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aprobarproyecto`
--

CREATE TABLE `aprobarproyecto` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estado` varchar(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `aprobarproyecto`
--

INSERT INTO `aprobarproyecto` (`id`, `estado`) VALUES
(1, 'APROBADO'),
(2, 'DESAPROBADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinacion`
--

CREATE TABLE `coordinacion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cedula_cor` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `nombre_cor` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_cor` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `correo_cor` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono_cor` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `programa_cor` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `facultad_cor` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `contra_cor` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `coordinacion`
--

INSERT INTO `coordinacion` (`id`, `cedula_cor`, `nombre_cor`, `apellido_cor`, `correo_cor`, `telefono_cor`, `programa_cor`, `facultad_cor`, `contra_cor`) VALUES
(1, '12345', 'Jose', 'Gomez', 'juan@correo.com', '632512', 'Tecnologia en Entrenamiento Deportivo', 'Facultad de ciencias socioeconomicas y empresariales', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `director`
--

CREATE TABLE `director` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_director` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `director`
--

INSERT INTO `director` (`id`, `nom_director`) VALUES
(1, 'SERGIO SUAREZ '),
(2, 'ROBERTO CARVAJAL'),
(3, 'NANCY TAVERA'),
(4, 'RUBEN DARIO'),
(5, 'LEIDY POLO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cedula_doc` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `nombre_doc` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_doc` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `correo_doc` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono_doc` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `jornada_doc` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `facultad_doc` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `materia_doc` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `contra_doc` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`id`, `cedula_doc`, `nombre_doc`, `apellido_doc`, `correo_doc`, `telefono_doc`, `jornada_doc`, `facultad_doc`, `materia_doc`, `contra_doc`) VALUES
(1, '12345', 'Roberto', 'Carvajal', 'roberto@correo.com', '236125', 'Diurna', 'Ciencias', 'Redes', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cedula_est` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `nombre_est` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_est` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `correo_est` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono_est` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `jornada_est` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `programa_est` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `semestre_est` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `url_est` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_est` date DEFAULT NULL,
  `director_est` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `evaluador_est` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `caldirector_est` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `calevaluador_est` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `radicado_est` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_estado` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contra_est` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id`, `cedula_est`, `nombre_est`, `apellido_est`, `correo_est`, `telefono_est`, `jornada_est`, `programa_est`, `semestre_est`, `url_est`, `fecha_est`, `director_est`, `evaluador_est`, `caldirector_est`, `calevaluador_est`, `radicado_est`, `id_estado`, `contra_est`) VALUES
(13, '12345', 'Carlos', 'Morales', 'carlos@gmail.com', '351512', 'Nocturna', 'Tecnologia en Entrenamiento Deportivo', 'Quinto semestre', 'proyecto.pdf', '2022-10-04', '2', '2', '', '3.2', 'radicado.pdf', '2', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluador`
--

CREATE TABLE `evaluador` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_evaluador` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `evaluador`
--

INSERT INTO `evaluador` (`id`, `nom_evaluador`) VALUES
(1, 'ERNESTO SOLANO'),
(2, 'OLGA MONROY'),
(3, 'JULIAN BARNEY'),
(4, 'WILFER FUENTES'),
(5, 'ALBERTO ANGARITA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `aprobarproyecto`
--
ALTER TABLE `aprobarproyecto`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `coordinacion`
--
ALTER TABLE `coordinacion`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `director`
--
ALTER TABLE `director`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `evaluador`
--
ALTER TABLE `evaluador`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `aprobarproyecto`
--
ALTER TABLE `aprobarproyecto`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `coordinacion`
--
ALTER TABLE `coordinacion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `director`
--
ALTER TABLE `director`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `evaluador`
--
ALTER TABLE `evaluador`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
