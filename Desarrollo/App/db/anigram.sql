-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2018 a las 01:29:19
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `anigram`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amigos`
--

CREATE TABLE `amigos` (
  `IDSeguidor` int(11) NOT NULL,
  `IDSeguido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `ID` int(11) NOT NULL,
  `IDUsuario` int(11) NOT NULL,
  `IDMedia` int(11) NOT NULL,
  `Comentario` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercio`
--

CREATE TABLE `comercio` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  `Descripcion` varchar(300) DEFAULT NULL,
  `URLImagen` varchar(30) DEFAULT NULL,
  `Tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `denuncia`
--

CREATE TABLE `denuncia` (
  `ID` int(11) NOT NULL,
  `IDMedia` int(11) NOT NULL,
  `motivo` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hashtag`
--

CREATE TABLE `hashtag` (
  `ID` int(11) NOT NULL,
  `Comentario` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota`
--

CREATE TABLE `mascota` (
  `ID` int(11) NOT NULL,
  `Amo` int(11) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Raza` varchar(20) NOT NULL,
  `URLFoto` varchar(30) DEFAULT NULL,
  `Bio` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `ID` int(11) NOT NULL,
  `Mascota` int(11) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `URLImagen` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `ID` int(11) NOT NULL,
  `IDReceptor` int(11) NOT NULL,
  `IDEmisor` int(11) NOT NULL,
  `Tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`ID`, `Nombre`) VALUES
(1, 'Dueño'),
(2, 'Comercio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_mascota`
--

CREATE TABLE `tipo_mascota` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `URLIcono` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_mascota`
--

INSERT INTO `tipo_mascota` (`ID`, `Nombre`, `URLIcono`) VALUES
(1, 'Perro', ''),
(2, 'gato', ''),
(3, 'conejo', ''),
(4, 'hamster', ''),
(5, 'ave', ''),
(6, 'cobaya', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_media`
--

CREATE TABLE `tipo_media` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_notificacion`
--

CREATE TABLE `tipo_notificacion` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID` int(11) NOT NULL,
  `Rol` int(11) NOT NULL,
  `Nickname` varchar(10) NOT NULL,
  `NombreCompleto` varchar(30) DEFAULT NULL,
  `Email` varchar(30) NOT NULL,
  `Clave` varchar(50) NOT NULL,
  `URLFoto` varchar(50) DEFAULT NULL,
  `Bio` varchar(300) DEFAULT NULL,
  `Bloqueado` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID`, `Rol`, `Nickname`, `NombreCompleto`, `Email`, `Clave`, `URLFoto`, `Bio`, `Bloqueado`) VALUES
(14, 1, 'a', 'aa', 'asd@ad.cas', '$2y$10$lX796irJn7xQbQED.uHsc.LSHMOW2.IFH1mr/2v6eGY', '', NULL, 0),
(16, 1, 'Mirilopsi', 'Miriam LÃ³pez Sierra', 'mirilopsi@email.com', '$2y$10$6oAczs.Uz/rHPLo1fNkBuOFAKfjuui17.GoJQZFJe6R', 'doge-pixilart.png', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_comercio`
--

CREATE TABLE `usuarios_comercio` (
  `IDUsuario` int(11) NOT NULL,
  `IDComercio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `woofs`
--

CREATE TABLE `woofs` (
  `IDUsuario` int(11) NOT NULL,
  `IDMedia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `amigos`
--
ALTER TABLE `amigos`
  ADD PRIMARY KEY (`IDSeguidor`,`IDSeguido`),
  ADD KEY `FK_Amigos_seguido` (`IDSeguido`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_Comentario_usuario` (`IDUsuario`),
  ADD KEY `FK_Comentario_media` (`IDMedia`);

--
-- Indices de la tabla `comercio`
--
ALTER TABLE `comercio`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `denuncia`
--
ALTER TABLE `denuncia`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_Denundia_media` (`IDMedia`);

--
-- Indices de la tabla `hashtag`
--
ALTER TABLE `hashtag`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_Hashtag_comentario` (`Comentario`);

--
-- Indices de la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_Mascota_amo` (`Amo`),
  ADD KEY `FK_Mascota_tipo` (`Tipo`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_Media_mascota` (`Mascota`),
  ADD KEY `FK_Media_tipo` (`Tipo`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_Notificaciones_Receptor` (`IDReceptor`),
  ADD KEY `FK_Notificaciones_Emisor` (`IDEmisor`),
  ADD KEY `FK_Notificaciones_tipo` (`Tipo`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tipo_mascota`
--
ALTER TABLE `tipo_mascota`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tipo_media`
--
ALTER TABLE `tipo_media`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tipo_notificacion`
--
ALTER TABLE `tipo_notificacion`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_Usuarios_rol` (`Rol`);

--
-- Indices de la tabla `usuarios_comercio`
--
ALTER TABLE `usuarios_comercio`
  ADD PRIMARY KEY (`IDUsuario`,`IDComercio`),
  ADD KEY `FK_UsuComercio_comercio` (`IDComercio`);

--
-- Indices de la tabla `woofs`
--
ALTER TABLE `woofs`
  ADD PRIMARY KEY (`IDUsuario`,`IDMedia`),
  ADD KEY `FK_Woofs_media` (`IDMedia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comercio`
--
ALTER TABLE `comercio`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `denuncia`
--
ALTER TABLE `denuncia`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hashtag`
--
ALTER TABLE `hashtag`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mascota`
--
ALTER TABLE `mascota`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_mascota`
--
ALTER TABLE `tipo_mascota`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipo_media`
--
ALTER TABLE `tipo_media`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_notificacion`
--
ALTER TABLE `tipo_notificacion`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `amigos`
--
ALTER TABLE `amigos`
  ADD CONSTRAINT `FK_Amigos_seguido` FOREIGN KEY (`IDSeguido`) REFERENCES `usuario` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Amigos_seguidor` FOREIGN KEY (`IDSeguidor`) REFERENCES `mascota` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `FK_Comentario_media` FOREIGN KEY (`IDMedia`) REFERENCES `media` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Comentario_usuario` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `denuncia`
--
ALTER TABLE `denuncia`
  ADD CONSTRAINT `FK_Denundia_media` FOREIGN KEY (`IDMedia`) REFERENCES `media` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `hashtag`
--
ALTER TABLE `hashtag`
  ADD CONSTRAINT `FK_Hashtag_comentario` FOREIGN KEY (`Comentario`) REFERENCES `comentario` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD CONSTRAINT `FK_Mascota_amo` FOREIGN KEY (`Amo`) REFERENCES `usuario` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Mascota_tipo` FOREIGN KEY (`Tipo`) REFERENCES `tipo_mascota` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_Media_mascota` FOREIGN KEY (`Mascota`) REFERENCES `mascota` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Media_tipo` FOREIGN KEY (`Tipo`) REFERENCES `tipo_media` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD CONSTRAINT `FK_Notificaciones_Emisor` FOREIGN KEY (`IDEmisor`) REFERENCES `usuario` (`ID`),
  ADD CONSTRAINT `FK_Notificaciones_Receptor` FOREIGN KEY (`IDReceptor`) REFERENCES `usuario` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Notificaciones_tipo` FOREIGN KEY (`Tipo`) REFERENCES `tipo_notificacion` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_Usuarios_rol` FOREIGN KEY (`Rol`) REFERENCES `rol` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_comercio`
--
ALTER TABLE `usuarios_comercio`
  ADD CONSTRAINT `FK_UsuComercio_comercio` FOREIGN KEY (`IDComercio`) REFERENCES `comercio` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_UsuComercio_usuario` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `woofs`
--
ALTER TABLE `woofs`
  ADD CONSTRAINT `FK_Woofs_media` FOREIGN KEY (`IDMedia`) REFERENCES `media` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Woofs_usuario` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
