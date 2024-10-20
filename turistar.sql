USE turistar;


INSERT INTO `user` (`id`, `name`, `last_name`, `email`, `password`, `password2`,`image`, `phone`, `birth_day`, `genre`) VALUES 
(1, 'alejandra', 'velazquez', 'ro@gmail.com', '$2a$10$KwPSfDkCaPltbet2ry82ZuIJ6j30/dH8j0otfDsDaZ6ZIz7MAeGC2', '123123', 'women-default.png', 3885555555, '2002-12-02', 'Mujer'),
(2, 'pepito', 'rodriguez', 'pepito@gmail.com', '$2a$10$.6l503wiuczstthFMD87UOudbntYi5QAyn6CNTK753bVDsNeDXbg6', '456456', 'women-default.png', 388888888, '2255-12-12', 'Hombre'),
(3, 'Martin', 'Romero', 'martin@gmail.com', '$2a$10$Sw3rSeCtxYwq.TmZpjdw7OoOvcNWakJiI7XsPNaMngtx5LpbgICFu', '456456', 'women-default.png', 38888888, '2005-05-12', 'Hombre'),
(4, 'roberta', 'Monzon', 'roberta@gmail.com', '$2a$10$Dvy9wWHYsXcwhY3jYM1oEuqdB9Bb6/Ypa.HI1SllfwvVUlYH2x34.', '456456', 'women-default.png', 3885123123, '2005-12-02', ''),
(5, 'Marta Maria', 'Lopez', 'marta@gmail.com', '$2a$10$PEvSaimtqJP4gAtQsbF9LOjkdwUR5O6Dt4mQigm3VXSZqbIQ/ZayG', '123123', 'image-1702353099576.jpg', 3885123123, '2002-12-02', '');
-- --------------------------------------------------------
-- Estructura de tabla para la tabla `lodging`
-- --------------------------------------------------------

INSERT INTO `lodging` (`id_lodging`, `name`, `description`, `price`, `persons`, `id_user`, `province`, `locality`, `street`) VALUES
(1, 'Casita Purmamarca', 'APROVECHÁ PREVIAJE CON NOSOTROS!!! Casita Purma es una casita nueva dentro del casco histórico de Purmamarca. Dos personas, living-comedor-cocina, baño y patio. Desde las ventanas se puede disfrutar del Cerro de los Siete Colores y del pintoresco pueblo Patrimonio de la Humanida.', 120000, 2, 1, 'Jujuy', 'Purmamarca', 'Av. Siempre viva 234'), 
(2, 'ECOCABAÑA 3', 'ECOCABAÑA es un concepto de alojamiento rural y ecológico ubicado en Purmamarca con una de las mejores vistas panorámicas del Cerro de los 7 Colores, aquí tendrás un gran espacio para conectar con la naturaleza. Estamos muy cerca de los atractivos turísticos más importantes.', 130000, 4, 2, 'Jujuy', 'Purmamarca', 'Av. de los Tilos'), 
(3, 'Casa del Artista', 'Casa del Artista ofrece un lugar ideal para una escapada en pareja. Se encuentra situada en un entorno natural, donde se puede disfrutar de la paz y el silencio. Contamos con todos los servicios necesarios para que disfrutes tu estadía.', 100000, 3, 1, 'Jujuy', 'Purmamarca', 'Calle falsa 123'), 
(4, 'Casa Ushuaia', 'Casa Ushuaia se encuentra ubicada en un barrio tranquilo de la ciudad, a pocas cuadras del centro. Ideal para familias, amigos o grupos. En el lugar se ofrece un espacio verde, pileta y parrilla.', 200000, 6, 1, 'Jujuy', 'Purmamarca', 'Calle Falsa 99'), 
(5, 'Departamento Buenos Aires', 'Departamento cómodo y acogedor ubicado en el centro de Buenos Aires. Ideal para parejas o grupos de hasta 5 personas. Cuenta con todas las comodidades para hacer de tu estadía una experiencia inolvidable.', 60000, 5, 2, 'Buenos Aires', 'Buenos Aires', 'Av. de Mayo 123'), 
(6, 'Departamento Bariloche', 'Hermoso departamento en el centro de Bariloche, cerca del Lago Nahuel Huapi. Ideal para disfrutar de la naturaleza y actividades al aire libre. Capacidad hasta 6 personas.', 80000, 6, 2, 'Río Negro', 'Bariloche', 'Calle Mitre 234'), 
(7, 'Cabañas Mendoza', 'Cabañas en Mendoza con una vista espectacular a la montaña, ideal para disfrutar en pareja o con amigos. Las cabañas están equipadas y tienen pileta.', 120000, 4, 2, 'Mendoza', 'Mendoza', 'Calle del Sol'), 
(8, 'Cabañas Tucumán', 'Cabañas cómodas y acogedoras en Tucumán, con todas las comodidades. Ideal para familias y grupos. Pileta y espacio verde.', 100000, 5, 2, 'Tucumán', 'San Miguel de Tucumán', 'Av. Rivadavia'), 
(9, 'Villa Carlos Paz', 'Ubicada en el centro de Villa Carlos Paz, esta cabaña es perfecta para disfrutar del verano con amigos o familia. Tiene pileta y parrilla.', 90000, 5, 2, 'Córdoba', 'Villa Carlos Paz', 'Av. Libertad 34'), 
(10, 'Casa Iguazú', 'Casa Iguazú es un espacio amplio y luminoso, ideal para disfrutar en familia o grupos. Ubicada cerca de las cataratas, cuenta con pileta.', 150000, 6, 2, 'Misiones', 'Puerto Iguazú', 'Calle de las Aguas 56'), 
(11, 'Hotel Mediterráneo', 'Hotel en el centro de Iguazú, con todas las comodidades y servicios. Ideal para parejas y familias.', 120000, 4, 2, 'Misiones', 'Puerto Iguazú', 'Av. Brasil 789'), 
(12, 'Departamento en Iguazú', 'Departamento cómodo y acogedor, ideal para disfrutar de Iguazú. Muy bien ubicado, con todas las comodidades.', 95000, 3, 2, 'Misiones', 'Puerto Iguazú', 'Calle de la Paz 432'), 
(21, 'Casa Tradicional', 'Casa tradicional en el corazón de Purmamarca, ideal para disfrutar de la cultura local y la gastronomía.', 85000, 4, 1, 'Jujuy', 'Purmamarca', 'Calle de la Historia'), 
(22, 'ECOCABAÑA 4', 'ECOCABAÑA es un concepto de alojamiento rural y ecológico. Ideal para familias, ubicada en un entorno natural.', 160000, 5, 2, 'Jujuy', 'Purmamarca', 'Av. del Árbol'), 
(23, 'Hotel Moderno', 'Hotel moderno en Bariloche, con todas las comodidades. Ideal para disfrutar de la naturaleza.', 200000, 4, 2, 'Río Negro', 'Bariloche', 'Calle de la Nieve');
-- --------------------------------------------------------
-- Estructura de tabla para la tabla `images_lodging`
-- --------------------------------------------------------

INSERT INTO `images_lodging` (`id_image`, `id_lodging`, `name`) VALUES
(1, 1, 'casaPurma1.jpg'),
(2, 1, 'casaPurma2.jpg'),
(3, 1, 'casaPurma3.jpg'),
(4, 1, 'casaPurma4.jpg'),
(5, 2, 'ecocabaña1.jpg'),
(6, 2, 'ecocabaña2.jpg'),
(7, 2, 'ecocabaña3.jpg'),
(8, 2, 'ecocabaña4.jpg'),
(9, 3, 'casaArtista1.jpg'),
(10, 3, 'casaArtista2.jpg'),
(11, 3, 'casaArtista3.jpg'),
(12, 3, 'casaArtista4.jpg'),
(13, 4, 'casaUshuaia1.jpg'),
(14, 4, 'casaUshuaia2.jpg'),
(15, 4, 'casaUshuaia3.jpg'),
(16, 4, 'casaUshuaia4.jpg'),
(17, 4, 'casaUshuaia5.jpg'),
(18, 4, 'casaUshuaia6.jpg'),
(19, 5, 'deptoBaires1.jpg'),
(20, 5, 'deptoBaires2.jpg'),
(21, 5, 'deptoBaires3.jpg'),
(22, 5, 'deptoBaires4.jpg'),
(23, 5, 'deptoBaires5.jpg'),
(24, 5, 'deptoBaires6.jpg'),
(25, 6, 'deptoBariloche1.jpg'),
(26, 6, 'deptoBariloche2.jpg'),
(27, 6, 'deptoBariloche3.jpg'),
(28, 6, 'deptoBariloche4.jpg'),
(29, 6, 'deptoBariloche5.jpg'),
(30, 6, 'deptoBariloche6.jpg'),
(31, 7, 'mendoza1.jpg'),
(32, 7, 'mendoza2.jpg'),
(33, 7, 'mendoza3.jpg'),
(34, 7, 'mendoza4.jpg'),
(35, 8, 'tucuman1.jpg'),
(36, 8, 'tucuman2.jpg'),
(37, 8, 'tucuman3.jpg'),
(38, 8, 'tucuman4.jpg'),
(39, 9, 'villaCarlosPaz1.jpg'),
(40, 9, 'villaCarlosPaz2.jpg'),
(41, 9, 'villaCarlosPaz3.jpg'),
(42, 9, 'villaCarlosPaz4.jpg'),
(43, 10, 'casaIguazu.jpg'),
(44, 10, 'casaIguazu2.jpg'),
(45, 10, 'casaIguazu3.jpg'),
(46, 10, 'casaIguazu4.jpg'),
(47, 10, 'casaIguazu5.jpg'),
(48, 11, 'hotelMediterraneo.jpg'),
(49, 11, 'hotelMediterraneo2.jpg'),
(50, 11, 'hotelMediterraneo3.jpg'),
(51, 11, 'hotelMediterraneo4.jpg'),
(52, 12, 'departamentoIguazu.jpg'),
(53, 12, 'departamentoIguazu2.jpg'),
(54, 12, 'departamentoIguazu3.jpg'),
(55, 12, 'departamentoIguazu4.jpg'),
(76, 23, 'image-1702349508378.jpg'),
(77, 23, 'image-1702349508379.jpg'),
(80, 22, 'image-1702406088582.jpg'),
(81, 22, 'image-1702406088583.jpg');

-- --------------------------------------------------------
-- Estructura de tabla para la tabla `include`
-- --------------------------------------------------------

INSERT INTO `include` (`id_include`, `name`) VALUES
(1, 'Cocina'),
(2, 'Heladera'),
(3, 'Freezer'),
(4, 'Lavarropa'),
(5, 'Wi-fi'),
(6, 'Agua Caliente'),
(7, 'Baño privado'),
(8, 'Baño compartido'),
(9, 'Televisor'),
(10, 'Estacionamiento'),
(11, 'Garage'),
(12, 'Pileta');

-- --------------------------------------------------------
-- Estructura de tabla para la tabla `include_lodging`
-- --------------------------------------------------------

INSERT INTO `include_lodging` (`id`, `id_lodging`, `id_include`) VALUES
(18, 23, 1),
(19, 23, 3),
(20, 23, 4),
(21, 23, 5),
(22, 23, 7),
(23, 23, 9),
(24, 1, 1),
(25, 1, 5),
(26, 1, 6),
(27, 1, 7),
(28, 2, 1),
(29, 2, 6),
(30, 2, 7),
(31, 2, 8),
(32, 3, 1),
(33, 3, 2),
(34, 3, 5),
(35, 3, 6),
(36, 3, 9),
(37, 4, 1),
(38, 4, 5),
(39, 4, 7),
(40, 4, 9),
(41, 4, 10),
(42, 5, 1),
(43, 5, 5),
(44, 5, 7),
(45, 5, 9),
(46, 5, 10),
(47, 5, 12),
(48, 6, 1),
(49, 6, 2),
(50, 6, 5),
(51, 6, 6),
(52, 6, 9),
(53, 7, 1),
(54, 7, 3),
(55, 7, 4),
(56, 7, 5),
(57, 7, 6),
(58, 7, 7),
(59, 8, 1),
(60, 8, 2),
(61, 8, 7),
(62, 8, 9),
(63, 9, 1),
(64, 9, 5),
(65, 9, 9),
(66, 9, 12),
(67, 10, 1),
(68, 10, 2),
(69, 10, 5),
(70, 10, 9),
(71, 10, 10),
(72, 11, 1),
(73, 11, 2),
(74, 11, 5),
(75, 11, 9),
(76, 11, 12),
(77, 12, 1),
(78, 12, 2),
(79, 12, 5),
(80, 12, 7),
(81, 12, 9),
(82, 12, 12),
(103, 22, 1),
(104, 22, 2),
(105, 22, 6),
(106, 22, 7),
(107, 22, 8),
(108, 22, 9),
(109, 22, 11);

-- --------------------------------------------------------
-- Estructura de tabla para la tabla `favorites`
-- --------------------------------------------------------

