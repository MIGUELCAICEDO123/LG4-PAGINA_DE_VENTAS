-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura para tabla pag_ventas.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla pag_ventas.categorias: ~13 rows (aproximadamente)
DELETE FROM `categorias`;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` (`id`, `nombre`) VALUES
	(1, 'celulares y tablets'),
	(2, 'audio y foto'),
	(3, 'computacion'),
	(4, 'consolas y videojuegos'),
	(5, 'hogar'),
	(6, 'electrodomesticos'),
	(7, 'moda'),
	(8, 'relojes y accesorios'),
	(9, 'libros'),
	(10, 'belleza'),
	(11, 'juguetes'),
	(12, 'deportes'),
	(13, 'vehiculos');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;

-- Volcando estructura para tabla pag_ventas.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `persona_id` int(11) DEFAULT NULL,
  `nombre` varchar(500) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `precio` varchar(50) DEFAULT NULL,
  `categoria_id` varchar(50) DEFAULT NULL,
  `img_producto` varchar(255) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla pag_ventas.productos: ~15 rows (aproximadamente)
DELETE FROM `productos`;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`id`, `persona_id`, `nombre`, `descripcion`, `precio`, `categoria_id`, `img_producto`, `estado`, `fecha`) VALUES
	(1, 1, 'ACER NITRO 5 CORE i5 Nvidia GeForce GTX 1050 1 TB 8 GB DE RAM', 'Explora y disfruta un nuevo nivel de Gaming mÃ¡s inmersivo con la pantalla Full HD y la potente tecnologÃ­a del Nitro 5.  CARACTERÃSTICAS PRINCIPALES:  -Procesador: Intel Core i5 8300H -RAM: 8GB -15.6" Pulgadas -Disco duro: 1TB + 128GB SSD -Sistema Operativo: Windows 10 -Tarjeta GrÃ¡fica: Nvidia GeForce GTX 1050 4GB DDR5 -Color: Negro', '3446000', '3', 'productos/3/portatil-gamer-acer-nitro-5-core-i5-1tb-156-tarjeta-nvidia-D_NQ_NP_916835-MCO28868678464_122018-F.jpg', 'activo', '2020-05-31'),
	(2, 1, 'Camaro Ss', 'Espectacular Camaro SS version Full muy poco Kilometraje, super consentido listo para traspaso. Chevrolet Camaro 2011 cilindraje 6.2 cc Tipo de combustible Gasolina', '89500000', '13', 'productos/13/db32890446b64c6e987eb3da8ed53df0.jpg', 'activo', '2020-06-01'),
	(3, 1, 'PortÃ¡til Hp 14-ck0024la I7-7500u Dd 1tb 12 Gb 14 Led Linux', 'IntelÂ® Coreâ„¢ i7-7500U (2,7 GHz de frecuencia)  Memoria, estÃ¡ndar 12 GB de SDRAM DDR4-2133 (1 x 4 GB, 1 x 8 GB)', '2199000', '3', 'productos/3/portatil-hp-14-ck0024la-core-i7-7500u-12gb-1tb-14-ubuntu-gr-D_NQ_NP_728593-MCO32526459323_102019-F.jpg', 'activo', '2020-06-01'),
	(4, 1, 'Ford F-150 Raptor Svt', 'CAMIONETA EN PERFECTAS CONDICIONES MANTENIMIENTO RECIEN REALIZADO EN CONCESIONARIO 65000 KMS CASA TORO ACEITE Y FILTRO DE ACEITE NUEVOS FILTRO DE AIRE KYN NUEVO (VITALISIO) RADIO ANDROID 8 PULGADAS ORIGINAL FORD RAPTOR CAMARA DE REVERSA SENSORES DE REVERSA CLAVE PARA CIERRE Y APERTURA DE LA CAMIONETA MANUALES ORIGINALES SVT RAPTOR HERRAMIENTA ORIGINAL SVT EXPLORADORAS RIGID LED PROFUNDIDAD LUCES HID 6.000 K NUEVAS ALTAS Y BAJAS LUCES DE TECHO EN LED 4X4 FULL BLOQUEO DE DIFERENCIAL BAJO COJINERIA', '82500000', '13', 'productos/13/D_NQ_NP_743471-MCO41464907416_042020-W.jpg', 'activo', '2020-06-01'),
	(5, 1, 'Celular Samsung Galaxy A50 128gb / 4ram Cam 25/8/5 4g', 'El Samsung Galaxy A50 tiene una pantalla Infinity-U Super AMOLED de 6.4 pulgadas a resoluciÃ³n Full HD y estÃ¡ potenciado por un procesador Exynos 9610 de ocho nÃºcleos con 4GB de memoria RAM y 128GB de almacenamiento. La cÃ¡mara del Galaxy A50 es triple, de 25 MP + 5 MP + 8 MP, y su cÃ¡mara para selfies es de 25 MP. El Galaxy A50 completa sus caracterÃ­sticas con una baterÃ­a de 4000 mAh con carga rÃ¡pida, lector de huella embebido en pantalla, puerto USB-C y Android 9.0 Pie.', '959900', '1', 'productos/1/samsung-galaxy-a50-128gb_13474858.jpg', 'activo', '2020-06-01'),
	(6, 1, 'Celular Xiaomi Mi Note 10 /128gb/108mp/6ram/6.47 + Forro', 'XIAOMI MI NOTE 10 128GB + ESTUCHE  Empieza algo grande  El primer smartphone con 108 MP y 5 cÃ¡maras  AdemÃ¡s, Xiaomi ha vuelto a apostar por los degradados como opciÃ³n cromÃ¡tica, lo cual le da un toque muy distintivo al terminal.', '1845000', '1', 'productos/1/1573060550_588343_1573061067_noticia_normal_recorte1.jpg', 'activo', '2020-06-01'),
	(7, 1, 'Apple iPad Pro 2020 11 Wi-fi 6gb 128gb', 'Pantalla Liquid Retina de borde a borde de 11 pulgadas con ProMotion, True Tone y color ancho P3 Chip biÃ³nico A12Z con motor neuronal. CÃ¡mara de 12 megapÃ­xeles, cÃ¡mara ultra ancha de 10 megapÃ­xeles y escÃ¡ner LiDAR   CÃ¡mara frontal de 7MP TrueDepth. Face ID para autenticaciÃ³n segura y Apple Pay Cuatro altavoces de audio y cinco micrÃ³fonos con calidad de estudio. Wi-Fi 802.11ax 6 ', '4899000', '1', 'productos/1/apple-ipad-pro-2020-11-pulgadas-256gb-wifi-gris-nuevo-D_NQ_NP_667676-MCO41427052247_042020-F.jpg', 'activo', '2020-06-01'),
	(8, 1, 'Tablet Samsung Galaxy Tab A8 Plus Lapiz S Pen 32gb 3ram 2019', 'La galaxy Tab A tiene un diseÃ±o frontal completamente negro, en el interior encontrarÃ¡s el S Pen incorporado para que aumentes tu productividad e imagines lo que quieras. El lÃ¡piz portÃ¡til hecho a tu medida - Comienza a escribir cÃ³modamente con su liviano diseÃ±o de 2.8 gr y una punta de elastÃ³metro de 0.7 mm, incluso cuenta con certificaciÃ³n IP68 que lo hace resistente al agua y al polvo. ', '1099200', '1', 'productos/1/tablet-samsung-galaxy-tab-a8-plus-lapiz-s-pen-32gb-3ram-2019-D_NQ_NP_894168-MCO32893871478_112019-F.jpg', 'activo', '2020-06-01'),
	(9, 1, 'Parlante Portable Jbl Flip 4 Bluetooth 12 Horas Sumergible', 'Altavoz Bluetooth portÃ¡til a prueba de agua con todas las funciones y un sonido sorprendentemente potente por 12 horas continuas, incluso puedes sumergir Flip 4 en agua. Conecte inalambricamente hasta 2 telÃ©fonos inteligentes o tabletas al altavoz y tome turnos para reproducir un sonido estÃ©reo impresionante. Acepte llamadas nÃ­tidas desde su altavoz con solo toque un botÃ³n.', '344900', '2', 'productos/2/parlante-jbl-flip-4-bluetooth-portatil-ipx7.jpg', 'activo', '2020-06-01'),
	(10, 2, 'CÃ¡mara Canon Eos M50 24 Mpx Ef-m 15-45 Is Stm Video 4k', 'CÃ¡mara Canon EOS M50 con lente 15-45 Negra; Ãºsala en cualquier tipo de eventos: Bodas, Fiestas Vacaciones, Viajes, Paisajes, Retratos, Familias, Personas, Mascotas, Vida Salvaje, Animales, Naturaleza, Paisajes Urbanos, Ciudades, Selfieâ€¦.Tu pones el lÃ­mite, nosotros la tecnologÃ­a. ', '2519000', '2', 'productos/2/camara-canon-eos-m50-24-mpx-15-45-is-video-4k-32gb-D_NQ_NP_722661-MCO40686661581_022020-F.jpg', 'activo', '2020-06-01'),
	(11, 2, 'CÃ¡mara Nikon D3500 Kit 18-55mm 24mp Video Full Hd 1080p', 'No hace falta ser fotÃ³grafo para reconocer una buena fotografÃ­a. Tampoco necesita ser fotÃ³grafo para tomar fotos increÃ­bles; solo necesita la D3500. Es una cÃ¡mara tan sencilla de usar como aquellas para apuntar y disparar, pero permite tomar increÃ­bles fotos y videos con la calidad de una DSLR que realmente harÃ¡n la diferencia. ', '1659000', '2', 'productos/2/cmara-nikon-d3500-kit-18-55mm-242mpx-full-hd-D_NQ_NP_623481-MCO31354087429_072019-F.jpg', 'activo', '2020-06-01'),
	(12, 2, 'Consola Xbox One S De 1t + 2 Controles. Garantia De 1 AÃ±o', 'Consola Xbox One S de 1Tb + 2 controles + HDMI + 4K  Lo mejor en entretenimiento en 4K Streaming en 4K Haz streaming de video Ultra HD 4K en Netflix y mÃ¡s. Blu-ray 4K Disfruta de las pelÃ­culas con lujo de detalle gracias al Blu-rayâ„¢ 4K Ultra HD. Sonido espacial', '1599900', '4', 'productos/4/consola-xbox-one-s-de-1t-2-controles-garantia-de-1-ano-D_NQ_NP_720824-MCO28627296080_112018-F.jpg', 'activo', '2020-06-01'),
	(13, 2, 'Gta V Ps4. FÃ­sico, + Mapa.', ' GTA 5 es la quinta entrega de la exitosa saga de videojuegos sandbox desarrollada por Rockstar Games. Con millones de ventas a sus espaldas y uno de los mundos abiertos mÃ¡s ricos hasta la fecha, Grand Theft Auto V transporta al jugador a Los Santos, una extensa y soleada metrÃ³polis en declive que lucha por mantenerse a flote en una era de incertidumbre econÃ³mica y realities baratos que referencia de una forma parÃ³dica a la Los Ãngeles de nuestro tiempo.', '119900', '4', 'productos/4/gta-v-ps4-fisico-mapa-nuevo-entrega-inmediata-D_NQ_NP_879887-MCO29361528114_022019-F.jpg', 'activo', '2020-06-01'),
	(15, 2, 'Kit 4 Sillas Charles Eames Madera - Eiffel', 'Silla modelo: Eames DSW  Material del asiento: Polipropileno Material de la base: Madera y acero', '329900', '5', 'productos/5/61VSo6gFjKL._AC_UL320_.jpg', 'activo', '2020-06-01'),
	(16, 2, 'Televisor LG 55 Pulgadas Um7400 Uhd Smart Tv', 'Disfruta de mÃ¡s y mejores experiencias gracias a LG ThinQ AI, la tecnologÃ­a que genera un diÃ¡logo con lenguaje natural.', '1732900', '6', 'productos/6/N01_D1.jpg', 'activo', '2020-06-01');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

-- Volcando estructura para tabla pag_ventas.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `whatsapp` varchar(50) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla pag_ventas.usuarios: ~3 rows (aproximadamente)
DELETE FROM `usuarios`;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `email`, `password`, `celular`, `whatsapp`, `direccion`, `ciudad`) VALUES
	(1, 'MIGUEL', 'CAICEDO', 'miguelcaicedo64@gmail.com', 'babf51b0ad823c462eec1bb38819895e', '3153104742', '+57 3153104742', 'B/EL PRADO', 'PUERTO ASIS'),
	(2, 'ARNOLDO', 'CASERES', 'arnoldo68@hotmail.com', '25d55ad283aa400af464c76d713c07ad', '3124245689', '+507 3124245689', 'B/juanchao', 'JAPON'),
	(3, 'pueba', '1', 'prueba12@gmail.com', '202cb962ac59075b964b07152d234b70', '3124245689', '+52 3124245689', 'B/ALLENDE', 'POPAYAN');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
