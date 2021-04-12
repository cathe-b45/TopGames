-- Si exsite la base de datos la eliminamos antes de crearla
DROP DATABASE IF EXISTS TopGames;

-- Creamos la base de datos
CREATE DATABASE TopGames;

-- Usamos la base de datos
USE TopGames;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Articulos`
--

CREATE TABLE `Articulos` (
  `ID_Articulo` int(11) NOT NULL,
  `Tipo` enum('videojuego','merchandasing') DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Fecha_Lanzamiento` date DEFAULT NULL,
  `Género` varchar(50) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Plataforma` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Compras`
--

CREATE TABLE `Compras` (
  `ID_Articulo` int(11) DEFAULT NULL,
  `Fecha` datetime NOT NULL,
  `Tipo_Articulo` enum('videojuego','merchandasing') DEFAULT NULL,
  `ID_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Favoritos`
--

CREATE TABLE `Favoritos` (
  `Tipo_Articulo` varchar(20) DEFAULT NULL,
  `ID_Articulo` int(11) NOT NULL,
  `ID_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE `Usuario` (
  `ID_Usuario` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellidos` varchar(50) DEFAULT NULL,
  `Contrasena` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Tipo_Usuario` enum('CLIENTE','ADMIN') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Articulos`
--
ALTER TABLE `Articulos`
  ADD PRIMARY KEY (`ID_Articulo`);

--
-- Indices de la tabla `Compras`
--
ALTER TABLE `Compras`
  ADD PRIMARY KEY (`Fecha`),
  ADD KEY `FK_Articulos_TO_Compras` (`ID_Articulo`),
  ADD KEY `FK_Usuario_TO_Compras` (`ID_Usuario`);

--
-- Indices de la tabla `Favoritos`
--
ALTER TABLE `Favoritos`
  ADD KEY `FK_Articulos_TO_Favoritos` (`ID_Articulo`),
  ADD KEY `FK_Usuario_TO_Favoritos` (`ID_Usuario`);

--
-- Indices de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`ID_Usuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Compras`
--
ALTER TABLE `Compras`
  ADD CONSTRAINT `FK_Articulos_TO_Compras` FOREIGN KEY (`ID_Articulo`) REFERENCES `Articulos` (`ID_Articulo`),
  ADD CONSTRAINT `FK_Usuario_TO_Compras` FOREIGN KEY (`ID_Usuario`) REFERENCES `Usuario` (`ID_Usuario`);

--
-- Filtros para la tabla `Favoritos`
--
ALTER TABLE `Favoritos`
  ADD CONSTRAINT `FK_Articulos_TO_Favoritos` FOREIGN KEY (`ID_Articulo`) REFERENCES `Articulos` (`ID_Articulo`),
  ADD CONSTRAINT `FK_Usuario_TO_Favoritos` FOREIGN KEY (`ID_Usuario`) REFERENCES `Usuario` (`ID_Usuario`);