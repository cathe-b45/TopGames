-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 26-05-2021 a las 17:54:21
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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

DROP TABLE IF EXISTS articulos;
CREATE TABLE `articulos` (
  `ID_Articulo` int(11) NOT NULL,
  `Tipo` enum('videojuego','merchandising') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Nombre` longtext,
  `Fecha_Lanzamiento` date DEFAULT NULL,
  `Genero` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Plataforma` mediumtext,
  `Imagen` varchar(128) DEFAULT NULL,
  `oferta` bit(1) DEFAULT NULL,
  `popular` bit(1) DEFAULT NULL,
  `slider` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`ID_Articulo`, `Tipo`, `Nombre`, `Fecha_Lanzamiento`, `Genero`, `Precio`, `Plataforma`, `Imagen`, `oferta`, `popular`, `slider`) VALUES
(1, 'videojuego', 'Kingdom Hearts', '2002-03-28', 'RPG', 17, 'PlayStation2', 'kingdom-hearts-1.jpg', NULL, NULL, b'0'),
(2, 'videojuego', 'Kingdom Hearts: Chain of Memories', '2004-11-04', 'RPG', 12, 'PlayStation 2', 'chain.jpg', NULL, NULL, b'0'),
(3, 'videojuego', 'Kingdom Hearts II', '2005-12-05', 'RPG', 15, ' PlayStation 2', 'kingdom-hearts-2.jpg', NULL, NULL, NULL),
(4, 'videojuego', 'Kingdom Hearts 358/2 Days', '2009-05-20', 'RPG', 10, 'Nintendo DS', 'kingdom-hearts-358-days.jpg', NULL, NULL, NULL),
(5, 'videojuego', 'Kingdom Hearts Birth by Sleep', '2010-01-09', 'RPG', 15, 'PlayStation 3', 'kingdom-hearts-birth-by-sleep.jpg', NULL, NULL, NULL),
(6, 'videojuego', 'Kingdom Hearts Re: Coded', '2010-10-07', 'RPG', 28, 'Nintendo DS', 'recoded.webp', NULL, NULL, NULL),
(7, 'videojuego', 'Kingdom Hearts Dream Drop Distance', '2012-03-12', 'RPG', 25, 'Nintendo 3DS', 'dream drop.jpg', NULL, NULL, NULL),
(8, 'videojuego', 'Kingdom Hearts 0.2 Birth by Sleep - A Fragmentary Passage', '2017-01-12', 'RPG', 12, 'Xbox One', 'Portadas-KH-0.2-A-Fragmentary-Passage.png', NULL, NULL, NULL),
(9, 'videojuego', 'Kingdom Hearts: Melody of Memory', '2020-10-14', 'RPG', 38, 'Nintendo Switch', 'melodyofmemory.jpg', NULL, NULL, NULL),
(10, 'videojuego', 'Kingdom Hearts III', '2019-01-25', 'RPG', 69, 'PlayStation 4', 'kingdom-hearts-3.jpg', NULL, NULL, b'1'),
(11, 'videojuego', 'NieR: Automata', '2017-02-23', 'RPG', 26, 'PlayStation 4', 'nier automata.jpg', NULL, NULL, b'1'),
(12, 'videojuego', 'Minecraft', '2011-11-18', 'Aventura', 26, 'PC, XBO, PS3, PSV, PS4', 'minecraft.jpg', NULL, NULL, b'1'),
(13, 'videojuego', 'Call of Duty: Modern Warfare', '2019-09-25', 'Shooter', 30, ' PlayStation 4, Xbox One, Microsoft Windows', 'modern warfare.jpg', NULL, NULL, NULL),
(14, 'videojuego', 'Call of Duty: Black Ops 4', '2018-08-03', 'Shooter', 25, ' PlayStation 4, Xbox One, Microsoft Windows', 'bo4.jpg', NULL, NULL, NULL),
(15, 'videojuego', ' Need for Speed Heat', '2019-11-08', 'Carreras, acción', 28, ' PlayStation 4, Xbox One, Microsoft Windows', 'needForSpeed.jpg', NULL, NULL, NULL),
(16, 'videojuego', 'Resident Evil 7: Biohazard', '2017-01-24', 'Horror de supervivencia, FPS, Gore', 9, 'PlayStation 4, Xbox One, Nintendo Switch, Microsoft Windows', 'residentEvil7.jpg', NULL, NULL, NULL),
(17, 'videojuego', 'Resident Evil 2', '2019-01-25', '	videojuego de disparos en tercera persona, Horror', 11, 'PlayStation 4, Xbox One, Microsoft Windows', 'resident evil 2.jpg', NULL, NULL, NULL),
(18, 'videojuego', 'Dying Light', '2015-01-26', 'Supervivencia, Acción', 39, 'PlayStation 4, Xbox One, Microsoft Windows, GNU/Linux, Mac OS Classic', 'dyinglight.jpg', NULL, NULL, NULL),
(19, 'videojuego', 'Resident Evil 4', '2005-01-11', 'Supervivencia, Gore', 24, 'PlayStation 2,PlayStation 4', 'Resident Evil 4.jpg', NULL, NULL, NULL),
(20, 'videojuego', 'The witcher 3 wild hunt', '2015-05-18', 'ARPG Acción-Aventura', 8, 'Microsoft Windows,Xbox One, PlayStation 4\r\nNintendo Switch', 'the-witcher-3-wild-hunt-cover.jpg', NULL, NULL, NULL),
(21, 'merchandising', 'Funko - Figura Disney - Kingdom Hearts - Goofy Halloween', NULL, NULL, 59, NULL, 'goofyKH.jpg', NULL, NULL, NULL),
(22, 'merchandising', 'MasTazas Kingdom Hearts A Taza Ceramica', NULL, NULL, 10, NULL, 'tazaKH.jpg', NULL, NULL, NULL),
(23, 'merchandising', 'Kingdom Hearts - Corazones del reino Póster', NULL, NULL, 11, NULL, 'khPoster.jpg', NULL, NULL, NULL),
(24, 'merchandising', 'Call of Duty: Black Ops 4 Playing Cards', NULL, NULL, 23, NULL, 'codCartas.jpg', NULL, NULL, NULL),
(25, 'merchandising', 'Gorra New Era X Call of Duty: Modern Warfare Black 9Fifty - Eastern Faction', NULL, NULL, 33, NULL, 'codGorra.jpg', NULL, NULL, NULL),
(26, 'merchandising', 'Lamparas Minecraft - Edicion Especial', NULL, NULL, 20, NULL, 'Lampara-Minecraft.jpg', NULL, NULL, NULL),
(27, 'merchandising', 'NUEVO 3D Moda Unisex Resident Evil Leon Scott Kennedy Impreso Sudadera con capucha casual Sudaderas', NULL, NULL, 60, NULL, 'sudaderaREV.jpg', NULL, NULL, NULL),
(28, 'merchandising', 'FIGURA POP RESIDENT EVIL: LEON KENNEDY', NULL, NULL, 15, NULL, 'funko-pop-resindent-evil-leon-s-kennedy.jpg', NULL, NULL, NULL),
(29, 'merchandising', 'FIGURA POP RESIDENT EVIL: NEMESIS', NULL, NULL, 15, NULL, 'funko_nemesis.jpg', NULL, NULL, NULL),
(30, 'merchandising', 'FIGURA NENDOROID WITCHER 3: GERALT', NULL, NULL, 70, NULL, 'figuraTW3.jpg', NULL, NULL, NULL),
(31, 'merchandising', 'FIGURA QFIG HARRY POTTER: HERMIONE', NULL, NULL, 18, NULL, 'hermione.jpg', NULL, NULL, NULL),
(32, 'merchandising', 'VARITA HARRY POTTER: DUMBLEDORE', NULL, NULL, 30, NULL, 'varitaHP.jpg', NULL, NULL, NULL),
(33, 'merchandising', 'PELUCHE SUPER MARIO: MARIO TANOOKI 21CM', NULL, NULL, 18, NULL, 'peluche_Mario.jpg', NULL, NULL, NULL),
(34, 'merchandising', 'PELUCHE 21CM LINK ZELDA BOTW', NULL, NULL, 22, NULL, 'peluche_link.jpg', NULL, NULL, NULL),
(35, 'merchandising', 'PELUCHE POKEMON 21CM SURTIDO', NULL, NULL, 20, NULL, 'peluchePokemon.png', NULL, NULL, NULL),
(36, 'merchandising', 'CUADRO 3D HARRY POTTER: HARRY POTTER Y SIRIUS', NULL, NULL, 11, NULL, 'posterHarryPotter.jpg', NULL, NULL, NULL),
(37, 'merchandising', 'CUADRO 3D PLAYSTATION SYMBOLS', NULL, NULL, 11, NULL, '3DPS$.jpg', NULL, NULL, NULL),
(38, 'merchandising', 'MONOPOLY: AVENGERS', NULL, NULL, 40, NULL, 'monopoly.jpg', NULL, NULL, NULL),
(39, 'merchandising', 'LIENZO SUPER MARIO BROS NES', NULL, NULL, 10, NULL, 'lienzoSuperMarioBross.jpg', NULL, NULL, NULL),
(40, 'merchandising', 'MONOPOLY STRANGERS THINGS EDICION COLECCIONISTA', NULL, NULL, 60, NULL, 'monopoly_stranger.jpg', NULL, NULL, NULL),
(41, 'videojuego', 'New Super Mario Bros', '2006-04-25', 'Plataformas', 22, 'Nintendo DS, Wii U', 'newSuperMarioBros.jpg', NULL, NULL, NULL),
(42, 'videojuego', 'Crash Bandicoot N. Sane Trilogy', '2017-06-30', 'Acción, Aventura, Plataformas', 19, 'PlayStation 4, Nintendo Switch, Xbox One, Microsoft Windows', 'crashBandicoot.jpg', NULL, NULL, NULL),
(43, 'videojuego', 'Crash Bandicoot 4: It\'s About Time', '2020-09-16', 'Acción, Aventura, Plataformas', 69, 'PlayStation 4, PlayStation 5, Nintendo Switch, Xbox One, Xbox Series X y Series S, Microsoft Windows', 'crashBandicoot4.jpg', NULL, NULL, NULL),
(44, 'videojuego', 'Horizon Zero Dawn', '2017-02-28', 'Acción Aventura Mundo abierto RPG', 16, 'PlayStation 4\r\nMicrosoft Windows\r\n', 'horizon-zero-dawn.jpg', NULL, NULL, NULL),
(45, 'videojuego', 'God of War', '2018-04-20', 'Acción aventura', 14, 'PlayStation 4', 'godOfWar.jpg', NULL, NULL, NULL),
(46, 'videojuego', 'Dark Souls', '2011-09-22', 'Videojuego de rol, acción, aventura', 25, 'PlayStation 3, PlayStation 4, Xbox 360 y Microsoft Windows', 'darkSOuls.jpg', NULL, NULL, NULL),
(47, 'videojuego', 'Call of Duty: Black Ops Cold War', '2020-11-13', 'Disparos en primera persona', 60, 'PlayStation 4, PlayStation 5, Xbox One, Xbox Series X y Series S, Microsoft Windows', 'codColdWar.jpg', NULL, NULL, NULL),
(48, 'videojuego', 'Halo 5: Guardians', '2015-10-27', 'Disparos en primera persona', 27, 'Xbox One', 'halo5.jpg', NULL, NULL, NULL),
(49, 'videojuego', 'Gears of War 4', '2016-10-11', 'Videojuego de disparos en tercera persona', 14, 'Microsoft Windows, Xbox One', 'gearsOfWar.jpg', NULL, NULL, NULL),
(50, 'videojuego', 'Grand Theft Auto V', '2013-09-17', 'Acción-aventura, Mundo abierto', 10, 'PlayStation 4, Xbox One, PlayStation 3, Xbox Series X y Series S, Xbox 360, Microsoft Windows, PlayStation 5', 'gta5.jpg', NULL, NULL, NULL),
(51, 'videojuego', 'Uncharted 4: El desenlace del ladron', '2016-05-10', 'Accion aventura Disparos en tercera persona', 12, 'PlayStation 4', 'uncharted4.jpg', NULL, NULL, NULL),
(52, 'videojuego', 'Borderlands 3', '2019-09-13', 'Disparos en primera persona, accion-RPG', 11, 'PlayStation 4, PlayStation 5, Xbox One, Xbox Series X y Series S, Google Stadia, Microsoft Windows, Mac OS', 'borderlands3.jpg', NULL, NULL, NULL),
(53, 'videojuego', 'Tekken 7', '2015-03-18', 'lucha', 9, 'PlayStation 4, Xbox One, Microsoft Windows, Arcade', 'tekken.jpg', NULL, NULL, NULL),
(54, 'videojuego', 'Battlefield V', '2018-11-20', 'Disparos en primera persona Acción', 16, 'PlayStation 4, Xbox One, Microsoft Windows', 'battlefield v.jpg', NULL, NULL, NULL),
(55, 'videojuego', 'Cyberpunk 2077', '2020-09-17', 'Rol de acción, disparos en primera persona', 29, 'PlayStation 4, Google Stadia, PlayStation 5, Xbox One, Xbox Series X y Series S, Microsoft Windows', 'cyberpunks.jpg', NULL, NULL, NULL),
(56, 'videojuego', 'MediEvil', '2019-10-25', 'Aventuras', 16, 'PlayStation 4', 'mediEvil.jpg', NULL, NULL, NULL),
(57, 'videojuego', 'Star Wars Battlefront II', '2017-09-17', 'Videojuego de disparos en tercera persona, Videoju', 30, 'PlayStation 4, Xbox One, Microsoft Windows', 'battlefornt2.jpg', NULL, NULL, NULL),
(58, 'videojuego', 'Spyro Reignited Trilogy', '2018-11-13', 'Plataformas', 20, 'PlayStation 4, Nintendo Switch, Xbox One, Microsoft Windows', 'spyro.jpg', NULL, NULL, NULL),
(59, 'videojuego', 'Ratchet & Clank: Atrapados en el tiempo', '2009-10-20', 'Videojuego de plataformas, Videojuego de acción-av', 10, ' PlayStation 3', 'rachetyclank_atrapados en el tiempo.jpg', NULL, NULL, NULL),
(60, 'videojuego', 'Mario Party 7', '2005-11-07', 'Minijuegos', 10, 'Nintendo GameCube', 'marioParty7.webp', NULL, NULL, NULL),
(61, 'videojuego', 'Ghost of Tsushima', '2020-07-17', 'Videojuego de rol, Videojuego de lucha, Videojuego', 60, ' PlayStation 4', 'ghost_of_tsushima.jpg', NULL, NULL, NULL),
(62, 'videojuego', 'Street Fighter V', '2016-02-16', 'Lucha', 6, 'PlayStation 4, Microsoft Windows, Arcade', 'streetFighter.jpg', NULL, NULL, NULL),
(63, 'videojuego', 'Monster Hunter Rise', '2021-03-26', 'Videojuego de aventura, Videojuego de disparos, Vi', 50, 'Nintendo Switch, Microsoft Windows', 'monsterHunter.jpg', NULL, NULL, NULL),
(64, 'videojuego', 'Asura\'s Wrath', '2021-02-21', 'Beat \'em up, Acción', 10, 'PlayStation 3, Xbox 360', 'asuraWrath.jpg', NULL, NULL, NULL),
(65, 'videojuego', 'Killing Floor 2', '2016-11-18', 'Videojuego de disparos en primera persona, Horror ', 20, ' PlayStation 4, Microsoft Windows, GNU/Linux', 'killing-floor-2.jpg', NULL, NULL, NULL),
(66, 'videojuego', 'The Jak and Daxter Trilogy', '2012-02-07', 'Compilación Videojuego de plataformas Videojuego d', 19, 'PlayStation 3, PlayStation Vita, PlayStation Network', 'jakAndDexter.jpg', NULL, NULL, NULL),
(67, 'videojuego', 'Persona 5', '2016-09-15', 'J-rol, Juego de mazmorras', 40, 'PlayStation 4, PlayStation 3', 'persona5.jpg', NULL, NULL, NULL),
(68, 'videojuego', 'Super Bomberman R', '2017-03-03', 'Accion', 20, 'Nintendo Switch, PlayStation 4, Xbox One, Microsoft Windows', 'super-bomberman-r-cover.jpg', NULL, NULL, NULL),
(69, 'videojuego', 'Jurassic World Evolution', '2018-06-12', 'Videojuego de simulación económica, Videojuego de ', 8, 'PlayStation 4, Xbox One, Microsoft Windows', 'jurassicPArk.jpg', NULL, NULL, NULL),
(70, 'videojuego', 'Luigi\'s Mansion 3', '2019-10-31', 'Acción-aventura', 20, 'Nintendo Switch', 'luigisMansions.jpg', NULL, NULL, NULL),
(71, 'videojuego', 'Metro Redux', '2014-08-26', ' Videojuego de disparos, Horror de supervivencia, ', 21, 'Nintendo Switch, PlayStation 4, Microsoft Windows', 'metro_redux.jpg', NULL, NULL, NULL),
(72, 'videojuego', 'The Seven Deadly Sins: Knights of Britannia', '2018-02-09', 'Acción y aventura', 30, 'PlayStation 4', 'nanatsu no taizai.jpg', NULL, NULL, NULL),
(73, 'videojuego', 'Naruto Shippuden: Ultimate Ninja Storm 4', '2016-02-04', 'Lucha, acción, aventura', 12, ' PlayStation 4, Xbox One, Microsoft Windows', 'narutoShipuddenStorm4.jpg', NULL, NULL, NULL),
(74, 'videojuego', 'My Hero One\'s Justice', '2018-08-23', 'Videojuego de lucha, Videojuego de acción, Videoju', 30, 'PlayStation 4, Nintendo Switch, Xbox One, Microsoft Windows', 'my_hero_ones_justice.jpg', NULL, NULL, NULL),
(75, 'videojuego', 'Tokyo Ghoul: re Call to Exist', '2019-11-04', 'Videojuego de supervivencia, Videojuego de lucha, ', 30, 'PlayStation 4, Microsoft Windows', 'tokyo-ghoul-re-call-to-exist.jpg', NULL, NULL, NULL),
(76, 'videojuego', 'Spider-Man', '2018-09-07', 'Acción-aventura', 24.99, 'PlayStation 4', 'Spiderman.jpg', NULL, NULL, NULL),
(77, 'videojuego', 'Jump Force', '2018-10-12', 'Lucha', 10, ' PlayStation 4, Android, Xbox One, Microsoft Windows', 'jump_force.jpg', NULL, NULL, NULL),
(78, 'videojuego', 'Dragon Ball FighterZ', '2018-01-26', 'lucha', 15, ' PlayStation 4, Nintendo Switch, Xbox One, Microsoft Windows', 'dragonBall.jpg', NULL, NULL, NULL),
(79, 'videojuego', 'Ark: Survival Evolved', '2015-06-02', 'Videojuego de supervivencia, Videojuego de disparo', 30, 'PlayStation 4, Xbox One, Nintendo Switch', 'ark.jpg', NULL, NULL, NULL),
(80, 'videojuego', 'Journey', '2012-03-13', 'Aventura', 5, 'PlayStation 4, PlayStation 3, Microsoft Windows', 'journey.jpg', NULL, NULL, NULL),
(81, 'videojuego', 'The Last of Us Part II', '2019-06-19', 'Horror de supervivencia Acción-aventura Disparos e', 60, 'PlayStation 4', 'theLastOfUs.jpg', NULL, NULL, NULL),
(82, 'videojuego', 'Just Cause 4', '2018-12-03', 'Videojuego de disparos en tercera persona, Videoju', 12, ' PlayStation 4, Xbox One, Microsoft Windows', 'justCause4.jpg', NULL, NULL, NULL),
(83, 'videojuego', 'The Binding of Isaac', '2011-09-28', 'Videojuego de mazmorras, Videojuego independiente,', 10, ' Microsoft Windows, GNU/Linux, Mac OS, Mac OS Classic', 'the-binding-of-isaac-afterbirth-cover.jpg', NULL, NULL, NULL),
(84, 'videojuego', 'Sonic Heroes', '2003-12-30', 'Plataformas', 5, 'Nintendo GameCube, Xbox, PlayStation 2, Microsoft Windows', 'sonic.jpg', NULL, NULL, NULL),
(85, 'videojuego', 'Pokken Tournament', '2015-07-16', 'Lucha', 15, 'Arcade, Wii U', 'pokemonTournament.jpg', NULL, NULL, NULL),
(86, 'videojuego', 'Friday the 13th: The Game', '2017-05-26', 'Horror de supervivencia', 10, 'Microsoft Windows, PlayStation 4, Xbox One, Nintendo Switch', 'friday13.jpg', NULL, NULL, NULL),
(87, 'videojuego', 'Borderlands 2', '2012-09-18', 'Disparos en primera persona, acción-RPG', 20, 'PlayStation 4, PlayStation 3, Xbox 360, PlayStation Vita, Microsoft Windows, GNU/Linux, Mac OS Classic', 'borderlands2.jpg', NULL, NULL, NULL),
(88, 'videojuego', 'Alien: Isolation', '2014-10-06', 'Horror de supervivencia y sigilo', 10, 'PlayStation 4, Xbox One, Nintendo Switch, Microsoft Windows, Xbox 360, Mac OS, GNU/Linux, Mac OS Classic', 'alien_isolation.jpg', NULL, NULL, NULL),
(89, 'videojuego', 'BioShock Infinite', '2013-03-26', 'FPS', 15, 'PlayStation 3, Xbox 360, Microsoft Windows, Mac OS Classic, GNU/Linux', 'bioshock_infinite.jpg', NULL, NULL, NULL),
(90, 'videojuego', 'Just Dance 2021', '2021-11-12', 'Musical y Baile', 40, 'Nintendo Switch, PlayStation 4, PlayStation 5, Xbox One, Xbox Series X y Series S', 'just_dance.webp', NULL, NULL, NULL),
(91, 'merchandising', 'COJÍN NINTENDO: COIN BOX 13CMS', NULL, NULL, 15, NULL, 'cojin nintendo.png', NULL, NULL, NULL),
(92, 'merchandising', 'PELUCHE 20 CM RATCHET & CLANK: CLANK', NULL, NULL, 7, NULL, 'clank.jpg', NULL, NULL, NULL),
(93, 'merchandising', 'PELUCHE 20 CM RATCHET & CLANK: RATCHET', NULL, NULL, 7, NULL, 'rachet.jpg', NULL, NULL, NULL),
(94, 'merchandising', 'PELUCHE MARIONETA NINTENDO: BOWSER JUNIOR', NULL, NULL, 20, NULL, 'bowserJunior.jpg', NULL, NULL, NULL),
(95, 'merchandising', 'CAMISETA NEGRA ROCKSTAR TALLA L', NULL, NULL, 7, NULL, 'rokstar.jpg', NULL, NULL, NULL),
(96, 'merchandising', 'CALCETINES DEATH STRANDING: DRIPS', NULL, NULL, 5, NULL, 'calcetiones_death.png', NULL, NULL, NULL),
(97, 'merchandising', 'CAMISETA ASSASSINÂ´S CREED VALHALLA - CREST GRID TALLA L', NULL, NULL, 15, NULL, 'camiseta_assassins.jpg', NULL, NULL, NULL),
(98, 'merchandising', 'SUDADERA PLAYSTATION TALLA M', NULL, NULL, 50, NULL, 'sudaderaps4.jpg', NULL, NULL, NULL),
(99, 'merchandising', 'GORRA RESIDENT EVIL S.T.A.R.S.', NULL, NULL, 16, NULL, 'gorra_resident_evil.jpg', NULL, NULL, NULL),
(100, 'merchandising', 'GORRA THE LEGEND OF ZELDA: HYRUKE', NULL, NULL, 15, NULL, 'gorra_zelda.jpg', NULL, NULL, NULL),
(101, 'merchandising', 'CHAQUETA BORDERLANDS 3: PSYCHO BOMBER TALLA XL', NULL, NULL, 80, NULL, 'chaqueta_borderlands3.jpg', NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`ID_Articulo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
