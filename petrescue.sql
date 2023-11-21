-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2023 a las 01:20:25
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `petrescue`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animales`
--

CREATE TABLE `animales` (
  `ID_animal` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Especie` varchar(20) NOT NULL,
  `Raza` varchar(20) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Genero` varchar(20) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `animales`
--

INSERT INTO `animales` (`ID_animal`, `Nombre`, `Especie`, `Raza`, `Edad`, `Genero`, `Descripcion`) VALUES
(1, 'Max', 'Perro', 'Labrador Retriever', 4, 'Macho', 'Max es un encantador Labrador Retriever de color dorado. Es un perro juguetón y amigable que adora p'),
(2, 'Luna', 'gato', 'bosque de noruega', 2, 'hembra', 'Luna es una gata Bosque de Noruega de pelaje espeso y suave, con hermosos tonos grises y un manto la'),
(3, 'Maddy', 'perro', 'Labrador', 3, 'hembra', 'Le gusta jugar en el parque y la siestas largas.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_Usuario` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Contraseña` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_Usuario`, `Nombre`, `Email`, `Contraseña`) VALUES
(1, 'catalina', 'catalina.rosero00@usc.edu.co', 'septiembre4'),
(5, 'Jose', 'jose@gmail.com', '123456'),
(6, 'alejandro', 'alejandro01@gmail.com', 'alejo123'),
(7, 'Mariana', 'marianaR@hotmail.com', 'Salo345'),
(8, 'Carlos', 'carlosSan@hotmail.com', 'shin4562'),
(9, 'marta', 'mar.mar34@gmail.com', 'xaofid56'),
(10, 'alicia', 'ali.mar09@gmial.com', 'noviembre320'),
(11, 'daniela', 'daniela@gmail.com', 'cdjfobu9re8y75ht'),
(12, 'isabella', 'isa_ro@gmail.com', 'd948igjf847u'),
(13, 'David', 'david.est99@gmail.com', '098ujnbv'),
(15, 'pablo', 'pablo22@gmail.com', 'ogkflr59h'),
(16, 'manuela', 'manuBo@gmail.com', '112256gtyh'),
(17, 'Sebastian', 'Sebas33_Muñoz@gmail.com', 'AmanSeba33456'),
(18, 'Rizo', 'rizo@gmail.com', 'juancamilo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `animales`
--
ALTER TABLE `animales`
  ADD PRIMARY KEY (`ID_animal`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `animales`
--
ALTER TABLE `animales`
  MODIFY `ID_animal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
