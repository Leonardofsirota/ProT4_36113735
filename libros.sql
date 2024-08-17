-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-08-2024 a las 04:10:20
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
-- Base de datos: `libreria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `ano-publicacion` date NOT NULL,
  `ISBN` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `nombre`, `autor`, `categoria`, `ano-publicacion`, `ISBN`) VALUES
(1, 'El lobo estepario', 'Hermann Hesse', 'Novela', '1927-01-01', '9783518031599'),
(3, 'Vigilar y castigar', 'Michel Foucault', 'Ensayo', '1975-01-01', '9780394499420'),
(4, 'El arcoiris de gravedad', 'Thomas Pynchon', 'Novela', '1973-01-01', '9788483102237'),
(5, 'Azul', 'Ruben Dario', 'Poesia', '1888-07-30', '9788475670638'),
(6, 'El escarabajo de oro', 'Edgar Allan Poe', 'Cuento', '1843-01-01', '9788420733944'),
(7, 'Matar a un ruiseñor', 'Harper Lee', 'Novela', '1960-01-01', '9780060173227'),
(8, 'Romancero gitano', 'Federico Lorca', 'Poesia', '1928-01-01', '9788420690919'),
(9, 'El fantasma de Canterville', 'Oscar Wilde', 'Cuento', '1887-01-01', '9780744549515'),
(10, 'El libro rojo', 'Carl Jung', 'Ensayo ', '2009-01-01', '9780393089080');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
