-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2019 a las 00:05:45
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cardiocentro_manta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `Id_Area` int(11) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`Id_Area`, `Descripcion`) VALUES
(23, 'Administración'),
(24, 'ANESTESIOLOGÍA'),
(25, 'CARDIOLOGÍA INTERVENCIONISTA'),
(26, 'CIRUGÍA CARDIOVASCULAR'),
(27, 'CIRUGÍA VASCULAR E INTERVENCIONISTA'),
(28, 'CARDIOLOGÍA CLÍNICA'),
(29, 'CIRUGÍA VASCULAR'),
(30, 'ELECTROCARDIOGRAMA'),
(31, 'TICS'),
(39, 'kl');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area_roles`
--

CREATE TABLE `area_roles` (
  `Id_Area_Roles` int(11) NOT NULL,
  `Id_Area` int(11) DEFAULT NULL,
  `Id_Roles` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `area_roles`
--

INSERT INTO `area_roles` (`Id_Area_Roles`, `Id_Area`, `Id_Roles`) VALUES
(44, 23, 13),
(45, 31, 16),
(46, 31, 15),
(47, 31, 17),
(50, 30, 17),
(51, 30, 19),
(53, 30, 14),
(56, 23, 18),
(57, 28, 19),
(58, 28, 18),
(61, 24, 19),
(62, 24, 17),
(63, 29, 18),
(64, 25, 15),
(65, 25, 16),
(66, 23, 19),
(67, 39, 19),
(68, 39, 18),
(69, 39, 17),
(70, 25, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conclusion`
--

CREATE TABLE `conclusion` (
  `Id_Conclusion` int(11) NOT NULL,
  `Conclusion` varchar(2000) NOT NULL,
  `Id_Itinerario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `Id_Documento` int(11) NOT NULL,
  `Descripcion` varchar(200) NOT NULL,
  `Ruta` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento_tarea`
--

CREATE TABLE `documento_tarea` (
  `IdDocumento_Tarea` int(11) NOT NULL,
  `Id_Documento` int(11) NOT NULL,
  `Id_Tarea` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_tarea`
--

CREATE TABLE `estado_tarea` (
  `Id_Estado_Tarea` int(11) NOT NULL,
  `Descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado_tarea`
--

INSERT INTO `estado_tarea` (`Id_Estado_Tarea`, `Descripcion`) VALUES
(1, 'ACTIVA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `Id_Evento` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `FechaEvento` date NOT NULL,
  `Descripcion` varchar(300) NOT NULL,
  `FechaCreacion` date NOT NULL,
  `Id_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itinerario`
--

CREATE TABLE `itinerario` (
  `Id_Itinerario` int(11) NOT NULL,
  `Descripcion` varchar(500) NOT NULL,
  `Id_Reunion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `observador_usuario`
--

CREATE TABLE `observador_usuario` (
  `IdObservador_Usuario` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Id_Tarea` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `observador_usuario`
--

INSERT INTO `observador_usuario` (`IdObservador_Usuario`, `Id_Usuario`, `Id_Tarea`) VALUES
(34, 117, 68),
(35, 120, 69),
(36, 117, 70);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante_usuario`
--

CREATE TABLE `participante_usuario` (
  `Id_Particpanteusuario` int(11) NOT NULL,
  `Id_Tarea` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `participante_usuario`
--

INSERT INTO `participante_usuario` (`Id_Particpanteusuario`, `Id_Tarea`, `Id_Usuario`) VALUES
(47, 68, 119),
(48, 69, 117),
(49, 69, 119),
(50, 70, 118),
(51, 70, 119),
(52, 70, 120);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responsableusuario`
--

CREATE TABLE `responsableusuario` (
  `IdResponsableUsuario` int(11) NOT NULL,
  `Id_Tarea` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `responsableusuario`
--

INSERT INTO `responsableusuario` (`IdResponsableUsuario`, `Id_Tarea`, `Id_Usuario`) VALUES
(52, 68, 118),
(53, 69, 118),
(54, 70, 117);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restauracionclave`
--

CREATE TABLE `restauracionclave` (
  `Id_RestaruracionClave` int(11) NOT NULL,
  `Token_Email` varchar(100) NOT NULL,
  `Id_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reunion`
--

CREATE TABLE `reunion` (
  `Id_Reunion` int(11) NOT NULL,
  `Descripcion` varchar(200) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `FechadeReunion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `Id_Roles` int(11) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `nivel` int(11) DEFAULT NULL,
  `Id_Sub_Area` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`Id_Roles`, `Descripcion`, `nivel`, `Id_Sub_Area`) VALUES
(13, 'hola', 1, 2),
(14, 'Secretario', 2, 1),
(15, 'Técnico', 5, 1),
(16, 'Programador', 5, 1),
(17, 'Tester', 5, 1),
(18, 'Cardiólogo', 6, 2),
(19, 'Neurologos', 5, 2),
(27, 'jjh', 6, NULL),
(28, 'hollll', NULL, 2),
(29, 'jowe', NULL, 1),
(30, 'belen', NULL, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_area`
--

CREATE TABLE `sub_area` (
  `Id_Sub_Area` int(11) NOT NULL,
  `Descripcion` varchar(450) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Id_Area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sub_area`
--

INSERT INTO `sub_area` (`Id_Sub_Area`, `Descripcion`, `Id_Area`) VALUES
(1, 'SubAdmin2', 23),
(2, 'OtherSubArea', 24),
(3, 're', 23),
(4, 'hola', 23),
(7, 'Jose', 24),
(8, 'NUEVA SUBTAREA', 39);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE `tarea` (
  `Id_tarea` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Estado_Tarea` varchar(450) COLLATE latin1_danish_ci NOT NULL,
  `Id_Tipo_Tarea` int(11) DEFAULT NULL,
  `Nombre` varchar(100) CHARACTER SET latin1 NOT NULL,
  `FechaInicio` date NOT NULL,
  `Hora_Inicio` time DEFAULT NULL,
  `FechaFin` date NOT NULL,
  `Hora_Fin` time DEFAULT NULL,
  `FechaCreacion` date NOT NULL,
  `Descripcion` varchar(60000) CHARACTER SET latin1 NOT NULL,
  `tareaFavorita` int(11) DEFAULT NULL,
  `tareasIdTareas` int(11) DEFAULT NULL,
  `tip_tar` varchar(1) COLLATE latin1_danish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_danish_ci;

--
-- Volcado de datos para la tabla `tarea`
--

INSERT INTO `tarea` (`Id_tarea`, `Id_Usuario`, `Estado_Tarea`, `Id_Tipo_Tarea`, `Nombre`, `FechaInicio`, `Hora_Inicio`, `FechaFin`, `Hora_Fin`, `FechaCreacion`, `Descripcion`, `tareaFavorita`, `tareasIdTareas`, `tip_tar`) VALUES
(68, 120, 'Pendiente', 5, 'Realizar Organigram', '2019-09-30', '16:59:00', '2019-10-05', '16:59:00', '2019-09-06', 'Deben incluir las áreas y subareas en la APP MOVIL', 1, NULL, 'T'),
(69, 120, 'Pendiente', 5, 'Sub Organigrama', '2019-09-30', '05:01:00', '2019-09-30', '05:01:00', '2019-09-06', 'Trabajar', 1, 68, 'S'),
(70, 120, 'Pendiente', 5, 'Tarea2', '2019-09-30', '17:02:00', '2019-09-30', '17:02:00', '2019-09-06', 'Trabajar', 1, NULL, 'T');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_tarea`
--

CREATE TABLE `tipo_tarea` (
  `Id_Tipo_Tarea` int(11) NOT NULL,
  `Descripcion` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_tarea`
--

INSERT INTO `tipo_tarea` (`Id_Tipo_Tarea`, `Descripcion`) VALUES
(1, 'Tarea'),
(2, 'Proyecto'),
(3, 'Reunión'),
(4, 'Personal'),
(5, 'Laboral');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuarios`
--

CREATE TABLE `tipo_usuarios` (
  `Id_Tipo_Usuario` int(11) NOT NULL,
  `Descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_usuarios`
--

INSERT INTO `tipo_usuarios` (`Id_Tipo_Usuario`, `Descripcion`) VALUES
(1, 'Empleado'),
(2, 'Adminsitrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre` varchar(500) DEFAULT NULL,
  `Apellido` varchar(500) DEFAULT NULL,
  `Cedula` varchar(10) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Celular` varchar(11) DEFAULT NULL,
  `Sexo` varchar(10) DEFAULT NULL,
  `Id_tipo_Usuarios` int(11) DEFAULT NULL,
  `Password` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_Usuario`, `Nombre`, `Apellido`, `Cedula`, `email`, `Direccion`, `Celular`, `Sexo`, `Id_tipo_Usuarios`, `Password`) VALUES
(116, 'José Leonardo', 'Sabando Valencia', '0000000001', 'leonardosabando@gmail.com', 'Calceta', '0979932503', 'M', 2, 'am9zZTE5OTU='),
(117, 'Edwin', 'Moreira', '000000002', 'edwin@gmail.com', 'Arrastradero', '0000000000', 'F', 1, 'MTIz'),
(118, 'JC', 'Solorzano', '0000000003', 'jc@gmail.com', 'Chone', '000000000', 'M', 1, 'MTIz'),
(119, 'Tito', 'Barreiro', '0000000004', 'tito@gmail.com', 'Chone', '00000000', 'M', 1, 'MTIz'),
(120, 'Leonardo', 'Sabando', '1315221563', 'leonardo@gmail.com', 'Calceta', '0979932503', 'M', 1, 'MTIz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_roles`
--

CREATE TABLE `usuario_roles` (
  `Id_Usuario_Roles` int(11) NOT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Id_Roles` int(11) DEFAULT NULL,
  `Id_Area` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario_roles`
--

INSERT INTO `usuario_roles` (`Id_Usuario_Roles`, `Id_Usuario`, `Id_Roles`, `Id_Area`) VALUES
(76, 116, 16, 23),
(77, 117, 18, 24),
(78, 118, 18, 24),
(79, 119, 18, 24),
(80, 120, 15, 23);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`Id_Area`);

--
-- Indices de la tabla `area_roles`
--
ALTER TABLE `area_roles`
  ADD PRIMARY KEY (`Id_Area_Roles`),
  ADD KEY `AreaFK_idx` (`Id_Area`),
  ADD KEY `RolesFK_idx` (`Id_Roles`);

--
-- Indices de la tabla `conclusion`
--
ALTER TABLE `conclusion`
  ADD PRIMARY KEY (`Id_Conclusion`),
  ADD UNIQUE KEY `Id_Itinerario` (`Id_Itinerario`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`Id_Documento`);

--
-- Indices de la tabla `documento_tarea`
--
ALTER TABLE `documento_tarea`
  ADD PRIMARY KEY (`IdDocumento_Tarea`),
  ADD KEY `DocumentoFK_idx` (`Id_Documento`),
  ADD KEY `TareaFK_idx` (`Id_Tarea`);

--
-- Indices de la tabla `estado_tarea`
--
ALTER TABLE `estado_tarea`
  ADD PRIMARY KEY (`Id_Estado_Tarea`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`Id_Evento`),
  ADD KEY `UsuarioFk_idx` (`Id_Usuario`);

--
-- Indices de la tabla `itinerario`
--
ALTER TABLE `itinerario`
  ADD PRIMARY KEY (`Id_Itinerario`),
  ADD KEY `ReunionFK_idx` (`Id_Reunion`);

--
-- Indices de la tabla `observador_usuario`
--
ALTER TABLE `observador_usuario`
  ADD PRIMARY KEY (`IdObservador_Usuario`),
  ADD KEY `UserFk_idx` (`Id_Usuario`),
  ADD KEY `Task_idx` (`Id_Tarea`);

--
-- Indices de la tabla `participante_usuario`
--
ALTER TABLE `participante_usuario`
  ADD PRIMARY KEY (`Id_Particpanteusuario`),
  ADD KEY `Usuario_idx` (`Id_Usuario`),
  ADD KEY `TareaFK_idx` (`Id_Tarea`);

--
-- Indices de la tabla `responsableusuario`
--
ALTER TABLE `responsableusuario`
  ADD PRIMARY KEY (`IdResponsableUsuario`),
  ADD KEY `UserReFK_idx` (`Id_Usuario`),
  ADD KEY `TareaReFK_idx` (`Id_Tarea`);

--
-- Indices de la tabla `restauracionclave`
--
ALTER TABLE `restauracionclave`
  ADD PRIMARY KEY (`Id_RestaruracionClave`),
  ADD KEY `ResCFK_idx` (`Id_Usuario`);

--
-- Indices de la tabla `reunion`
--
ALTER TABLE `reunion`
  ADD PRIMARY KEY (`Id_Reunion`),
  ADD KEY `UserReunionFK_idx` (`Id_Usuario`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`Id_Roles`),
  ADD KEY `IdSubAreaFK_idx` (`Id_Sub_Area`);

--
-- Indices de la tabla `sub_area`
--
ALTER TABLE `sub_area`
  ADD PRIMARY KEY (`Id_Sub_Area`,`Id_Area`),
  ADD KEY `AreaFKSubArea_idx` (`Id_Area`);

--
-- Indices de la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD PRIMARY KEY (`Id_tarea`),
  ADD KEY `UserTFk_idx` (`Id_Usuario`),
  ADD KEY `TipoTaskFK_idx` (`Id_Tipo_Tarea`),
  ADD KEY `tareaIDRecursi_idx` (`tareasIdTareas`);

--
-- Indices de la tabla `tipo_tarea`
--
ALTER TABLE `tipo_tarea`
  ADD PRIMARY KEY (`Id_Tipo_Tarea`);

--
-- Indices de la tabla `tipo_usuarios`
--
ALTER TABLE `tipo_usuarios`
  ADD PRIMARY KEY (`Id_Tipo_Usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD KEY `TipoUsuariosFK_idx` (`Id_tipo_Usuarios`);

--
-- Indices de la tabla `usuario_roles`
--
ALTER TABLE `usuario_roles`
  ADD PRIMARY KEY (`Id_Usuario_Roles`),
  ADD KEY `RolesFK_idx` (`Id_Roles`),
  ADD KEY `UsuariosFK_idx` (`Id_Usuario`),
  ADD KEY `AreaFKRol_idx` (`Id_Area`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `Id_Area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `area_roles`
--
ALTER TABLE `area_roles`
  MODIFY `Id_Area_Roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `conclusion`
--
ALTER TABLE `conclusion`
  MODIFY `Id_Conclusion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `Id_Documento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documento_tarea`
--
ALTER TABLE `documento_tarea`
  MODIFY `IdDocumento_Tarea` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado_tarea`
--
ALTER TABLE `estado_tarea`
  MODIFY `Id_Estado_Tarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `Id_Evento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `observador_usuario`
--
ALTER TABLE `observador_usuario`
  MODIFY `IdObservador_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `participante_usuario`
--
ALTER TABLE `participante_usuario`
  MODIFY `Id_Particpanteusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `responsableusuario`
--
ALTER TABLE `responsableusuario`
  MODIFY `IdResponsableUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `restauracionclave`
--
ALTER TABLE `restauracionclave`
  MODIFY `Id_RestaruracionClave` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reunion`
--
ALTER TABLE `reunion`
  MODIFY `Id_Reunion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `Id_Roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `sub_area`
--
ALTER TABLE `sub_area`
  MODIFY `Id_Sub_Area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tarea`
--
ALTER TABLE `tarea`
  MODIFY `Id_tarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `tipo_tarea`
--
ALTER TABLE `tipo_tarea`
  MODIFY `Id_Tipo_Tarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo_usuarios`
--
ALTER TABLE `tipo_usuarios`
  MODIFY `Id_Tipo_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `usuario_roles`
--
ALTER TABLE `usuario_roles`
  MODIFY `Id_Usuario_Roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `area_roles`
--
ALTER TABLE `area_roles`
  ADD CONSTRAINT `AreaFK` FOREIGN KEY (`Id_Area`) REFERENCES `area` (`Id_Area`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `RolFK` FOREIGN KEY (`Id_Roles`) REFERENCES `roles` (`Id_Roles`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `conclusion`
--
ALTER TABLE `conclusion`
  ADD CONSTRAINT `conclusion_ibfk_1` FOREIGN KEY (`Id_Itinerario`) REFERENCES `itinerario` (`Id_Itinerario`);

--
-- Filtros para la tabla `documento_tarea`
--
ALTER TABLE `documento_tarea`
  ADD CONSTRAINT `DocumentoFK` FOREIGN KEY (`Id_Documento`) REFERENCES `documento` (`Id_Documento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `TareaFK` FOREIGN KEY (`Id_Tarea`) REFERENCES `tarea` (`Id_tarea`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `UsuarioFk` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `itinerario`
--
ALTER TABLE `itinerario`
  ADD CONSTRAINT `ReunionFK` FOREIGN KEY (`Id_Reunion`) REFERENCES `reunion` (`Id_Reunion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `observador_usuario`
--
ALTER TABLE `observador_usuario`
  ADD CONSTRAINT `Task` FOREIGN KEY (`Id_Tarea`) REFERENCES `tarea` (`Id_tarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `UserFk` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `participante_usuario`
--
ALTER TABLE `participante_usuario`
  ADD CONSTRAINT `TareaPFK` FOREIGN KEY (`Id_Tarea`) REFERENCES `tarea` (`Id_tarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `UserPFK` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `responsableusuario`
--
ALTER TABLE `responsableusuario`
  ADD CONSTRAINT `TareaReFK` FOREIGN KEY (`Id_Tarea`) REFERENCES `tarea` (`Id_tarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `UserReFK` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `restauracionclave`
--
ALTER TABLE `restauracionclave`
  ADD CONSTRAINT `ResCFK` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `reunion`
--
ALTER TABLE `reunion`
  ADD CONSTRAINT `UserReunionFK` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `IdSubAreaFK` FOREIGN KEY (`Id_Sub_Area`) REFERENCES `sub_area` (`Id_Sub_area`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sub_area`
--
ALTER TABLE `sub_area`
  ADD CONSTRAINT `AreaFKSubArea` FOREIGN KEY (`Id_Area`) REFERENCES `area` (`Id_Area`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD CONSTRAINT `TipoTaskFK` FOREIGN KEY (`Id_Tipo_Tarea`) REFERENCES `tipo_tarea` (`Id_Tipo_Tarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tareaIDRecursi` FOREIGN KEY (`tareasIdTareas`) REFERENCES `tarea` (`Id_tarea`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `TipoUsuariosFK` FOREIGN KEY (`Id_tipo_Usuarios`) REFERENCES `tipo_usuarios` (`Id_Tipo_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario_roles`
--
ALTER TABLE `usuario_roles`
  ADD CONSTRAINT `AreaFKRol` FOREIGN KEY (`Id_Area`) REFERENCES `area` (`Id_Area`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `RolesFK` FOREIGN KEY (`Id_Roles`) REFERENCES `roles` (`Id_Roles`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `UsuariosFK` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
