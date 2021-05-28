-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2021 a las 18:38:02
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
-- Estructura de tabla para la tabla `conceptos`
--

CREATE TABLE `conceptos` (
  `id` int(11) NOT NULL,
  `concepto` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `estatus` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `conceptos`
--

INSERT INTO `conceptos` (`id`, `concepto`, `descripcion`, `estatus`) VALUES
(19, 'Inscripcion  abril ', 'Inscripcion abril 2021', 1),
(20, 'Inscripcion mayo', 'Concepto de  incripcion de mayo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conceptos_planes`
--

CREATE TABLE `conceptos_planes` (
  `id` int(11) NOT NULL,
  `idConcepto` int(11) NOT NULL,
  `plan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `conceptos_planes`
--

INSERT INTO `conceptos_planes` (`id`, `idConcepto`, `plan`) VALUES
(2, 20, '2 Meses'),
(3, 20, '1 Mes'),
(4, 20, '1 Mes'),
(5, 20, '1 Mes'),
(6, 20, '1 Mes'),
(7, 20, '12meses'),
(8, 19, '6 meses');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_generales`
--

CREATE TABLE `datos_generales` (
  `id` int(1) NOT NULL,
  `colorPrimario` varchar(50) NOT NULL,
  `colorSecundario` varchar(50) NOT NULL,
  `acercaDe` text NOT NULL,
  `nosotros` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos_generales`
--

INSERT INTO `datos_generales` (`id`, `colorPrimario`, `colorSecundario`, `acercaDe`, `nosotros`) VALUES
(1, '#9575cd', '#d1c4e9', 'FuentXCIATictiVERmAes', 'ssaaaaaaaaaaaaaa');

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
(1, 'migue', 123, '3ac839e60c0f294a88642c800aa333cf7715eb8275a5314e16b920c31b3d29e2');

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
(4, 'Inscripción', '2021-05-13', 250, 0, 0, 'Pagado'),
(5, 'Inscripción', '2021-05-13', 250, 0, 0, 'Pagado'),
(6, 'Inscripción', '2021-05-13', 250, 0, 0, 'Pagado'),
(9, 'Inscripción Mayo', '2021-05-13', 250, 0, 0, 'Pagado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos_deposito`
--

CREATE TABLE `pagos_deposito` (
  `id` int(11) NOT NULL,
  `concepto` varchar(255) NOT NULL,
  `fechaVencimiento` date NOT NULL,
  `importe` int(11) NOT NULL,
  `interes` int(11) NOT NULL,
  `saldos` int(11) NOT NULL,
  `estatus` varchar(50) DEFAULT 'No Aprobado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pagos_deposito`
--

INSERT INTO `pagos_deposito` (`id`, `concepto`, `fechaVencimiento`, `importe`, `interes`, `saldos`, `estatus`) VALUES
(1, 'Inscripción Mayo', '2021-05-13', 250, 0, 0, 'Cancelado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasarelas`
--

CREATE TABLE `pasarelas` (
  `id` int(11) NOT NULL,
  `nombrePasarela` varchar(100) NOT NULL,
  `clavePublica` varchar(200) NOT NULL,
  `claveSecreta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pasarelas`
--

INSERT INTO `pasarelas` (`id`, `nombrePasarela`, `clavePublica`, `claveSecreta`) VALUES
(1, 'Conecta', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'XCIATictiVERmA'),
(2, 'PayPal', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'XCIATictiVERmA'),
(3, 'OpenPay', '8e2ceecbcb5c7a306792a3104b9b249f16e36d70da1ed02c7ba948690a0819b3', 'FuentXCIATictiVERmAes'),
(12, 'mercadoPagos', 'htyygauyususshhsao9', 'htyygauyususshhsao9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `penalizaciones`
--

CREATE TABLE `penalizaciones` (
  `id` int(11) NOT NULL,
  `penalizacion` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `estatus` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `penalizaciones`
--

INSERT INTO `penalizaciones` (`id`, `penalizacion`, `descripcion`, `estatus`) VALUES
(5, 'Pago tardio', 'penaliazacion por pago tardio', 1);

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
(7, 'Natacion', '2021-05-17', 'Cancelado'),
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
(3, 'Miguel', 'Muñoz', 'Pozos'),
(4, 'Pedro', 'Cruz ', 'Rodriguez'),
(6, 'Luiz', 'Luiz', 'Luiz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_cobros`
--

CREATE TABLE `usuario_cobros` (
  `id` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idConcepto` int(11) NOT NULL,
  `fechaInico` date NOT NULL,
  `fechaFin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario_cobros`
--

INSERT INTO `usuario_cobros` (`id`, `idUsuario`, `idConcepto`, `fechaInico`, `fechaFin`) VALUES
(1, 3, 19, '2021-05-21', '2021-05-30'),
(3, 6, 20, '2021-05-28', '2021-05-29'),
(4, 6, 20, '2021-05-31', '2021-05-29'),
(5, 3, 20, '2021-05-31', '2021-05-31'),
(6, 3, 19, '2021-05-31', '2021-05-31'),
(7, 4, 20, '2021-05-31', '2021-05-31'),
(8, 4, 19, '2021-05-31', '2021-05-31'),
(9, 3, 19, '2021-05-27', '2021-05-31'),
(10, 3, 20, '2021-05-27', '2021-05-31'),
(11, 3, 19, '2021-05-26', '2021-05-26'),
(12, 3, 20, '2021-05-26', '2021-05-26'),
(13, 4, 19, '2021-05-26', '2021-05-26'),
(14, 4, 20, '2021-05-26', '2021-05-26'),
(15, 6, 19, '2021-05-28', '2021-05-28'),
(16, 6, 20, '2021-05-28', '2021-05-28');

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
(7, 3, 9),
(5, 4, 5),
(4, 6, 4),
(6, 6, 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conceptos`
--
ALTER TABLE `conceptos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `conceptos_planes`
--
ALTER TABLE `conceptos_planes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_concepto2_FK` (`idConcepto`);

--
-- Indices de la tabla `datos_generales`
--
ALTER TABLE `datos_generales`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `pagos_deposito`
--
ALTER TABLE `pagos_deposito`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pasarelas`
--
ALTER TABLE `pasarelas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `penalizaciones`
--
ALTER TABLE `penalizaciones`
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
-- Indices de la tabla `usuario_cobros`
--
ALTER TABLE `usuario_cobros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_concepto_FK` (`idConcepto`),
  ADD KEY `id_usuario2_FK` (`idUsuario`);

--
-- Indices de la tabla `usuario_pagos`
--
ALTER TABLE `usuario_pagos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idUsuario` (`idUsuario`,`idPago`),
  ADD KEY `idPago` (`idPago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `conceptos`
--
ALTER TABLE `conceptos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `conceptos_planes`
--
ALTER TABLE `conceptos_planes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `datos_generales`
--
ALTER TABLE `datos_generales`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pagos_deposito`
--
ALTER TABLE `pagos_deposito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pasarelas`
--
ALTER TABLE `pasarelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `penalizaciones`
--
ALTER TABLE `penalizaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuario_cobros`
--
ALTER TABLE `usuario_cobros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `usuario_pagos`
--
ALTER TABLE `usuario_pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `conceptos_planes`
--
ALTER TABLE `conceptos_planes`
  ADD CONSTRAINT `id_concepto2_FK` FOREIGN KEY (`idConcepto`) REFERENCES `conceptos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario_cobros`
--
ALTER TABLE `usuario_cobros`
  ADD CONSTRAINT `id_concepto_FK` FOREIGN KEY (`idConcepto`) REFERENCES `conceptos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_usuario2_FK` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario_pagos`
--
ALTER TABLE `usuario_pagos`
  ADD CONSTRAINT `id_usuario_FK` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_pagos_ibfk_1` FOREIGN KEY (`idPago`) REFERENCES `pagos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
