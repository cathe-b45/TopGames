-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 26-04-2021 a las 17:35:08
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `topgames`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

DROP TABLE IF EXISTS `articulos`;
CREATE TABLE IF NOT EXISTS `articulos` (
  `ID_Articulo` int(11) NOT NULL,
  `Tipo` enum('videojuego','merchandasing') DEFAULT NULL,
  `Nombre` longtext,
  `Fecha_Lanzamiento` date DEFAULT NULL,
  `Género` varchar(50) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Plataforma` mediumtext,
  PRIMARY KEY (`ID_Articulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`ID_Articulo`, `Tipo`, `Nombre`, `Fecha_Lanzamiento`, `Género`, `Precio`, `Plataforma`) VALUES
(1, 'videojuego', 'Kingdom Hearts', '2028-03-02', 'RPG', 17, 'PlayStation2'),
(2, 'videojuego', 'Kingdom Hearts: Chain of Memories', '2011-11-04', 'RPG', 12, 'PlayStation 2'),
(3, 'videojuego', 'Kingdom Hearts II', '2022-12-05', 'RPG', 15, ' PlayStation 2'),
(4, 'videojuego', 'Kingdom Hearts 358/2 Days', '2030-05-09', 'RPG', 10, 'Nintendo DS'),
(5, 'videojuego', 'Kingdom Hearts Birth by Sleep', '2009-01-10', 'RPG', 15, 'PlayStation 3'),
(6, 'videojuego', 'Kingdom Hearts Re: Coded', '2007-10-10', 'RPG', 28, 'Nintendo DS'),
(7, 'videojuego', 'Kingdom Hearts Dream Drop Distance', '2029-03-12', 'RPG', 25, 'Nintendo 3DS'),
(8, 'videojuego', 'Kingdom Hearts 0.2 Birth by Sleep - A Fragmentary Passage', '2012-01-17', 'RPG', 12, 'Xbox One'),
(9, 'videojuego', 'Kingdom Hearts: Melody of Memory', '2014-10-20', 'RPG', 38, 'Nintendo Switch'),
(10, 'videojuego', 'Kingdom Hearts III', '2029-01-19', 'RPG', 69, 'PlayStation 4'),
(11, 'videojuego', 'NieR: Automata', '2023-02-17', 'RPG', 26, 'PlayStation 4'),
(12, 'videojuego', 'Minecraft', '2016-05-09', 'Aventura', 26, 'PC, XBO, PS3, PSV, PS4'),
(13, 'videojuego', 'Call of Duty: Modern Warfare', '2012-09-19', 'Shooter', 30, 'PlayStation 4'),
(14, 'videojuego', 'Call of Duty: Black Ops 4', '2003-08-18', 'Shooter', 25, 'PlayStation 4'),
(15, 'videojuego', ' Need for Speed Heat', '2008-11-19', 'Carreras, acción', 28, 'PlayStation 4'),
(16, 'videojuego', 'Resident Evil 7: Biohazard', '2024-01-17', 'Supervivencia, Gore', 9, 'PlayStation 4'),
(17, 'videojuego', 'Resident Evil 2', '2025-01-19', 'Supervivencia, Gore', 11, 'PlayStation 4'),
(18, 'videojuego', 'Dying Light', '2026-06-15', 'Supervivencia, Acción', 39, 'Xbox One'),
(19, 'videojuego', 'Resident Evil 4', '2011-01-05', 'Supervivencia, Gore', 24, 'PlayStation 2'),
(20, 'videojuego', 'The Witcher 3 Wild Hunt', '2018-05-15', 'RPG', 8, 'PS4, Xbox One, Pc'),
(21, 'merchandasing', 'Funko - Figura Disney - Kingdom Hearts - Goofy Halloween', NULL, NULL, 59, NULL),
(22, 'merchandasing', 'MasTazas Kingdom Hearts A Taza Ceramica', NULL, NULL, 10, NULL),
(23, 'merchandasing', 'Kingdom Hearts - Corazones del reino Póster', NULL, NULL, 11, NULL),
(24, 'merchandasing', 'Call of Duty: Black Ops 4 Playing Cards', NULL, NULL, 23, NULL),
(25, 'merchandasing', 'Gorra New Era X Call of Duty: Modern Warfare Black 9Fifty - Eastern Faction', NULL, NULL, 33, NULL),
(26, 'merchandasing', 'Lamparas Minecraft - Edición Especial', NULL, NULL, 20, NULL),
(27, 'merchandasing', 'NUEVO 3D Moda Unisex Resident Evil Leon Scott Kennedy Impreso Sudadera con capucha casual Sudaderas', NULL, NULL, 60, NULL),
(28, 'merchandasing', 'FIGURA POP RESIDENT EVIL: LEON KENNEDY', NULL, NULL, 15, NULL),
(29, 'merchandasing', 'FIGURA POP RESIDENT EVIL: NEMESIS', NULL, NULL, 15, NULL),
(30, 'merchandasing', 'FIGURA NENDOROID WITCHER 3: GERALT', NULL, NULL, 70, NULL),
(31, 'merchandasing', 'FIGURA QFIG HARRY POTTER: HERMIONE', NULL, NULL, 18, NULL),
(32, 'merchandasing', 'VARITA HARRY POTTER: DUMBLEDORE', NULL, NULL, 30, NULL),
(33, 'merchandasing', 'PELUCHE SUPER MARIO: MARIO TANOOKI 21CM', NULL, NULL, 18, NULL),
(34, 'merchandasing', 'PELUCHE 21CM LINK ZELDA BOTW', NULL, NULL, 22, NULL),
(35, 'merchandasing', 'PELUCHE POKEMON 21CM SURTIDO', NULL, NULL, 20, NULL),
(36, 'merchandasing', 'CUADRO 3D HARRY POTTER: HARRY POTTER Y SIRIUS', NULL, NULL, 11, NULL),
(37, 'merchandasing', 'CUADRO 3D PLAYSTATION SYMBOLS', NULL, NULL, 11, NULL),
(38, 'merchandasing', 'MONOPOLY: AVENGERS', NULL, NULL, 40, NULL),
(39, 'merchandasing', 'LIENZO SUPER MARIO BROS NES', NULL, NULL, 10, NULL),
(40, 'merchandasing', 'MONOPOLY STRANGERS THINGS EDICIÓN COLECCIONISTA', NULL, NULL, 60, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

DROP TABLE IF EXISTS `compras`;
CREATE TABLE IF NOT EXISTS `compras` (
  `ID_Articulo` int(11) DEFAULT NULL,
  `Fecha` datetime NOT NULL,
  `Tipo_Articulo` enum('videojuego','merchandasing') DEFAULT NULL,
  `ID_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Fecha`),
  KEY `FK_Articulos_TO_Compras` (`ID_Articulo`),
  KEY `FK_Usuario_TO_Compras` (`ID_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

DROP TABLE IF EXISTS `favoritos`;
CREATE TABLE IF NOT EXISTS `favoritos` (
  `Tipo_Articulo` varchar(20) DEFAULT NULL,
  `ID_Articulo` int(11) NOT NULL,
  `ID_Usuario` int(11) NOT NULL,
  KEY `FK_Articulos_TO_Favoritos` (`ID_Articulo`),
  KEY `FK_Usuario_TO_Favoritos` (`ID_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `ID_Usuario` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellidos` varchar(50) DEFAULT NULL,
  `Contrasena` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Tipo_Usuario` enum('CLIENTE','ADMIN') DEFAULT NULL,
  PRIMARY KEY (`ID_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_Usuario`, `Nombre`, `Apellidos`, `Contrasena`, `Email`, `Tipo_Usuario`) VALUES
(1, 'Luis', 'Alonso García', '12345', 'luisalonsogarcia@gmail.com', 'CLIENTE'),
(2, 'Laura', 'Gallardo López', '1234', 'lauragallardolopez@topgames.com', 'ADMIN'),
(3, 'Ángela', 'Ledo Uriel', '123456', 'angelaledouriel@topgames.com', 'ADMIN'),
(4, 'Catherine', 'Ballester Mendoza', '123', 'catherineballestermendoza@topgames.com', 'ADMIN'),
(5, 'Javier', 'López Pérez', '1234567', 'javierlopezperez@gmail.com', 'CLIENTE'),
(6, 'Álvaro', 'Fernández Álvarez', '13579', 'alvarofernandezalvarez@gmail.com', 'CLIENTE'),
(7, 'Manuel', 'Gómez Diaz', '02468', 'manuelgomezdiaz@gmail.com', 'CLIENTE'),
(8, 'Alejandro', 'Uriel Jiménez', '123789', 'alejandrourieljimenez@gmail.com', 'CLIENTE'),
(9, 'Cristina', 'Martínez Suarez', '159357', 'cristinamartinezsuarez@gmail.com', 'CLIENTE'),
(10, 'Claudia', 'Palacio Álvarez', '31102002', 'claudiapalacioalvarez@gmail.com', 'CLIENTE'),
(11, 'Mark', 'Oprea Marco', '01020304', 'markopreamarco@gmail.com', 'CLIENTE'),
(12, 'Estela', 'Ibáñez Lamban', '23122020', 'estelaibañezlamban@gmail.com', 'CLIENTE'),
(13, 'Adrián', 'Muñoz Márquez', '11223344', 'adrianmuñozmarquez@gmail.com', 'CLIENTE'),
(14, 'Daniela', 'Valencia García', '55667788', 'danielavalenciagarcia@gmail.com', 'CLIENTE'),
(15, 'Angel', 'Pérez Martín', '777888999', 'angelperezmartin@gmail.com', 'CLIENTE');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `FK_Articulos_TO_Compras` FOREIGN KEY (`ID_Articulo`) REFERENCES `articulos` (`ID_Articulo`),
  ADD CONSTRAINT `FK_Usuario_TO_Compras` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuario` (`ID_Usuario`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `FK_Articulos_TO_Favoritos` FOREIGN KEY (`ID_Articulo`) REFERENCES `articulos` (`ID_Articulo`),
  ADD CONSTRAINT `FK_Usuario_TO_Favoritos` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuario` (`ID_Usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
