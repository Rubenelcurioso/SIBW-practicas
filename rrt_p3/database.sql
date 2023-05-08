-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: database:3306
-- Generation Time: Apr 24, 2023 at 08:34 AM
-- Server version: 8.0.32
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `docker`
--
CREATE DATABASE IF NOT EXISTS `docker` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `docker`;
--
-- Database: `SIBW`
--
CREATE DATABASE IF NOT EXISTS `SIBW` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `SIBW`;

-- --------------------------------------------------------

--
-- Table structure for table `cientificos`
--

CREATE TABLE `cientificos` (
  `id` int UNSIGNED NOT NULL,
  `nombre` varchar(40) NOT NULL COMMENT 'Nombre + apellidos',
  `f_nac` date NOT NULL,
  `f_mue` date NOT NULL,
  `lugar` varchar(20) NOT NULL,
  `texto` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL COMMENT 'Contenido',
  `url` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL COMMENT 'URL Imagenes'
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `cientificos`
--

INSERT INTO `cientificos` (`id`, `nombre`, `f_nac`, `f_mue`, `lugar`, `texto`, `url`) VALUES
(1, 'Albert Einstein', '1879-03-14', '1955-04-18', 'Ulm - Alemania', '<p><strong>Albert Einstein</strong> fue un físico alemán de los <strong>siglos XIX y XX</strong> <sub>(nació el 14 de marzo de 1879 y murió el 18 de abril de 1955)</sub> conocido principalmente por el desarrollo de la <strong>teoría de la relatividad </strong><sub>(especial y general)</sub> y la explicación <strong>teórica del movimiento browniano y el efecto fotoeléctrico</strong>.</p>\r\n            <p>Nació en la ciudad alemana de <strong>Ulm</strong>, pero al año de vida su familia se mudó a Munich, donde viviría hasta los 15 años. Con 17 ingresó en la Escuela Politécnica Federal de Zurich para estudiar matemáticas y física. Cinco años más tarde, ya graduado, consiguió la nacionalidad suiza y en 1902 comenzó a trabajar en la Oficina Federal de la Propiedad Intelectual de Suiza, empleo que compaginó hasta los 30 años con sus investigaciones científicas.</p>\r\n            <p><strong>1905 fue su año más fructífero</strong>, resultado de la publicación de cuatro artículos científicos sobre el efecto fotoeléctrico, el movimiento browniano, la teoría de la relatividad especial y la equivalencia masa-energía <sub>(E = mc²)</sub>. El primero le valió el <strong>Premio Nobel de Física del año 1921</strong>, el segundo el grado de doctor y los dos últimos le consagrarían, con el tiempo, como el <strong>mayor científico del siglo XX</strong>.</p>\r\n            <p>En 1908 comenzó a ejercer como profesor de física en la universidad de Berna, cargo que continuaría años posteriores en Praga y finalmente en Berlín, ciudad en la que vivió hasta que el ascenso del régimen nazi le hiciera abandonar Alemania y mudarse a Estados Unidos (1932). Allí impartió docencia en el Instituto de Estudios Avanzados de Princeton, se nacionalizó estadounidense (obteniendo la doble nacionalidad suizo-estadounidense) y pasó el resto de su vida intentando integrar las leyes físicas de la gravitación y el electromagnetismo así como divulgando valores pacifistas, socialistas y sionistas hasta su fallecimiento por una hemorragia interna el 18 de abril de 1955 (76 años).</p>', '/img/AlbertEinstein.jpg;/img/consultoria_innovacion Albert Einstein.jpg'),
(3, 'Johann Carl Friedrich Gauss', '1777-04-30', '1855-02-23', 'Reino de Hannover', '<p>(Karl o Carl Friedrich Gauss; Brunswick, actual Alemania, 1777 - Gotinga, id., 1855) Matemático, físico y astrónomo alemán. Nacido en el seno de una familia humilde, desde muy temprana edad Karl Friedrich Gauss dio muestras de una prodigiosa capacidad para las matemáticas (según la leyenda, a los tres años interrumpió a su padre cuando estaba ocupado en la contabilidad de su negocio para indicarle un error de cálculo), hasta el punto de ser recomendado al duque de Brunswick por sus profesores de la escuela primaria.</p>\r\n<p>El duque le proporcionó asistencia financiera en sus estudios secundarios y universitarios, que efectuó en la Universidad de Gotinga entre 1795 y 1798. Su tesis doctoral (1799) versó sobre el teorema fundamental del álgebra (que establece que toda ecuación algebraica de coeficientes complejos tiene soluciones igualmente complejas), que Gauss demostró. </p>\r\n<p>En 1801 Gauss publicó una obra destinada a influir de forma decisiva en la conformación de la matemática del resto del siglo, y particularmente en el ámbito de la teoría de números, las Disquisiciones aritméticas, entre cuyos numerosos hallazgos cabe destacar: la primera prueba de la ley de la reciprocidad cuadrática; una solución algebraica al problema de cómo determinar si un polígono regular de n lados puede ser construido de manera geométrica (sin resolver desde los tiempos de Euclides); un tratamiento exhaustivo de la teoría de los números congruentes; y numerosos resultados con números y funciones de variable compleja (que volvería a tratar en 1831, describiendo el modo exacto de desarrollar una teoría completa sobre los mismos a partir de sus representaciones en el plano x, y) que marcaron el punto de partida de la moderna teoría de los números algebraicos. </p>\r\n<p>Su fama como matemático creció considerablemente ese mismo año, cuando fue capaz de predecir con exactitud el comportamiento orbital del asteroide Ceres, avistado por primera vez pocos meses antes, para lo cual empleó el método de los mínimos cuadrados, desarrollado por él mismo en 1794 y aún hoy día la base computacional de modernas herramientas de estimación astronómica.</p>\r\n<p>En 1807 aceptó el puesto de profesor de astronomía en el Observatorio de Gotinga, cargo en el que permaneció toda su vida. Dos años más tarde, su primera esposa, con quien había contraído matrimonio en 1805, falleció al dar a luz a su tercer hijo; más tarde se casó en segundas nupcias y tuvo tres hijos más. En esos años Gauss maduró sus ideas sobre geometría no euclidiana, esto es, la construcción de una geometría lógicamente coherente que prescindiera del postulado de Euclides de las paralelas; aunque no publicó sus conclusiones, se adelantó en más de treinta años a los trabajos posteriores de Nikolai Lobachevski y Janos Bolyai.</p>\r\n<p>Alrededor de 1820, ocupado en la correcta determinación matemática de la forma y el tamaño del globo terráqueo, Gauss desarrolló numerosas herramientas para el tratamiento de los datos observacionales, entre las cuales destaca la curva de distribución de errores que lleva su nombre, conocida también con el apelativo de distribución normal y que constituye uno de los pilares de la estadística.</p>\r\n<p>Otros resultados asociados a su interés por la geodesia son la invención del heliotropo, y, en el campo de la matemática pura, sus ideas sobre el estudio de las características de las superficies curvas que, explicitadas en su obra Disquisitiones generales circa superficies curvas (1828), sentaron las bases de la moderna geometría diferencial. También mereció su atención el fenómeno del magnetismo, que culminó con la instalación del primer telégrafo eléctrico (1833). Íntimamente relacionados con sus investigaciones sobre dicha materia fueron los principios de la teoría matemática del potencial, que publicó en 1840.</p>\r\n<p>Otras áreas de la física que Gauss estudió fueron la mecánica, la acústica, la capilaridad y, muy especialmente, la óptica, disciplina sobre la que publicó el tratado Investigaciones dióptricas (1841), en las cuales demostró que un sistema de lentes cualquiera es siempre reducible a una sola lente con las características adecuadas. Fue tal vez la última aportación fundamental de Karl Friedrich Gauss, un científico cuya profundidad de análisis, amplitud de intereses y rigor de tratamiento le merecieron en vida el apelativo de «príncipe de los matemáticos».</p>\r\n', 'img/220px-Carl_Friedrich_Gauss_1840_by_Jensen.jpg'),
(5, 'Michael Faraday', '1791-09-22', '1867-08-25', 'Reino Unido', '<p>(Newington, Gran Bretaña, 1791 - Londres, 1867) Científico británico, uno de los físicos más destacados del siglo XIX. Michael Faraday nació en el seno de una familia humilde y recibió una educación básica. A temprana edad tuvo que empezar a trabajar, primero como repartidor de periódicos, y a los catorce años en una librería, donde tuvo la oportunidad de leer algunos artículos científicos que lo impulsaron a realizar sus primeros experimentos. </p>\r\n<p>Tras asistir a algunas conferencias sobre química impartidas por sir Humphry Davy en la Royal Institution, Faraday le pidió que lo aceptara como asistente en su laboratorio. Cuando uno de sus ayudantes dejó el puesto, Davy se lo ofreció a Faraday. Pronto se destacó en el campo de la química, con descubrimientos como el benceno y las primeras reacciones de sustitución orgánica conocidas, en las que obtuvo compuestos clorados de cadena carbonada a partir de etileno. </p>\r\n<p>En esa época, el científico danés Hans Christian Oersted descubrió los campos magnéticos generados por corrientes eléctricas. Basándose en estos experimentos, Faraday logró desarrollar el primer motor eléctrico conocido. En 1831 colaboró con Charles Wheatstone e investigó sobre fenómenos de inducción electromagnética. Observó que un imán en movimiento a través de una bobina induce en ella una corriente eléctrica, lo cual le permitió describir matemáticamente la ley que rige la producción de electricidad por un imán. </p>\r\n<p>Realizó además varios experimentos electroquímicos que le permitieron relacionar de forma directa materia con electricidad. Tras observar cómo se depositan las sales presentes en una cuba electrolítica al pasar una corriente eléctrica a su través, determinó que la cantidad de sustancia depositada es directamente proporcional a la cantidad de corriente circulante, y que, para una cantidad de corriente dada, los distintos pesos de sustancias depositadas están relacionados con sus respectivos equivalentes químicos. </p>\r\n<p> Los descubrimientos de Faraday fueron determinantes en el avance que pronto iban a experimentar los estudios sobre el electromagnetismo. Posteriores aportaciones que resultaron definitivas para el desarrollo de la física, como es el caso de la teoría del campo electromagnético introducida por James Clerk Maxwell, se fundamentaron en la labor pionera que había llevado a cabo Michael Faraday.</p>', 'img/Michael-Faraday-1.jpg'),
(2, 'Nicolas Copernico', '1473-02-19', '1543-05-24', 'Reino de Polonia', '<p><span style=\"text-decoration: underline;\"><strong>Copérnico</strong></span> nació el 19 de febrero de 1473 en la ciudad de <em>Toruń</em> (actual <strong>Polonia</strong>), en el seno de una familia acomodada. A los 10 años, tras el fallecimiento de su padre, su tío <em>Ukasz Watzenrode </em>decidió hacerse cargo de su educación.</p>\r\n<p>Ingresó en la <em>Universidad de Cracovia</em> a los 18 años y posteriormente se trasladó a Italia  a estudiar derecho canónico. Allí, en Italia, en plena época renacentista, <span style=\"text-decoration: underline;\">se interesó por diversas disciplinas</span> como la <strong>pintura</strong>, las <strong>matemáticas</strong>, la <span style=\"text-decoration: underline;\"><strong>astronomía</strong></span></a>, la <strong>filosofía</strong> e incluso la <strong>medicina</strong>. Aunque llegó a destacar en algunas de ellas, <span style=\"text-decoration: underline;\"><strong>en la astronomía encontró su mayor pasión</strong></span>, dedicando el resto de su vida al estudio del espacio estelar.</p>\r\n<p>En 1503, después de más de una década en Italia, regresó a Polonia. Ya en tierra natal, acabaría instalándose en una de las torres de la <em>catedral de Frombork</em> para poder observar mejor el cielo nocturno. Observando el movimiento de los cuerpos terrestres, Copérnico llegó a la conclusión de que <strong><span style=\"text-decoration: underline;\">la Tierra giraba sobre su eje y que esta y el resto de planetas debían girar alrededor del Sol</span></strong>.</p>\r\n<p>Tras más de 30 años demostrando matemáticamente sus teorías, finalmente las publicó tres días antes de su muerte (24 de mayo de 1543) en el libro: «<strong>De revolutionibus orbium coelestium</strong>» (traducido al español como: «<strong>Sobre las revoluciones de las esferas celestes</strong>»).</p>', 'img/01-litografia-nicolas-copernico-huens_a44a1ece_1200x630.jpg'),
(4, 'Nikola Tesla', '1856-07-10', '1943-01-07', 'Croacia', '<p>Nikola Tesla fue un físico, matemático, ingeniero eléctrico y mecánico, y célebre inventor, un  verdadero visionario muy por delante de sus contemporáneos en el campo del desarrollo científico, que revolucionó la teoría eléctrica desarrollando las bases para la, generación de corriente alterna (AC). Fue uno de los más importantes contribuyentes al nacimiento de electricidad comercial y es conocido por sus muchos desarrollos revolucionarios en el campo del electromagnetismo a finales del siglo XIX y principios del siglo XX.</p>\r\n<p>Las patentes y el trabajo teórico de Tesla formaron la base de sistemas de energía eléctrica AC moderna, incluido el sistema polifásico de distribución eléctrica y el motor AC, con la que él ayudó a marcar el comienzo de la segunda revolución industrial.</p>\r\n<p>Tesla es conocido por la mayoría de las personas simplemente como el inventor de la bobina Tesla, pero ésta es solamente uno de los cerca de 120 descubrimientos hechos por el prolífico y excéntrico genio, quién ni siquiera se molestó en patentar sus últimos inventos.</p>\r\n<p>Nacido en la aldea de Smiljan en la frontera militar del Imperio Austrohúngaro, actual Croacia, Nikola Tesla primero estudió en el Colegio Politécnico de Graz, Austria. Fue allí donde primero observó el mal funcionamiento de un dínamo de corriente directa (DC). En 1879, Tesla se mudó a la Universidad de Praga, pero la dejó para ir a trabajar para una compañía telefónica en Budapest en 1880, después de la muerte de su padre. Allí concibió un sistema basado en el principio del campo magnético rotatorio usando corriente AC en un anillo continuo en lugar de corriente DC en un anillo segmentado como los sistemas del momento.</p>\r\n<p>En 1882, mientras trabajaba para la Compañía Edison Continental en Estrasburgo (antes Alemania, hoy Francia), construyó un prototipo de motor AC. Dos años después, aún trabajando para Thomas Edison, se mudó a Nueva York. Edison estaba entregado a la corriente directa, por lo que después de un año, Tesla instaló su propio laboratorio para desarrollar los sistemas de corriente alterna, creando su propia compañía en 1886. Esto se dio tras romper con Edison después de tener muchas diferencias. Se dice que tras trabajar varios meses mejorando los diseños de los generadores DC, y mientras le brindaba varias patentes que Edison registraba como propias, éste se negó a pagarle los 50 000 dólares que le había prometido si tenía éxito, aduciendo que se trató de una \"broma americana\", e incluso se negó a subirle el sueldo a 25 dólares a la semana. Además, Edison propició la invención de la silla eléctrica, que emplea corriente alterna (desarrollada por Tesla) en lugar de corriente continua de la que él era el impulsor para así dar mala fama al invento de Nikola.</p>\r\n<p>En 1899, en su laboratorio de Colorado, probó que la Tierra era un conductor y produjo destellos gigantes de rayos artificiales de millones de voltios y 41 m de longitud. Fue luego que empezó a mostrar signos de excentricidad, afirmando haber recibido señales de otros planetas. Esta afirmación fue recibida por el público y la comunidad científica con escepticismo.</p>\r\n<p>Después de su demostración de la comunicación inalámbrica a través de la radio en 1894 y después de haber sido el vencedor en la \"guerra de las corrientes\", fue ampliamente respetado como uno de los mejores ingenieros eléctricos que trabajó en EU. La mayor parte de sus primeros trabajos fueron pioneros en ingeniería eléctrica moderna y muchos de sus descubrimientos eran de importancia innovadora. Durante este período, en los EU, Tesla rivaliza en fama con cualquier otro inventor o científico en la historia o la cultura popular, pero debido a su personalidad excéntrica y sus afirmaciones aparentemente increíbles y a veces extrañas acerca de posibles avances científicos y tecnológicos, Tesla en última instancia fue condenado al ostracismo y considerado como un científico loco.</p>\r\n<p>En sus últimos años, Tesla se volvió cada vez más solitario, saliendo sólo para hacer declaraciones inusuales, tales como su revelación de los rayos mortales en 1934. Viviendo en una serie de cuartos de hotel en Nueva York, murió a sus 86 años empobrecido por todos sus gastos, actividades inventivas y descuidos financieros.</p>\r\n<p>En sus últimos años, Tesla se volvió cada vez más solitario, saliendo sólo para hacer declaraciones inusuales, tales como su revelación de los rayos mortales en 1934. Viviendo en una serie de cuartos de hotel en Nueva York, murió a sus 86 años empobrecido por todos sus gastos, actividades inventivas y descuidos financieros.</p>\r\n<p>Aparte de su trabajo en ingeniería electromecánica y electromagnetismo, Tesla contribuyó en diversos grados para el establecimiento de la robótica, control remoto, radar y en ciencias de la computación y a la expansión de la física nuclear, balística, y física teórica. En 1943, la Corte Suprema de los Estados Unidos le acredita como inventor de la radio.</p>', 'img/Tesla_circa_1890.jpeg;img/tesla_inventos-1400x600.jpg'),
(6, 'Tales', '0624-01-01', '0526-01-01', 'Mileto', '<p>Tales de Mileto fue un <strong>filósofo y matemático griego que vivió entre el 624 a. C y el 548 a. C</strong> en Mileto, actual territorio de Turquía. Su filosofía se caracterizó por romper con las explicaciones mitológicas del mundo y dar paso a un pensamiento racional y lógico. A esta transformación se la conoce como <em>el paso del mito al logos</em>, y se considera que así tuvo comienzo la filosofía occidental.</p>\r\n<p>Se ubica a Tales <strong>entre los primeros filósofos físicos o presocráticos</strong>. Con él comenzó un período que se caracterizó por dejar de lado las explicaciones religiosas o mitológicas respecto a los fenómenos físicos y el principio del mundo. Se lo suele nombrar como el primer filósofo de la humanidad, aunque es necesario aclarar que esto es cierto solo para el mundo occidental, heredero del pensamiento grecolatino. En su momento, se lo pensó también como uno de los siete sabios de Grecia.</p>\r\n<p><strong>Uno de los temas principales que ocupó su estudio fue el <em>arjé</em> o principio de las cosas</strong>. En griego clásico, el <em>arjé</em> (ἀρχή) es el «principio» u «origen» de todo lo que es, tanto en sentido temporal como de fundamento ontológico. Para Tales de Mileto, el principio constitutivo del mundo era el agua, y por eso sostuvo que todas las cosas estaban formadas por ella. Se cree que sus ideas y descubrimientos abarcan disciplinas como la matemática, la ingeniería y la astronomía. </p>\r\n<p>De hecho, <strong>se le atribuye haber pronosticado el eclipse solar ocurrido en el año 585 a. C</strong>. Sin embargo, varias escuelas filosóficas clásicas, modernas y contemporáneas dedicadas a la historia de la filosofía sostienen que esto no es cierto y que, en todo caso, al no haber una fuente directa de su pensamiento, la hipótesis carece de fundamento.</p>', 'img/Los-Pioneros-de-la-Fotografía.-Parte-I.-Mileto.webp'),
(99, 'test', '2023-04-01', '2023-04-01', 'test', 'test', '/img/logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `palabras_prohibidas`
--

CREATE TABLE `palabras_prohibidas` (
  `palabra` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL COMMENT 'palabras prohibidas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `palabras_prohibidas`
--

INSERT INTO `palabras_prohibidas` (`palabra`) VALUES
('gilipollas'),
('imbecil'),
('inutil'),
('puta'),
('puto'),
('tonta'),
('tonto');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cientificos`
--
ALTER TABLE `cientificos`
  ADD PRIMARY KEY (`nombre`),
  ADD KEY `ID_index` (`id`);

--
-- Indexes for table `palabras_prohibidas`
--
ALTER TABLE `palabras_prohibidas`
  ADD PRIMARY KEY (`palabra`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cientificos`
--
ALTER TABLE `cientificos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
