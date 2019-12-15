SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `jeeproject`
--

CREATE DATABASE jeeproject;

USE jeeproject;

-- --------------------------------------------------------

--
-- Structure de la table `UserList`
--

DROP TABLE IF EXISTS `UserList`;
CREATE TABLE IF NOT EXISTS `userlist` (
  `ID` int(3) NOT NULL AUTO_INCREMENT,
  `FName` varchar(20) NOT NULL,
  `LName` varchar(20) NOT NULL,
  `Login` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='jeeproject';
COMMIT;

INSERT INTO `userlist` (`ID`, `FName`, `LName`, `Login`) VALUES
(1, 'Aziz', 'DAOUAS', 'adaouas'),
(2, 'Jochen', 'LEMMENS', 'jlemmens'),
(3, 'Evan', 'FROUIN', 'efrouin'),
(4, 'Kenny', 'LECOMTE', 'klecomte'),
(5, 'Theo', 'FIEBER', 'tfieber'),
(6, 'Simon', 'DELAJOUX', 'sdelajoux'),
(7, 'Alexandre', 'MARCQ', 'amarcq'),
(8, 'Thibaut', 'CATIGNOL', 'tcatignol'),
(9, 'Mathieu', 'DRAPEAU', 'mdrapeau'),
(10, 'Simon', 'NICOLAS', 'snicolas'),
(11, 'Raphael', 'SEGRETIN', 'rsegretin');

--
-- AUTO_INCREMENT pour la table `userlist`
--
ALTER TABLE `userlist`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




