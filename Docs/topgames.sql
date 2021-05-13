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

DROP DATABASE IF EXISTS topgames;
CREATE DATABASE topgames;
USE topgames;

--
-- Estructura de tabla para la tabla `articulos`
--

DROP TABLE IF EXISTS `articulos`;
CREATE TABLE IF NOT EXISTS `articulos` (
  `ID_Articulo` int NOT NULL,
  `Tipo` enum('videojuego','merchandasing') DEFAULT NULL,
  `Nombre` longtext,
  `Fecha_Lanzamiento` date DEFAULT NULL,
  `Genero` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Plataforma` mediumtext,
  `Imagen` varchar(128) DEFAULT NULL,
  `oferta` bit(1) DEFAULT NULL,
  `popular` bit(1) DEFAULT NULL,
  `slider` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID_Articulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`ID_Articulo`, `Tipo`, `Nombre`, `Fecha_Lanzamiento`, `Genero`, `Precio`, `Plataforma`, `Imagen`, `oferta`, `popular`, `slider`) VALUES
(1, 'videojuego', 'Kingdom Hearts', '2002-03-28', 'RPG', 17, 'PlayStation2', '', NULL, NULL, NULL),
(2, 'videojuego', 'Kingdom Hearts: Chain of Memories', '2004-11-04', 'RPG', 12, 'PlayStation 2', '', NULL, NULL, NULL),
(3, 'videojuego', 'Kingdom Hearts II', '2005-12-05', 'RPG', 15, ' PlayStation 2', '', NULL, NULL, NULL),
(4, 'videojuego', 'Kingdom Hearts 358/2 Days', '2009-05-20', 'RPG', 10, 'Nintendo DS', '', NULL, NULL, NULL),
(5, 'videojuego', 'Kingdom Hearts Birth by Sleep', '2010-01-09', 'RPG', 15, 'PlayStation 3', '', NULL, NULL, NULL),
(6, 'videojuego', 'Kingdom Hearts Re: Coded', '2010-10-07', 'RPG', 28, 'Nintendo DS', '', NULL, NULL, NULL),
(7, 'videojuego', 'Kingdom Hearts Dream Drop Distance', '2012-03-12', 'RPG', 25, 'Nintendo 3DS', '', NULL, NULL, NULL),
(8, 'videojuego', 'Kingdom Hearts 0.2 Birth by Sleep - A Fragmentary Passage', '2017-01-12', 'RPG', 12, 'Xbox One', '', NULL, NULL, NULL),
(9, 'videojuego', 'Kingdom Hearts: Melody of Memory', '2020-10-14', 'RPG', 38, 'Nintendo Switch', '', NULL, NULL, NULL),
(10, 'videojuego', 'Kingdom Hearts III', '2019-01-25', 'RPG', 69, 'PlayStation 4', 'kingdom-hearts-3.jpg', NULL, NULL, b'1'),
(11, 'videojuego', 'NieR: Automata', '2017-02-23', 'RPG', 26, 'PlayStation 4', '', NULL, NULL, NULL),
(12, 'videojuego', 'Minecraft', '2011-11-18', 'Aventura', 26, 'PC, XBO, PS3, PSV, PS4', '', NULL, NULL, NULL),
(13, 'videojuego', 'Call of Duty: Modern Warfare', '2019-09-25', 'Shooter', 30, ' PlayStation 4, Xbox One, Microsoft Windows', '', NULL, NULL, NULL),
(14, 'videojuego', 'Call of Duty: Black Ops 4', '2018-08-03', 'Shooter', 25, ' PlayStation 4, Xbox One, Microsoft Windows', '', NULL, NULL, NULL),
(15, 'videojuego', ' Need for Speed Heat', '2019-11-08', 'Carreras, acción', 28, ' PlayStation 4, Xbox One, Microsoft Windows', '', NULL, NULL, NULL),
(16, 'videojuego', 'Resident Evil 7: Biohazard', '2017-01-24', 'Horror de supervivencia, FPS, Gore', 9, 'PlayStation 4, Xbox One, Nintendo Switch, Microsoft Windows', '', NULL, NULL, NULL),
(17, 'videojuego', 'Resident Evil 2', '2019-01-25', '	videojuego de disparos en tercera persona, Horror', 11, 'PlayStation 4, Xbox One, Microsoft Windows', '', NULL, NULL, NULL),
(18, 'videojuego', 'Dying Light', '2015-01-26', 'Supervivencia, Acción', 39, 'PlayStation 4, Xbox One, Microsoft Windows, GNU/Linux, Mac OS Classic', '', NULL, NULL, NULL),
(19, 'videojuego', 'Resident Evil 4', '2005-01-11', 'Supervivencia, Gore', 24, 'PlayStation 2,PlayStation 4', '', NULL, NULL, NULL),
(20, 'videojuego', 'The witcher 3 wild hunt', '2015-05-18', 'ARPG Acción-Aventura', 8, 'Microsoft Windows,Xbox One, PlayStation 4\r\nNintendo Switch', '', NULL, NULL, NULL),
(21, 'merchandasing', 'Funko - Figura Disney - Kingdom Hearts - Goofy Halloween', NULL, NULL, 59, NULL, '', NULL, NULL, NULL),
(22, 'merchandasing', 'MasTazas Kingdom Hearts A Taza Ceramica', NULL, NULL, 10, NULL, '', NULL, NULL, NULL),
(23, 'merchandasing', 'Kingdom Hearts - Corazones del reino Póster', NULL, NULL, 11, NULL, '', NULL, NULL, NULL),
(24, 'merchandasing', 'Call of Duty: Black Ops 4 Playing Cards', NULL, NULL, 23, NULL, '', NULL, NULL, NULL),
(25, 'merchandasing', 'Gorra New Era X Call of Duty: Modern Warfare Black 9Fifty - Eastern Faction', NULL, NULL, 33, NULL, '', NULL, NULL, NULL),
(26, 'merchandasing', 'Lamparas Minecraft - EdiciÃ³n Especial', NULL, NULL, 20, NULL, '', NULL, NULL, NULL),
(27, 'merchandasing', 'NUEVO 3D Moda Unisex Resident Evil Leon Scott Kennedy Impreso Sudadera con capucha casual Sudaderas', NULL, NULL, 60, NULL, '', NULL, NULL, NULL),
(28, 'merchandasing', 'FIGURA POP RESIDENT EVIL: LEON KENNEDY', NULL, NULL, 15, NULL, '', NULL, NULL, NULL),
(29, 'merchandasing', 'FIGURA POP RESIDENT EVIL: NEMESIS', NULL, NULL, 15, NULL, '', NULL, NULL, NULL),
(30, 'merchandasing', 'FIGURA NENDOROID WITCHER 3: GERALT', NULL, NULL, 70, NULL, '', NULL, NULL, NULL),
(31, 'merchandasing', 'FIGURA QFIG HARRY POTTER: HERMIONE', NULL, NULL, 18, NULL, '', NULL, NULL, NULL),
(32, 'merchandasing', 'VARITA HARRY POTTER: DUMBLEDORE', NULL, NULL, 30, NULL, '', NULL, NULL, NULL),
(33, 'merchandasing', 'PELUCHE SUPER MARIO: MARIO TANOOKI 21CM', NULL, NULL, 18, NULL, '', NULL, NULL, NULL),
(34, 'merchandasing', 'PELUCHE 21CM LINK ZELDA BOTW', NULL, NULL, 22, NULL, '', NULL, NULL, NULL),
(35, 'merchandasing', 'PELUCHE POKEMON 21CM SURTIDO', NULL, NULL, 20, NULL, '', NULL, NULL, NULL),
(36, 'merchandasing', 'CUADRO 3D HARRY POTTER: HARRY POTTER Y SIRIUS', NULL, NULL, 11, NULL, '', NULL, NULL, NULL),
(37, 'merchandasing', 'CUADRO 3D PLAYSTATION SYMBOLS', NULL, NULL, 11, NULL, '', NULL, NULL, NULL),
(38, 'merchandasing', 'MONOPOLY: AVENGERS', NULL, NULL, 40, NULL, '', NULL, NULL, NULL),
(39, 'merchandasing', 'LIENZO SUPER MARIO BROS NES', NULL, NULL, 10, NULL, '', NULL, NULL, NULL),
(40, 'merchandasing', 'MONOPOLY STRANGERS THINGS EDICIÃ“N COLECCIONISTA', NULL, NULL, 60, NULL, '', NULL, NULL, NULL),
(41, 'videojuego', 'New Super Mario Bros', '2006-04-25', 'Plataformas', 22, 'Nintendo DS, Wii U', '', NULL, NULL, NULL),
(42, 'videojuego', 'Crash Bandicoot N. Sane Trilogy', '2017-06-30', 'Acción, Aventura, Plataformas', 19, 'PlayStation 4, Nintendo Switch, Xbox One, Microsoft Windows', '', NULL, NULL, NULL),
(43, 'videojuego', 'Crash Bandicoot 4: It\'s About Time', '2020-09-16', 'Acción, Aventura, Plataformas', 69, 'PlayStation 4, PlayStation 5, Nintendo Switch, Xbox One, Xbox Series X y Series S, Microsoft Windows', '', NULL, NULL, NULL),
(44, 'videojuego', 'Horizon Zero Dawn', '2017-02-28', 'Acción Aventura Mundo abierto RPG', 16, 'PlayStation 4\r\nMicrosoft Windows\r\n', '', NULL, NULL, NULL),
(45, 'videojuego', 'God of War', '2018-04-20', 'Acción aventura', 14, 'PlayStation 4', '', NULL, NULL, NULL),
(46, 'videojuego', 'Dark Souls', '2011-09-22', 'Videojuego de rol, acción, aventura', 25, 'PlayStation 3, PlayStation 4, Xbox 360 y Microsoft Windows', '', NULL, NULL, NULL),
(47, 'videojuego', 'Call of Duty: Black Ops Cold War', '2020-11-13', 'Disparos en primera persona', 60, 'PlayStation 4, PlayStation 5, Xbox One, Xbox Series X y Series S, Microsoft Windows', '', NULL, NULL, NULL),
(48, 'videojuego', 'Halo 5: Guardians', '2015-10-27', 'Disparos en primera persona', 27, 'Xbox One', '', NULL, NULL, NULL),
(49, 'videojuego', 'Gears of War 4', '2016-10-11', 'Videojuego de disparos en tercera persona', 14, 'Microsoft Windows, Xbox One', '', NULL, NULL, NULL),
(50, 'videojuego', 'Grand Theft Auto V', '2013-09-17', 'Acción-aventura, Mundo abierto', 10, 'PlayStation 4, Xbox One, PlayStation 3, Xbox Series X y Series S, Xbox 360, Microsoft Windows, PlayStation 5', '', NULL, NULL, NULL),
(51, 'videojuego', 'Uncharted 4: El desenlace del ladrÃ³n', '2016-05-10', 'AcciÃ³n aventura Disparos en tercera persona', 12, 'PlayStation 4', '', NULL, NULL, NULL),
(52, 'videojuego', 'Borderlands 3', '2019-09-13', 'Disparos en primera persona, acciÃ³n-RPG', 11, 'PlayStation 4, PlayStation 5, Xbox One, Xbox Series X y Series S, Google Stadia, Microsoft Windows, Mac OS', '', NULL, NULL, NULL),
(53, 'videojuego', 'Tekken 7', '2015-03-18', 'lucha', 9, 'PlayStation 4, Xbox One, Microsoft Windows, Arcade', '', NULL, NULL, NULL),
(54, 'videojuego', 'Battlefield V', '2018-11-20', 'Disparos en primera persona Acción BÃ©lico', 16, 'PlayStation 4, Xbox One, Microsoft Windows', '', NULL, NULL, NULL),
(55, 'videojuego', 'Cyberpunk 2077', '2020-09-17', 'Rol de acción, disparos en primera persona', 29, 'PlayStation 4, Google Stadia, PlayStation 5, Xbox One, Xbox Series X y Series S, Microsoft Windows', '', NULL, NULL, NULL),
(56, 'videojuego', 'MediEvil', '2019-10-25', 'Aventuras', 16, 'PlayStation 4', '', NULL, NULL, NULL),
(57, 'videojuego', 'Star Wars Battlefront II', '2017-09-17', 'Videojuego de disparos en tercera persona, Videoju', 30, 'PlayStation 4, Xbox One, Microsoft Windows', '', NULL, NULL, NULL),
(58, 'videojuego', 'Spyro Reignited Trilogy', '2018-11-13', 'Plataformas', 20, 'PlayStation 4, Nintendo Switch, Xbox One, Microsoft Windows', '', NULL, NULL, NULL),
(59, 'videojuego', 'Ratchet & Clank: Atrapados en el tiempo', '2009-10-20', 'Videojuego de plataformas, Videojuego de acción-av', 10, ' PlayStation 3', '', NULL, NULL, NULL),
(60, 'videojuego', 'Mario Party 7', '2005-11-07', 'Minijuegos', 10, 'Nintendo GameCube', '', NULL, NULL, NULL),
(61, 'videojuego', 'Ghost of Tsushima', '2020-07-17', 'Videojuego de rol, Videojuego de lucha, Videojuego', 60, ' PlayStation 4', '', NULL, NULL, NULL),
(62, 'videojuego', 'Street Fighter V', '2016-02-16', 'Lucha', 6, 'PlayStation 4, Microsoft Windows, Arcade', '', NULL, NULL, NULL),
(63, 'videojuego', 'Monster Hunter Rise', '2021-03-26', 'Videojuego de aventura, Videojuego de disparos, Vi', 50, 'Nintendo Switch, Microsoft Windows', '', NULL, NULL, NULL),
(64, 'videojuego', 'Asura\'s Wrath', '2021-02-21', 'Beat \'em up, Acción', 10, 'PlayStation 3, Xbox 360', '', NULL, NULL, NULL),
(65, 'videojuego', 'Killing Floor 2', '2016-11-18', 'Videojuego de disparos en primera persona, Horror ', 20, ' PlayStation 4, Microsoft Windows, GNU/Linux', '', NULL, NULL, NULL),
(66, 'videojuego', 'The Jak and Daxter Trilogy', '2012-02-07', 'Compilación Videojuego de plataformas Videojuego d', 19, 'PlayStation 3, PlayStation Vita, PlayStation Network', '', NULL, NULL, NULL),
(67, 'videojuego', 'Persona 5', '2016-09-15', 'J-rol, Juego de mazmorras', 40, 'PlayStation 4, PlayStation 3', '', NULL, NULL, NULL),
(68, 'videojuego', 'Super Bomberman R', '2017-03-03', 'AcciÃ³n', 20, 'Nintendo Switch, PlayStation 4, Xbox One, Microsoft Windows', '', NULL, NULL, NULL),
(69, 'videojuego', 'Jurassic World Evolution', '2018-06-12', 'Videojuego de simulación económica, Videojuego de ', 8, 'PlayStation 4, Xbox One, Microsoft Windows', '', NULL, NULL, NULL),
(70, 'videojuego', 'Luigi\'s Mansion 3', '2019-10-31', 'Acción-aventura', 20, 'Nintendo Switch', '', NULL, NULL, NULL),
(71, 'videojuego', 'Metro Redux', '2014-08-26', ' Videojuego de disparos, Horror de supervivencia, ', 21, 'Nintendo Switch, PlayStation 4, Microsoft Windows', '', NULL, NULL, NULL),
(72, 'videojuego', 'The Seven Deadly Sins: Knights of Britannia', '2018-02-09', 'Acción y aventura', 30, 'PlayStation 4', '', NULL, NULL, NULL),
(73, 'videojuego', 'Naruto Shippuden: Ultimate Ninja Storm 4', '2016-02-04', 'Lucha, acción, aventura', 12, ' PlayStation 4, Xbox One, Microsoft Windows', '', NULL, NULL, NULL),
(74, 'videojuego', 'My Hero One\'s Justice', '2018-08-23', 'Videojuego de lucha, Videojuego de acción, Videoju', 30, 'PlayStation 4, Nintendo Switch, Xbox One, Microsoft Windows', '', NULL, NULL, NULL),
(75, 'videojuego', 'Tokyo Ghoul: re Call to Exist', '2019-11-04', 'Videojuego de supervivencia, Videojuego de lucha, ', 30, 'PlayStation 4, Microsoft Windows', '', NULL, NULL, NULL),
(76, 'videojuego', 'Spider-Man', '2018-09-07', 'Acción-aventura', 24.99, 'PlayStation 4', '', NULL, NULL, NULL),
(77, 'videojuego', 'Jump Force', '2018-10-12', 'Lucha', 10, ' PlayStation 4, Android, Xbox One, Microsoft Windows', '', NULL, NULL, NULL),
(78, 'videojuego', 'Dragon Ball FighterZ', '2018-01-26', 'lucha', 15, ' PlayStation 4, Nintendo Switch, Xbox One, Microsoft Windows', '', NULL, NULL, NULL),
(79, 'videojuego', 'Ark: Survival Evolved', '2015-06-02', 'Videojuego de supervivencia, Videojuego de disparo', 30, 'PlayStation 4, Xbox One, Nintendo Switch', '', NULL, NULL, NULL),
(80, 'videojuego', 'Journey', '2012-03-13', 'Aventura', 5, 'PlayStation 4, PlayStation 3, Microsoft Windows', '', NULL, NULL, NULL),
(81, 'videojuego', 'The Last of Us Part II', '2019-06-19', 'Horror de supervivencia Acción-aventura Disparos e', 60, 'PlayStation 4', '', NULL, NULL, NULL),
(82, 'videojuego', 'Just Cause 4', '2018-12-03', 'Videojuego de disparos en tercera persona, Videoju', 12, ' PlayStation 4, Xbox One, Microsoft Windows', '', NULL, NULL, NULL),
(83, 'videojuego', 'The Binding of Isaac', '2011-09-28', 'Videojuego de mazmorras, Videojuego independiente,', 10, ' Microsoft Windows, GNU/Linux, Mac OS, Mac OS Classic', '', NULL, NULL, NULL),
(84, 'videojuego', 'Sonic Heroes', '2003-12-30', 'Plataformas', 5, 'Nintendo GameCube, Xbox, PlayStation 2, Microsoft Windows', '', NULL, NULL, NULL),
(85, 'videojuego', 'Pokken Tournament', '2015-07-16', 'Lucha', 15, 'Arcade, Wii U', '', NULL, NULL, NULL),
(86, 'videojuego', 'Friday the 13th: The Game', '2017-05-26', 'Horror de supervivencia', 10, 'Microsoft Windows, PlayStation 4, Xbox One, Nintendo Switch', '', NULL, NULL, NULL),
(87, 'videojuego', 'Borderlands 2', '2012-09-18', 'Disparos en primera persona, acción-RPG', 20, 'PlayStation 4, PlayStation 3, Xbox 360, PlayStation Vita, Microsoft Windows, GNU/Linux, Mac OS Classic', '', NULL, NULL, NULL),
(88, 'videojuego', 'Alien: Isolation', '2014-10-06', 'Horror de supervivencia y sigilo', 10, 'PlayStation 4, Xbox One, Nintendo Switch, Microsoft Windows, Xbox 360, Mac OS, GNU/Linux, Mac OS Classic', '', NULL, NULL, NULL),
(89, 'videojuego', 'BioShock Infinite', '2013-03-26', 'FPS', 15, 'PlayStation 3, Xbox 360, Microsoft Windows, Mac OS Classic, GNU/Linux', '', NULL, NULL, NULL),
(90, 'videojuego', 'Just Dance 2021', '2021-11-12', 'Musical y Baile', 40, 'Nintendo Switch, PlayStation 4, PlayStation 5, Xbox One, Xbox Series X y Series S', '', NULL, NULL, NULL),
(91, 'merchandasing', 'COJÍN NINTENDO: COIN BOX 13CMS', NULL, NULL, 15, NULL, '', NULL, NULL, NULL),
(92, 'merchandasing', 'PELUCHE 20 CM RATCHET & CLANK: CLANK', NULL, NULL, 7, NULL, '', NULL, NULL, NULL),
(93, 'merchandasing', 'PELUCHE 20 CM RATCHET & CLANK: RATCHET', NULL, NULL, 7, NULL, '', NULL, NULL, NULL),
(94, 'merchandasing', 'PELUCHE MARIONETA NINTENDO: BOWSER JUNIOR', NULL, NULL, 20, NULL, '', NULL, NULL, NULL),
(95, 'merchandasing', 'CAMISETA NEGRA ROCKSTAR TALLA L', NULL, NULL, 7, NULL, '', NULL, NULL, NULL),
(96, 'merchandasing', 'CALCETINES DEATH STRANDING: DRIPS', NULL, NULL, 5, NULL, '', NULL, NULL, NULL),
(97, 'merchandasing', 'CAMISETA ASSASSINÂ´S CREED VALHALLA - CREST GRID TALLA L', NULL, NULL, 15, NULL, '', NULL, NULL, NULL),
(98, 'merchandasing', 'SUDADERA PLAYSTATION TALLA M', NULL, NULL, 50, NULL, '', NULL, NULL, NULL),
(99, 'merchandasing', 'GORRA RESIDENT EVIL S.T.A.R.S.', NULL, NULL, 16, NULL, '', NULL, NULL, NULL),
(100, 'merchandasing', 'GORRA THE LEGEND OF ZELDA: HYRUKE', NULL, NULL, 15, NULL, '', NULL, NULL, NULL),
(101, 'merchandasing', 'CHAQUETA BORDERLANDS 3: PSYCHO BOMBER TALLA XL', NULL, NULL, 80, NULL, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

DROP TABLE IF EXISTS `compras`;
CREATE TABLE IF NOT EXISTS `compras` (
  `ID_Articulo` int DEFAULT NULL,
  `Fecha` datetime NOT NULL,
  `Tipo_Articulo` enum('videojuego','merchandasing') DEFAULT NULL,
  `ID_Usuario` int DEFAULT NULL,
  PRIMARY KEY (`Fecha`),
  KEY `FK_Articulos_TO_Compras` (`ID_Articulo`),
  KEY `FK_Usuario_TO_Compras` (`ID_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

DROP TABLE IF EXISTS `favoritos`;
CREATE TABLE IF NOT EXISTS `favoritos` (
  `Tipo_Articulo` varchar(20) DEFAULT NULL,
  `ID_Articulo` int NOT NULL,
  `ID_Usuario` int NOT NULL,
  KEY `FK_Articulos_TO_Favoritos` (`ID_Articulo`),
  KEY `FK_Usuario_TO_Favoritos` (`ID_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `ID_Usuario` int NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellidos` varchar(50) DEFAULT NULL,
  `Contrasena` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Tipo_Usuario` enum('CLIENTE','ADMIN') DEFAULT NULL,
  PRIMARY KEY (`ID_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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