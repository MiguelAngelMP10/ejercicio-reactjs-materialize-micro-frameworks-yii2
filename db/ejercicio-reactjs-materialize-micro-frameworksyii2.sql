-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2021 a las 22:02:07
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejercicio-reactjs-materialize-micro-frameworksyii2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` int(45) NOT NULL,
  `token` varchar(250) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `token`) VALUES
(1, 'migue', 123, 'e95503f5f8b7e63449badc6c92bd4971e9d46343dd157142085a7b72c17d9ed3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(11) NOT NULL,
  `concepto` varchar(255) NOT NULL,
  `fechaVencimiento` date NOT NULL,
  `importe` int(11) NOT NULL,
  `interes` int(11) NOT NULL,
  `saldos` int(11) NOT NULL,
  `estatus` varchar(50) DEFAULT 'No Pagado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id`, `concepto`, `fechaVencimiento`, `importe`, `interes`, `saldos`, `estatus`) VALUES
(1, 'Inscripción', '2021-05-13', 250, 0, 0, 'Pagado'),
(3, 'Inscripción', '2021-05-13', 250, 0, 0, 'Pagado'),
(4, 'Inscripción', '2021-05-13', 250, 0, 0, 'Pagado'),
(5, 'Inscripción', '2021-05-13', 250, 0, 0, 'Pagado'),
(6, 'Inscripción', '2021-05-13', 250, 0, 0, 'Pagado'),
(7, 'Inscripción', '2021-05-13', 250, 0, 0, 'Pagado'),
(8, 'Inscripción', '2021-05-13', 250, 0, 0, 'Pagado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibos`
--

CREATE TABLE `recibos` (
  `id` int(11) NOT NULL,
  `descripcionRecibo` text NOT NULL,
  `tipoPago` varchar(250) NOT NULL,
  `estatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recibos`
--

INSERT INTO `recibos` (`id`, `descripcionRecibo`, `tipoPago`, `estatus`) VALUES
(3, 'Natacion aaaaa', 'efectivo', 'Pagado'),
(4, 'Natacion aaaaa', 'efectivo', 'Pagado'),
(5, 'Natacion aaaaa', 'efectivo', 'Pagado'),
(6, 'Natacion aaaaa', 'efectivo', 'Pagado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

CREATE TABLE `suscripciones` (
  `id` int(11) NOT NULL,
  `suscripcion` varchar(250) NOT NULL,
  `fechaInicio` date NOT NULL,
  `estatus` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `suscripciones`
--

INSERT INTO `suscripciones` (`id`, `suscripcion`, `fechaInicio`, `estatus`) VALUES
(2, 'Uniforme', '2021-05-15', 'Cancelado'),
(3, 'Voletin de ofertas', '2021-05-17', 'Cancelado'),
(4, 'Desayunador', '2021-05-17', 'Cancelado'),
(5, 'Desayunador', '2021-05-17', 'Cancelado'),
(6, 'Desayunador', '2021-05-17', 'Cancelado'),
(7, 'Natacion', '2021-05-17', 'Pagado'),
(8, 'Natacion', '2021-05-17', 'Pagado'),
(9, 'Natacion', '2021-05-17', 'Pagado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

CREATE TABLE `transacciones` (
  `id` int(11) NOT NULL,
  `idPago` int(11) NOT NULL,
  `monto` varchar(100) NOT NULL,
  `opcionPago` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transacciones`
--

INSERT INTO `transacciones` (`id`, `idPago`, `monto`, `opcionPago`) VALUES
(2, 1, '12', 'efectivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidoPaterno` varchar(100) NOT NULL,
  `apellidoMaterno` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidoPaterno`, `apellidoMaterno`) VALUES
(3, 'Pedro', 'Cruz ', 'Rodriguez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_pagos`
--

CREATE TABLE `usuario_pagos` (
  `id` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idPago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario_pagos`
--

INSERT INTO `usuario_pagos` (`id`, `idUsuario`, `idPago`) VALUES
(4, 3, 4),
(5, 3, 5),
(6, 3, 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recibos`
--
ALTER TABLE `recibos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario_pagos`
--
ALTER TABLE `usuario_pagos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idUsuario` (`idUsuario`,`idPago`),
  ADD KEY `id_pago_FK` (`idPago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `recibos`
--
ALTER TABLE `recibos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario_pagos`
--
ALTER TABLE `usuario_pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario_pagos`
--
ALTER TABLE `usuario_pagos`
  ADD CONSTRAINT `id_pago_FK` FOREIGN KEY (`IdPago`) REFERENCES `pagos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_usuario_FK` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
