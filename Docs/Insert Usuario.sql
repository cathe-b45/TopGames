-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 15-04-2021 a las 14:16:42
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
