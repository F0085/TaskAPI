-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-03-2020 a las 19:49:46
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
(23, 'ADMINISTRACIÓN'),
(24, 'ANESTESIOLOGÍA'),
(25, 'CARDIOLOGÍA INTERVENCIONISTA'),
(26, 'CIRUGÍA CARDIOVASCULAR'),
(27, 'CIRUGÍA VASCULAR E INTERVENCIONISTA'),
(28, 'CARDIOLOGÍA CLÍNICA'),
(29, 'CIRUGÍA VASCULAR'),
(30, 'ELECTROCARDIOGRAMA'),
(31, 'TICS'),
(39, 'TECNOLOGÍA'),
(40, 'ENFERMERÍA'),
(41, 'hh'),
(42, 'dasdas');

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
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `Id_asistencia` int(11) NOT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `asistencia` int(11) DEFAULT NULL,
  `IdReunion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`Id_asistencia`, `Id_Usuario`, `asistencia`, `IdReunion`) VALUES
(1, 120, 2, 1);

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
  `Ruta` varchar(500) NOT NULL,
  `Id_Tarea` int(11) DEFAULT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`Id_Documento`, `Descripcion`, `Ruta`, `Id_Tarea`, `Id_Usuario`, `Fecha`) VALUES
(106, 'hjhghjgkjh', '201911251574664393_133.pdf', 133, 120, '2019-11-25 01:46:33'),
(107, 'dfd', '201911251574665084_139.docx', 139, 120, '2019-11-25 01:58:04'),
(108, 'VC', '201911251574665239_139.pdf', 139, 120, '2019-11-25 02:00:39'),
(109, 'DDDD', '201911251574665404_139.pdf', 139, 120, '2019-11-25 02:03:24'),
(110, 'df', '201911251574665900_139.pdf', 139, 120, '2019-11-25 02:11:40'),
(111, 'a', '201911251574666023_139.docx', 139, 120, '2019-11-25 02:13:43'),
(112, 'ds', '201911251574666181_139.pdf', 139, 120, '2019-11-25 02:16:21'),
(113, 'ff', '201911251574666281_139.pdf', 139, 120, '2019-11-25 02:18:01'),
(114, 'ds', '201911251574666421_139.pdf', 139, 120, '2019-11-25 02:20:21'),
(115, 'kk', '201911251574666577_139.docx', 139, 120, '2019-11-25 02:22:57'),
(116, 'kk', '201911251574666669_139.pdf', 139, 120, '2019-11-25 02:24:29'),
(117, 'mn', '201911251574666881_139.pdf', 139, 120, '2019-11-25 02:28:01'),
(118, 'ds', '201911251574667012_139.pdf', 139, 120, '2019-11-25 02:30:12'),
(119, 'erw', '201911251574667218_139.pdf', 139, 120, '2019-11-25 02:33:38'),
(120, 'f', '201911251574667335_139.pdf', 139, 120, '2019-11-25 02:35:35'),
(121, 'frfrfrfrfr', '201911251574700008_139.docx', 139, 120, '2019-11-25 11:40:08'),
(122, 'dasdasdasd', '201911251574700574_139.pdf', 139, 120, '2019-11-25 11:49:34'),
(123, 'aaaaa', '201911251574700776_139.png', 139, 120, '2019-11-25 11:52:56'),
(124, 'nhgbfgh', '201911271574882004_154.png', 154, 120, '2019-11-27 14:13:24'),
(125, 'jhgh', '201911271574882055_140.png', 140, 120, '2019-11-27 14:14:15'),
(126, 'jhgggghhjjgjgh', '201911271574882089_154.docx', 154, 120, '2019-11-27 14:14:49'),
(127, 'jjjj', '201911271574882734_133.png', 133, 120, '2019-11-27 14:25:34'),
(128, 'llllllll', '201911271574882781_133.jpeg', 133, 120, '2019-11-27 14:26:21'),
(129, 'kk', '201911271574882831_133.pdf', 133, 120, '2019-11-27 14:27:11'),
(130, 'gfhj', '201911281574963720_133.png', 133, 120, '2019-11-28 12:55:20'),
(131, 'ghfg', '201911281574963763_136.pdf', 136, 120, '2019-11-28 12:56:03'),
(132, 'lolo', '201911281574964335_136.pdf', 136, 120, '2019-11-28 13:05:35'),
(133, 'dasdasdasd', '201911281574964498_133.pdf', 133, 120, '2019-11-28 13:08:18'),
(134, 'ads', '201911281574964575_133.pdf', 133, 120, '2019-11-28 13:09:35'),
(135, 'dasdasd', '201911281574965593_162.png', 162, 120, '2019-11-28 13:26:33'),
(136, 'ddd', '201911281574965682_162.png', 162, 120, '2019-11-28 13:28:02'),
(137, 'fsdf', '201911281574965723_162.pdf', 162, 120, '2019-11-28 13:28:43'),
(138, 'dasdasdasd', '201911281574965830_162.pdf', 162, 120, '2019-11-28 13:30:30'),
(139, 'dasdasdasd', '201911281574965893_162.png', 162, 120, '2019-11-28 13:31:33'),
(140, 'dasdasdasd', '201911281574966062_162.png', 162, 120, '2019-11-28 13:34:22'),
(141, 'dasdasdasd', '201911281574966076_162.png', 162, 120, '2019-11-28 13:34:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento_tarea`
--

CREATE TABLE `documento_tarea` (
  `IdDocumento_Tarea` int(11) NOT NULL,
  `Id_Documento` int(11) NOT NULL,
  `Id_Tarea` int(11) NOT NULL,
  `Id_Usuario` int(11) DEFAULT NULL
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
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `Id_notificaciones` int(11) NOT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `FechaLimite` datetime DEFAULT NULL,
  `VistaWeb` int(11) DEFAULT NULL,
  `VistaMovil` int(11) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `Id_Ttar_Reu` int(11) DEFAULT NULL,
  `tipoRol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`Id_notificaciones`, `descripcion`, `Id_Usuario`, `FechaLimite`, `VistaWeb`, `VistaMovil`, `tipo`, `Id_Ttar_Reu`, `tipoRol`) VALUES
(1, 'Se te asignado como participante a la tarea de Revision de Tesis', 120, NULL, 1, 0, 'Tarea', 133, NULL),
(2, 'Se te asignado como participante a la tarea de Revision de Tutot', 120, NULL, 0, 0, 'Tarea', 133, NULL),
(3, 'ESTAS INIVITADO A UNA REUNION', 120, NULL, 0, 0, 'Reunion', 91, 'MisTareasParticipantes'),
(4, 'se le ha invitado a una reunion', NULL, NULL, NULL, NULL, NULL, 134, ''),
(5, 'se le ha invitado a una reunion', 120, NULL, 1, NULL, 'Reunion', 135, NULL),
(6, 'Ha sido invitado como Responsable de la tareaPROBANDO NOTIFICACIONES', 120, '2019-11-27 00:00:00', 1, NULL, 'Tarea', NULL, 'MisTareasResponsable'),
(7, 'Ha sido invitado como Responsable de la tarea SEGUNDA PRUEBA DE NOTIFICACIONES', 120, '2019-11-27 00:00:00', 0, 0, 'Tarea', 156, 'MisTareasResponsable'),
(8, 'Ha sido invitado como Responsable de la tarea TERCERA PRUEBA', 120, '2019-11-27 00:00:00', 0, 0, 'Tarea', 157, 'Responsable'),
(9, 'Ha sido invitado como Responsable de la tarea EDWIN PROBANDO', 120, '2019-11-27 00:00:00', 0, 0, 'Tarea', 158, 'Responsable'),
(10, 'Ha sido invitado como Responsable de la tarea otra prueba', 120, '2019-11-27 00:00:00', 0, 0, 'Tarea', 159, 'Responsable'),
(11, 'Ha sido invitado como Participante de la tarea otra prueba', 120, '2019-11-27 00:00:00', 0, 0, 'Tarea', 159, 'Participante'),
(12, 'Ha sido invitado como Observador de la tarea otra prueba', 120, '2019-11-27 00:00:00', 0, 0, 'Tarea', 159, 'Participante'),
(13, 'Ha sido invitado como Responsable de la tarea fffffffffffffffff', 120, '2019-11-27 00:00:00', 0, 0, 'Tarea', 160, 'Responsable'),
(14, 'Ha sido invitado como Participante de la tarea fffffffffffffffff', 120, '2019-11-27 00:00:00', 1, 0, 'Tarea', 160, 'Participante'),
(15, 'Ha sido invitado como Observador de la tarea fffffffffffffffff', 120, '2019-11-27 00:00:00', 1, 0, 'Tarea', 160, 'Observador'),
(16, 'Ha sido invitado como Responsable a la reunión ggggggg', 120, '2019-11-27 00:00:00', 1, 0, 'Reunion', 63, 'Responsable'),
(17, 'Ha sido invitado como Participante a la reunión ggggggg', 120, '2019-11-27 00:00:00', 1, 0, 'Reunion', 63, 'Participante'),
(18, 'Ha sido invitado como Responsable a la reunión ultima nose, para confirmar su asistencia por favor revise su correo electrónico.', 120, '2019-11-27 00:00:00', 1, 0, 'Reunion', 64, 'Responsable'),
(19, 'Ha sido invitado como Participante a la reunión ultima nose, para confirmar su asistencia por favor revise su correo electrónico.', 120, '2019-11-27 00:00:00', 1, 0, 'Reunion', 64, 'Participante'),
(20, 'Ha sido invitado como Responsable de la tarea \"holo\"', 120, '2019-11-28 00:00:00', 1, 0, 'Tarea', 162, 'Responsable'),
(21, 'Ha sido invitado como Participante de la tarea \"holo\"', 117, '2019-11-28 00:00:00', 0, 0, 'Tarea', 162, 'Participante'),
(22, 'Ha sido invitado como Observador de la tarea \"holo\"', 117, '2019-11-28 00:00:00', 0, 0, 'Tarea', 162, 'Observador'),
(23, 'Ha sido invitado como Responsable de la tarea \"sss\"', 120, '2019-12-09 00:00:00', 0, 0, 'Tarea', 163, 'MisTareasResponsables'),
(24, 'Ha sido invitado como Participante de la tarea \"sss\"', 117, '2019-12-09 00:00:00', 0, 0, 'Tarea', 163, 'MisTareasParticipantes'),
(25, 'Ha sido invitado como Responsable de la tarea \"vencida\"', 120, '2019-12-08 00:00:00', 0, 0, 'Tarea', 164, 'MisTareasResponsables'),
(26, 'Ha sido invitado como Participante de la tarea \"vencida\"', 120, '2019-12-08 00:00:00', 0, 0, 'Tarea', 164, 'MisTareasParticipantes'),
(27, 'Ha sido invitado como Responsable a la reunión \"probando en casa\", para confirmar su asistencia por favor revise su correo electrónico.', 120, '2019-12-08 00:00:00', 0, 0, 'Reunion', 65, 'Responsable'),
(28, 'Ha sido invitado como Participante a la reunión \"probando en casa\", para confirmar su asistencia por favor revise su correo electrónico.', 120, '2019-12-08 00:00:00', 0, 0, 'Reunion', 65, 'Participante'),
(29, 'Ha sido invitado como Responsable de la tarea \"nuevamente\"', 120, '2019-12-12 00:00:00', 0, 0, 'Tarea', 166, 'MisTareasResponsables'),
(30, 'Ha sido invitado como Participante de la tarea \"nuevamente\"', 120, '2019-12-12 00:00:00', 0, 0, 'Tarea', 166, 'MisTareasParticipantes'),
(31, 'Ha sido invitado como Responsable a la reunión \"sad\", para confirmar su asistencia por favor revise su correo electrónico.', 120, '2019-12-12 00:00:00', 0, 0, 'Reunion', 69, 'Responsable'),
(32, 'Ha sido invitado como Participante a la reunión \"sad\", para confirmar su asistencia por favor revise su correo electrónico.', 120, '2019-12-12 00:00:00', 0, 0, 'Reunion', 69, 'Participante'),
(33, 'Ha sido invitado como Responsable de la tarea \"gfhf\"', 120, '2019-12-13 00:00:00', 0, 0, 'Tarea', 167, 'MisTareasResponsables'),
(34, 'Ha sido invitado como Participante de la tarea \"gfhf\"', 120, '2019-12-13 00:00:00', 0, 0, 'Tarea', 167, 'MisTareasParticipantes'),
(35, 'Ha sido invitado como Responsable de la tarea \"ssssss\"', 120, '2019-12-11 00:00:00', 0, 0, 'Tarea', 168, 'MisTareasResponsables'),
(36, 'Ha sido invitado como Participante de la tarea \"ssssss\"', 117, '2019-12-11 00:00:00', 0, 0, 'Tarea', 168, 'MisTareasParticipantes'),
(37, 'Ha sido invitado como Responsable de la tarea \"se\"', 120, '2019-12-11 00:00:00', 0, 0, 'Tarea', 169, 'MisTareasResponsables'),
(38, 'Ha sido invitado como Participante de la tarea \"se\"', 120, '2019-12-11 00:00:00', 0, 0, 'Tarea', 169, 'MisTareasParticipantes'),
(39, 'Ha sido invitado como Responsable de la tarea \"thrgh\"', 120, '2019-12-12 00:00:00', 0, 0, 'Tarea', 170, 'MisTareasResponsables'),
(40, 'Ha sido invitado como Participante de la tarea \"thrgh\"', 120, '2019-12-12 00:00:00', 1, 0, 'Tarea', 170, 'MisTareasParticipantes'),
(41, 'Ha sido invitado como Observador de la tarea \"thrgh\"', 120, '2019-12-12 00:00:00', 1, 0, 'Tarea', 170, 'MisTareasObservadores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `observacion`
--

CREATE TABLE `observacion` (
  `Id_Observacion` int(11) NOT NULL,
  `Descripcion` varchar(5000) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Id_Tarea` int(11) DEFAULT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  `ObservacionID` int(11) DEFAULT NULL,
  `tipo` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `observacion`
--

INSERT INTO `observacion` (`Id_Observacion`, `Descripcion`, `Id_Tarea`, `Id_Usuario`, `Fecha`, `ObservacionID`, `tipo`) VALUES
(47, 'Cuales son los campos de la base de datos', 77, 120, '2019-10-17 00:00:00', NULL, 'C'),
(48, 'Quien diseña la interfaz', 77, 120, '2019-10-17 00:00:00', NULL, 'C'),
(49, 'Se encuentra en git hub', 77, 120, '2019-10-17 00:00:00', 47, 'S'),
(50, 'Jose', 72, 120, '2019-10-17 00:00:00', NULL, 'C'),
(51, 'Que paso', 72, 120, '2019-10-17 00:00:00', 50, 'S'),
(52, 'fsdf', 72, 120, '2019-10-17 00:00:00', 50, 'S'),
(53, 'se vaaaaaaa', 72, 120, '2019-10-17 00:00:00', NULL, 'C'),
(54, 'kjfskd', 75, 120, '2019-10-17 00:00:00', NULL, 'C'),
(55, 'kjfskd', 75, 120, '2019-10-17 00:00:00', NULL, 'C'),
(56, 'kjfskd', 75, 120, '2019-10-17 00:00:00', NULL, 'C'),
(57, 'fd', 75, 120, '2019-10-17 00:00:00', 54, 'S'),
(58, 'kjfskd', 75, 120, NULL, NULL, 'C'),
(59, 'vdbvgbvgd', 75, 120, '2019-10-17 00:00:00', NULL, 'C'),
(60, 'vdbvgbvgd', 75, 120, NULL, NULL, 'C'),
(61, 'hhhh', 72, 120, '2019-10-17 00:00:00', 53, 'S'),
(62, 'jjjj', 72, 117, '2019-10-17 00:00:00', NULL, 'C'),
(63, 'jjjj', 72, 117, '2019-10-17 00:00:00', NULL, 'C'),
(64, 'si se va', 72, 117, '2019-10-17 00:00:00', 53, 'S'),
(65, 'kkkk', 75, 117, '2019-10-17 00:00:00', NULL, 'C'),
(66, 'yoo', 77, 117, '2019-10-17 00:00:00', 48, 'S'),
(67, 'git', 77, 117, '2019-10-17 00:00:00', NULL, 'C'),
(68, 'kfjdkfdfdkj', 72, 120, '2019-10-17 00:00:00', NULL, 'C'),
(69, 'jskfd', 72, 120, '2019-10-17 00:00:00', NULL, 'C'),
(70, 'bjhkl', 72, 120, '2019-10-17 00:00:00', NULL, 'C'),
(71, 'jklfd', 72, 120, '2019-10-17 00:00:00', NULL, 'C'),
(72, 'kjs', 72, 120, '2019-10-17 00:00:00', 50, 'S'),
(73, 'fs,fj', 72, 120, '2019-10-17 00:00:00', 50, 'S'),
(74, 'kldksldskdkls', 72, 120, '2019-10-27 12:42:53', NULL, 'C'),
(75, 'gfhdfghf', 86, 120, '2019-10-31 12:20:15', NULL, 'C'),
(76, 'cfghjk', 76, 120, '2019-10-31 17:12:55', NULL, 'C'),
(77, 'cgfvhjn', 76, 120, '2019-10-31 17:13:00', NULL, 'C'),
(78, 'soy edwin', 76, 117, '2019-10-31 17:28:29', NULL, 'C'),
(79, 'soy jose', 76, 120, '2019-10-31 17:28:52', NULL, 'C'),
(80, 'hjhjh', 76, 117, '2019-10-31 17:29:06', NULL, 'C'),
(81, 'jhghj', 76, 116, '2019-11-01 10:01:52', NULL, 'C'),
(82, 'jjj', 76, 116, '2019-11-01 10:02:01', NULL, 'C'),
(83, 'kjhgf', 98, 116, '2019-11-01 13:37:28', NULL, 'C'),
(84, 'grdgdfs', 101, 116, '2019-11-01 13:44:42', NULL, 'C'),
(85, 'siii el codigo q ya voy a completar el manual del programador', 104, 117, '2019-11-03 02:38:09', NULL, 'C'),
(86, 'SI YA MISMO TE SUBO LOS CAMBIOS DEJAME CORREGIR CIERTAS COSITAS Y YA', 104, 120, '2019-11-03 02:52:41', 85, 'S'),
(87, 'Expo sistema web, necesitamos pantalla', 113, 117, '2019-11-04 15:33:31', NULL, 'C'),
(88, 'KISTO', 113, 120, '2019-11-04 15:34:00', 87, 'S'),
(89, 'Segunda expo', 113, 117, '2019-11-04 15:34:40', NULL, 'C'),
(90, 'JKHKJDFHG', 115, 120, '2019-11-04 16:28:26', NULL, 'C'),
(91, 'Hola Ing', 115, 116, '2019-11-04 16:28:28', NULL, 'C'),
(92, 'Holaaaaaaaa ING FERNADNDO', 115, 117, '2019-11-04 16:28:59', NULL, 'C'),
(93, 'FDF', 115, 120, '2019-11-04 16:29:10', 92, 'S'),
(94, 'HGJJ', 116, 120, '2019-11-04 16:31:22', NULL, 'C'),
(95, 'jhk', 102, 120, '2019-11-06 01:37:40', NULL, 'C'),
(96, 'lklk', 102, 120, '2019-11-06 01:37:49', 95, 'S'),
(97, 'hola', 75, 120, '2019-11-07 05:35:04', NULL, 'C'),
(98, 'este es mi primero comentario espero les guste', 93, 117, '2019-11-07 05:39:33', NULL, 'C'),
(99, 'hola', 72, 120, '2019-11-07 05:40:57', NULL, 'C'),
(100, 'hola', 92, 117, '2019-11-07 05:41:47', NULL, 'C'),
(103, 'hola senior', 92, 120, '2019-11-07 05:59:52', NULL, 'C'),
(104, 'hola', 70, 120, '2019-11-07 06:15:06', NULL, 'C'),
(105, 'fue', 72, 120, '2019-11-07 06:35:21', 99, 'C'),
(106, 'nueva version', 75, 120, '2019-11-08 02:55:55', NULL, 'C'),
(107, 'hola2', 70, 120, '2019-11-08 03:05:27', NULL, 'C'),
(108, 'si puedo hacer un recomentario', 75, 120, '2019-11-08 04:10:30', NULL, 'C'),
(109, 'nada', 68, 116, '2019-11-02 00:00:00', NULL, NULL),
(110, 'hola', 75, 120, '2019-11-08 04:17:27', 54, 'S'),
(111, 'responder', 75, 120, '2019-11-08 04:51:16', 108, 'S'),
(112, 'hi', 75, 120, '2019-11-08 05:24:45', 54, 'S'),
(113, 'hola', 72, 120, '2019-11-08 05:29:05', 50, 'S'),
(114, 'hola', 72, 120, '2019-11-08 05:29:05', 50, 'S'),
(115, 'hola', 72, 120, '2019-11-08 05:29:05', 50, 'S'),
(116, 'hola', 93, 117, '2019-11-08 05:34:27', 98, 'S'),
(117, 'hola', 93, 117, '2019-11-08 05:34:27', 98, 'S'),
(118, 'hola', 93, 120, '2019-11-08 05:42:05', 98, 'S'),
(119, 'hola2', 93, 120, '2019-11-08 05:42:05', 98, 'S'),
(120, 'si se pudo', 86, 120, '2019-11-08 05:50:23', 75, 'S'),
(121, 'casate ayer', 75, 120, '2019-11-08 06:22:45', 54, 'S'),
(122, 'Primer observacion', 99, 120, '2019-11-08 06:37:39', NULL, 'C'),
(123, 'hola', 99, 120, '2019-11-08 06:38:54', NULL, 'C'),
(124, 'bien', 104, 120, '2019-11-08 06:41:37', 85, 'S'),
(125, 'asi es', 104, 120, '2019-11-08 06:57:11', NULL, 'C'),
(126, 'dsadsa', 133, 120, '2019-11-08 09:56:53', NULL, 'C'),
(127, 'hola', 105, 120, '2019-11-08 20:08:28', NULL, 'C'),
(128, 'hjfj', 136, 120, '2019-11-08 20:27:31', NULL, 'C'),
(129, 'jfgghj', 136, 120, '2019-11-08 20:27:39', 128, 'S'),
(130, 'mmmmmmmmmmmmmmmmmmm', 136, 120, '2019-11-09 01:22:37', NULL, 'C'),
(131, 'jjj', 136, 120, '2019-11-21 22:33:25', NULL, 'C'),
(132, 'kjkkjjjk', 136, 120, '2019-11-21 22:33:36', 131, 'S'),
(133, 'kjlñ', NULL, 120, '2019-11-24 19:02:06', NULL, 'C'),
(134, 'kjsdf', NULL, 120, '2019-11-24 19:05:42', NULL, 'C'),
(135, 'lklkllñkl', 133, 120, '2019-11-24 19:08:51', NULL, 'C'),
(136, 'kkkkkkkkkkkk', 133, 120, '2019-11-24 19:09:01', 135, 'S'),
(137, 'fasfa', 139, 120, '2019-11-25 11:52:42', NULL, 'C'),
(138, 'ffdfd', 139, 120, '2019-11-25 11:52:48', NULL, 'C'),
(139, 'jbhgfdgj', 133, 120, '2019-11-27 14:25:17', NULL, 'C'),
(140, 'oiipoi', 170, 120, '2020-01-29 16:04:15', NULL, 'C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `observacion_reunion`
--

CREATE TABLE `observacion_reunion` (
  `Id_observacion_reunion` int(11) NOT NULL,
  `Descripcion` varchar(5000) DEFAULT NULL,
  `Id_Reunion` int(11) DEFAULT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Observacion_ID` int(11) DEFAULT NULL,
  `Tipo` varchar(10) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `observacion_reunion`
--

INSERT INTO `observacion_reunion` (`Id_observacion_reunion`, `Descripcion`, `Id_Reunion`, `Id_Usuario`, `Observacion_ID`, `Tipo`, `Fecha`) VALUES
(1, 'fdsfdsfdsfdsa', 11, 120, NULL, 'C', '2019-10-31 00:00:00'),
(2, 'lllllllllll', 11, 120, 1, 'S', '2019-10-31 00:00:00'),
(3, 'fdsdfasdfsadfas', 11, 120, NULL, 'C', '2019-10-31 09:46:52'),
(4, 'ESTE ES MI COMENTARIOS', 11, 120, NULL, 'C', '2019-10-31 09:48:09'),
(5, 'ESTE TAMBIEN', 11, 120, NULL, 'C', '2019-10-31 09:48:20'),
(6, 'PROBANDO', 11, 120, NULL, 'C', '2019-10-31 09:54:28'),
(7, '123', 11, 120, 6, 'S', '2019-10-31 09:54:39'),
(8, '54', 11, 120, 6, 'S', '2019-10-31 09:54:46'),
(9, NULL, 11, 120, NULL, 'C', '2019-10-31 09:58:11'),
(10, 'PUEDO HACER UNA PREGUNTA', 12, 120, NULL, 'C', '2019-10-31 10:33:33'),
(11, 'SI DIGAME CON TODO GUSTO', 12, 120, 10, 'S', '2019-10-31 10:33:46'),
(12, 'QUE ES LA POO', 12, 120, 10, 'S', '2019-10-31 10:34:02'),
(13, 'BUENO PUES ES UNA PROGRAMACION ORIENTADA A OBJETOS', 12, 120, 10, 'S', '2019-10-31 10:34:24'),
(14, 'nbmnbvcx', 12, 120, NULL, 'C', '2019-10-31 10:38:11'),
(15, 'fds', 1, 120, NULL, 'C', '2019-10-31 11:31:52'),
(16, 'fsd', 1, 120, NULL, 'C', '2019-10-31 11:31:53'),
(17, 'lkjghfds', 9, 120, NULL, 'C', '2019-10-31 12:30:13'),
(18, 'gfds', 9, 120, NULL, 'C', '2019-10-31 12:30:17'),
(19, 'gdf', 9, 120, NULL, 'C', '2019-10-31 12:30:19'),
(20, 'gdfsgdfsg', 9, 120, 19, 'S', '2019-10-31 12:30:26'),
(21, NULL, 16, 117, NULL, 'C', '2019-11-03 01:46:47'),
(22, 'GFD', 1, 120, NULL, 'C', '2019-11-03 03:25:25'),
(23, 'GDGDF', 1, 120, 22, 'S', '2019-11-03 03:25:39'),
(24, 'yaaa', 16, 117, NULL, 'C', '2019-11-03 03:26:26'),
(25, 'esta aburrida la reunion', 17, 117, NULL, 'C', '2019-11-04 15:56:30'),
(26, 'esta aburrida', 24, 117, NULL, 'C', '2019-11-04 16:06:57'),
(27, 'HGJHJGHKJJK', 25, 120, NULL, 'C', '2019-11-04 16:35:22'),
(28, 'GFHGHJ', 25, 120, NULL, 'C', '2019-11-04 16:35:25'),
(29, NULL, 63, 120, NULL, 'C', '2019-11-27 23:49:11'),
(30, NULL, 63, 120, NULL, 'C', '2019-11-27 23:53:40'),
(31, 'hhhhh', 63, 120, NULL, 'C', '2019-11-28 00:07:50'),
(32, NULL, 63, 120, NULL, 'C', '2019-11-28 00:07:52'),
(33, NULL, 63, 120, NULL, 'C', '2019-11-28 00:08:42'),
(34, 'jhj', 63, 120, NULL, 'C', '2019-11-28 00:09:41'),
(35, 'kjkh', 63, 120, 29, 'S', '2019-11-28 00:12:53'),
(36, 'fsafsd', 63, 120, 33, 'S', '2019-11-28 00:17:42'),
(37, 'fs', 63, 120, 34, 'S', '2019-11-28 00:18:07'),
(38, 'nose', 63, 120, 29, 'S', '2019-11-28 00:22:27'),
(39, 'ya', 63, 120, 29, 'S', '2019-11-28 00:22:43'),
(40, 'si', 63, 120, 34, 'S', '2019-11-28 00:22:53'),
(41, 'lll', 63, 120, NULL, 'C', '2019-11-28 00:23:44'),
(42, 'kfjgkjdfgjskdf', 63, 120, 29, 'S', '2019-11-28 00:25:12'),
(43, 'ddddddd', 63, 120, 41, 'S', '2019-11-28 00:25:33'),
(44, 'fff', 63, 120, NULL, 'C', '2019-11-28 00:25:45'),
(45, 'jjj', 63, 120, 44, 'S', '2019-11-28 00:25:58'),
(46, 'ffff', 63, 120, 44, 'S', '2019-11-28 00:26:06'),
(47, 'fdgdgdf', 2, 120, NULL, 'C', '2019-12-08 00:02:16');

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
(36, 117, 70),
(37, 118, 71),
(39, 119, 73),
(59, 116, 75),
(60, 120, 75),
(61, 120, 72),
(62, 116, 94),
(63, 119, 74),
(66, 118, 97),
(68, 118, 77),
(69, 118, 76),
(70, 120, 76),
(71, 116, 98),
(72, 117, 98),
(73, 120, 99),
(74, 120, 100),
(76, 119, 101),
(77, 120, 101),
(78, 117, 102),
(80, 120, 115),
(81, 120, 134),
(83, 120, 135),
(84, 120, 91),
(85, 120, 155),
(86, 120, 156),
(87, 120, 157),
(88, 120, 158),
(89, 120, 159),
(90, 120, 160),
(91, 117, 162),
(101, 120, 164),
(102, 120, 170);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante_reunion_usuario`
--

CREATE TABLE `participante_reunion_usuario` (
  `Id_participante_reunion_usuario` int(11) NOT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Id_Reunion` int(11) DEFAULT NULL,
  `asistencia` int(11) DEFAULT NULL,
  `motivo` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `participante_reunion_usuario`
--

INSERT INTO `participante_reunion_usuario` (`Id_participante_reunion_usuario`, `Id_Usuario`, `Id_Reunion`, `asistencia`, `motivo`) VALUES
(2, 120, 1, 1, ''),
(3, 116, 1, 1, ''),
(4, 117, 1, 1, ''),
(5, 117, 8, 0, ''),
(6, 119, 8, 0, ''),
(7, 117, 9, 0, ''),
(8, 120, 9, 0, ''),
(9, 118, 10, 2, ''),
(10, 119, 10, 1, ''),
(11, 120, 10, 1, ''),
(12, 116, 11, 1, ''),
(13, 117, 11, 1, ''),
(14, 118, 11, 1, ''),
(15, 119, 11, 1, ''),
(16, 120, 11, 1, ''),
(17, 116, 12, 1, ''),
(18, 117, 12, 1, ''),
(19, 118, 12, 1, ''),
(20, 119, 12, 1, ''),
(21, 120, 12, 1, ''),
(22, 116, 16, 1, ''),
(23, 117, 16, 1, ''),
(24, 116, 17, 1, ''),
(25, 118, 17, 1, ''),
(26, 119, 17, 1, ''),
(27, 119, 22, 1, ''),
(28, 116, 23, 1, ''),
(29, 117, 23, 1, ''),
(30, 118, 23, 1, ''),
(31, 119, 23, 1, ''),
(32, 120, 23, 1, ''),
(33, 116, 24, 1, ''),
(34, 117, 24, 1, ''),
(35, 118, 24, 1, ''),
(36, 119, 24, 2, ''),
(37, 120, 24, 2, ''),
(38, 116, 25, 1, ''),
(39, 117, 25, 2, ''),
(40, 118, 25, 2, ''),
(41, 119, 25, 1, ''),
(52, 118, 2, 1, ''),
(53, 119, 2, 1, ''),
(54, 117, 26, 1, ''),
(55, 117, 27, 1, ''),
(56, 117, 28, 1, ''),
(57, 117, 29, 1, ''),
(58, 119, 30, 1, ''),
(59, 117, 31, 1, ''),
(60, 119, 32, 1, ''),
(61, 123, 33, 1, ''),
(62, 123, 37, 1, ''),
(63, 123, 38, 1, ''),
(64, 123, 39, 1, ''),
(65, 123, 40, 2, ''),
(66, 123, 42, 1, ''),
(67, 117, 44, 1, ''),
(68, 117, 45, 2, ''),
(69, 120, 46, 1, ''),
(70, 120, 47, 0, ''),
(71, 120, 48, 0, ''),
(72, 120, 49, 0, ''),
(73, 120, 50, 0, ''),
(74, 120, 51, 1, ''),
(75, 120, 52, 0, ''),
(76, 120, 53, 0, ''),
(77, 120, 54, 0, ''),
(78, 120, 58, 1, NULL),
(79, 120, 59, 0, 'porque me va a doler la cabeza'),
(80, 120, 60, 1, NULL),
(82, 120, 64, 2, NULL),
(83, 120, 63, 1, NULL),
(84, 120, 65, 0, NULL),
(85, 120, 69, 0, NULL);

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
(52, 70, 120),
(53, 71, 120),
(57, 73, 120),
(62, 78, 119),
(68, 75, 117),
(69, 75, 118),
(70, 72, 117),
(71, 72, 118),
(72, 72, 119),
(76, 94, 118),
(77, 74, 119),
(81, 97, 117),
(84, 77, 116),
(85, 77, 119),
(86, 76, 117),
(87, 76, 119),
(88, 98, 117),
(89, 98, 118),
(90, 98, 120),
(91, 99, 120),
(92, 100, 119),
(94, 101, 120),
(95, 102, 120),
(98, 108, 116),
(99, 108, 117),
(100, 104, 117),
(101, 104, 120),
(104, 115, 117),
(105, 115, 119),
(106, 116, 118),
(107, 134, 120),
(109, 135, 120),
(110, 91, 120),
(111, 155, 120),
(112, 156, 120),
(113, 157, 120),
(114, 158, 120),
(115, 159, 120),
(116, 160, 120),
(117, 162, 117),
(118, 163, 117),
(129, 164, 117),
(131, 167, 120),
(132, 168, 117),
(133, 169, 120),
(134, 170, 120);

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
(54, 70, 117),
(55, 71, 119),
(57, 73, 117),
(61, 78, 118),
(68, 75, 120),
(69, 72, 120),
(74, 82, 117),
(75, 81, 117),
(76, 92, 120),
(77, 93, 120),
(78, 94, 120),
(79, 86, 120),
(80, 74, 117),
(81, 74, 120),
(82, 87, 120),
(86, 97, 120),
(88, 77, 117),
(89, 77, 120),
(90, 76, 120),
(91, 98, 119),
(92, 98, 120),
(93, 99, 119),
(94, 99, 120),
(95, 100, 117),
(97, 101, 120),
(98, 102, 118),
(100, 108, 116),
(101, 111, 120),
(102, 104, 117),
(103, 104, 120),
(105, 114, 117),
(106, 113, 120),
(107, 115, 120),
(108, 116, 117),
(111, 134, 120),
(112, 133, 120),
(114, 136, 120),
(115, 139, 120),
(118, 141, 120),
(121, 142, 120),
(122, 140, 120),
(124, 145, 120),
(126, 152, 120),
(127, 153, 120),
(128, 135, 120),
(129, 154, 120),
(130, 109, 120),
(131, 91, 120),
(132, 155, 120),
(133, 156, 120),
(134, 157, 120),
(135, 158, 120),
(136, 159, 120),
(137, 160, 120),
(138, 161, 120),
(139, 162, 120),
(140, 163, 120),
(151, 164, 120),
(152, 165, 120),
(154, 167, 120),
(155, 168, 120),
(156, 169, 120),
(157, 170, 120);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responsable_reunion_usuario`
--

CREATE TABLE `responsable_reunion_usuario` (
  `Id_responsable_reunion_usuario` int(11) NOT NULL,
  `Id_Reunion` int(11) DEFAULT NULL,
  `Id_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `responsable_reunion_usuario`
--

INSERT INTO `responsable_reunion_usuario` (`Id_responsable_reunion_usuario`, `Id_Reunion`, `Id_Usuario`) VALUES
(1, 1, 120),
(2, 8, 116),
(3, 9, 118),
(4, 10, 119),
(5, 11, 118),
(6, 12, 119),
(7, 16, 116),
(8, 17, 117),
(9, 18, 116),
(10, 19, 119),
(11, 23, 117),
(12, 24, 117),
(13, 25, 120),
(19, 2, 120),
(20, 26, 120),
(21, 27, 120),
(22, 28, 120),
(23, 29, 120),
(24, 30, 120),
(25, 31, 120),
(26, 32, 120),
(27, 33, 120),
(28, 34, 120),
(29, 35, 120),
(30, 36, 120),
(31, 37, 120),
(32, 38, 120),
(33, 39, 120),
(34, 40, 120),
(35, 41, 120),
(36, 42, 120),
(37, 43, 120),
(38, 44, 120),
(39, 45, 120),
(40, 46, 119),
(41, 47, 119),
(42, 48, 119),
(43, 49, 119),
(44, 50, 118),
(45, 51, 119),
(46, 52, 119),
(47, 53, 119),
(48, 54, 119),
(49, 55, 119),
(50, 56, 119),
(51, 57, 119),
(52, 58, 119),
(53, 59, 117),
(54, 60, 117),
(55, 61, 120),
(56, 62, 120),
(58, 64, 120),
(59, 63, 120),
(60, 65, 120),
(61, 69, 120);

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
  `Tema` varchar(450) NOT NULL,
  `Orden_del_Dia` text NOT NULL,
  `Estado` varchar(450) NOT NULL,
  `FechaCreacion` datetime DEFAULT NULL,
  `Lugar` varchar(450) DEFAULT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `FechadeReunion` date DEFAULT NULL,
  `HoraReunion` time DEFAULT NULL,
  `Conclusion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reunion`
--

INSERT INTO `reunion` (`Id_Reunion`, `Tema`, `Orden_del_Dia`, `Estado`, `FechaCreacion`, `Lugar`, `Id_Usuario`, `FechadeReunion`, `HoraReunion`, `Conclusion`) VALUES
(1, 'Hola', 'kjdsfhgijdf', 'Terminada', '0000-00-00 00:00:00', 'fds', 120, '0000-00-00', '00:00:00', 'si fiodsjfljasldkjfadskonfads\nfadsf\nadsf\nasd\nfsd\nf\nds'),
(2, 'jfnd', 'fsd', 'Terminada', NULL, 'kl', 120, '2019-11-22', '07:08:00', 'kjklkj,mkn'),
(3, 'fadsf', 'fsadf', 'Pendiente', '2019-10-30 00:00:00', 'fasdf', 120, '2019-10-30', '01:12:00', ''),
(4, 'fsd', 'fsd', 'Pendiente', '2019-10-30 01:16:20', 'fsd', 120, '2019-10-30', '01:16:00', ''),
(5, 'nbjhk', 'kj', 'Pendiente', '2019-10-30 01:22:40', 'kj', 120, '2019-10-30', '01:56:00', ''),
(6, 'jklkjlk', 'kj', 'Pendiente', '2019-10-30 01:23:32', 'kk', 120, '2019-10-30', '02:06:00', ''),
(7, 'fdsg', 'fsd', 'Pendiente', '2019-10-30 01:25:30', 'fdsf', 120, '2019-10-30', '01:25:00', ''),
(8, 'kjl', 'kl', 'Pendiente', '2019-10-30 01:28:21', 'lk', 120, '2019-10-30', '01:45:00', ''),
(9, 'SUSTENTACION', 'PRESENTAR\nEXPONER\nPREGUNTAS', 'Pendiente', '2019-10-30 03:54:40', 'ESPAM MEFL', 120, '2019-10-30', '03:56:51', ''),
(10, 'esta si', 'fhas\ngsdfg\ngs\ngsd', 'Pendiente', '2019-10-30 21:30:48', 'calceta', 120, '2019-10-30', '21:30:28', ''),
(11, 'kl', 'k', 'Pendiente', '2019-10-30 22:59:51', 'k', 120, '2019-10-30', '22:59:34', ''),
(12, 'REUNION DE DOCENTES', '1. Presentarse\n2. Exponer\n3. Cantar\n4. IR a comer', 'Pendiente', '2019-10-31 10:03:13', 'ESPAM', 120, '2019-10-31', '10:03:15', ''),
(13, 'dsa', 'dasd\ndasd', 'Pendiente', '2019-10-31 10:12:18', 'das', 120, '2019-10-31', '10:12:09', ''),
(14, 'gdfs', 'gdfs\ngds\ngdsf', 'Pendiente', '2019-10-31 10:12:38', 'gds', 120, '2019-10-31', '10:12:33', ''),
(15, 'ter', 'gfd\ngdf\ngdf\ng\ndfg', 'Pendiente', '2019-10-31 10:19:21', 't', 120, '2019-10-31', '10:19:14', ''),
(16, 'Nueva reunion', 'Revisar tesis con el Ing. Joffre', 'Pendiente', '2019-11-03 01:43:50', 'Portoviejo', 117, '2019-11-04', '01:45:08', ''),
(17, 'Otra reunion', 'nueva fecha de reunion', 'Terminada', '2019-11-03 01:48:55', 'Calceta', 117, '2019-11-04', '01:48:14', 'En resumen no se va a permitir el ingreso de menores de edad a esta sala.'),
(18, 'jj', 'h', 'Pendiente', '2019-11-03 03:34:11', 'n', 120, '2019-11-04', '02:33:41', ''),
(19, 'SD', 'FDS', 'Pendiente', '2019-11-03 03:37:09', 'FSD', 120, '2019-11-03', '03:37:31', ''),
(20, 'TEMAAAAAAAA', 'FDFDG', 'Pendiente', '2019-11-12 00:00:00', 'GFDG', 119, '2019-11-06', '04:22:24', 'FHSJDBFMDSBMFN'),
(21, 'kjfasfdkjads', 'fdsfds', 'Pendiente', NULL, NULL, 120, NULL, NULL, NULL),
(22, 'Hola', 'kfjdsf', 'Pendiente', '2019-11-04 16:02:26', 'vndm,nv', 117, '2019-11-04', '17:02:12', NULL),
(23, 'Presentar tesis', '1. Ir a la casa del Ing. Joffre Moreira', 'Pendiente', '2019-11-04 16:03:06', 'Portoviejo', 117, '2019-11-04', '17:02:32', NULL),
(24, 'Tribunal', '1. Llegar a la casa\n2. Abrir compu\n3. Mostrar sistema\n4. Mostrar informe', 'Pendiente', '2019-11-04 16:06:06', 'Calceta', 117, '2019-11-04', '17:04:44', NULL),
(25, 'SKYPE', 'VIDEOLLAMA', 'Terminada', '2019-11-04 16:34:22', 'PORTOVIEJO', 120, '2019-11-04', '17:33:43', 'BGFHGHKJHGGSFDFGJHKJHJGVCGFDGFGJGJFGGJH'),
(26, 'probando confiramcion', 'djslakdjsakjl', 'Pendiente', '2019-11-25 19:16:25', 'calceta', 120, '2019-11-25', '20:15:39', NULL),
(27, 'prueba 2', 'kldsj', 'Pendiente', '2019-11-25 19:20:21', 'casa', 120, '2019-11-25', '20:20:08', NULL),
(28, 'prueba 3', 'jkas', 'Pendiente', '2019-11-25 19:27:54', 'sj', 120, '2019-11-25', '20:27:39', NULL),
(29, 'prueaba 4', 'calce', 'Pendiente', '2019-11-25 19:34:46', 'kldsf', 120, '2019-11-25', '20:34:30', NULL),
(30, 'prueba 4', 'kjlfsd', 'Pendiente', '2019-11-25 19:37:22', 'jfsjl', 120, '2019-11-25', '20:37:11', NULL),
(31, 'prueba 5', 'kldfjfkjldsf', 'Pendiente', '2019-11-25 19:46:06', 'jfldsjkl', 120, '2019-11-25', '20:45:51', NULL),
(32, 'pruyeba 6', 'jkldsf', 'Pendiente', '2019-11-25 20:32:26', 'jlksdf', 120, '2019-11-25', '21:32:13', NULL),
(33, 'prueba7', 'fs', 'Pendiente', '2019-11-25 20:33:27', 'fds', 120, '2019-11-25', '21:33:16', NULL),
(34, 'prueba 8', 'jklfsd', 'Pendiente', '2019-11-25 20:34:18', 'sfjdsk', 120, '2019-11-25', '21:34:07', NULL),
(35, 'prueba 8', 'jklfsd', 'Pendiente', '2019-11-25 20:34:29', 'sfjdsk', 120, '2019-11-25', '21:34:07', NULL),
(36, 'prueba 8', 'jklfsd', 'Pendiente', '2019-11-25 20:34:42', 'sfjdsk', 120, '2019-11-25', '21:34:07', NULL),
(37, 'prueba 8', 'jklfsd', 'Pendiente', '2019-11-25 20:36:10', 'sfjdsk', 120, '2019-11-25', '21:34:07', NULL),
(38, 'prueba 8', 'jklfsd', 'Pendiente', '2019-11-25 20:36:24', 'sfjdsk', 120, '2019-11-25', '21:34:07', NULL),
(39, 'prueba 9', 'fsd', 'Pendiente', '2019-11-25 20:38:22', 'fsds', 120, '2019-11-25', '21:38:11', NULL),
(40, 'prueba 9', 'fsd', 'Pendiente', '2019-11-25 20:39:08', 'fsds', 120, '2019-11-25', '21:38:11', NULL),
(41, 'prueba 9', 'fsd', 'Pendiente', '2019-11-25 20:44:22', 'fsds', 120, '2019-11-25', '21:38:11', NULL),
(42, 'prueba 9', 'fsd', 'Pendiente', '2019-11-25 20:44:49', 'fsds', 120, '2019-11-25', '21:38:11', NULL),
(43, 'das', 'das', 'Pendiente', '2019-11-25 20:50:40', 'das', 120, '2019-11-25', '21:47:32', NULL),
(44, 'MODULO DE REUNION', 'JOFDS\nFSDF\nDSF', 'Pendiente', '2019-11-25 21:04:20', 'ESPAM MFL', 120, '2019-11-25', '22:03:49', NULL),
(45, 'jugando', 'fsdf', 'Pendiente', '2019-11-25 21:09:45', 'fsdf', 120, '2019-11-25', '22:09:30', NULL),
(46, 'ddasdsa', 'das', 'Pendiente', '2019-11-25 21:16:46', 'das', 120, '2019-11-25', '22:16:34', NULL),
(47, 'dsdsdsdsd', 'ds', 'Pendiente', '2019-11-25 21:22:23', 'dsd', 120, '2019-11-25', '22:21:10', NULL),
(48, 'fdsf', 'fs', 'Pendiente', '2019-11-25 21:23:04', 'fsd', 120, '2019-11-25', '22:22:54', NULL),
(49, 'ddddd', 'dd', 'Pendiente', '2019-11-25 21:26:03', 'ddd', 120, '2019-11-25', '22:25:54', NULL),
(50, 'aaaaaaaa', 'aaaaa', 'Pendiente', '2019-11-25 21:27:03', 'aaaaaaa', 120, '2019-11-25', '22:26:54', NULL),
(51, 'fffffffff', 'fffffffffff', 'Pendiente', '2019-11-25 21:27:56', 'fffffffffffff', 120, '2019-11-25', '22:27:48', NULL),
(52, 'FFFFFF', 'FFFFF', 'Pendiente', '2019-11-25 23:16:07', 'FFFFFFFF', 120, '2019-11-26', '12:15:30', NULL),
(53, 'vvvvvvvv', 'vvvvvvvvvvvv', 'Pendiente', '2019-11-25 23:31:36', 'vvvvvvvv', 120, '2019-11-25', '23:33:18', NULL),
(54, 'qqqqqqq', 'qqqqqqq', 'Pendiente', '2019-11-25 23:35:38', 'qq', 120, '2019-11-25', '23:37:15', NULL),
(55, 'xxx', 'xx', 'Pendiente', '2019-11-25 23:50:22', 'xx', 120, '2019-11-25', '23:51:32', NULL),
(56, 'xxx', 'xx', 'Pendiente', '2019-11-25 23:50:40', 'xx', 120, '2019-11-25', '23:51:32', NULL),
(57, 'xxx', 'xx', 'Pendiente', '2019-11-25 23:52:23', 'xx', 120, '2019-11-25', '23:54:32', NULL),
(58, 'xxx', 'xx', 'Pendiente', '2019-11-25 23:53:22', 'xx', 120, '2019-11-25', '23:54:32', NULL),
(59, 'probando con edwin', 'jdask\nfdsf\ndsf\nds', 'Pendiente', '2019-11-26 10:04:19', 'calceta', 120, '2019-11-26', '11:03:53', NULL),
(60, 'ultima prueba', 'fsd', 'Pendiente', '2019-11-26 19:32:04', 'fsfd', 120, '2019-11-26', '20:31:49', NULL),
(61, 'dddd', 'ddd', 'Pendiente', '2019-11-27 16:13:27', 'ddd', 120, '2019-11-27', '16:34:13', NULL),
(62, 'dddd', 'ddd', 'Pendiente', '2019-11-27 16:13:36', 'ddd', 120, '2019-11-27', '16:34:13', NULL),
(63, 'ggggggg', 'gggggggggg', 'Suspendida', '2019-11-27 16:16:38', 'ggggggggggg', 120, '2019-11-27', '16:34:24', NULL),
(64, 'ultima nose', 'fsdfs', 'Terminada', '2019-11-27 16:27:51', 'kjfsdf', 120, '2019-11-27', '17:27:34', 'se ddetallas los fdlskjflkdsjfklsdj dfkdsljfsldkjfkods fsdfjsdklfds fdsklfjdslkfjskl'),
(65, 'probando en casa', 'jjodjoasi', 'Pendiente', '2019-12-08 13:31:34', 'calceta', 120, '2019-12-08', '14:31:02', NULL),
(69, 'sad', 'fds', 'Pendiente', '2019-12-11 22:49:03', 'fds', 120, '2019-12-12', '22:48:42', NULL);

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
(13, 'Enfermero', 1, 2),
(14, 'Secretario', 2, 1),
(15, 'Técnico', 5, 1),
(16, 'Programador', 5, 1),
(17, 'Tester', 5, 1),
(18, 'Cardiólogo', 6, 2),
(19, 'Neurólogo', 5, 2),
(27, 'jjh', 6, NULL);

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
(1, 'Dirección administrativa', 23),
(2, 'Triaje', 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE `tarea` (
  `Id_tarea` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Estado_Tarea` varchar(450) COLLATE latin1_danish_ci NOT NULL,
  `Id_Tipo_Tarea` int(11) NOT NULL,
  `Nombre` varchar(100) CHARACTER SET latin1 NOT NULL,
  `FechaInicio` date NOT NULL,
  `Hora_Inicio` time DEFAULT NULL,
  `FechaFin` date NOT NULL,
  `Hora_Fin` time DEFAULT NULL,
  `FechaCreacion` datetime NOT NULL,
  `Descripcion` varchar(60000) CHARACTER SET latin1 NOT NULL,
  `tareaFavorita` int(11) DEFAULT NULL,
  `tareasIdTareas` int(11) DEFAULT NULL,
  `tip_tar` varchar(1) COLLATE latin1_danish_ci DEFAULT NULL,
  `FechaEntrega` datetime DEFAULT NULL,
  `estadoVencida` varchar(45) COLLATE latin1_danish_ci DEFAULT 'false',
  `estadoEliminar` varchar(45) COLLATE latin1_danish_ci DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_danish_ci;

--
-- Volcado de datos para la tabla `tarea`
--

INSERT INTO `tarea` (`Id_tarea`, `Id_Usuario`, `Estado_Tarea`, `Id_Tipo_Tarea`, `Nombre`, `FechaInicio`, `Hora_Inicio`, `FechaFin`, `Hora_Fin`, `FechaCreacion`, `Descripcion`, `tareaFavorita`, `tareasIdTareas`, `tip_tar`, `FechaEntrega`, `estadoVencida`, `estadoEliminar`) VALUES
(68, 120, 'Terminada', 5, 'Realizar Organigram', '2019-09-30', '16:59:00', '2019-10-05', '16:59:00', '2019-09-06 00:00:00', 'Deben incluir las áreas y subareas en la APP MOVIL', 1, NULL, 'T', NULL, 'false', 'false'),
(69, 120, 'Terminada', 5, 'Sub Organigrama', '2019-09-30', '05:01:00', '2019-09-30', '05:01:00', '2019-09-06 00:00:00', 'Trabajar', 1, 68, 'S', NULL, 'false', 'false'),
(70, 120, 'Terminada', 4, 'Tarea2', '2019-09-30', '17:02:00', '2019-09-30', '17:02:00', '2019-09-06 00:00:00', 'Trabajar', 1, NULL, 'T', NULL, 'true', 'false'),
(71, 120, 'Terminada', 5, 'hgff', '2019-10-10', '10:39:00', '2019-10-10', '10:39:00', '2019-09-06 00:00:00', 'fds', 1, 73, 'S', NULL, 'false', 'false'),
(72, 120, 'Terminada', 5, 'REUNION CON EL EQUIPO', '2019-10-17', '02:31:00', '2019-10-24', '15:22:00', '2019-09-06 00:00:00', 'REUNIRSE EL LUNES', 1, NULL, 'T', NULL, 'false', 'false'),
(73, 120, 'Terminada', 5, 'Roles', '2019-10-14', '11:08:00', '2019-10-14', '11:08:00', '2019-09-06 00:00:00', 'Tratar los roles de los empleados', 1, 72, 'S', NULL, 'false', 'false'),
(74, 120, 'Terminada', 5, 'ree', '2019-10-14', '11:10:00', '2019-10-14', '11:10:00', '2019-09-06 00:00:00', 'fds', 1, 73, 'S', NULL, 'false', 'false'),
(75, 120, 'Terminada', 5, 'x', '2019-10-14', '11:13:00', '2019-10-14', '11:13:00', '2019-09-06 00:00:00', 'x', 1, 74, 'S', NULL, 'false', 'false'),
(76, 120, 'Terminada', 5, 'LIMPIAR AIRE ACONDICIONADOS', '2019-10-15', '18:00:00', '2019-11-16', '18:00:00', '2019-09-06 00:00:00', 'El area de docentes', 1, NULL, 'T', '2019-11-07 00:00:00', 'false', 'false'),
(77, 120, 'Terminada', 5, 'PROGRAMAR EL MODULO DE REUNION', '2019-10-17', '08:00:00', '2019-10-30', '18:00:00', '2019-09-06 00:00:00', 'PRESENTARLE A JOFFRE EL DIA 30 DE OCTUBRE', 1, NULL, 'T', NULL, 'false', 'false'),
(78, 120, 'Terminada', 5, 'kldfdkld', '2019-10-26', '03:42:00', '2019-11-26', '03:02:00', '2019-09-06 00:00:00', 'kjd', 1, NULL, 'T', NULL, 'false', 'false'),
(79, 117, 'Terminada', 4, 'tarea personal', '2019-10-25', '12:27:00', '2019-10-27', '13:00:00', '2019-09-06 00:00:00', 'hhhh', 1, NULL, 'T', NULL, 'true', 'false'),
(80, 117, 'Terminada', 2, 'tarea personal', '2019-10-25', '12:27:00', '2019-10-27', '13:00:00', '2019-09-06 00:00:00', 'hhhh', 1, NULL, 'T', NULL, 'true', 'false'),
(81, 117, 'Terminada', 5, 'PROBANDO TAREAS', '2019-01-20', '03:01:00', '2019-01-30', '16:01:00', '2019-09-06 00:00:00', 'aki probando esto', 1, 79, 'S', NULL, 'false', 'false'),
(82, 117, 'Terminada', 2, 'NUEVA TAREA', '2019-02-20', '07:04:00', '2019-03-21', '05:02:00', '2019-09-06 00:00:00', 'FSDFDF', 1, NULL, 'T', NULL, 'true', 'false'),
(83, 117, 'Terminada', 2, 'fdgfd', '2019-10-27', '12:39:00', '2019-10-27', '12:39:00', '2019-09-06 00:00:00', 'gdfg', 1, 82, 'S', NULL, 'true', 'false'),
(84, 117, 'Terminada', 2, 'ggg', '2019-10-27', '12:41:00', '2019-10-27', '12:41:00', '2019-09-06 00:00:00', 'gggg', 1, 83, 'S', NULL, 'true', 'false'),
(85, 120, 'Terminada', 5, 'KNJ', '2019-10-27', '02:01:00', '2019-10-27', '15:32:00', '2019-09-06 00:00:00', 'KJKJ', 1, 76, 'S', '2019-11-07 00:00:00', 'true', 'false'),
(86, 120, 'Terminada', 5, 'KKKKKKKK', '2019-10-27', '05:06:00', '2019-10-27', '18:07:00', '2019-09-06 00:00:00', 'KKKKKK', 1, 72, 'S', NULL, 'false', 'false'),
(87, 120, 'Terminada', 5, 'kjhjhkj', '2019-10-27', '12:19:00', '2019-10-27', '12:19:00', '2019-09-06 00:00:00', 'nmk', 1, 77, 'S', NULL, 'true', 'false'),
(88, 120, 'Terminada', 5, 'nose q pone', '2019-10-27', '03:21:00', '2019-01-27', '03:02:00', '2019-10-27 00:00:00', 'kfmdlk', 1, NULL, 'T', NULL, 'true', 'false'),
(89, 120, 'Terminada', 5, 'hgfh', '2019-07-27', '14:20:05', '2019-10-27', '14:20:05', '2019-10-27 00:00:00', 'gdfg', 1, NULL, 'T', NULL, 'true', 'false'),
(90, 120, 'Terminada', 5, 'j', '2019-10-27', '15:33:00', '2019-10-27', '15:33:27', '2019-10-27 00:00:00', 'j', 1, NULL, 'T', NULL, 'true', 'false'),
(91, 120, 'Terminada', 5, 'fds', '2019-11-11', '15:36:00', '2019-11-28', '15:37:00', '2019-10-27 00:00:00', 'fs', 1, NULL, 'T', '2019-11-28 00:40:44', 'false', 'false'),
(92, 117, 'Terminada', 5, 'fds', '2019-10-28', '00:41:04', '2019-10-28', '00:41:04', '2019-10-28 00:00:00', 'fds', 1, 81, 'S', NULL, 'false', 'false'),
(93, 117, 'Terminada', 5, 'fsdf', '2019-10-28', '00:42:55', '2019-10-28', '00:42:55', '2019-10-28 00:00:00', 'fsdf', 1, 81, 'S', NULL, 'false', 'false'),
(94, 117, 'Terminada', 5, 'fdsfdsfs', '2019-10-28', '00:45:37', '2019-10-28', '00:45:37', '2019-10-28 00:00:00', 'fsdf', 1, 81, 'S', NULL, 'false', 'false'),
(95, 117, 'Terminada', 5, 'tarea vencida', '2019-10-28', '12:10:15', '2019-10-28', '12:21:15', '2019-10-28 00:00:00', 'fdsfdf', 1, 82, 'S', NULL, 'true', 'false'),
(96, 117, 'Terminada', 5, 'tareaaaaaa  vencida 2', '2019-10-28', '11:24:18', '2019-10-29', '11:24:18', '2019-10-28 00:00:00', 'cdcdsdf', 1, NULL, 'T', NULL, 'true', 'false'),
(97, 120, 'Terminada', 5, 'nnn', '2019-10-31', '16:20:57', '2019-10-31', '16:20:57', '2019-10-31 00:00:00', 'nk', 1, 72, 'S', NULL, 'false', 'false'),
(98, 116, 'Terminada', 5, 'jhgfdss', '2019-11-01', '13:34:52', '2019-11-01', '13:43:52', '2019-11-01 00:00:00', 'gfds', 1, NULL, 'T', NULL, 'true', 'false'),
(99, 116, 'Terminada', 5, 'jose nose', '2019-11-01', '13:38:40', '2019-11-01', '13:38:40', '2019-11-01 00:00:00', 'fsadfasdf', 1, NULL, 'T', NULL, 'true', 'false'),
(100, 116, 'Terminada', 5, 'jhgfds', '2019-11-01', '13:39:20', '2019-11-01', '13:39:20', '2019-11-01 00:00:00', 'gdgd', 1, NULL, 'T', NULL, 'true', 'false'),
(101, 116, 'Terminada', 5, 'esta si vale', '2019-11-03', '13:59:26', '2019-11-04', '13:41:26', '2019-11-01 00:00:00', 'hgfdd', 1, NULL, 'T', NULL, 'true', 'false'),
(102, 116, 'Terminada', 5, 'sub', '2019-11-01', '13:59:44', '2019-11-01', '13:59:44', '2019-11-01 00:00:00', 'fsfs', 1, 101, 'S', NULL, 'true', 'false'),
(103, 120, 'Terminada', 5, 'fds', '2019-11-04', '01:17:08', '2019-11-06', '01:17:08', '2019-11-03 00:00:00', 'fds', 1, NULL, 'T', NULL, 'true', 'false'),
(104, 120, 'Terminada', 5, 'PROBANDO CON EDWIN', '2019-11-04', '02:34:52', '2019-11-05', '02:34:52', '2019-11-03 00:00:00', 'ESTA TAREA ES DE PRUEBA YA MISMO TE SUBO LOS CAMBIOS PILAS EDWIN', 1, NULL, 'T', NULL, 'true', 'false'),
(105, 120, 'Terminada', 4, 'psaraj', '2019-11-03', '04:19:08', '2019-11-03', '04:19:08', '2019-11-03 00:00:00', 'fds', 1, NULL, 'T', NULL, 'false', 'false'),
(106, 120, 'Terminada', 5, 'tarea personal jose', '2019-11-04', '04:20:23', '2019-11-05', '04:20:23', '2019-11-03 00:00:00', 'jfkdfjsd', 1, NULL, 'T', NULL, 'false', 'false'),
(107, 120, 'Terminada', 5, 'ew', '2019-11-04', '04:31:56', '2019-12-03', '04:31:56', '2019-11-03 00:00:00', 'ds', 1, NULL, 'T', NULL, 'true', 'false'),
(108, 117, 'Terminada', 5, 'Prueba tarea caducada', '2019-11-04', '14:10:44', '2019-11-04', '14:12:44', '2019-11-04 00:00:00', 'Probando tarea', 1, NULL, 'T', NULL, 'true', 'false'),
(109, 120, 'Terminada', 4, 'PROGRAMAR EN EL PARQUE LA ROTONDA', '2019-11-04', '15:00:00', '2019-11-04', '16:00:00', '2019-11-04 00:00:00', 'PRESENTÁNDOLE LA TESIS AL ING JOFFRE', 1, NULL, 'T', NULL, 'false', 'false'),
(110, 120, 'Terminada', 4, 'ultima prueba', '2019-11-04', '15:32:25', '2019-11-04', '16:32:25', '2019-11-04 00:00:00', '13ejkglskdgjdf', 1, NULL, 'T', NULL, 'true', 'false'),
(111, 120, 'Terminada', 4, 'llll', '2019-11-04', '15:37:06', '2019-11-04', '15:37:06', '2019-11-04 00:00:00', 'hh', 1, NULL, 'T', NULL, 'true', 'false'),
(112, 116, 'Terminada', 4, 'Tarea persona EDWIN', '2019-11-04', '14:38:02', '2019-11-04', '14:39:02', '2019-11-04 00:00:00', 'PROBANDO TAREAS PERSONALES', 1, NULL, 'T', NULL, 'true', 'false'),
(113, 120, 'Terminada', 5, 'PRESENTACION SISTEMA', '2019-11-04', '15:45:25', '2019-11-04', '16:31:25', '2019-11-04 00:00:00', 'EXPONIENDO', 1, NULL, 'T', NULL, 'true', 'false'),
(114, 120, 'Terminada', 5, 'SUB PRESENTACION', '2019-11-04', '15:56:34', '2019-11-04', '17:03:34', '2019-11-04 00:00:00', 'PRESENTANDO', 1, 113, 'S', NULL, 'true', 'false'),
(115, 120, 'Terminada', 5, 'VIDEOLLAMADA CON EL ING', '2019-11-04', '17:25:34', '2019-11-04', '18:25:34', '2019-11-04 00:00:00', 'PRESENTANDO TESIS', 1, NULL, 'T', NULL, 'false', 'false'),
(116, 120, 'Terminada', 5, 'SUB VIDEOLLAMADA', '2019-11-04', '17:26:58', '2019-11-04', '17:30:58', '2019-11-04 00:00:00', 'SUBTAREA', 1, 115, 'S', NULL, 'false', 'false'),
(119, 118, 'Terminada', 4, 'oe', '2019-11-05', '13:15:00', '2019-11-05', '15:15:00', '2019-11-05 00:00:00', 'oe', NULL, NULL, 'T', NULL, 'true', 'false'),
(120, 118, 'Terminada', 4, 'ey', '2019-11-05', '13:16:00', '2019-11-05', '13:16:00', '2019-11-05 00:00:00', 'ey', NULL, NULL, 'T', NULL, 'false', 'false'),
(123, 118, 'Terminada', 4, 'Vamos', '2019-11-08', '04:00:00', '2019-11-14', '03:00:00', '2019-11-08 00:00:00', 'esta tareas es mia', NULL, NULL, 'T', NULL, 'false', 'false'),
(124, 118, 'Terminada', 4, 'Josetupadre', '2019-11-15', '08:17:00', '2019-11-21', '05:00:00', '2019-11-12 00:00:00', 'vamos a ver si ingresa', NULL, NULL, 'T', NULL, 'false', 'false'),
(125, 118, 'Terminada', 4, 'Vamos', '2019-11-15', '06:00:00', '2019-11-22', '09:00:00', '2019-11-04 00:00:00', 'vamo a darle', NULL, NULL, 'T', NULL, 'false', 'false'),
(127, 118, 'Terminada', 4, 'Cantar en chone', '2019-11-05', '01:21:00', '2019-11-05', '02:22:00', '2019-11-05 00:00:00', 'ir a chone a cantar', NULL, NULL, 'T', NULL, 'true', 'false'),
(128, 118, 'Terminada', 4, 'Ultima tarea', '2019-11-05', '13:45:00', '2019-11-05', '13:45:00', '2019-11-05 00:00:00', 'banar a lucio', NULL, NULL, 'T', NULL, 'true', 'false'),
(129, 118, 'Terminada', 4, 'c3', '2019-11-05', '14:56:00', '2019-11-05', '14:57:00', '2019-11-05 00:00:00', 'c2', NULL, NULL, 'T', NULL, 'true', 'false'),
(130, 118, 'Terminada', 4, 'hola', '2019-11-05', '13:27:00', '2019-11-05', '13:27:00', '2019-11-05 00:00:00', 'como', NULL, NULL, 'T', NULL, 'true', 'false'),
(131, 118, 'Terminada', 4, 'casa', '2019-11-05', '17:41:00', '2019-11-05', '17:41:00', '2019-11-05 00:00:00', 'dia', NULL, NULL, 'T', NULL, 'true', 'false'),
(132, 118, 'Terminada', 4, 'seguir programando', '2019-11-07', '07:00:00', '2019-12-07', '17:00:00', '2019-11-07 00:00:00', 'crear los modulos', NULL, NULL, 'T', NULL, 'true', 'false'),
(133, 120, 'Terminada', 4, 'seguir programando', '2019-11-07', '08:00:00', '2019-12-07', '17:00:00', '2019-11-07 00:00:00', 'vamos a darle', NULL, NULL, 'T', NULL, 'true', 'false'),
(134, 120, 'Terminada', 5, 'jose', '2019-11-07', '11:54:22', '2019-11-07', '14:52:22', '2019-11-07 00:00:00', 'dasd', 1, NULL, 'T', NULL, 'true', 'false'),
(135, 120, 'Terminada', 5, 'PRobando fecha Inicio', '2019-11-09', '01:05:01', '2019-11-11', '12:14:01', '2019-11-08 00:00:00', 'das', 1, NULL, 'T', NULL, 'true', 'false'),
(136, 120, 'Pendiente', 4, 'FSD', '2019-11-08', '14:50:43', '2019-12-27', '14:47:43', '2019-11-08 00:00:00', 'FSD', 1, 133, 'S', NULL, 'false', 'false'),
(137, 120, 'Terminada', 4, 'ir a chone', '2019-11-08', '19:58:00', '2019-11-09', '19:58:00', '2019-11-08 00:00:00', 'viajar en carro a la ciudad de chone', NULL, 70, 'S', NULL, 'true', 'false'),
(138, 120, 'Terminada', 4, 'aws', '2019-11-08', '20:09:00', '2019-11-08', '20:09:00', '2019-11-08 00:00:00', 'es un servicio de servidores', NULL, 105, 'S', NULL, 'true', 'false'),
(139, 120, 'Terminada', 5, 'aaaaaa', '2019-11-08', '15:36:00', '2019-12-31', '15:33:00', '2019-11-08 00:00:00', 'sssssss', 1, 133, 'S', '2019-11-25 11:53:15', 'false', 'false'),
(140, 120, 'Terminada', 5, 'hhhhhhhhh', '2019-11-08', '15:45:03', '2019-12-07', '15:37:03', '2019-11-08 00:00:00', 'ffff', 1, 133, 'S', '2019-11-28 00:41:13', 'false', 'false'),
(141, 120, 'Terminada', 4, 'fffff', '2019-11-08', '15:43:30', '2019-11-08', '15:43:30', '2019-11-08 00:00:00', 'fffffff', 1, 133, 'S', NULL, 'true', 'false'),
(142, 120, 'Terminada', 4, 'sss', '2019-11-08', '15:57:37', '2019-11-07', '15:57:37', '2019-11-08 00:00:00', 'sss', 1, 133, 'S', NULL, 'true', 'false'),
(143, 120, 'Terminada', 4, 'ir a calceta', '2019-11-08', '20:59:00', '2019-11-08', '20:59:00', '2019-11-08 00:00:00', 'ir en carro a calceta', NULL, 70, 'S', NULL, 'true', 'false'),
(144, 120, 'Terminada', 4, 'manana', '2019-11-08', '21:06:00', '2019-11-08', '21:06:00', '2019-11-08 00:00:00', 'es hora de ir', NULL, 107, 'S', NULL, 'true', 'false'),
(145, 120, 'Terminada', 4, 'tiempo6', '2019-11-09', '05:32:00', '2019-11-09', '12:00:00', '2019-11-08 00:00:00', 'probar scrpit', NULL, NULL, 'T', NULL, 'true', 'false'),
(151, 120, 'Terminada', 4, 'revisa jose', '2019-11-09', '14:33:00', '2019-11-09', '14:33:00', '2019-11-09 00:00:00', 'que estas probando', NULL, NULL, 'T', NULL, 'true', 'false'),
(152, 120, 'Terminada', 4, 'ooooooooooooo', '2019-11-09', '14:40:00', '2019-11-09', '14:40:00', '2019-11-09 00:00:00', 'ppppppppppppp', NULL, NULL, 'T', NULL, 'true', 'false'),
(153, 120, 'Terminada', 4, 'actualizate', '2019-11-09', '15:04:00', '2019-11-09', '15:04:00', '2019-11-09 00:00:00', '123', NULL, NULL, 'T', NULL, 'true', 'false'),
(154, 120, 'Terminada', 4, ',,', '2019-11-10', '01:23:07', '2019-12-27', '01:23:07', '2019-11-09 01:24:08', 'd', 1, 136, 'S', '2019-11-28 00:39:13', 'false', 'false'),
(155, 120, 'Terminada', 5, 'PROBANDO NOTIFICACIONES', '2019-11-27', '16:08:07', '2019-11-27', '17:08:07', '2019-11-27 15:10:43', 'nose si funcione', 1, NULL, 'T', NULL, 'true', 'false'),
(156, 120, 'Terminada', 5, 'SEGUNDA PRUEBA DE NOTIFICACIONES', '2019-11-27', '16:15:56', '2019-11-27', '17:15:56', '2019-11-27 15:16:36', 'NO SABEMOS SI FUNCIONA', 1, NULL, 'T', NULL, 'true', 'false'),
(157, 120, 'Terminada', 5, 'TERCERA PRUEBA', '2019-11-27', '15:19:50', '2019-11-27', '16:18:03', '2019-11-27 15:18:35', 'NO SE', 1, NULL, 'T', NULL, 'true', 'false'),
(158, 120, 'Terminada', 5, 'EDWIN PROBANDO', '2019-11-27', '15:25:01', '2019-11-27', '15:27:01', '2019-11-27 15:23:22', 'NO SE', 1, NULL, 'T', NULL, 'true', 'false'),
(159, 120, 'Terminada', 5, 'otra prueba', '2019-11-27', '15:45:05', '2019-11-27', '15:48:38', '2019-11-27 15:44:07', 'fsdfasdfsadf', 1, NULL, 'T', NULL, 'true', 'false'),
(160, 120, 'Terminada', 5, 'fffffffffffffffff', '2019-11-27', '15:56:19', '2019-11-27', '15:59:07', '2019-11-27 15:49:43', 'fffffffffff', 1, NULL, 'T', NULL, 'true', 'false'),
(161, 120, 'Terminada', 4, 'subta', '2019-11-27', '22:27:27', '2019-11-27', '23:26:27', '2019-11-27 22:26:41', 'fsdfsdf', 1, 133, 'S', NULL, 'true', 'false'),
(162, 120, 'Terminada', 5, 'holo', '2019-11-28', '13:23:45', '2019-11-28', '13:35:45', '2019-11-28 13:18:00', 'sadfds', 1, NULL, 'T', NULL, 'true', 'false'),
(163, 120, 'Pendiente', 5, 'sss', '2019-12-08', '09:56:54', '2019-12-09', '09:54:54', '2019-12-08 09:55:16', 'jkkl', 1, NULL, 'T', NULL, 'false', 'true'),
(164, 120, 'Terminada', 5, 'vancida', '2019-12-08', '11:38:59', '2019-12-08', '11:39:59', '2019-12-08 10:14:50', 'jnjk', 1, NULL, 'T', '2019-12-08 12:16:28', 'true', 'false'),
(165, 120, 'Pendiente', 4, 'gdsgfdsgsd', '2019-12-08', '11:59:09', '2019-12-08', '12:57:09', '2019-12-08 11:57:37', 'fsdf', 1, NULL, 'T', NULL, 'false', 'true'),
(167, 120, 'Pendiente', 5, 'gfhf', '2019-12-11', '23:32:48', '2019-12-13', '23:33:00', '2019-12-11 23:29:12', 'hgf', 1, NULL, 'T', NULL, 'false', 'true'),
(168, 120, 'Pendiente', 5, 'ssssss', '2019-12-11', '23:45:36', '2019-12-11', '23:50:36', '2019-12-11 23:41:44', 'ssssssssss', 1, NULL, 'T', NULL, 'false', 'false'),
(169, 120, 'Pendiente', 5, 'se', '2019-12-11', '23:43:01', '2019-12-11', '23:44:01', '2019-12-11 23:42:17', 'se', 1, 168, 'S', NULL, 'false', 'true'),
(170, 116, 'Pendiente', 5, 'thrgh', '2019-12-12', '21:47:56', '2019-12-12', '21:56:56', '2019-12-12 21:45:29', 'hgfhdf', 1, NULL, 'T', NULL, 'false', 'false');

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
(2, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre` varchar(500) DEFAULT NULL,
  `Apellido` varchar(500) DEFAULT NULL,
  `Cedula` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Celular` varchar(11) DEFAULT NULL,
  `Sexo` varchar(10) DEFAULT NULL,
  `Id_tipo_Usuarios` int(11) DEFAULT NULL,
  `Password` varchar(450) NOT NULL,
  `Instagram` varchar(450) NOT NULL,
  `Twitter` varchar(450) NOT NULL,
  `Facebook` varchar(450) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Intereses` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_Usuario`, `Nombre`, `Apellido`, `Cedula`, `email`, `Direccion`, `Celular`, `Sexo`, `Id_tipo_Usuarios`, `Password`, `Instagram`, `Twitter`, `Facebook`, `Fecha_Nacimiento`, `Intereses`) VALUES
(116, 'José Leonardo', 'Sabando Valencia', '0000000001', 'leonardosabando@gmail.com', 'Calceta', '0979932503', 'M', 2, 'am9zZTE5OTU=', '@joseleonardo', '@joseleonardodsas', 'leonardosabandofacebook.com', '2019-11-01', 'me gusta programar'),
(117, 'Edwin', 'Moreira', '000000002', 'edwin@gmail.com', 'Calceta', '0000000000-', 'M', 1, 'MTIz', '', '', 'ed', '0000-00-00', ''),
(118, 'JC', 'Solorzano', '0000000003', 'jc@gmail.com', 'Chone', '000000000', 'M', 1, '1234', '@39josecarlos', '@39josecar', 'JC', '0000-00-00', 'Me gusta la musica'),
(119, 'Tito', 'Barreiro', '0000000004', 'tito@gmail.com', 'Chone', '00000000', 'M', 1, 'MTIz', '', '', '', '0000-00-00', ''),
(120, 'Leonardo', 'Sabando', '1315221563', 'leonardosabando03@hotmail.com', 'Calceta', '0979932503', 'Masculino', 1, 'MTIz', '@jose', '@jose', '@leonardosabando', '1995-07-03', 'PROGRAMANDO'),
(121, 'Luis', 'Loaisa', '123456789', 'luis@gmail.com', 'Chone', '25648', 'Masculino', 1, '1234', 'je', 'je', 'je', '2019-11-14', 'jugar '),
(122, 'Luis', 'Loaisa', '123456789', 'luis@gmail.com', 'Chone', '25648', 'Masculino', 1, '1234', 'je', 'je', 'je', '2019-11-14', 'jugar '),
(123, 'Luisa', 'lois', '00001', 'loisa@gmail.com', 'chone', '15422', 'Femenino', 1, '1234', 'losa2', 'loisa1', 'loisa', '2019-11-05', 'me gusta cantar'),
(124, '1', '1', '1', 'j@gamil.com', '1', '1', 'Masculino', 1, 'am9zZTE5OTY=', '1', '1', '1', '1996-07-19', 'hola'),
(125, 'juan', 'sa', '9876543210', '', NULL, NULL, NULL, NULL, '', '', '', '', '0000-00-00', ''),
(126, 'GDSFGSDGDSGFD', 'PONCE GDSGDS', '1111', NULL, NULL, '0983827812', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(127, 'ALEXANDRA GDSFGSDG', 'GDFSFRANCO ', '1111', '111', 'MANTA', '0979932504', 'F', 1, 'MTIz', '', '', '', '0000-00-00', ''),
(671, 'LADY NOHEMI', 'PONCE PARRAGA', '1310485584', NULL, NULL, '983827812', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(672, 'ALEXANDRA ELIZABETH', 'CEDEÑO FRANCO', '1313065664', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(673, 'NARCISA MONSERRATE', 'ARTEAGA SOLORZANO', '1311639197', NULL, NULL, '983842601', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(674, 'MARIA BELEN', 'PICO MUÑOZ', '1313235572', NULL, NULL, '989904055', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(675, 'ERWIN HUGO', 'GONZABAY RUPERTTY', '1311896813', NULL, NULL, '987720360', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(676, 'GEMA BELEN', 'DELGADO JARA', '1312469891', NULL, NULL, '982969546', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(677, 'MARISELA ANGELA', 'PILOSO FLORES', '1313209536', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(678, 'TEOFILO ELOY', 'PALACIOS MACIAS', '1302694656', NULL, NULL, '969700083', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(679, 'EDISSON ENRIQUE', 'PINCAY BRIONES', '951941350', NULL, NULL, '981262428', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(680, 'ERIKA MONSERRATE', 'PICO LOOR', '1312640392', NULL, NULL, '991896128', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(681, 'PATRICIA MARILIN', 'MENDOZA PARRAGA', '1309473831', NULL, NULL, '991870922', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(682, 'PAOLA MARIELA', 'MENDOZA PARRAGA', '1310761117', NULL, NULL, '995395176', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(683, 'HAMILTON ALFREDO', 'CEDEÑO PIONCE', '1310712664', NULL, NULL, '991707371', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(684, 'CESAR DIOMEDES', 'MOREIRA MENDOZA', '1306620236', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(685, 'WILLIAM ALFREDO', 'CEDEÑO ORTIZ', '1312179581', NULL, NULL, '996567298', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(686, 'ANTONIO NORBERTO', 'CHILAN COVEÑA', '920916533', NULL, NULL, '980835364', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(687, 'VICTOR HUGO', 'TOMALA FIGUEROA', '901669275', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(688, 'LORGIA ELENA', 'PAZMIÑO VIVAS', '1312252628', NULL, NULL, '939191916', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(689, 'CRISTHIAN JAVIER', 'PLUA PIN', '1312358953', NULL, NULL, '992231244', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(690, 'RONALD ALEJANDRO', 'SOLORZANO MOREIRA', '1312213778', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(691, 'MERCEDES MARGARITA', 'BURGOS ESPINOZA', '1305756304', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(692, 'GENNY MONSERRATE', 'ANCHUNDIA SANTANA', '1309627824', NULL, NULL, '984810992', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(693, 'JESUS ALBERTO', 'PARRAGA AGUAYO', '1314850296', NULL, NULL, '995195208', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(694, 'JESSICA MONSERRATE', 'DELGADO ZAMBRANO', '1312875089', NULL, NULL, '987496807', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(695, 'JOSE LUIS', 'MORRILLO ZAMBRANO', '1313532549', NULL, NULL, '962588543', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(696, 'VICTOR RAMON', 'MENDOZA QUIROZ', '1307907251', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(697, 'DAYANA CECILIA', 'MERA MEDRANDA', '1316550126', NULL, NULL, '996407578', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(698, 'KENYERLI DAYANNA', 'CELLERI GRACIA', '1313469148', NULL, NULL, '939319659', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(699, 'LUISA MARIA', 'CASAÑAS AMPUERO', '1314074483', NULL, NULL, '979379939', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(700, 'ERIKA MONSERRATE', 'PICO LOOR', '1312640392', NULL, NULL, '991896128', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(701, 'LEONARDO LEONEL', 'LINO VENTIMILLA', '1310454200', NULL, NULL, '987825844', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(702, 'CARMEN PIEDAD', 'CEDEÑO CEDEÑO', '1312239336', NULL, NULL, '980583557', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(703, 'LEONARDO JAVIER', 'SOLORZANO ORMAZA', '1309099289', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(704, 'GERALDINE DEL VALLE', 'ROPERO HERRERA', '962815841', NULL, NULL, '995130537', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(705, 'MIRYAM ANABEL', 'LEON TACURI', '1313249631', NULL, NULL, '982205349', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(706, 'FRANCISCO XAVIER', 'ZAMBRANO CANTOS', '1312102849', NULL, NULL, '991341351', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(707, 'JUAN CARLOS', 'ESPINALES MENDOZA', '1307593697', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(708, 'DOLORES GABRIELA', 'ARTEAGA VILLAFUERTE', '1310801913', NULL, NULL, '988537382', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(709, 'CINTHIA VANESSA', 'PINARGOTE PICO', '1312848565', NULL, NULL, '994796044', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(710, 'VICENTE ELOHIN', 'RIVAS SUAREZ', '1351997950', NULL, NULL, '979235832', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(711, 'YOLANDA LORENZA', 'FLORES MERO', '1303992547', NULL, NULL, '990740513', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(712, 'CARLOS ALBERTO', 'ACOSTA ERAS', '1312723404', NULL, NULL, '996626916', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(713, 'EVELIN LISETH', 'CASTAÑEDA MORALES', '1312958877', NULL, NULL, '982313207', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(714, 'SEGUNDO ABELARDO', 'MOREIRA MENDOZA', '1302111925', NULL, NULL, '990128838', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(715, 'IRIS SUSANA', 'VINCES GARCIA', '1311757759', NULL, NULL, '998731841', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(716, 'ALEXIS DARIO', 'PINCAY SANTOS', '1310312473', NULL, NULL, '981490962', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(717, 'NADIA ', 'SANCHEZ TORRES', '1756704761', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(718, 'JOSE ALEXANDER', 'SABANDO MOREIRA', '1312579681', NULL, NULL, '989522180', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(719, 'GALO JAVIER', 'DELGADO JURADO', '1310561640', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(720, 'ZORAYA JUDITH', 'FONTALVO FERNANDEZ', '959505975', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(721, 'KETTY LOURDES', 'BRAVO PICO', '1307787257', NULL, NULL, '999170422', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(722, 'VALERIA ISABEL', 'PINARGOTE TEJENA', '1312603887', NULL, NULL, '987278835', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(723, 'PATRICIA LORENA', 'MENDOZA MEZA', '3050515778', NULL, NULL, '983568370', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(724, 'MONSERRATE ', 'QUIROZ ANA', '1707489140', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(725, 'ANNABEL MICHELLE', 'MIRANDA DELGADO', '1315786689', NULL, NULL, '939896753', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(726, 'DAYANA LISSETTE', 'MOREIRA MACIAS', '1316187424', NULL, NULL, '960429561', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(727, 'GEMA NICOLE', 'ALDAZ VILLAFUERTE', '1315243624', NULL, NULL, '991168644', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(728, 'LUIS ANTONIO', 'INTRIAGO LOOR', '1314210392', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(729, 'INES ROSALINA', 'SUAREZ MENDOZA', '1304463225', NULL, NULL, '988583721', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(730, 'CARLOS EMILIO', 'BERNAL RODRIGUEZ', '1307876530', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(731, 'BYRON VINICIO', 'MOREIRA RIVADENEIRA', '1312806910', NULL, NULL, '979843664', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(732, 'MERY SUSANA', 'MORA REINA', '1311761140', NULL, NULL, '990236738', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(733, 'MARIO ENRIQUE', 'INTRIAGO MURILLO', '1313287474', NULL, NULL, '991983804', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(734, 'JOSELYN CECIBEL', 'CEDEÑO MERO', '1313559799', NULL, NULL, '959059746', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(735, 'ANDREA VERONICA', 'MEDRANDA MERA', '1309746640', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(736, 'GENESIS ROCIO', 'MOLINA GRACIA', '1310760192', NULL, NULL, '985847767', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(737, 'ANDREA NICOLE', 'MOLINA CEDEÑO', '1309375051', NULL, NULL, '959411449', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(738, 'JENNIFER ELIZABETH', 'MUÑOZ MENDOZA', '1316362795', NULL, NULL, '996910161', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(739, 'GREGORIO ESAU', 'SANTANA PERALTA', '1310498603', NULL, NULL, '939939248', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(740, 'OTTO JAVIER', 'INTRIAGO MONTESDEOCA', '1307402683', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(741, 'JOSE VICENTE', 'AVEIGA ZAMBRANO', '1311440109', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(742, 'EDUARDO ISRAEL', 'AYALA MORILLO', '1313035048', NULL, NULL, '988462511', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(743, 'JOSE EDUARDO', 'MERO PARRALES', '1310493950', NULL, NULL, '991848142', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(744, 'GENNY MARIBEL', 'CEDEÑO PICO', '1309789863', NULL, NULL, '959201714', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(745, 'JULIANA KERLY', 'POZO PILOZO', '1313094425', NULL, NULL, '985352976', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(746, 'MARIA ISABEL', 'LAZ MOLINA', '1317154431', NULL, NULL, '995907912', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(747, 'EVELIN LISETH', 'CASTAÑEDA MORALES', '1312958877', NULL, NULL, '982313207', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(748, 'JOSE LIDER', 'ALCIVAR ALAVA', '1315487403', NULL, NULL, '959632957', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(749, 'MARCOS ANTONIO', 'NAVARRETE LOOR', '1311720567', NULL, NULL, '983337851', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(750, 'JUAN PABLO', 'MONTESDEOCA JACOME', '1309512034', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(751, 'LEONELA ALEJANDRA', 'CASTRO TIGUA', '1312288408', NULL, NULL, '985767903', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(752, 'DORA ARACELI', 'DELGADO QUIJIJE', '1308292216', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(753, 'ANGELA PATRICIA', 'CEDEÑO SAN ANDRES', '1304094129', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(754, 'JULIO CESAR', 'CASTAÑEDA MORALES', '1312958885', NULL, NULL, '939171454', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(755, 'MARIA LOURDES', 'CASTRO CEVALLOS', '1307788750', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(756, 'MARY CARMEN', 'RAMIREZ MIELES', '1316501764', NULL, NULL, '992391359', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(757, 'OTILIA MARIA', 'MACAS SOLIS', '1308580420', NULL, NULL, '993880683', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(758, 'JOSE VINICIO', 'CHICA HERNANDEZ', '1312853540', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(759, 'ANA MERCEDES', 'CEDEÑO ZAVALA', '1309031167', NULL, NULL, '939569065', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(760, 'CARLOS JOSE', 'MACIAS SARMIENTO', '1310641426', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(761, 'MARIA GABRIELA', 'COTERA INTRIAGO', '1316288529', NULL, NULL, '969166374', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(762, 'FABIANA YAMILETH', 'GARCIA BARBERAN', '1310777766', NULL, NULL, '999447674', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(763, 'ALEXANDER ', 'ROJAS YOHM', '6103195639', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(764, 'LILIAN ANGELICA', 'CEVALLOS ZAMORA', '1311549651', NULL, NULL, '998561711', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(765, 'ACASIA BETHSABE', 'MACIAS MERA', '1310479330', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(766, 'JOHANNA JENNIFER', 'SANTOS LOPEZ', '1313310987', NULL, NULL, '996172650', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(767, 'CINDY GABRIELA', 'MERA MENDOZA', '1312605742', NULL, NULL, '982424035', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(768, 'YAZENKA PAOLA', 'LLERENA ROSADO', '1309199220', NULL, NULL, '991588864', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(769, 'MARCO VINICIO', 'MORALES FARFAN', '1310080062', NULL, NULL, '958705708', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(770, 'LUIS EDUARDO', 'CANTOS MENENDEZ', '1309957155', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(771, 'GEMA IBETH', 'CARVAJAL CHUNGA', '1314589837', NULL, NULL, '968435308', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(772, 'MONICA JOHANNA', 'LOPEZ OSTAIZA', '1310491129', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(773, 'FLAVIO PATRICIO', 'BRAVO DELGADO', '1316316999', NULL, NULL, '995557147', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(774, 'JAVIER MANUEL', 'MOREIRA MACIAS', '1311667412', NULL, NULL, '979496904', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(775, 'ANGEL RAUL', 'SANTANA AVEIGA', '1310475585', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(776, 'JENNIFFER MARIA', 'PARRALES LOPEZ', '1310805450', NULL, NULL, '982011748', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(777, 'FRANKILN ALBERTO', 'SILVA MONCADA', '962700449', NULL, NULL, '979370090', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(778, 'MAHOLY VALENTINA', 'GUTIERREZ MEDRANDA', '1350654891', NULL, NULL, '994968342', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(779, 'JEFFERSON JOSE', 'VARGAS PACHECO', '962236576', NULL, NULL, '983071887', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(780, 'DORALIZA MARIBEL', 'MERO MENDOZA', '1308257201', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(781, 'LUIS FERNANDO', 'HOLGUIN GARCIA', '1309701298', NULL, NULL, '979001118', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(782, 'ENNY YESSENIA', 'ZAMORA ZAMORA', '1312241829', NULL, NULL, '996100627', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(783, 'MONSERRATE BETSABE', 'MUÑOZ VELEZ', '1307218972', NULL, NULL, '996213699', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(784, 'RANDY JOAO', 'ROCA PALACIOS', '1312649286', NULL, NULL, '993097476', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(785, 'JENNY VERONICA', 'CALDERON SOLORZANO', '1307255719', NULL, NULL, '981763778', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(786, 'LASTENIA DELMIRA', 'ORTEGA VILLAMIL', '1312202565', NULL, NULL, '997987548', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(787, 'BRYAN STEEVEN', 'VELIZ SORNOZA', '1313301283', NULL, NULL, '956479678', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(788, 'MARIELA ELIZABETH', 'CARREÑO LOPEZ', '1312285867', NULL, NULL, '968679358', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(789, 'ROSARIO AMINTA', 'PACHAY MERO', '1303968661', NULL, NULL, '981334207', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(790, 'PAOLA TATIANA', 'CERON PARRAGA', '1312043761', NULL, NULL, '939044969', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(791, 'LILIANA MARIA', 'PINARGOTE BASURTO', '1311876690', NULL, NULL, '987928838', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(792, 'ALFREDO DANIEL', 'PIBAQUE PILOZO', '1316550241', NULL, NULL, '981551779', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(793, 'SILVIA PATRICIA', 'DELGADO CHAVEZ', '1312077918', NULL, NULL, '982155444', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(794, 'ELBA MONSERRATE', 'POSLIGUA MONTALVAN', '1312145848', NULL, NULL, '939423398', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(795, 'GILMA YANINE', 'MONROY CASTILLO', '802967653', NULL, NULL, '981202037', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(796, 'VIVIANA ALEJANDRA', 'PEÑARRIETA PEÑARRIETA', '1313837120', NULL, NULL, '996589418', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(797, 'LEXSI LORENA', 'RIVERA FRANCO', '1310092786', NULL, NULL, '983350973', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(798, 'MAIRA JESSENIA', 'MENDOZA GARCIA', '1306308691', NULL, NULL, '959886251', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(799, 'JOHANA JEOCONDA', 'SORNOZA QUIMIZ', '1310459001', NULL, NULL, '992005547', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(800, 'KAROLA JESSENIA', 'LOOR MANTUANO', '1306753995', NULL, NULL, '967071300', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(801, 'SONIA ESTHER', 'SUAREZ TOALA', '1309159406', NULL, NULL, '979662017', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(802, 'MARIA EUGENIA', 'LOPEZ MACIAS', '1309071569', NULL, NULL, '960860548', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(803, 'EDISON ANTONIO', 'DELGADO LOPEZ', '1306797745', NULL, NULL, '992869874', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(804, 'GABRIELA ALEXANDRA', 'LUCAS MENDOZA', '1314746395', NULL, NULL, '980780978', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(805, 'LENIN GABRIEL', 'ZAMBRANO CASTRO', '1315079218', NULL, NULL, '982414879', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(806, 'MANUEL ANTONIO', 'MORA DIAZ', '1758465205', NULL, NULL, '995130537', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(807, 'MALLURY BEATRIZ', 'ZAMBRANO ZAMBRANO', '1307624625', NULL, NULL, '988366556', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(808, 'GEMA ANDREA', 'ALCIVAR RODRIGUEZ', '1314916154', NULL, NULL, '999725204', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(809, 'JESSICA DOLORES', 'ZAVALA VILLAMAR', '1315170124', NULL, NULL, '993051351', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(810, 'ANGELA LUCRECIA', 'CEDEÑO MENDOZA', '1313771261', NULL, NULL, '981793263', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(811, 'WALTER EPIFANIO', 'BARCIA GONZALEZ', '1310457484', NULL, NULL, '967097264', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(812, 'ANGEL RICARDO', 'CEDEÑO ANDRADE', '1313734103', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(813, 'MIRIAM ALEXANDRA', 'BRIONES BRIONES', '1309664785', NULL, NULL, '996293407', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(814, 'DIANA ISABEL', 'JIMENEZ CHALEN', '1314732494', NULL, NULL, '996451406', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(815, 'MARIA LOURDES', 'CEDEÑO SANTANA', '1312276767', NULL, NULL, '981763778', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(816, 'WILSON ANDRES', 'RESABALA LAZ', '1309760922', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(817, 'MAIRA ELIZABETH', 'LANDA SANCON', '1310582976', NULL, NULL, '967385561', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(818, 'HECTOR ANDRES', 'SALTOS PARRAGA', '1312806704', NULL, NULL, '939643305', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(819, 'YOHANNA ELIZABETH', 'MARRASQUIN CHANCAY', '1311928871', NULL, NULL, '991022910', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(820, 'WENDY YULIANA', 'MERA MENDOZA', '1314927532', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(821, 'XIOMARA YESSENIA', 'QUIJIJE MENENDEZ', '1309711636', NULL, NULL, '968174601', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(822, 'MANUEL FERMIN', 'QUIMIS PARRALES', '1309701231', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(823, 'MIRYAN RUBI', 'REYES PONCE', '1308736766', NULL, NULL, '991121309', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(824, 'DIANA LISETH', 'CEDEÑO MACIAS', '1313067520', NULL, NULL, '979000969', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(825, 'ARIANA MARBEL', 'CHAVEZ ZAMBRANO', '1317288353', NULL, NULL, '968907820', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(826, 'KAREN TATIANA', 'CAGUA ALONSO', '1312573650', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(827, 'LINDA YAMILETH', 'CEDEÑO ALVAREZ', '1316258035', NULL, NULL, '960834545', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(828, 'SILVIA PATRICIA', 'SUAREZ INTRIAGO', '1314020130', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(829, 'HELEN MARY', 'MERO DELGADO', '1315962280', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(830, 'DEXI MARIA', 'LOPEZ GANCHOZO', '1308438751', NULL, NULL, '994543682', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(831, 'MERCEDES MONSERRATE', 'MACIAS MENDOZA', '1317025144', NULL, NULL, '988146174', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(832, 'GINGER MONSERRATE', 'RUPERTY LOPEZ', '1308172491', NULL, NULL, '991131087', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(833, 'JENNY ALEJANDRA', 'LOOR DELGADO', '1308588787', NULL, NULL, '985031349', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(834, 'MILTON DAVID', 'RODRIGUEZ DAZA', '1314295070', NULL, NULL, '992070416', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(835, 'EBERT JESUS', 'PARRAGA MOREIRA', '1314512300', NULL, NULL, '979132591', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(836, 'TANIA MARGARITA', 'CEDEÑO CASTRO', '1311960981', NULL, NULL, '996540827', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(837, 'KARLA VANESSA', 'SANTANA LOPEZ', '1315350155', NULL, NULL, '995709380', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(838, 'CARMEN VERONICA', 'BAILON ROSADO', '1310805666', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(839, 'JENEFFER YULIANA', 'MOREIRA ZAMBRANO', '1310949564', NULL, NULL, '978727459', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(840, 'DOLORES YUDILIN', 'ALAVA INTRIAGO', '1716466758', NULL, NULL, '939105067', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(841, 'RUDY LILIANA', 'BRAVO MURILLO', '1312100710', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(842, 'PATRICIA MARIBEL', 'ZAMBRANO DELGADO', '1313675504', NULL, NULL, '994918639', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(843, 'VIELKA SELENA', 'MACIAS CRUZATTI', '1315736452', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(844, 'CINDY ROXANNA', 'MONTALVAN RIVERA', '1314029065', NULL, NULL, '990737947', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(845, 'ROSA LORENA', 'MERO CHILAN', '1312380858', NULL, NULL, '967243569', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(846, 'YANDRY JAIR', 'PIGUAVE DELGADO', '1315640878', NULL, NULL, '993672319', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(847, 'JENNY ESTELA', 'DELGADO ANCHUNDIA', '1311546475', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(848, 'EVELYN LISBETH', 'LUCAS CUSME', '1314753433', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(849, 'CARLOS GUIDO', 'SANCHEZ RODRIGUEZ', '1314030113', NULL, NULL, '991533940', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(850, 'JONATHAN FRANCISCO', 'DELGADO MENDOZA', '1314321728', NULL, NULL, '9683076196', NULL, NULL, '', '', '', '', '0000-00-00', ''),
(851, 'ROCIO MARCELA', 'PILOCO LINDAO', '1311461964', NULL, NULL, '', NULL, NULL, '', '', '', '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_roles`
--

CREATE TABLE `usuario_roles` (
  `Id_Usuario_Roles` int(11) NOT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Id_Roles` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario_roles`
--

INSERT INTO `usuario_roles` (`Id_Usuario_Roles`, `Id_Usuario`, `Id_Roles`) VALUES
(76, 116, 16),
(77, 117, 18),
(78, 118, 18),
(79, 119, 18),
(80, 120, 15),
(81, 123, 14),
(82, 124, 15),
(83, 127, 15);

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
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`Id_asistencia`),
  ADD KEY `AsistenciaFkUsuario_idx` (`Id_Usuario`),
  ADD KEY `AsistenciaReunionFk_idx` (`IdReunion`);

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
  ADD PRIMARY KEY (`Id_Documento`),
  ADD KEY `TareaFKDoc_idx` (`Id_Tarea`),
  ADD KEY `UsuarioFkDoc_idx` (`Id_Usuario`);

--
-- Indices de la tabla `documento_tarea`
--
ALTER TABLE `documento_tarea`
  ADD PRIMARY KEY (`IdDocumento_Tarea`),
  ADD KEY `DocumentoFK_idx` (`Id_Documento`),
  ADD KEY `TareaFK_idx` (`Id_Tarea`),
  ADD KEY `UsuariosFkDoc_idx` (`Id_Usuario`);

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
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`Id_notificaciones`);

--
-- Indices de la tabla `observacion`
--
ALTER TABLE `observacion`
  ADD PRIMARY KEY (`Id_Observacion`),
  ADD KEY `TareaFKObser_idx` (`Id_Tarea`),
  ADD KEY `UsuarioFKObser_idx` (`Id_Usuario`),
  ADD KEY `ObservacionFk_idx` (`ObservacionID`);

--
-- Indices de la tabla `observacion_reunion`
--
ALTER TABLE `observacion_reunion`
  ADD PRIMARY KEY (`Id_observacion_reunion`),
  ADD KEY `ObserUserFk_idx` (`Id_Usuario`),
  ADD KEY `OBserreunionFk_idx` (`Id_Reunion`),
  ADD KEY `ObserObseFK_idx` (`Observacion_ID`);

--
-- Indices de la tabla `observador_usuario`
--
ALTER TABLE `observador_usuario`
  ADD PRIMARY KEY (`IdObservador_Usuario`),
  ADD KEY `UserFk_idx` (`Id_Usuario`),
  ADD KEY `Task_idx` (`Id_Tarea`);

--
-- Indices de la tabla `participante_reunion_usuario`
--
ALTER TABLE `participante_reunion_usuario`
  ADD PRIMARY KEY (`Id_participante_reunion_usuario`),
  ADD KEY `participante_reunion_usuario_FK_Usuario_idx` (`Id_Usuario`),
  ADD KEY `participante_reunion_usuario_FK_Reuniones_idx` (`Id_Reunion`);

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
-- Indices de la tabla `responsable_reunion_usuario`
--
ALTER TABLE `responsable_reunion_usuario`
  ADD PRIMARY KEY (`Id_responsable_reunion_usuario`),
  ADD KEY `responsable_reunion_usuario_FKUser_idx` (`Id_Usuario`),
  ADD KEY `responsable_reunion_usuario_FK_Reunion_idx` (`Id_Reunion`);

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
  ADD KEY `UsuariosFK_idx` (`Id_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `Id_Area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `area_roles`
--
ALTER TABLE `area_roles`
  MODIFY `Id_Area_Roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `Id_asistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `conclusion`
--
ALTER TABLE `conclusion`
  MODIFY `Id_Conclusion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `Id_Documento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

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
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `Id_notificaciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `observacion`
--
ALTER TABLE `observacion`
  MODIFY `Id_Observacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT de la tabla `observacion_reunion`
--
ALTER TABLE `observacion_reunion`
  MODIFY `Id_observacion_reunion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `observador_usuario`
--
ALTER TABLE `observador_usuario`
  MODIFY `IdObservador_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de la tabla `participante_reunion_usuario`
--
ALTER TABLE `participante_reunion_usuario`
  MODIFY `Id_participante_reunion_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de la tabla `participante_usuario`
--
ALTER TABLE `participante_usuario`
  MODIFY `Id_Particpanteusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT de la tabla `responsableusuario`
--
ALTER TABLE `responsableusuario`
  MODIFY `IdResponsableUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT de la tabla `responsable_reunion_usuario`
--
ALTER TABLE `responsable_reunion_usuario`
  MODIFY `Id_responsable_reunion_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `restauracionclave`
--
ALTER TABLE `restauracionclave`
  MODIFY `Id_RestaruracionClave` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reunion`
--
ALTER TABLE `reunion`
  MODIFY `Id_Reunion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `Id_Roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `sub_area`
--
ALTER TABLE `sub_area`
  MODIFY `Id_Sub_Area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tarea`
--
ALTER TABLE `tarea`
  MODIFY `Id_tarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT de la tabla `tipo_tarea`
--
ALTER TABLE `tipo_tarea`
  MODIFY `Id_Tipo_Tarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo_usuarios`
--
ALTER TABLE `tipo_usuarios`
  MODIFY `Id_Tipo_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=852;

--
-- AUTO_INCREMENT de la tabla `usuario_roles`
--
ALTER TABLE `usuario_roles`
  MODIFY `Id_Usuario_Roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

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
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `AsistenciaFkUsuario` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `AsistenciaReunionFk` FOREIGN KEY (`IdReunion`) REFERENCES `reunion` (`Id_Reunion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `conclusion`
--
ALTER TABLE `conclusion`
  ADD CONSTRAINT `conclusion_ibfk_1` FOREIGN KEY (`Id_Itinerario`) REFERENCES `itinerario` (`Id_Itinerario`);

--
-- Filtros para la tabla `documento`
--
ALTER TABLE `documento`
  ADD CONSTRAINT `TareaFKDoc` FOREIGN KEY (`Id_Tarea`) REFERENCES `tarea` (`Id_tarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `UsuarioFkDoc` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `documento_tarea`
--
ALTER TABLE `documento_tarea`
  ADD CONSTRAINT `DocumentoFK` FOREIGN KEY (`Id_Documento`) REFERENCES `documento` (`Id_Documento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `TareaFK` FOREIGN KEY (`Id_Tarea`) REFERENCES `tarea` (`Id_tarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `UsuariosFkDoc` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Filtros para la tabla `observacion`
--
ALTER TABLE `observacion`
  ADD CONSTRAINT `ObservacionFk` FOREIGN KEY (`ObservacionID`) REFERENCES `observacion` (`Id_Observacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `TareaFKObser` FOREIGN KEY (`Id_Tarea`) REFERENCES `tarea` (`Id_tarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `UsuarioFKObser` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `observacion_reunion`
--
ALTER TABLE `observacion_reunion`
  ADD CONSTRAINT `OBserreunionFk` FOREIGN KEY (`Id_Reunion`) REFERENCES `reunion` (`Id_Reunion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ObserObseFK` FOREIGN KEY (`Observacion_ID`) REFERENCES `observacion_reunion` (`Id_observacion_reunion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ObserUserFk` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `observador_usuario`
--
ALTER TABLE `observador_usuario`
  ADD CONSTRAINT `Task` FOREIGN KEY (`Id_Tarea`) REFERENCES `tarea` (`Id_tarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `UserFk` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `participante_reunion_usuario`
--
ALTER TABLE `participante_reunion_usuario`
  ADD CONSTRAINT `participante_reunion_usuario_FK_Reuniones` FOREIGN KEY (`Id_Reunion`) REFERENCES `reunion` (`Id_Reunion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `participante_reunion_usuario_FK_Usuario` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Filtros para la tabla `responsable_reunion_usuario`
--
ALTER TABLE `responsable_reunion_usuario`
  ADD CONSTRAINT `responsable_reunion_usuario_FKUser` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `responsable_reunion_usuario_FK_Reunion` FOREIGN KEY (`Id_Reunion`) REFERENCES `reunion` (`Id_Reunion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `IdSubAreaFK` FOREIGN KEY (`Id_Sub_Area`) REFERENCES `sub_area` (`Id_Sub_Area`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `RolesFK` FOREIGN KEY (`Id_Roles`) REFERENCES `roles` (`Id_Roles`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `UsuariosFK` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
