-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-06-2024 a las 22:05:38
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `caja_id` int(5) NOT NULL,
  `caja_numero` int(5) NOT NULL,
  `caja_nombre` varchar(100) NOT NULL,
  `caja_estado` varchar(17) NOT NULL,
  `caja_efectivo` decimal(30,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int(10) NOT NULL,
  `categoria_nombre` varchar(50) NOT NULL,
  `categoria_descripcion` text NOT NULL,
  `categoria_estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `categoria_nombre`, `categoria_descripcion`, `categoria_estado`) VALUES
(1, 'Plastico', '', 'Habilitada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cliente_id` int(10) NOT NULL,
  `cliente_nombre` varchar(37) NOT NULL,
  `cliente_apellido` varchar(37) NOT NULL,
  `cliente_genero` varchar(10) NOT NULL,
  `cliente_telefono` varchar(22) NOT NULL,
  `cliente_provincia` varchar(30) NOT NULL,
  `cliente_ciudad` varchar(30) NOT NULL,
  `cliente_direccion` varchar(70) NOT NULL,
  `cliente_email` varchar(50) NOT NULL,
  `cliente_clave` varchar(535) NOT NULL,
  `cliente_foto` varchar(200) NOT NULL,
  `cliente_cuenta_estado` varchar(17) NOT NULL,
  `cliente_cuenta_verificada` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cliente_id`, `cliente_nombre`, `cliente_apellido`, `cliente_genero`, `cliente_telefono`, `cliente_provincia`, `cliente_ciudad`, `cliente_direccion`, `cliente_email`, `cliente_clave`, `cliente_foto`, `cliente_cuenta_estado`, `cliente_cuenta_verificada`) VALUES
(1, 'keiner', 'serrano', 'Masculino', '345754322', 'aguas calientes', 'cucuta', 'cale 26', 'keinerserrano04@gmail.com', 'TldBazZacUpnSXhZZ0tDKzdKaHU3Zz09', 'Avatar_default_male.png', 'Activa', 'Verificada'),
(2, 'jaskad', 'wewewe', 'Masculino', '3246842135', 'motilones', 'cucuta', 'calle 26#18-21', 'juanserrano08@gmail.com', 'TldBazZacUpnSXhZZ0tDKzdKaHU3Zz09', 'Avatar_default_male.png', 'Activa', 'No verificada'),
(3, 'keiner', 'serrano', 'Masculino', '3223257203', 'aguas calientes', 'cucuta', 'cale 26', 'keinerserrano03@gmail.com', 'M2FzNWhUeWtMUkpISnNFbjdsYy94dz09', 'Avatar_Male_1.png', 'Activa', 'No verificada'),
(4, 'keiner', 'serrano', 'Masculino', '1234567890', 'aguas calientes', 'cucuta', 'cale 26', 'keinerserrano01@gmail.com', 'alp6aXErM2RCOWJDT25Ta29Ba25mQT09', 'Avatar_Male_4.png', 'Activa', 'No verificada'),
(5, 'keiner', 'serrano', 'Masculino', '543216789', 'aguas calientes', 'cucuta', 'cale 26', 'keinerserrano02@gmail.com', 'Rk1IdlN1b0t5YlBReE9KVTRmNE5yZz09', 'Avatar_Male_4.png', 'Activa', 'No verificada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `empresa_id` int(3) NOT NULL,
  `empresa_tipo_documento` varchar(20) NOT NULL,
  `empresa_numero_documento` varchar(35) NOT NULL,
  `empresa_nombre` varchar(90) NOT NULL,
  `empresa_telefono` varchar(20) NOT NULL,
  `empresa_email` varchar(50) NOT NULL,
  `empresa_direccion` varchar(100) NOT NULL,
  `empresa_impuesto_nombre` varchar(10) NOT NULL,
  `empresa_impuesto_porcentaje` int(3) NOT NULL,
  `empresa_factura_impuestos` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favorito`
--

CREATE TABLE `favorito` (
  `favorito_id` int(15) NOT NULL,
  `favorito_fecha` date NOT NULL,
  `cliente_id` int(10) NOT NULL,
  `producto_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `imagen_id` int(30) NOT NULL,
  `imagen_nombre` varchar(200) NOT NULL,
  `producto_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `producto_id` int(20) NOT NULL,
  `producto_codigo` varchar(50) NOT NULL,
  `producto_sku` varchar(50) NOT NULL,
  `producto_nombre` varchar(200) NOT NULL,
  `producto_descripcion` varchar(535) NOT NULL,
  `producto_stock` int(10) NOT NULL,
  `producto_stock_minimo` int(10) NOT NULL,
  `producto_precio_compra` decimal(30,2) NOT NULL,
  `producto_precio_venta` decimal(30,2) NOT NULL,
  `producto_descuento` int(3) NOT NULL,
  `producto_tipo` varchar(10) NOT NULL,
  `producto_presentacion` varchar(30) NOT NULL,
  `producto_marca` varchar(50) NOT NULL,
  `producto_modelo` varchar(70) NOT NULL,
  `producto_estado` varchar(20) NOT NULL,
  `producto_portada` varchar(300) NOT NULL,
  `categoria_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`producto_id`, `producto_codigo`, `producto_sku`, `producto_nombre`, `producto_descripcion`, `producto_stock`, `producto_stock_minimo`, `producto_precio_compra`, `producto_precio_venta`, `producto_descuento`, `producto_tipo`, `producto_presentacion`, `producto_marca`, `producto_modelo`, `producto_estado`, `producto_portada`, `categoria_id`) VALUES
(1, '23525232', '1', 'Manguera', '', 4, 2, 1500.00, 2000.00, 0, 'Fisico', 'Unidad', 'manguerassas', '', 'Habilitado', 'E2J2B1D8Z9-1.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(10) NOT NULL,
  `usuario_nombre` varchar(37) NOT NULL,
  `usuario_apellido` varchar(37) NOT NULL,
  `usuario_telefono` varchar(22) NOT NULL,
  `usuario_genero` varchar(10) NOT NULL,
  `usuario_cargo` varchar(20) NOT NULL,
  `usuario_usuario` varchar(30) NOT NULL,
  `usuario_email` varchar(50) NOT NULL,
  `usuario_clave` varchar(535) NOT NULL,
  `usuario_cuenta_estado` varchar(17) NOT NULL,
  `usuario_foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_nombre`, `usuario_apellido`, `usuario_telefono`, `usuario_genero`, `usuario_cargo`, `usuario_usuario`, `usuario_email`, `usuario_clave`, `usuario_cuenta_estado`, `usuario_foto`) VALUES
(1, 'Administrador', 'Principal', '00000000', 'Masculino', 'Administrador', 'Administrador', 'admin@admin.com', 'K1hvdkhOR2hvQ1pzK2V1STJPaGlwQT09', 'Activa', 'Avatar_Male_2.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `venta_id` int(20) NOT NULL,
  `venta_codigo` varchar(200) NOT NULL,
  `venta_fecha` date NOT NULL,
  `venta_hora` varchar(17) NOT NULL,
  `venta_tipo_envio` varchar(20) NOT NULL,
  `venta_impuesto_nombre` varchar(10) NOT NULL,
  `venta_impuesto_porcentaje` int(3) NOT NULL,
  `venta_estado_envio` varchar(20) NOT NULL,
  `venta_estado_pagado` varchar(20) NOT NULL,
  `venta_subtotal` decimal(30,2) NOT NULL,
  `venta_impuestos` decimal(30,2) NOT NULL,
  `venta_total` decimal(30,2) NOT NULL,
  `venta_costo` decimal(30,2) NOT NULL,
  `venta_utilidad` decimal(30,2) NOT NULL,
  `venta_pagado` decimal(30,2) NOT NULL,
  `venta_cambio` decimal(30,2) NOT NULL,
  `cliente_id` int(10) NOT NULL,
  `usuario_id` int(10) NOT NULL,
  `empresa_id` int(3) NOT NULL,
  `caja_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_detalle`
--

CREATE TABLE `venta_detalle` (
  `venta_detalle_id` int(20) NOT NULL,
  `venta_detalle_cantidad` int(10) NOT NULL,
  `venta_detalle_precio_compra` decimal(30,2) NOT NULL,
  `venta_detalle_precio_regular` decimal(30,2) NOT NULL,
  `venta_detalle_precio_venta` decimal(30,2) NOT NULL,
  `venta_detalle_total` decimal(30,2) NOT NULL,
  `venta_detalle_costo` decimal(30,2) NOT NULL,
  `venta_detalle_utilidad` decimal(30,2) NOT NULL,
  `venta_detalle_descripcion` varchar(200) NOT NULL,
  `venta_codigo` varchar(200) NOT NULL,
  `producto_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`caja_id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`empresa_id`);

--
-- Indices de la tabla `favorito`
--
ALTER TABLE `favorito`
  ADD PRIMARY KEY (`favorito_id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`imagen_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`producto_id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`venta_id`),
  ADD UNIQUE KEY `venta_codigo` (`venta_codigo`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `empresa_id` (`empresa_id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `caja_id` (`caja_id`);

--
-- Indices de la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  ADD KEY `venta_id` (`venta_codigo`),
  ADD KEY `producto_id` (`producto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `caja_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `categoria_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cliente_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `empresa_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `favorito`
--
ALTER TABLE `favorito`
  MODIFY `favorito_id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `imagen_id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `venta_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `favorito`
--
ALTER TABLE `favorito`
  ADD CONSTRAINT `favorito_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`producto_id`),
  ADD CONSTRAINT `favorito_ibfk_2` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`cliente_id`);

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`producto_id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`cliente_id`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`),
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`empresa_id`),
  ADD CONSTRAINT `venta_ibfk_4` FOREIGN KEY (`caja_id`) REFERENCES `caja` (`caja_id`);

--
-- Filtros para la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  ADD CONSTRAINT `venta_detalle_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`producto_id`),
  ADD CONSTRAINT `venta_detalle_ibfk_3` FOREIGN KEY (`venta_codigo`) REFERENCES `venta` (`venta_codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
