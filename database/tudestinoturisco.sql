CREATE DATABASE `tudestinoturisco`;

USE `tudestinoturisco`;

CREATE TABLE `category_destinos` (
  `Id` int(11) NOT NULL,
  `Name_Cat` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


INSERT INTO `category_destinos` (`Id`, `Name_Cat`) VALUES
(1, 'Paquete Basico'),
(2, 'Paquete Promoción'),
(3, 'Paquete Premium'),
(4, 'Paquete Especial');


CREATE TABLE `images_destinos` (
  `Id` int(11) NOT NULL,
  `Name_Img` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Image` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `Description` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp,
  `Id_User` int(11) NOT NULL,
  `Id_Cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


CREATE TABLE `users_destinos` (
  `Id` int(11) NOT NULL,
  `Name_User` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `User` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Phone` varchar(25) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


ALTER TABLE `category_destinos`
  ADD PRIMARY KEY (`Id`);


ALTER TABLE `images_destinos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_User` (`Id_User`),
  ADD KEY `Id_Cat` (`Id_Cat`);


ALTER TABLE `users_destinos`
  ADD PRIMARY KEY (`Id`);


ALTER TABLE `category_destinos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `images_destinos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `users_destinos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `images_destinos`
  ADD CONSTRAINT `images_destinos_ibfk_1` FOREIGN KEY (`Id_User`) REFERENCES `users_destinos` (`Id`),
  ADD CONSTRAINT `images_destinos_ibfk_2` FOREIGN KEY (`Id_Cat`) REFERENCES `category_destinos` (`Id`);
COMMIT;
