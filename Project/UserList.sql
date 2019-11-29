-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 29 nov. 2019 à 08:51
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `EvanKennyProj`
--

-- --------------------------------------------------------

--
-- Structure de la table `UserList`
--

DROP TABLE IF EXISTS `UserList`;
CREATE TABLE IF NOT EXISTS `userlist` (
  `ID` int(11) NOT NULL,
  `FName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `LName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Login` varchar(25) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf32;

--
-- Déchargement des données de la table `UserList`
--

INSERT INTO `UserList` (`ID`, `FName`, `LName`, `Login`) VALUES
(1, 'Kenny', 'Lecomte', 'Kecozel');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
