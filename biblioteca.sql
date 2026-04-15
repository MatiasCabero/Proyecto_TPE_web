-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-04-2026 a las 00:08:36
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `fecha_nac` date NOT NULL,
  `biografia` text NOT NULL,
  `foto` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id`, `nombre`, `apellido`, `fecha_nac`, `biografia`, `foto`) VALUES
(1, 'Paulo', 'Coelho', '1947-08-24', 'Paulo Coelho de Souza es un novelista, dramaturgo y letrista brasileño después de varios años dedicado a la poesía. Es uno de los escritores y novelistas más leídos del mundo, con más de 320 millones de libros vendidos en más de 170 países, traducidos a 88 lenguas.', 'https://www.zendalibros.com/deja-de-odiar-a-paulo-coelho/'),
(2, 'Isabel', 'Allende', '1942-08-02', 'Isabel Angélica Allende Llona ​ es una escritora chilena. Desde 2004 es miembro de la Academia Estadounidense de las Artes y las Letras.​ Obtuvo el Premio Nacional de Literatura de Chile en 2010.', 'https://www.aarp.org/espanol/entretenimiento/musica-cultura/info-2018/isabel-allende-escritora-maestra-filantropa.html');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(350) NOT NULL,
  `fecha_publicacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id`, `titulo`, `id_autor`, `descripcion`, `imagen`, `fecha_publicacion`) VALUES
(1, 'Verónika decide morir', 1, 'Veronika decide morir -en portugués: Veronika decide morrer- es una novela del escritor Paulo Coelho publicada en 1998, diez años después de la publicación de El Alquimista. Cuenta la historia de una joven de 24 años, llamada Veronika, que decide acabar con su vida. ', 'https://www.amazon.com.mx/Veronika-decide-morir-Decides-Die/dp/0060011939', '0000-00-00'),
(2, 'El alquimista', 1, 'El alquimista es una novela escrita por el escritor brasileño Paulo Coelho. Fue traducida a 88 lenguas y publicada en más de 170 países con más de 85 millones de copias en todo el mundo.?', 'https://www.planetadelibros.com.ar/libro-el-alquimista-td/383561', '0000-00-00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_autor` (`id_autor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
