-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2020 at 08:23 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_locofi`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `sno` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `street_no` int(11) NOT NULL,
  `locality` varchar(20) NOT NULL,
  `city` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `country` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`sno`, `e_id`, `street_no`, `locality`, `city`, `state`, `country`) VALUES
(1, 1, 3, '9260 Molestie Street', 10, 8, 8),
(2, 2, 5, 'Ap #118-6820 Commodo', 22, 9, 8),
(3, 3, 8, 'Ap #469-1961 Tincidu', 24, 8, 1),
(4, 4, 2, 'Ap #844-3244 Nec Rd.', 10, 7, 8),
(5, 5, 7, 'Ap #720-1070 Amet St', 20, 10, 8),
(6, 6, 10, '238-6225 Tristique A', 21, 4, 7),
(7, 7, 9, '807-9644 Nisi St.', 4, 5, 6),
(8, 8, 8, '645-1762 Urna. St.', 8, 9, 9),
(9, 9, 1, '5505 Cras Rd.', 21, 1, 8),
(10, 10, 7, '6190 Ut Ave', 13, 6, 2),
(11, 11, 4, 'P.O. Box 407, 3175 S', 25, 7, 2),
(12, 12, 2, 'Ap #850-9635 Odio. A', 10, 4, 4),
(13, 13, 7, '5379 Quisque Avenue', 25, 8, 8),
(14, 14, 5, '2043 Ipsum Rd.', 8, 4, 9),
(15, 15, 7, '3254 Consectetuer, S', 12, 8, 1),
(16, 16, 1, '8841 Maecenas Rd.', 14, 1, 7),
(17, 17, 1, '6854 Enim, Ave', 2, 2, 8),
(18, 18, 7, 'P.O. Box 738, 9078 I', 13, 8, 5),
(19, 19, 3, 'Ap #868-9977 Sagitti', 20, 6, 1),
(20, 20, 9, 'P.O. Box 949, 5639 M', 10, 8, 6),
(21, 21, 8, 'P.O. Box 768, 9405 I', 16, 10, 2),
(22, 22, 7, 'Ap #173-8648 Curabit', 9, 7, 2),
(23, 23, 3, '214-7560 Ipsum Road', 3, 1, 3),
(24, 24, 6, 'P.O. Box 514, 2173 D', 17, 8, 6),
(25, 25, 1, '2867 Magna St.', 6, 10, 7),
(26, 26, 3, 'Ap #690-8244 Integer', 18, 2, 7),
(27, 27, 9, 'Ap #549-6386 Fusce A', 24, 3, 2),
(28, 28, 8, '334-8942 Ut, St.', 8, 1, 8),
(29, 29, 4, '251-6816 Praesent Ro', 1, 6, 5),
(30, 30, 6, 'Ap #806-8831 Risus S', 3, 10, 7),
(31, 31, 10, 'Ap #788-133 Pharetra', 19, 10, 3),
(32, 32, 9, 'Ap #853-2243 Auctor ', 19, 8, 7),
(33, 33, 4, 'P.O. Box 477, 3575 S', 10, 5, 4),
(34, 34, 10, '160-4342 Ipsum Avenu', 22, 6, 7),
(35, 35, 6, 'Ap #361-7629 Luctus ', 4, 3, 5),
(36, 36, 5, '164-1070 Feugiat. St', 5, 3, 6),
(37, 37, 3, '2051 Vel, Av.', 20, 10, 7),
(38, 38, 10, 'Ap #475-2869 Id, Rd.', 20, 5, 7),
(39, 39, 7, 'Ap #430-8573 Eget, S', 13, 8, 1),
(40, 40, 3, 'P.O. Box 793, 7300 P', 18, 10, 6),
(41, 41, 8, '7474 A, Avenue', 25, 7, 1),
(42, 42, 9, '3900 Orci Street', 3, 3, 10),
(43, 43, 9, '790-3733 Metus. Av.', 3, 4, 3),
(44, 44, 4, 'P.O. Box 256, 8258 D', 22, 10, 5),
(45, 45, 3, '938-382 Nonummy Road', 8, 7, 5),
(46, 46, 6, 'P.O. Box 365, 5559 E', 10, 6, 2),
(47, 47, 6, 'P.O. Box 847, 4990 M', 14, 5, 4),
(48, 48, 1, 'P.O. Box 728, 7566 C', 3, 2, 3),
(49, 49, 8, '2583 Nisi. St.', 25, 1, 8),
(50, 50, 10, '136-1166 Rutrum, Ave', 13, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `sno` int(11) NOT NULL,
  `note_id` int(11) DEFAULT NULL,
  `geo_id` int(11) NOT NULL,
  `sales_status` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL DEFAULT current_timestamp(),
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `meeting_with` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`sno`, `note_id`, `geo_id`, `sales_status`, `updated`, `created`, `created_by`, `e_id`, `meeting_with`) VALUES
(1, 1, 2, 1, '2020-03-01 00:00:00', '2020-03-01 00:00:00', 1, 1, 'mr abc'),
(2, 2, 2, 1, '2020-03-17 00:00:00', '2020-03-17 00:00:00', 2, 2, 'mr xyz');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(1, 'Goes'),
(2, 'Manaure'),
(3, 'Łomża'),
(4, 'Guysborough'),
(5, 'Adelaide'),
(6, 'Flawinne'),
(7, 'Bingen'),
(8, 'Neuville-en-Condroz'),
(9, 'Llangollen'),
(10, 'Paju'),
(11, 'Borgomasino'),
(12, 'Saguenay'),
(13, 'Sint-Agatha-Berchem'),
(14, 'Frigento'),
(15, 'Wels'),
(16, 'Aberdeen'),
(17, 'Wazirabad'),
(18, 'Anantapur'),
(19, 'Pushchino'),
(20, 'Iseyin'),
(21, 'Fort Smith'),
(22, 'Lampertheim'),
(23, 'Weymouth'),
(24, 'Marano Lagunare'),
(25, 'Viña del Mar');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`) VALUES
(1, 'google'),
(2, 'Maecenas Malesuada PC'),
(3, 'Proin Company'),
(4, 'Etiam Gravida Associates'),
(5, 'Nunc Mauris Consulting'),
(6, 'In Lobortis Tellus PC'),
(7, 'Et Company'),
(8, 'Molestie Sodales Associates'),
(9, 'Erat Consulting'),
(10, 'Tempor Arcu Industries');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'Aruba'),
(2, 'Ecuador'),
(3, 'Thailand'),
(4, 'Tuvalu'),
(5, 'Central African Republic'),
(6, 'Guadeloupe'),
(7, 'Bosnia and Herzegovina'),
(8, 'Timor-Leste'),
(9, 'Saint Martin'),
(10, 'Greece');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `sno` int(100) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `dob` date NOT NULL,
  `company` int(11) NOT NULL,
  `doj` date NOT NULL,
  `post` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `managed_by` int(11) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `s_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`sno`, `f_name`, `l_name`, `gender`, `dob`, `company`, `doj`, `post`, `email`, `managed_by`, `password`, `s_code`) VALUES
(1, 'Kelsey', 'Tucker', 2, '1993-12-27', 3, '2020-11-30', 2, 'Morbi.neque@Cumsociisnatoque.ca', 1, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(2, 'Reuben', 'James', 1, '1990-04-12', 6, '2020-12-31', 2, 'Sed@Nullaeuneque.com', 10, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(3, 'Orson', 'Ware', 2, '1998-04-11', 6, '2019-08-25', 2, 'enim.condimentum.eget@laoreetposuereenim.co.uk', 2, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(4, 'Rigel', 'Riley', 1, '1993-06-17', 3, '2019-04-05', 2, 'erat.volutpat.Nulla@sociosqu.org', 1, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(5, 'Cameron', 'Hays', 1, '1997-07-02', 4, '2019-07-13', 2, 'interdum@egestasrhoncus.org', 2, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(6, 'Irene', 'Mcmahon', 2, '1992-06-09', 1, '2018-06-15', 2, 'Maecenas@magnisdisparturient.org', 3, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(7, 'Cynthia', 'Jordan', 1, '1995-08-14', 6, '2017-01-26', 2, 'ac@enimconsequat.edu', 10, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(8, 'Blossom', 'Juarez', 2, '1993-08-30', 10, '2020-06-09', 2, 'molestie.sodales@dictumeueleifend.net', 7, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(9, 'Carter', 'Osborne', 1, '1992-11-15', 8, '2019-09-22', 2, 'cursus@sitametultricies.com', 9, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(10, 'Stuart', 'Thomas', 2, '1996-01-06', 7, '2020-10-02', 2, 'Pellentesque.tincidunt.tempus@ac.com', 2, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(11, 'Kristen', 'Boyd', 2, '1993-04-19', 4, '2020-01-14', 3, 'placerat.velit.Quisque@pede.net', 2, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(12, 'Aubrey', 'Sweeney', 1, '1999-06-09', 7, '2017-07-26', 3, 'Nullam.vitae.diam@tristique.com', 1, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(13, 'Audrey', 'Sherman', 1, '1990-10-24', 1, '2020-04-04', 3, 'et@neque.org', 10, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(14, 'Veronica', 'Gay', 2, '1998-08-19', 8, '2018-09-14', 3, 'dignissim@diam.edu', 1, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(15, 'Bradley', 'England', 2, '1993-11-07', 9, '2020-04-17', 3, 'vitae.risus@quamquis.edu', 3, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(16, 'Martha', 'Robles', 1, '1995-08-06', 5, '2018-02-10', 3, 'accumsan@euarcuMorbi.com', 3, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(17, 'Myles', 'Richards', 2, '1994-11-28', 8, '2018-06-02', 3, 'libero@lectus.net', 8, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(18, 'Baker', 'Malone', 1, '1990-02-07', 9, '2018-12-03', 3, 'purus.sapien@semper.ca', 8, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(19, 'Akeem', '', 2, '1996-11-19', 7, '2019-12-21', 3, 'purus.in.molestie@eratsemperrutrum.ca', 6, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(20, 'Whoopi', 'Hunter', 1, '1997-12-21', 5, '2021-01-15', 3, 'volutpat@ametluctusvulputate.org', 5, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(21, 'Jolie', 'Weeks', 2, '1996-12-19', 3, '2020-03-14', 3, 'eget.metus.In@Curabitur.net', 3, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(22, 'Travis', 'Daniel', 2, '1992-03-22', 10, '2019-07-02', 3, 'non@nonummyipsumnon.net', 4, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(23, 'Scott', 'Swanson', 2, '1993-06-04', 9, '2019-04-05', 3, 'odio@liberoDonec.org', 7, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(24, 'Maxwell', 'Frye', 1, '1992-04-07', 7, '2020-01-25', 3, 'pede@amet.org', 8, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(25, 'Kitra', 'Farrell', 1, '1994-08-28', 10, '2019-07-12', 3, 'sagittis@penatibus.com', 7, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(26, 'Charles', 'Hutchinson', 1, '1990-04-26', 3, '2017-03-09', 3, 'ut.quam.vel@fermentumconvallisligula.co.uk', 6, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(27, 'James', 'Newman', 2, '1999-12-31', 4, '2018-07-02', 3, 'consectetuer.adipiscing@ornare.org', 1, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(28, 'Lacy', 'Burnett', 2, '1999-12-20', 5, '2017-09-14', 3, 'Vestibulum@atliberoMorbi.ca', 10, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(29, 'Phillip', 'Buchanan', 1, '1993-03-09', 4, '2018-01-18', 3, 'arcu@blandit.net', 3, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(30, 'Hop', 'Hays', 1, '1998-08-20', 6, '2019-05-08', 3, 'adipiscing@Curabitur.co.uk', 3, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(31, 'Oliver', 'Carroll', 2, '1998-02-25', 4, '2019-08-13', 3, 'eu@mauris.org', 2, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(32, 'Regan', 'Stafford', 1, '1995-07-03', 10, '2017-01-16', 3, 'nec@odio.com', 7, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(33, 'Maggy', 'Nunez', 2, '1990-06-10', 9, '2020-12-13', 3, 'neque.Morbi.quis@Maurisvelturpis.org', 5, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(34, 'Eliana', 'Soto', 1, '1994-12-14', 9, '2017-12-11', 3, 'hendrerit.consectetuer@Nullamfeugiat.ca', 9, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(35, 'Dolan', 'Hancock', 2, '1996-11-13', 6, '2018-05-07', 3, 'magna@Aeneansed.net', 6, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(36, 'Felicia', 'Reed', 2, '1997-12-15', 4, '2020-10-03', 3, 'amet@vehiculaPellentesque.com', 10, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(37, 'Theodore', 'Keller', 1, '1993-10-28', 7, '2017-12-16', 3, 'elit.Etiam@facilisis.co.uk', 8, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(38, 'Isadora', 'York', 1, '1996-08-10', 7, '2019-11-26', 3, 'consequat@arcuimperdiet.co.uk', 2, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(39, 'Colette', 'Rush', 1, '1990-04-18', 8, '2017-03-03', 3, 'nunc.est@atvelit.com', 10, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(40, 'Minerva', 'Montgomery', 2, '1991-07-22', 4, '2017-07-11', 3, 'Donec.tincidunt.Donec@Duis.net', 8, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(41, 'James', 'Byers', 2, '1991-10-11', 9, '2018-05-30', 3, 'rutrum.non@Duisdignissim.co.uk', 7, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(42, 'Jin', 'Chapman', 1, '1998-07-05', 3, '2018-02-10', 3, 'pellentesque.Sed.dictum@idantedictum.com', 5, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(43, 'Indigo', 'Mcmahon', 1, '1996-10-03', 6, '2018-05-27', 3, 'adipiscing.elit.Aliquam@viverraMaecenasiaculis.net', 5, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(44, 'Arden', 'Evans', 2, '1999-04-24', 6, '2017-07-03', 3, 'Suspendisse.ac.metus@eratvolutpatNulla.com', 7, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(45, 'Louis', 'Levy', 2, '1997-10-18', 5, '2020-03-02', 3, 'lorem@a.com', 9, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(46, 'Patricia', 'Haney', 1, '1998-04-22', 2, '2019-06-23', 3, 'Donec@venenatisa.net', 9, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(47, 'Xavier', 'Oconnor', 1, '1990-03-05', 10, '2019-11-27', 3, 'sed.pede.Cum@iaculis.org', 2, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(48, 'Dalton', 'Fletcher', 1, '1997-05-03', 3, '2017-11-03', 3, 'orci.quis.lectus@sollicitudinadipiscingligula.org', 2, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(49, 'Lester', 'Perry', 2, '1995-12-28', 10, '2017-09-14', 3, 'velit@aliquamarcu.net', 6, 'e10adc3949ba59abbe56e057f20f883e', NULL),
(50, 'Chandler', 'Ford', 1, '1992-09-05', 9, '2020-09-04', 3, 'interdum.Sed.auctor@ligulaNullam.ca', 2, 'e10adc3949ba59abbe56e057f20f883e', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `forget_password`
--

CREATE TABLE `forget_password` (
  `sno` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `s_code` varchar(50) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `gender_id` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`gender_id`, `gender`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `geofence`
--

CREATE TABLE `geofence` (
  `geofence_id` int(11) NOT NULL,
  `geofence_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `geofence`
--

INSERT INTO `geofence` (`geofence_id`, `geofence_name`) VALUES
(1, 'AITR'),
(2, 'Crystal IT park');

-- --------------------------------------------------------

--
-- Table structure for table `geo_coordinates`
--

CREATE TABLE `geo_coordinates` (
  `sno` int(11) NOT NULL,
  `geo_id` int(11) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `geo_coordinates`
--

INSERT INTO `geo_coordinates` (`sno`, `geo_id`, `latitude`, `longitude`) VALUES
(1, 1, '22.81998000', '75.94310800'),
(2, 1, '22.82031100', '75.94235400'),
(3, 1, '22.82177100', '75.94389800'),
(4, 1, '22.82190700', '75.94276600'),
(5, 2, '22.68563600', '75.87270600'),
(6, 2, '22.68512100', '75.87194400'),
(7, 2, '22.68588800', '75.87155800'),
(8, 2, '22.68622500', '75.87217000');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `sno` int(11) NOT NULL,
  `updated` datetime NOT NULL DEFAULT current_timestamp(),
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `e_id` int(11) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`sno`, `updated`, `created`, `e_id`, `content`) VALUES
(1, '2020-03-11 00:00:00', '2020-03-11 00:00:00', 1, 'note created'),
(2, '2020-03-29 00:30:51', '2020-03-12 00:00:00', 2, 'new'),
(3, '2020-03-29 00:30:51', '2020-03-29 00:30:51', 3, 'hey hey hey');

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `sno` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `phone` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`sno`, `eid`, `phone`) VALUES
(1, 1, '091-59231-75962'),
(2, 2, '091-59726-24254'),
(3, 3, '091-63211-26619'),
(4, 4, '091-62781-73201'),
(5, 5, '091-99757-80061'),
(6, 6, '091-20046-48069'),
(7, 7, '091-76697-26115'),
(8, 8, '091-53278-89780'),
(9, 9, '091-12212-29103'),
(10, 10, '091-86573-42047'),
(11, 11, '091-97042-22011'),
(12, 12, '091-24800-50793'),
(13, 13, '091-88858-63545'),
(14, 14, '091-53066-57126'),
(15, 15, '091-49150-95974'),
(16, 16, '091-32943-52145'),
(17, 17, '091-67649-65272'),
(18, 18, '091-81146-68893'),
(19, 19, '091-18542-93493'),
(20, 20, '091-02713-16729'),
(21, 21, '091-89378-56283'),
(22, 22, '091-56540-84093'),
(23, 23, '091-65747-59025'),
(24, 24, '091-58473-53127'),
(25, 25, '091-12085-90014'),
(26, 26, '091-22926-91360'),
(27, 27, '091-82440-92239'),
(28, 28, '091-72794-30189'),
(29, 29, '091-54761-72646'),
(30, 30, '091-43891-34257'),
(31, 31, '091-06597-34924'),
(32, 32, '091-15463-71628'),
(33, 33, '091-23338-16955'),
(34, 34, '091-17620-64397'),
(35, 35, '091-01422-12246'),
(36, 36, '091-87990-47073'),
(37, 37, '091-72275-24801'),
(38, 38, '091-00489-68559'),
(39, 39, '091-12108-46453'),
(40, 40, '091-74322-97313'),
(41, 41, '091-60017-34564'),
(42, 42, '091-89301-48656'),
(43, 43, '091-91436-13354'),
(44, 44, '091-14251-17298'),
(45, 45, '091-88948-45834'),
(46, 46, '091-89323-19906'),
(47, 47, '091-83194-29317'),
(48, 48, '091-67532-46584'),
(49, 49, '091-98172-42849'),
(50, 50, '091-23655-41953');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_name`) VALUES
(1, 'CEO'),
(2, 'Manager'),
(3, 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `sales_status`
--

CREATE TABLE `sales_status` (
  `sales_id` int(11) NOT NULL,
  `action` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_status`
--

INSERT INTO `sales_status` (`sales_id`, `action`) VALUES
(1, 'success'),
(2, 'rescheduled'),
(3, 'due'),
(4, 'failed');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'Aquitaine'),
(2, 'NI'),
(3, 'ON'),
(4, 'SA'),
(5, 'BO'),
(6, 'FA'),
(7, 'CDM'),
(8, 'NI'),
(9, 'ON'),
(10, 'Sokoto');

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--

CREATE TABLE `tracker` (
  `sno` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `geo_id` int(11) NOT NULL,
  `enter_geo` datetime NOT NULL DEFAULT current_timestamp(),
  `leave_geo` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`sno`),
  ADD KEY `e_id` (`e_id`),
  ADD KEY `city` (`city`),
  ADD KEY `state` (`state`),
  ADD KEY `country` (`country`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`sno`),
  ADD KEY `note_id` (`note_id`),
  ADD KEY `geo_id` (`geo_id`),
  ADD KEY `sales_status` (`sales_status`),
  ADD KEY `e_id` (`e_id`),
  ADD KEY `note_id_2` (`note_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`sno`),
  ADD KEY `post` (`post`),
  ADD KEY `gender` (`gender`),
  ADD KEY `company` (`company`),
  ADD KEY `managed_by` (`managed_by`);

--
-- Indexes for table `forget_password`
--
ALTER TABLE `forget_password`
  ADD PRIMARY KEY (`sno`),
  ADD KEY `e_id` (`e_id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Indexes for table `geofence`
--
ALTER TABLE `geofence`
  ADD PRIMARY KEY (`geofence_id`);

--
-- Indexes for table `geo_coordinates`
--
ALTER TABLE `geo_coordinates`
  ADD PRIMARY KEY (`sno`),
  ADD KEY `geo_id` (`geo_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`sno`),
  ADD KEY `e_id` (`e_id`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`sno`),
  ADD KEY `eid` (`eid`),
  ADD KEY `eid_2` (`eid`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `sales_status`
--
ALTER TABLE `sales_status`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `e_id` (`e_id`),
  ADD KEY `geo_id` (`geo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `forget_password`
--
ALTER TABLE `forget_password`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `gender_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `geofence`
--
ALTER TABLE `geofence`
  MODIFY `geofence_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `geo_coordinates`
--
ALTER TABLE `geo_coordinates`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE `phone`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales_status`
--
ALTER TABLE `sales_status`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tracker`
--
ALTER TABLE `tracker`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`state`) REFERENCES `state` (`state_id`),
  ADD CONSTRAINT `address_ibfk_2` FOREIGN KEY (`country`) REFERENCES `country` (`country_id`),
  ADD CONSTRAINT `address_ibfk_3` FOREIGN KEY (`city`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`note_id`) REFERENCES `notes` (`sno`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`geo_id`) REFERENCES `geofence` (`geofence_id`),
  ADD CONSTRAINT `appointments_ibfk_3` FOREIGN KEY (`sales_status`) REFERENCES `sales_status` (`sales_id`),
  ADD CONSTRAINT `appointments_ibfk_4` FOREIGN KEY (`e_id`) REFERENCES `employee` (`sno`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`post`) REFERENCES `post` (`post_id`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`managed_by`) REFERENCES `employee` (`sno`),
  ADD CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`gender`) REFERENCES `gender` (`gender_id`),
  ADD CONSTRAINT `employee_ibfk_4` FOREIGN KEY (`company`) REFERENCES `company` (`company_id`);

--
-- Constraints for table `forget_password`
--
ALTER TABLE `forget_password`
  ADD CONSTRAINT `forget_password_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `employee` (`sno`);

--
-- Constraints for table `geo_coordinates`
--
ALTER TABLE `geo_coordinates`
  ADD CONSTRAINT `geo_coordinates_ibfk_1` FOREIGN KEY (`geo_id`) REFERENCES `geofence` (`geofence_id`);

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `employee` (`sno`);

--
-- Constraints for table `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`sno`);

--
-- Constraints for table `tracker`
--
ALTER TABLE `tracker`
  ADD CONSTRAINT `tracker_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `employee` (`sno`),
  ADD CONSTRAINT `tracker_ibfk_2` FOREIGN KEY (`geo_id`) REFERENCES `geofence` (`geofence_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
