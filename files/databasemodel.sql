-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 18, 2022 at 06:35 AM
-- Server version: 8.0.13-4
-- PHP Version: 7.2.24-0ubuntu0.18.04.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `i47Xt0iATY`
--

-- --------------------------------------------------------

--
-- Table structure for table `approvedContracts`
--

CREATE TABLE `approvedContracts` (
  `idapprovedContracts` tinyint(4) NOT NULL,
  `approved` tinyint(4) NOT NULL,
  `dateSigned` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `contracts_contractId` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ArtiistInfo`
--

CREATE TABLE `ArtiistInfo` (
  `artistId` tinyint(1) NOT NULL,
  `firstName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ArtiistInfo`
--

INSERT INTO `ArtiistInfo` (`artistId`, `firstName`, `lastName`) VALUES
(1, 'Pablo', 'Picasso'),
(2, 'Salvador', 'Dalí'),
(3, 'Diego', 'Rivera'),
(4, 'frida', 'kahlo'),
(5, 'frida', 'kahlo'),
(6, 'frida', 'kahlo');

-- --------------------------------------------------------

--
-- Table structure for table `artistPrivate`
--

CREATE TABLE `artistPrivate` (
  `artistPrivateid` tinyint(4) NOT NULL,
  `contractCounts` tinyint(4) DEFAULT NULL,
  `grossSales` float DEFAULT NULL,
  `totalPiecesSold` tinyint(4) DEFAULT NULL,
  `totalPiecesForSale` tinyint(4) DEFAULT NULL,
  `ArtiistInfo_artistId` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `artistPublic`
--

CREATE TABLE `artistPublic` (
  `artistId_public` tinyint(4) NOT NULL,
  `biography` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `DOB` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOD` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ArtiistInfo_artistId` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `artistPublic`
--

INSERT INTO `artistPublic` (`artistId_public`, `biography`, `DOB`, `DOD`, `website`, `ArtiistInfo_artistId`) VALUES
(1, 'Pablo Picasso is considered to be one of the most famous painters in the twentieth century. ', '1851', '1961', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `artWorkInfo_Basic`
--

CREATE TABLE `artWorkInfo_Basic` (
  `artWorkid_Basic` tinyint(4) NOT NULL,
  `materials` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `retail_price` double NOT NULL,
  `demensions` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ArtiistInfo_artistId` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `artWorkInfo_Basic`
--

INSERT INTO `artWorkInfo_Basic` (`artWorkid_Basic`, `materials`, `description`, `retail_price`, `demensions`, `ArtiistInfo_artistId`) VALUES
(1, 'unknown', 'beautiful', 1000, '2 X 3 Inches', 2),
(2, 'unknown', 'super', 100, '2 X 3 Inches', 1),
(3, 'unknown', 'dupper', 2100, '2 X 3 Inches', 1),
(4, 'unknown', 'amazing', 600, '2 X 3 Inches', 4),
(5, 'unknown', 'some Description', 100, '2 X 3 Inches', 3),
(6, 'unknown', 'some Description', 270, '2 X 3 Inches', 2),
(7, 'unknown', 'some Description', 500, '2 X 3 Inches', 1),
(8, 'unknown', 'some Description', 320, '2 X 3 Inches', 2),
(28, 'unknown', 'some Description', 1567, '2 X 3 Inches', 1),
(42, 'medium of oil on masonite', 'viva la vida watermelons is a bright and vibrant celebration of life in both its simplicity of composition and complexity of emotional expression. it is not emblematic of the fear of death nor is it hopelessly longing for the continuation of her own life.', 10000, ' 60×51cm', 6);

-- --------------------------------------------------------

--
-- Table structure for table `artWorkInfo_Private`
--

CREATE TABLE `artWorkInfo_Private` (
  `artWorkInfoId_Private` tinyint(4) NOT NULL,
  `consignment_cost` double NOT NULL,
  `artWork_location` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `sold` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `artWorkInfo_Private`
--

INSERT INTO `artWorkInfo_Private` (`artWorkInfoId_Private`, `consignment_cost`, `artWork_location`, `sold`) VALUES
(1, 10000, 'unknown', 1),
(4, 10000, 'unknown', 1),
(7, 10000, 'unknown', 0),
(10, 10000, 'unknown', 0),
(12, 10000, 'unknown', 0),
(13, 10000, 'unknown', 0),
(15, 10000, 'unknown', 0),
(16, 10000, 'unknown', 0),
(17, 10000, 'unknown', 0);

-- --------------------------------------------------------

--
-- Table structure for table `artWorkIntrestedIn`
--

CREATE TABLE `artWorkIntrestedIn` (
  `intrestedId` tinyint(4) NOT NULL,
  `ArtiistInfo_artistId` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `artWorkIntrestedIn`
--

INSERT INTO `artWorkIntrestedIn` (`intrestedId`, `ArtiistInfo_artistId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(5, 1),
(7, 1),
(6, 2),
(4, 5),
(8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `artWorkInventory`
--

CREATE TABLE `artWorkInventory` (
  `artWorkid` tinyint(4) NOT NULL,
  `artWorkName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `artWorkInfo_Private_artWorkInfoId_Private` tinyint(4) DEFAULT NULL,
  `artWorkInfo_Basic_artWorkid_Basic` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `artWorkInventory`
--

INSERT INTO `artWorkInventory` (`artWorkid`, `artWorkName`, `artWorkInfo_Private_artWorkInfoId_Private`, `artWorkInfo_Basic_artWorkid_Basic`) VALUES
(1, 'The Foetus in the Womb', 10, 1),
(2, 'The Beheading of Saint John the Baptist ', 17, 2),
(3, 'The Third of May 1808', 4, 3),
(4, 'Man at the Crossroads', 7, 4),
(5, 'The Two Fridas', 15, 5),
(6, 'La Mancha Roja', 13, 6),
(7, 'Swan Reflecting Elephants', 16, 7),
(8, 'Self-Portrait with Two Circles', 12, 8),
(9, 'One: Number 31, 1950', 1, 28),
(10, 'Las Meninas', NULL, NULL),
(11, 'Guernica', NULL, NULL),
(12, 'Prisoners', NULL, NULL),
(13, 'Parthenon Sculptures ', NULL, NULL),
(14, 'Mont Sainte-Victoire ', NULL, NULL),
(15, 'Self Portrait with Cropped Hair', NULL, NULL),
(17, 'My Grandparents, My parents, and I (Family Tree)', NULL, NULL),
(18, 'The Wounded Deer', NULL, NULL),
(20, 'Entry into the Mine', NULL, NULL),
(21, 'Exit from the Mine', NULL, NULL),
(23, 'The Embrace', NULL, NULL),
(35, 'viva la vida watermelons', NULL, NULL),
(37, 'viva la vida watermelons', NULL, NULL),
(42, 'viva la vida watermelons', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bankAccount`
--

CREATE TABLE `bankAccount` (
  `accNumber` int(11) DEFAULT NULL,
  `accountTypeId` tinyint(4) NOT NULL,
  `routingNumber` int(11) DEFAULT NULL,
  `paymentTypeId` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collector`
--

CREATE TABLE `collector` (
  `idcollector` tinyint(4) NOT NULL,
  `firstName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `contactID` tinyint(4) DEFAULT NULL,
  `notesId` tinyint(4) DEFAULT NULL,
  `historyLogid` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `collector`
--

INSERT INTO `collector` (`idcollector`, `firstName`, `lastName`, `contactID`, `notesId`, `historyLogid`) VALUES
(1, 'Jocelyn', 'Guzman', 1, 1, NULL),
(2, 'Daniel', 'Ortiz', 2, 9, NULL),
(3, 'Rocky', 'Balboa', 3, 3, NULL),
(4, 'Fabian', 'Gutierrez', 4, 10, NULL),
(5, 'Yvonne', 'Guzman', 5, 8, NULL),
(6, 'Critza', 'Lopez', 6, 11, NULL),
(7, 'Billy', 'Brown', 7, 2, NULL),
(8, 'Winnie', 'The Pooh', 8, 12, NULL),
(9, 'Mickey', 'Mouse', 9, 5, NULL),
(10, 'Minnie', 'Mouse', 10, NULL, NULL),
(11, 'Donald', 'Duck', 11, NULL, NULL),
(12, 'Pluto', 'Mouse', 12, 4, NULL),
(13, 'Goofy', 'Goof', 13, 6, NULL),
(14, 'Daisy', 'Duck', 14, 7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contactInfo`
--

CREATE TABLE `contactInfo` (
  `contactId` tinyint(4) NOT NULL,
  `houseNumber` int(11) DEFAULT NULL,
  `street` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipCode` int(11) DEFAULT NULL,
  `state` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contactInfo`
--

INSERT INTO `contactInfo` (`contactId`, `houseNumber`, `street`, `city`, `zipCode`, `state`, `phoneNumber`, `email`) VALUES
(1, 1219, 'E Barb st', 'San Francisco', 94122, 'CA', '(415)111-3333', 'jguzman@email.com'),
(2, 1233, 'Barb st', 'San Francisco', 94122, 'CA', '(415)111-3333', 'outofideas@email.com'),
(3, 23, 'Fulton st', 'San Francisco', 94122, 'CA', '(415)111-3333', 'aaah@email.com'),
(4, 33, '16th st', 'San Francisco', 94122, 'CA', '(415)111-3333', 'hmm@email.com'),
(5, 123, '20th st', 'San Francisco', 94122, 'CA', '(415)111-3333', 'omg@email.com'),
(6, 22222, '19th ave', 'San Francisco', 94122, 'CA', '(415)111-3333', 'hahaha@email.com'),
(7, 2312, 'billy road', 'San Francisco', 94122, 'CA', '(415)111-3333', 'giggle@email.com'),
(8, 22223, 'goat st', 'San Francisco', 94122, 'CA', '(415)111-3333', 'jobs@email.com'),
(9, 13, 'rock way', 'San Francisco', 94122, 'CA', '(415)111-3333', 'yummy@email.com'),
(10, 119, 'mexico st', 'San Francisco', 94122, 'CA', '(415)111-3333', 'pickle@email.com'),
(11, 19, 'missippi st', 'San Francisco', 94122, 'CA', '(415)111-3333', 'tickletickle@email.com'),
(12, 139, 'ding dong st', 'San Francisco', 94122, 'CA', '(415)111-3333', 'pooh@email.com'),
(13, 22, 'christmas st', 'San Francisco', 94122, 'CA', '(415)111-3333', 'lala@email.com'),
(14, 4333, 'apple st', 'San Francisco', 94122, 'CA', '(415)111-3333', 'jinx@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `contractId` tinyint(4) NOT NULL,
  `contractName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contractArtist` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `artistPrivate_artistPrivateid` tinyint(4) DEFAULT NULL,
  `artistPrivate_ArtiistInfo_artistId` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `createEvent`
--

CREATE TABLE `createEvent` (
  `idevents` tinyint(4) NOT NULL,
  `address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `dateOfEvent` datetime NOT NULL,
  `guestList_idguestList` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `createEvent`
--

INSERT INTO `createEvent` (`idevents`, `address`, `dateOfEvent`, `guestList_idguestList`) VALUES
(1, 'gallery address', '2022-05-27 19:00:00', NULL),
(2, 'gallery address', '2022-05-27 19:00:00', NULL),
(3, 'gallery address', '2022-05-27 19:00:00', NULL),
(4, 'gallery address', '2022-05-27 19:00:00', NULL),
(5, 'gallery address', '2022-05-27 19:00:00', NULL),
(6, 'gallery address', '2022-05-27 19:00:00', NULL),
(7, 'gallery address', '2022-05-27 19:00:00', NULL),
(8, '1219 E Barb st', '2022-07-01 19:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `creditCard`
--

CREATE TABLE `creditCard` (
  `paymentTypeId` tinyint(4) NOT NULL,
  `cardNumber` int(11) DEFAULT NULL,
  `cvv` int(11) DEFAULT NULL,
  `expDate` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `directorId` tinyint(1) NOT NULL,
  `wage` float NOT NULL,
  `permissions` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `idEmployee` tinyint(4) NOT NULL,
  `ssn` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `firstName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `middleName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hireDate` datetime NOT NULL,
  `contactInfo_collector_idcollector` tinyint(4) DEFAULT NULL,
  `rolesID` tinyint(4) DEFAULT NULL,
  `contactInfoID` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`idEmployee`, `ssn`, `firstName`, `lastName`, `middleName`, `hireDate`, `contactInfo_collector_idcollector`, `rolesID`, `contactInfoID`) VALUES
(1, '233-33-223', 'Billie', 'Sun', NULL, '2022-05-17 08:34:06', NULL, NULL, NULL),
(2, '123-33-223', 'Rober', 'Ramirez', NULL, '2022-05-17 08:34:06', NULL, NULL, NULL),
(3, '123-45-223', 'Sergio', 'Diaz', NULL, '2022-05-17 08:34:06', NULL, NULL, NULL),
(4, '233-45-223', 'Sandra', 'Cabrera', NULL, '2022-05-17 08:34:06', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exhibitionDesigner`
--

CREATE TABLE `exhibitionDesigner` (
  `exDesignerId` tinyint(4) NOT NULL,
  `hrWage` int(11) NOT NULL,
  `permissions` int(11) NOT NULL,
  `events_idevents` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expiredContracts`
--

CREATE TABLE `expiredContracts` (
  `iddeniedOrExpired` tinyint(4) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `expiredDate` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `contracts_contractId` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `idGallery` tinyint(4) NOT NULL,
  `galleryName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`idGallery`, `galleryName`, `owner`) VALUES
(1, 'Art on 5th', 1);

-- --------------------------------------------------------

--
-- Table structure for table `galleryAnalytics`
--

CREATE TABLE `galleryAnalytics` (
  `idgalleryAnalytics` tinyint(4) NOT NULL,
  `top5Artist` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `salesLocations` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `piecesSold` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `galleryFinance_galleryId` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleryFinance`
--

CREATE TABLE `galleryFinance` (
  `salesTotal` int(11) DEFAULT NULL,
  `top5collectors` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `galleryId` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleryInfo`
--

CREATE TABLE `galleryInfo` (
  `idgalleryLocation` tinyint(4) NOT NULL,
  `address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipCode` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery` tinyint(1) NOT NULL,
  `roles` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `galleryInfo`
--

INSERT INTO `galleryInfo` (`idgalleryLocation`, `address`, `website`, `phoneNumber`, `city`, `state`, `zipCode`, `email`, `gallery`, `roles`) VALUES
(1, '1219 E Barb st', 'ArtOn5th.com', '(415)123-4567', 'San Francisco', 'CA', '94122', 'frontDesk@ArtOn5th.com', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guestList`
--

CREATE TABLE `guestList` (
  `idguestList` tinyint(1) NOT NULL,
  `firstName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `LastName` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `historyLog`
--

CREATE TABLE `historyLog` (
  `purchaseId` tinyint(4) NOT NULL,
  `artWorkInventory_artworkid` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `historyLog`
--

INSERT INTO `historyLog` (`purchaseId`, `artWorkInventory_artworkid`) VALUES
(13, 1),
(6, 2),
(8, 3),
(18, 3),
(4, 4),
(2, 5),
(5, 6),
(11, 7),
(12, 8),
(3, 10),
(14, 11),
(15, 12),
(16, 13),
(19, 14),
(1, 15),
(20, 17),
(17, 18),
(7, 20),
(10, 21),
(9, 23);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `imageId` tinyint(4) NOT NULL,
  `imageName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `imageResolution` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `artWorkInfo_Private_artWorkInfoId_Private` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketingManager`
--

CREATE TABLE `marketingManager` (
  `idmarketingManager` tinyint(4) NOT NULL,
  `hrWage` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `permisions` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `notesId` tinyint(4) NOT NULL,
  `postedDate` datetime DEFAULT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci,
  `intrestedId` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`notesId`, `postedDate`, `message`, `intrestedId`) VALUES
(1, '2022-05-17 08:38:26', 'Looking for a large art piece no budget', NULL),
(2, '2022-05-17 08:38:26', 'Came by looking for ...', 1),
(3, '2022-05-17 08:38:26', NULL, 2),
(4, '2022-05-17 08:38:26', 'Looking for a large art piece no budget', NULL),
(5, '2022-05-17 08:38:26', 'Came by looking for ...', 3),
(6, '2022-05-17 08:38:26', NULL, 4),
(7, '2022-05-17 08:38:26', 'Looking for a large art piece no budget', NULL),
(8, '2022-05-17 08:38:26', 'Came by looking for ...', 5),
(9, '2022-05-17 08:38:26', NULL, 6),
(10, '2022-05-17 08:38:26', 'Looking for a large art piece no budget', NULL),
(11, '2022-05-17 08:38:26', 'Came by looking for ...', 7),
(12, '2022-05-17 08:38:26', NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `ownerId` tinyint(4) NOT NULL,
  `firstName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `contactId` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`ownerId`, `firstName`, `lastName`, `contactId`) VALUES
(1, 'Bertha', 'Lopez', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paymentType`
--

CREATE TABLE `paymentType` (
  `paymentTypeId` tinyint(4) NOT NULL,
  `collectorId` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pendingContracts`
--

CREATE TABLE `pendingContracts` (
  `idpendingContracts` tinyint(4) NOT NULL,
  `pending` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `contracts_contractId` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `idroles` tinyint(4) NOT NULL,
  `typeOfRole` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salesRep`
--

CREATE TABLE `salesRep` (
  `idSalesRep` tinyint(4) NOT NULL,
  `hrWage` int(11) NOT NULL,
  `permissions` tinyint(4) DEFAULT NULL,
  `contactInfo_contactId1` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approvedContracts`
--
ALTER TABLE `approvedContracts`
  ADD PRIMARY KEY (`idapprovedContracts`),
  ADD UNIQUE KEY `idapprovedContracts_UNIQUE` (`idapprovedContracts`),
  ADD KEY `fk_approvedContracts_contracts1_idx` (`contracts_contractId`);

--
-- Indexes for table `ArtiistInfo`
--
ALTER TABLE `ArtiistInfo`
  ADD PRIMARY KEY (`artistId`);

--
-- Indexes for table `artistPrivate`
--
ALTER TABLE `artistPrivate`
  ADD PRIMARY KEY (`artistPrivateid`,`ArtiistInfo_artistId`),
  ADD UNIQUE KEY `artistPrivateid_UNIQUE` (`artistPrivateid`),
  ADD KEY `fk_artistPrivate_ArtiistInfo1_idx` (`ArtiistInfo_artistId`);

--
-- Indexes for table `artistPublic`
--
ALTER TABLE `artistPublic`
  ADD PRIMARY KEY (`artistId_public`,`ArtiistInfo_artistId`),
  ADD UNIQUE KEY `artistId_public_UNIQUE` (`artistId_public`),
  ADD KEY `fk_artistPublic_ArtiistInfo1_idx` (`ArtiistInfo_artistId`);

--
-- Indexes for table `artWorkInfo_Basic`
--
ALTER TABLE `artWorkInfo_Basic`
  ADD PRIMARY KEY (`artWorkid_Basic`),
  ADD KEY `fk_artWorkInfo_Basic_ArtiistInfo1_idx` (`ArtiistInfo_artistId`);

--
-- Indexes for table `artWorkInfo_Private`
--
ALTER TABLE `artWorkInfo_Private`
  ADD PRIMARY KEY (`artWorkInfoId_Private`),
  ADD UNIQUE KEY `artWorkInfoId_Private_UNIQUE` (`artWorkInfoId_Private`);

--
-- Indexes for table `artWorkIntrestedIn`
--
ALTER TABLE `artWorkIntrestedIn`
  ADD PRIMARY KEY (`intrestedId`),
  ADD KEY `fk_artWorkIntrestedIn_ArtiistInfo1_idx` (`ArtiistInfo_artistId`);

--
-- Indexes for table `artWorkInventory`
--
ALTER TABLE `artWorkInventory`
  ADD PRIMARY KEY (`artWorkid`),
  ADD KEY `fk_artForSale_artWorkInfo_Basic1_idx` (`artWorkInfo_Basic_artWorkid_Basic`),
  ADD KEY `artWorkInfo_Private_artWorkInfoId_Private` (`artWorkInfo_Private_artWorkInfoId_Private`,`artWorkInfo_Basic_artWorkid_Basic`);

--
-- Indexes for table `bankAccount`
--
ALTER TABLE `bankAccount`
  ADD PRIMARY KEY (`accountTypeId`),
  ADD KEY `paymentTypeIdx` (`paymentTypeId`);

--
-- Indexes for table `collector`
--
ALTER TABLE `collector`
  ADD PRIMARY KEY (`idcollector`),
  ADD KEY `contactIdx` (`contactID`),
  ADD KEY `notesIdx` (`notesId`),
  ADD KEY `historyLogIdx` (`historyLogid`);

--
-- Indexes for table `contactInfo`
--
ALTER TABLE `contactInfo`
  ADD PRIMARY KEY (`contactId`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`contractId`),
  ADD UNIQUE KEY `contractId_UNIQUE` (`contractId`),
  ADD KEY `fk_contracts_artistPrivate1_idx` (`artistPrivate_artistPrivateid`,`artistPrivate_ArtiistInfo_artistId`);

--
-- Indexes for table `createEvent`
--
ALTER TABLE `createEvent`
  ADD PRIMARY KEY (`idevents`),
  ADD KEY `fk_events_guestList1_idx` (`guestList_idguestList`);

--
-- Indexes for table `creditCard`
--
ALTER TABLE `creditCard`
  ADD PRIMARY KEY (`paymentTypeId`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`directorId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`idEmployee`),
  ADD KEY `roleIdx` (`rolesID`),
  ADD KEY `contactIdx` (`contactInfoID`),
  ADD KEY `contactInfo_collector_idcollector` (`contactInfo_collector_idcollector`);

--
-- Indexes for table `exhibitionDesigner`
--
ALTER TABLE `exhibitionDesigner`
  ADD PRIMARY KEY (`exDesignerId`),
  ADD KEY `fk_exhibitionDesigner_events1_idx` (`events_idevents`);

--
-- Indexes for table `expiredContracts`
--
ALTER TABLE `expiredContracts`
  ADD PRIMARY KEY (`iddeniedOrExpired`),
  ADD KEY `fk_expiredContracts_contracts1_idx` (`contracts_contractId`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`idGallery`),
  ADD UNIQUE KEY `idGallery_UNIQUE` (`idGallery`),
  ADD KEY `galleryOwnerIdx` (`owner`);

--
-- Indexes for table `galleryAnalytics`
--
ALTER TABLE `galleryAnalytics`
  ADD PRIMARY KEY (`idgalleryAnalytics`),
  ADD KEY `fk_galleryAnalytics_galleryFinance1_idx` (`galleryFinance_galleryId`);

--
-- Indexes for table `galleryFinance`
--
ALTER TABLE `galleryFinance`
  ADD PRIMARY KEY (`galleryId`);

--
-- Indexes for table `galleryInfo`
--
ALTER TABLE `galleryInfo`
  ADD PRIMARY KEY (`idgalleryLocation`),
  ADD KEY `galleryIdx` (`gallery`),
  ADD KEY `rolesIdx` (`roles`);

--
-- Indexes for table `guestList`
--
ALTER TABLE `guestList`
  ADD PRIMARY KEY (`idguestList`);

--
-- Indexes for table `historyLog`
--
ALTER TABLE `historyLog`
  ADD PRIMARY KEY (`purchaseId`),
  ADD KEY `fk_artWorkInventory_artworkid2_idx` (`artWorkInventory_artworkid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`imageId`),
  ADD UNIQUE KEY `imageId_UNIQUE` (`imageId`),
  ADD KEY `fk_images_artWorkInfo_Private1_idx` (`artWorkInfo_Private_artWorkInfoId_Private`);

--
-- Indexes for table `marketingManager`
--
ALTER TABLE `marketingManager`
  ADD PRIMARY KEY (`idmarketingManager`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`notesId`),
  ADD KEY `intrestId` (`intrestedId`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`ownerId`),
  ADD KEY `contactIdx` (`contactId`);

--
-- Indexes for table `paymentType`
--
ALTER TABLE `paymentType`
  ADD PRIMARY KEY (`paymentTypeId`),
  ADD KEY `paymentTypeIdx` (`collectorId`);

--
-- Indexes for table `pendingContracts`
--
ALTER TABLE `pendingContracts`
  ADD PRIMARY KEY (`idpendingContracts`),
  ADD UNIQUE KEY `idpendingContracts_UNIQUE` (`idpendingContracts`),
  ADD KEY `fk_pendingContracts_contracts1_idx` (`contracts_contractId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idroles`);

--
-- Indexes for table `salesRep`
--
ALTER TABLE `salesRep`
  ADD PRIMARY KEY (`idSalesRep`),
  ADD KEY `fk_salesRep_contactInfo2_idx` (`contactInfo_contactId1`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approvedContracts`
--
ALTER TABLE `approvedContracts`
  MODIFY `idapprovedContracts` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ArtiistInfo`
--
ALTER TABLE `ArtiistInfo`
  MODIFY `artistId` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `artistPrivate`
--
ALTER TABLE `artistPrivate`
  MODIFY `artistPrivateid` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artistPublic`
--
ALTER TABLE `artistPublic`
  MODIFY `artistId_public` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `artWorkInfo_Basic`
--
ALTER TABLE `artWorkInfo_Basic`
  MODIFY `artWorkid_Basic` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `artWorkInfo_Private`
--
ALTER TABLE `artWorkInfo_Private`
  MODIFY `artWorkInfoId_Private` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `artWorkIntrestedIn`
--
ALTER TABLE `artWorkIntrestedIn`
  MODIFY `intrestedId` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `artWorkInventory`
--
ALTER TABLE `artWorkInventory`
  MODIFY `artWorkid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `bankAccount`
--
ALTER TABLE `bankAccount`
  MODIFY `accountTypeId` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collector`
--
ALTER TABLE `collector`
  MODIFY `idcollector` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contactInfo`
--
ALTER TABLE `contactInfo`
  MODIFY `contactId` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `contractId` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `createEvent`
--
ALTER TABLE `createEvent`
  MODIFY `idevents` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `creditCard`
--
ALTER TABLE `creditCard`
  MODIFY `paymentTypeId` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `director`
--
ALTER TABLE `director`
  MODIFY `directorId` tinyint(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `idEmployee` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exhibitionDesigner`
--
ALTER TABLE `exhibitionDesigner`
  MODIFY `exDesignerId` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expiredContracts`
--
ALTER TABLE `expiredContracts`
  MODIFY `iddeniedOrExpired` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `idGallery` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galleryAnalytics`
--
ALTER TABLE `galleryAnalytics`
  MODIFY `idgalleryAnalytics` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleryInfo`
--
ALTER TABLE `galleryInfo`
  MODIFY `idgalleryLocation` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guestList`
--
ALTER TABLE `guestList`
  MODIFY `idguestList` tinyint(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `historyLog`
--
ALTER TABLE `historyLog`
  MODIFY `purchaseId` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `imageId` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketingManager`
--
ALTER TABLE `marketingManager`
  MODIFY `idmarketingManager` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `notesId` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `ownerId` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paymentType`
--
ALTER TABLE `paymentType`
  MODIFY `paymentTypeId` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pendingContracts`
--
ALTER TABLE `pendingContracts`
  MODIFY `idpendingContracts` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `idroles` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salesRep`
--
ALTER TABLE `salesRep`
  MODIFY `idSalesRep` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `approvedContracts`
--
ALTER TABLE `approvedContracts`
  ADD CONSTRAINT `approvedContracts_ibfk_1` FOREIGN KEY (`contracts_contractId`) REFERENCES `contracts` (`contractid`);

--
-- Constraints for table `artistPrivate`
--
ALTER TABLE `artistPrivate`
  ADD CONSTRAINT `artistPrivate_ibfk_1` FOREIGN KEY (`ArtiistInfo_artistId`) REFERENCES `ArtiistInfo` (`artistid`);

--
-- Constraints for table `artistPublic`
--
ALTER TABLE `artistPublic`
  ADD CONSTRAINT `artistPublic_ibfk_1` FOREIGN KEY (`ArtiistInfo_artistId`) REFERENCES `ArtiistInfo` (`artistid`);

--
-- Constraints for table `artWorkInfo_Basic`
--
ALTER TABLE `artWorkInfo_Basic`
  ADD CONSTRAINT `artWorkInfo_Basic_ibfk_1` FOREIGN KEY (`ArtiistInfo_artistId`) REFERENCES `ArtiistInfo` (`artistid`);

--
-- Constraints for table `artWorkIntrestedIn`
--
ALTER TABLE `artWorkIntrestedIn`
  ADD CONSTRAINT `artWorkIntrestedIn_ibfk_1` FOREIGN KEY (`ArtiistInfo_artistId`) REFERENCES `ArtiistInfo` (`artistid`);

--
-- Constraints for table `artWorkInventory`
--
ALTER TABLE `artWorkInventory`
  ADD CONSTRAINT `artWorkInventory_ibfk_1` FOREIGN KEY (`artWorkInfo_Basic_artWorkid_Basic`) REFERENCES `artWorkInfo_Basic` (`artworkid_basic`),
  ADD CONSTRAINT `artWorkInventory_ibfk_2` FOREIGN KEY (`artWorkInfo_Private_artWorkInfoId_Private`) REFERENCES `artWorkInfo_Private` (`artworkinfoid_private`);

--
-- Constraints for table `bankAccount`
--
ALTER TABLE `bankAccount`
  ADD CONSTRAINT `bankAccount_ibfk_1` FOREIGN KEY (`paymentTypeId`) REFERENCES `paymentType` (`paymenttypeid`);

--
-- Constraints for table `collector`
--
ALTER TABLE `collector`
  ADD CONSTRAINT `collector_ibfk_1` FOREIGN KEY (`contactID`) REFERENCES `contactInfo` (`contactid`),
  ADD CONSTRAINT `collector_ibfk_2` FOREIGN KEY (`historyLogid`) REFERENCES `historyLog` (`purchaseid`),
  ADD CONSTRAINT `collector_ibfk_3` FOREIGN KEY (`notesId`) REFERENCES `notes` (`notesid`);

--
-- Constraints for table `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `contracts_ibfk_1` FOREIGN KEY (`artistPrivate_artistPrivateid`,`artistPrivate_ArtiistInfo_artistId`) REFERENCES `artistPrivate` (`artistprivateid`, `artiistinfo_artistid`);

--
-- Constraints for table `createEvent`
--
ALTER TABLE `createEvent`
  ADD CONSTRAINT `createEvent_ibfk_1` FOREIGN KEY (`guestList_idguestList`) REFERENCES `guestList` (`idguestlist`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`contactInfo_collector_idcollector`) REFERENCES `contactInfo` (`contactid`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`rolesID`) REFERENCES `roles` (`idroles`);

--
-- Constraints for table `exhibitionDesigner`
--
ALTER TABLE `exhibitionDesigner`
  ADD CONSTRAINT `exhibitionDesigner_ibfk_1` FOREIGN KEY (`events_idevents`) REFERENCES `createEvent` (`idevents`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `expiredContracts`
--
ALTER TABLE `expiredContracts`
  ADD CONSTRAINT `expiredContracts_ibfk_1` FOREIGN KEY (`contracts_contractId`) REFERENCES `contracts` (`contractid`);

--
-- Constraints for table `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_ibfk_1` FOREIGN KEY (`owner`) REFERENCES `owner` (`ownerid`);

--
-- Constraints for table `galleryAnalytics`
--
ALTER TABLE `galleryAnalytics`
  ADD CONSTRAINT `galleryAnalytics_ibfk_1` FOREIGN KEY (`galleryFinance_galleryId`) REFERENCES `galleryFinance` (`galleryid`);

--
-- Constraints for table `galleryInfo`
--
ALTER TABLE `galleryInfo`
  ADD CONSTRAINT `galleryInfo_ibfk_1` FOREIGN KEY (`gallery`) REFERENCES `gallery` (`idgallery`),
  ADD CONSTRAINT `galleryInfo_ibfk_2` FOREIGN KEY (`roles`) REFERENCES `roles` (`idroles`);

--
-- Constraints for table `historyLog`
--
ALTER TABLE `historyLog`
  ADD CONSTRAINT `historyLog_ibfk_1` FOREIGN KEY (`artWorkInventory_artworkid`) REFERENCES `artWorkInventory` (`artworkid`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`artWorkInfo_Private_artWorkInfoId_Private`) REFERENCES `artWorkInfo_Private` (`artworkinfoid_private`);

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`intrestedId`) REFERENCES `artWorkIntrestedIn` (`intrestedid`);

--
-- Constraints for table `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `owner_ibfk_1` FOREIGN KEY (`contactId`) REFERENCES `contactInfo` (`contactid`);

--
-- Constraints for table `paymentType`
--
ALTER TABLE `paymentType`
  ADD CONSTRAINT `paymentType_ibfk_1` FOREIGN KEY (`collectorId`) REFERENCES `collector` (`idcollector`);

--
-- Constraints for table `pendingContracts`
--
ALTER TABLE `pendingContracts`
  ADD CONSTRAINT `pendingContracts_ibfk_1` FOREIGN KEY (`contracts_contractId`) REFERENCES `contracts` (`contractid`);

--
-- Constraints for table `salesRep`
--
ALTER TABLE `salesRep`
  ADD CONSTRAINT `salesRep_ibfk_1` FOREIGN KEY (`contactInfo_contactId1`) REFERENCES `contactInfo` (`contactid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
