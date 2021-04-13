-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 13-04-2021 a las 14:53:42
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
(20, 'videojuego', 'the witcher 3 wild hunt', '2018-05-15', 'RPG', 8, 'PS4, Xbox One, Pc'),
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
(33, 'merchandasing', 'PELUCHE SUPER MARIO: MARIO TANOOKI 21CM', NULL, NULL, 18, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
