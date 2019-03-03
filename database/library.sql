-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 27, 2019 at 02:23 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--
-- Creation: Feb 20, 2019 at 03:41 AM
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `email` varchar(36) NOT NULL,
  `password` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'test@gmail.com', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--
-- Creation: Feb 26, 2019 at 04:19 PM
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `author` varchar(250) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '1' COMMENT 'Number of books',
  `remaining` int(11) DEFAULT NULL,
  `publisher` varchar(400) DEFAULT NULL,
  `edition` varchar(10) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `reference` varchar(3) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `row` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `isbn`, `name`, `author`, `count`, `remaining`, `publisher`, `edition`, `price`, `subject`, `reference`, `department`, `row`) VALUES
(1, '180001', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 0, 'Scitech Publications', '2', 390, 'Physics', 'Yes', 'Physics', ''),
(2, '180002', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', ''),
(3, '180003', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 390, 'Physics', 'Yes', 'Physics', ''),
(4, '180004', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 425, 'Physics', 'No', 'Physics', ''),
(5, '180005', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 425, 'Physics', 'No', 'Physics', ''),
(6, '180006', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', ''),
(7, '180007', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 325, 'Physics', 'No', 'Physics', ''),
(8, '180008', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 425, 'Physics', 'No', 'Physics', ''),
(9, '180009', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', ''),
(10, '180010', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 325, 'Physics', 'No', 'Physics', ''),
(11, '180011', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', ''),
(12, '180012', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', ''),
(13, '180013', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', ''),
(14, '180014', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', ''),
(15, '180015', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', ''),
(16, '180016', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', ''),
(17, '180017', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', ''),
(18, '180018', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 390, 'Physics', 'No', 'Physics', ''),
(19, '180019', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', ''),
(20, '180020', 'Engineering Physics  1', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '3', 0, 'Physics', 'Yes', 'Physics', ''),
(21, '180021', 'Engineering Physics  1', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '3', 0, 'Physics', 'No', 'Physics', ''),
(22, '180022', 'Engineering Physics  2', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '1', 0, 'Physics', 'Yes', 'Physics', ''),
(23, '180023', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '1', 275, 'Physics', 'Yes', 'Physics', ''),
(24, '180024', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '1', 275, 'Physics', 'No', 'Physics', ''),
(25, '180025', 'Engineering Physics 1', 'P.Mani   ', 1, 1, 'Dhanam Publications', '12', 430, 'Physics', 'Yes', 'Physics', ''),
(26, '180026', 'Engineering Physics  1', 'P.Mani   ', 1, 1, 'Dhanam Publications', '13', 450, 'Physics', 'Yes', 'Physics', ''),
(27, '180027', 'Engineering Physics  1', 'P.Mani   ', 1, 1, 'Dhanam Publications', '8', 330, 'Physics', 'Yes', 'Physics', ''),
(28, '180028', 'Engineering Physics  1', 'P.Mani   ', 1, 1, 'Dhanam Publications', '10', 370, 'Physics', 'Yes', 'Physics', ''),
(29, '180029', 'Engineering Physics  1', 'P.Mani   ', 1, 1, 'Dhanam Publications', '8', 330, 'Physics', 'No', 'Physics', ''),
(30, '180030', 'Engineering Physics  2', 'P.Mani   ', 1, 1, 'Shri Dhanam PUblisher', '10', 450, 'Physics', 'Yes', 'Physics', ''),
(31, '180031', 'Engineering Physics Question Bank', 'P.Mani   ', 1, 1, 'Dhanam Publications', '3', 0, 'Physics', 'Yes', 'Physics', ''),
(32, '180032', 'Engineering Physics  1', 'G.Senthilkumar   ', 1, 1, 'VRB Publishers', '5', 325, 'Physics', 'Yes', 'Physics', ''),
(33, '180033', 'Engineering Physics  1', 'G.Senthilkumar   ', 1, 1, 'VRB Publishers', '7', 395, 'Physics', 'Yes', 'Physics', ''),
(34, '180034', 'Engineering Physics  1', 'G.Senthilkumar   ', 1, 1, 'VRB Publishers', '8', 440, 'Physics', 'Yes', 'Physics', ''),
(35, '180035', 'Engineering Physics  1', 'G.Senthilkumar   ', 1, 1, 'VRB Publishers', '7', 395, 'Physics', 'No', 'Physics', ''),
(36, '180036', 'Engineering Physics  1', 'G.Senthilkumar   ', 1, 1, 'VRB Publishers', '5', 325, 'Physics', 'No', 'Physics', ''),
(37, '180037', 'Engineering Physics  2', 'G.Senthilkumar   ', 1, 1, 'VRB Publishers', '1', 80, 'Physics', 'Yes', 'Physics', ''),
(38, '180038', 'Engineering Physics  1', 'K.Tamilarasan K.Prabu  ', 1, 1, 'Tata McGraw Hill Education', '2', 0, 'Physics', 'Yes', 'Physics', ''),
(39, '180039', 'Engineering Physics  2', 'K.Tamilarasan K.Prabu  ', 1, 1, 'Tata McGraw Hill Education', '2', 0, 'Physics', 'Yes', 'Physics', ''),
(40, '180040', 'Engineering Physics  2', 'M.Nidhya T.Vigneswari  ', 1, 1, 'Jaitech Publications', '2', 250, 'Physics', 'Yes', 'Physics', ''),
(41, '180041', 'Engineering Physics  2', 'M.Nidhya T.Vigneswari  ', 1, 1, 'Jaitech Publications', '3', 298, 'Physics', 'Yes', 'Physics', ''),
(42, '180042', 'Engineering Physics', 'V.Rajendran   ', 1, 1, 'Tata McGraw Hill Education', '2', 0, 'Physics', 'Yes', 'Physics', ''),
(43, '180043', 'Engineering Physics  1', 'K.L.Palanisamy   ', 1, 1, 'Sai Publications', '1', 280, 'Physics', 'Yes', 'Physics', ''),
(44, '180044', 'Concept of Physics  1', 'H.C.Verma   ', 1, 1, 'Bharati Bhawan Publishers', '3', 160, 'Physics', 'Yes', 'Physics', ''),
(45, '180045', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'Yes', 'Physics', ''),
(46, '180046', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', ''),
(47, '180047', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', ''),
(48, '180048', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', ''),
(49, '180049', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', ''),
(50, '180050', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', ''),
(51, '180051', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', ''),
(52, '180052', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', ''),
(53, '180053', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', ''),
(54, '180054', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', ''),
(55, '180055', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', ''),
(56, '180056', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', ''),
(57, '180057', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', ''),
(58, '180058', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', ''),
(59, '180059', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', ''),
(60, '180060', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', ''),
(61, '180061', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', ''),
(62, '180062', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', ''),
(63, '180063', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', ''),
(64, '180064', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '15', 325, 'Chemistry', 'Yes', 'Chemistry', ''),
(65, '180065', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '15', 325, 'Chemistry', 'No', 'Chemistry', ''),
(66, '180066', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '15', 325, 'Chemistry', 'No', 'Chemistry', ''),
(67, '180067', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '16', 345, 'Chemistry', 'Yes', 'Chemistry', ''),
(68, '180068', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '16', 345, 'Chemistry', 'Yes', 'Chemistry', ''),
(69, '180069', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '14', 297, 'Chemistry', 'Yes', 'Chemistry', ''),
(70, '180070', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '15', 325, 'Chemistry', 'No', 'Chemistry', ''),
(71, '180071', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '15', 325, 'Chemistry', 'No', 'Chemistry', ''),
(72, '180072', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '14', 297, 'Chemistry', 'No', 'Chemistry', ''),
(73, '180073', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '17', 345, 'Chemistry', 'No', 'Chemistry', ''),
(74, '180074', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '16', 345, 'Chemistry', 'No', 'Chemistry', ''),
(75, '180075', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '16', 345, 'Chemistry', 'No', 'Chemistry', ''),
(76, '180076', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '16', 345, 'Chemistry', 'No', 'Chemistry', ''),
(77, '180077', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '17', 345, 'Chemistry', 'No', 'Chemistry', ''),
(78, '180078', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '16', 345, 'Chemistry', 'No', 'Chemistry', ''),
(79, '180079', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '17', 345, 'Chemistry', 'No', 'Chemistry', ''),
(80, '180080', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '15', 325, 'Chemistry', 'No', 'Chemistry', ''),
(81, '180081', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '15', 325, 'Chemistry', 'No', 'Chemistry', ''),
(82, '180082', 'Engineering Chemistry 1 Question Bank', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '1', 0, 'Chemistry', 'Yes', 'Chemistry', ''),
(83, '180083', 'Engineering Chemistry  2', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '11', 230, 'Chemistry', 'Yes', 'Chemistry', ''),
(84, '180084', 'Engineering Chemistry  2', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '12', 250, 'Chemistry', 'Yes', 'Chemistry', ''),
(85, '180085', 'Engineering Chemistry', 'A.Ravikrishnan P.Kannan  ', 1, 1, 'Sri Krishna Hitech Publications', '11', 630, 'Chemistry', 'Yes', 'Chemistry', ''),
(86, '180086', 'Engineering Chemistry', 'A.Ravikrishnan P.Kannan  ', 1, 1, 'Sri Krishna Hitech Publications', '11', 630, 'Chemistry', 'No', 'Chemistry', ''),
(87, '180087', 'Engineering Chemistry', 'A.Ravikrishnan P.Kannan  ', 1, 1, 'Sri Krishna Hitech Publications', '11', 630, 'Chemistry', 'No', 'Chemistry', ''),
(88, '180088', 'Engineering Chemistry', 'A.Ravikrishnan P.Kannan  ', 1, 1, 'Sri Krishna Hitech Publications', '10', 597, 'Chemistry', 'Yes', 'Chemistry', ''),
(89, '180089', 'Engineering Chemistry', 'A.Ravikrishnan P.Kannan  ', 1, 1, 'Sri Krishna Hitech Publications', '10', 597, 'Chemistry', 'No', 'Chemistry', ''),
(90, '180090', 'Engineering Chemistry', 'A.Ravikrishnan P.Kannan  ', 1, 1, 'Sri Krishna Hitech Publications', '10', 597, 'Chemistry', 'No', 'Chemistry', ''),
(91, '180091', 'Engineering Chemistry', 'A.Ravikrishnan P.Kannan  ', 1, 1, 'Sri Krishna Hitech Publications', '10', 597, 'Chemistry', 'No', 'Chemistry', ''),
(92, '180092', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '5', 280, 'Chemistry', 'Yes', 'Chemistry', ''),
(93, '180093', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '5', 280, 'Chemistry', 'No', 'Chemistry', ''),
(94, '180094', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '5', 280, 'Chemistry', 'No', 'Chemistry', ''),
(95, '180095', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '5', 296, 'Chemistry', 'No', 'Chemistry', ''),
(96, '180096', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '5', 280, 'Chemistry', 'No', 'Chemistry', ''),
(97, '180097', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '1', 310, 'Chemistry', 'Yes', 'Chemistry', ''),
(98, '180098', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '5', 280, 'Chemistry', 'No', 'Chemistry', ''),
(99, '180099', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '2', 295, 'Chemistry', 'Yes', 'Chemistry', ''),
(100, '180100', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '5', 296, 'Chemistry', 'No', 'Chemistry', ''),
(101, '180101', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '5', 296, 'Chemistry', 'No', 'Chemistry', ''),
(102, '180102', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '5', 280, 'Chemistry', 'No', 'Chemistry', ''),
(103, '180103', 'Engineering Chemistry  1', 'A.Sheik Mideen   ', 1, 1, 'J B Publications', '14', 375, 'Chemistry', 'Yes', 'Chemistry', ''),
(104, '180104', 'Engineering Chemistry  1', 'A.Sheik Mideen   ', 1, 1, 'J B Publications', '14', 375, 'Chemistry', 'No', 'Chemistry', ''),
(105, '180105', 'Engineering Chemistry  1', 'A.Sheik Mideen   ', 1, 1, 'J B Publications', '14', 330, 'Chemistry', 'No', 'Chemistry', ''),
(106, '180106', 'Engineering Chemistry', 'B.Sivasankar   ', 1, 1, 'Tata McGraw Hill Publishing Company', '1', 0, 'Chemistry', 'Yes', 'Chemistry', ''),
(107, '180107', 'Applied Chemistry', 'P.N.Palanisamy A.Geetha K.Manjula Rani ', 1, 1, 'Tata McGraw Hill Education', '1', 0, 'Chemistry', 'Yes', 'Chemistry', ''),
(108, '180108', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '15', 425, 'Chemistry', 'Yes', 'Chemistry', ''),
(109, '180109', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '15', 425, 'Chemistry', 'No', 'Chemistry', ''),
(110, '180110', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '15', 425, 'Chemistry', 'No', 'Chemistry', ''),
(111, '180111', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'Yes', 'Chemistry', ''),
(112, '180112', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', ''),
(113, '180113', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', ''),
(114, '180114', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', ''),
(115, '180115', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', ''),
(116, '180116', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', ''),
(117, '180117', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', ''),
(118, '180118', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', ''),
(119, '180119', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', ''),
(120, '180120', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', ''),
(121, '180121', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', ''),
(122, '180122', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', ''),
(123, '180123', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 475, 'Chemistry', 'No', 'Chemistry', ''),
(124, '180124', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 510, 'Chemistry', 'No', 'Chemistry', ''),
(125, '18125', 'Environmental Science and Engineering', 'Anubha KaushikC.P.Kaushik', 1, 1, 'New Age International Publishers', '3', 150, 'Environmental Science', 'Yes', 'Environmental Science', ''),
(126, '18126', 'Environmental Science and Engineering', 'Benny Joseph', 1, 1, 'McGraw Hill Education', '', 0, 'Environmental Science', 'Yes', 'Environmental Science', ''),
(127, '18127', 'Environmental Studies', 'Erach Bharucha', 1, 1, 'Universities Press', '2', 225, 'Environmental Science', 'Yes', 'Environmental Science', ''),
(128, '18128', 'Environmental Science and Engineering', 'S.VairamS.GopuC.Chelladurai', 1, 1, 'Gems Publishers', '1', 275, 'Environmental Science', 'Yes', 'Environmental Science', ''),
(129, '18129', 'Environmental Science and Engineering', 'Anubha KaushikC.P.Kaushik', 1, 1, 'New Age International Publishers', '3', 150, 'Environmental Science', 'No', 'Environmental Science', ''),
(130, '18130', 'Environmental Science and Engineering', 'Benny Joseph', 1, 1, 'McGraw Hill Education', '6', 0, 'Environmental Science', 'Yes', 'Environmental Science', ''),
(131, '18131', 'Environmental Science and Engineering', 'A.Ravikrishnan', 1, 1, 'Sri Krishna Publications', '5', 165, 'Environmental Science', 'Yes', 'Environmental Science', ''),
(132, '18132', 'Environmental Science', 'G.Tyler Miller', 1, 1, 'Thomson Brooks/Cole', '10', 0, 'Environmental Science', 'Yes', 'Environmental Science', ''),
(133, '180133', 'Engineering Drawing', 'N.D.Bhatt V.M.Panchal Pramod R.Ingle ', 1, 1, 'Charotar Publishing House', '53', 330, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(134, '180134', 'Engineering Drawing', 'N.D.Bhatt V.M.Panchal Pramod R.Ingle ', 1, 1, 'Charotar Publishing House', '52', 250, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(135, '180135', 'Engineering Drawing', 'N.D.Bhatt V.M.Panchal Pramod R.Ingle ', 1, 1, 'Charotar Publishing House', '53', 330, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(136, '180136', 'Engineering Drawing', 'N.D.Bhatt V.M.Panchal Pramod R.Ingle ', 1, 1, 'Charotar Publishing House', '53', 330, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(137, '180137', 'Engineering Drawing', 'N.D.Bhatt V.M.Panchal Pramod R.Ingle ', 1, 1, 'Charotar Publishing House', '53', 330, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(138, '180138', 'Engineering Drawing', 'N.D.Bhatt V.M.Panchal Pramod R.Ingle ', 1, 1, 'Charotar Publishing House', '53', 330, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(139, '180139', 'Engineering Drawing', 'N.D.Bhatt V.M.Panchal Pramod R.Ingle ', 1, 1, 'Charotar Publishing House', '53', 330, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(140, '180140', 'Engineering Drawing', 'N.D.Bhatt V.M.Panchal Pramod R.Ingle ', 1, 1, 'Charotar Publishing House', '53', 330, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(141, '180141', 'Engineering Drawing', 'N.S.Parthasarthy Vela Murali  ', 1, 1, 'Oxford University Press', '1', 465, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(142, '180142', 'Engineering Drawing', 'N.S.Parthasarthy Vela Murali  ', 1, 1, 'Oxford University Press', '1', 465, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(143, '180143', 'Engineering Drawing', 'N.S.Parthasarthy Vela Murali  ', 1, 1, 'Oxford University Press', '1', 465, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(144, '180144', 'Engineering Drawing', 'Dhananjay A.Jolhe   ', 1, 1, 'Tata McGraw Hill', '1', 0, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(145, '180145', 'Engineering Drawing', 'S.Ramachandran K.Pandian R.Devaraj E.V.V.Ramanamurthy', 1, 1, '', '', 0, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(146, '180146', 'Engineering Graphics', 'M.Saravanan M.Arockia Jaswin J.Bensam Raj ', 1, 1, 'Tri Sea Publications', '5', 420, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(147, '180147', 'Engineering Graphics', 'M.Saravanan M.Arockia Jaswin J.Bensam Raj ', 1, 1, 'Tri Sea Publications', '4', 400, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(148, '180148', 'Engineering Graphics', 'Vee Ess   ', 1, 1, 'V K Publishers', '5', 225, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(149, '180149', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '23', 320, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(150, '180150', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '22', 0, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(151, '180151', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '23', 320, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(152, '180152', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '23', 320, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(153, '180153', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '24', 350, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(154, '180154', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '24', 380, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(155, '180155', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '24', 350, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(156, '180156', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '24', 380, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(157, '180157', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '27', 480, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(158, '180158', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '26', 400, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(159, '180159', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '26', 400, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(160, '180160', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '28', 480, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(161, '180161', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '24', 380, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(162, '180162', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '28', 480, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(163, '180163', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '26', 400, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(164, '180164', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '26', 400, 'Engineering Graphics', '', 'Engineering Graphics', ''),
(165, '180165', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'Yes', 'English', ''),
(166, '180166', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', ''),
(167, '180167', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', ''),
(168, '180168', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', ''),
(169, '180169', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', ''),
(170, '180170', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', ''),
(171, '180171', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', ''),
(172, '180172', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', ''),
(173, '180173', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', ''),
(174, '180174', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', ''),
(175, '180175', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', ''),
(176, '180176', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', ''),
(177, '180177', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', ''),
(178, '180178', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', ''),
(179, '180179', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', ''),
(180, '180180', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', ''),
(181, '180181', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', ''),
(182, '180182', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', ''),
(183, '180183', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', ''),
(184, '180184', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', ''),
(185, '180185', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'Yes', 'English', ''),
(186, '180186', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', ''),
(187, '180187', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', ''),
(188, '180188', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', ''),
(189, '180189', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', ''),
(190, '180190', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', ''),
(191, '180191', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', ''),
(192, '180192', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', ''),
(193, '180193', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', ''),
(194, '180194', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', ''),
(195, '180195', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', ''),
(196, '180196', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', ''),
(197, '180197', 'English Work Book  1', 'P.Rathna   ', 1, 1, 'VRB Publishers', '13', 395, 'English', 'Yes', 'English', ''),
(198, '180198', 'English Work Book  1', 'P.Rathna   ', 1, 1, 'VRB Publishers', '11', 296, 'English', 'Yes', 'English', ''),
(199, '180199', 'English Work Book', 'N.M.Ramkumar   ', 1, 1, 'Standard Publications', '1', 400, 'English', 'Yes', 'English', ''),
(200, '180200', 'Technical English Workbook  1', 'J.Anbazhagan Vijay N.Jaishree  ', 1, 1, 'Global Publishers', '3', 450, 'English', 'Yes', 'English', ''),
(201, '180201', 'Technical English Workbook  2', 'S.Gunasekaran   ', 1, 1, 'Global Publishers', '6', 398, 'English', 'Yes', 'English', ''),
(202, '180202', 'Technical English Workbook  2', 'S.Gunasekaran   ', 1, 1, 'United Global Publishers', '4', 294, 'English', 'Yes', 'English', ''),
(203, '180203', 'Advanced Engineering Mathematics', 'Erwin Kreyszig Herbert Kreyszig Edward J.Norminton ', 1, 1, 'Wiley India', '10', 0, 'Mathematics', 'Yes', 'Mathematics', ''),
(204, '180204', 'Calculus Early Transcendentals', 'James Stewart   ', 1, 1, 'Cengage Learning', '7', 0, 'Mathematics', 'Yes', 'Mathematics', ''),
(205, '180205', 'Calculus Early Transcendentals', 'James Stewart   ', 1, 1, 'Cengage Learning', '7', 0, 'Mathematics', 'No', 'Mathematics', ''),
(206, '180206', 'Calculus Early Transcendentals', 'James Stewart   ', 1, 1, 'Cengage Learning', '7', 0, 'Mathematics', 'No', 'Mathematics', ''),
(207, '180207', 'Calculus Early Transcendentals', 'James Stewart   ', 1, 1, 'Cengage Learning', '7', 0, 'Mathematics', 'No', 'Mathematics', ''),
(208, '180208', 'Calculus Early Transcendentals', 'James Stewart   ', 1, 1, 'Cengage Learning', '7', 0, 'Mathematics', 'No', 'Mathematics', ''),
(209, '180209', 'Calculus Early Transcendentals', 'James Stewart   ', 1, 1, 'Cengage Learning', '7', 0, 'Mathematics', 'No', 'Mathematics', ''),
(210, '180210', 'Calculus Early Transcendentals', 'James Stewart   ', 1, 1, 'Cengage Learning', '7', 0, 'Mathematics', 'No', 'Mathematics', ''),
(211, '180211', 'Calculus Early Transcendentals', 'James Stewart   ', 1, 1, 'Cengage Learning', '7', 0, 'Mathematics', 'No', 'Mathematics', ''),
(212, '180212', 'Calculus Early Transcendentals', 'James Stewart   ', 1, 1, 'Cengage Learning', '7', 0, 'Mathematics', 'No', 'Mathematics', ''),
(213, '180213', 'Essential Calculus Early Transcendentals', 'James Stewart   ', 1, 1, 'Cengage Learning', '1', 0, 'Mathematics', 'Yes', 'Mathematics', ''),
(214, '180214', 'Engineering Mathematics  1', 'J.John A.Arockiamary  ', 1, 1, 'Jaison Publications', '5', 488, 'Mathematics', 'Yes', 'Mathematics', ''),
(215, '180215', 'Engineering Mathematics  1 Question Bank', 'J.John A.Arockiamary  ', 1, 1, 'Jaison Publications', '1', 0, 'Mathematics', 'Yes', 'Mathematics', ''),
(216, '180216', 'Engineering Mathematics  2', 'J.John A.Arockiamary  ', 1, 1, 'Jaison Publications', '6', 488, 'Mathematics', 'Yes', 'Mathematics', ''),
(217, '180217', 'Engineering Mathematics  1', 'A.Singaravelu   ', 1, 1, 'Meenakshi Agency', '5', 390, 'Mathematics', 'Yes', 'Mathematics', ''),
(218, '180218', 'Engineering Mathematics  2', 'A.Singaravelu   ', 1, 1, 'Meenakshi Agency', '25', 495, 'Mathematics', 'Yes', 'Mathematics', ''),
(219, '180219', 'Transforms and Partial Differential Equations', 'A.Singaravelu   ', 1, 1, 'Meenakshi Agency', '1', 475, 'Mathematics', 'Yes', 'Mathematics', ''),
(220, '180220', 'Engineering Mathematics', 'N.P.Bali Manish Goyal  ', 1, 1, 'University Science Press', '4', 325, 'Mathematics', 'Yes', 'Mathematics', ''),
(221, '180221', 'Engineering Mathematics  1', 'N.Subramaniam   ', 1, 1, 'Scm Publishers', '2', 490, 'Mathematics', 'Yes', 'Mathematics', ''),
(222, '180222', 'Fundamentals of Applied Probability and Random Processes', 'Oliver C.Ibe   ', 1, 1, 'Elsevier', '5', 0, 'Mathematics', 'Yes', 'Mathematics', ''),
(223, '180223', 'Discrete and Combinatorial Mathematics', 'Ralph P.Grimaldi   ', 1, 1, 'Pearson Education', '4', 0, 'Mathematics', 'Yes', 'Mathematics', ''),
(224, '180224', 'Engineering Mathematics ', 'P.Sivaramakrishna Das C.Vijayakumari E.Rukmangadachari ', 1, 1, 'Pearson', '2', 0, 'Mathematics', 'Yes', 'Mathematics', ''),
(225, '180225', 'Engineering Mathematics  2', 'P.Sivaramakrishna Das C.Vijayakumari  ', 1, 1, 'Viji\'s Academy', '4', 395, 'Mathematics', 'Yes', 'Mathematics', ''),
(226, '180226', 'Engineering Mathematics ', 'T.Veerarajan   ', 1, 1, 'Tata McGraw Hill Education', '3', 0, 'Mathematics', 'Yes', 'Mathematics', ''),
(227, '180227', 'Engineering Mathematics', 'T.Veerarajan   ', 1, 1, 'Tata McGraw Hill Education', '3', 0, 'Mathematics', 'No', 'Mathematics', ''),
(228, '180228', 'Engineering Mathematics  2', 'P.Ganesan   ', 1, 1, 'RDA Publications', '1', 150, 'Mathematics', 'Yes', 'Mathematics', ''),
(229, '180229', 'Calculus', 'S.Narayanan T.K.Manicavachagom Pillay  ', 1, 1, 'S.Viswanathan Publishers', '1', 0, 'Mathematics', 'Yes', 'Mathematics', ''),
(230, '180230', 'Higher Engineering Mathematics', 'B.V.Ramana   ', 1, 1, 'Tata McGraw Hill Education', '4', 0, 'Mathematics', 'Yes', 'Mathematics', ''),
(231, '180231', 'Higher Engineering Mathematics', 'B.V.Ramana   ', 1, 1, 'Tata McGraw Hill Education', '4', 0, 'Mathematics', 'No', 'Mathematics', ''),
(232, '180232', 'Probability and Random Processes', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '7', 326, 'Mathematics', 'Yes', 'Mathematics', ''),
(233, '180233', 'Probability and Random Processes Question Bank', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '1', 150, 'Mathematics', 'Yes', 'Mathematics', ''),
(234, '180234', 'Discrete Mathematics Question Bank', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '1', 120, 'Mathematics', 'Yes', 'Mathematics', ''),
(235, '180235', 'Transforms and Partial Differential Equations', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '11', 479, 'Mathematics', 'Yes', 'Mathematics', ''),
(236, '180236', 'Transforms and Partial Differential Equations Question Bank', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '1', 150, 'Mathematics', 'Yes', 'Mathematics', ''),
(237, '180237', 'Probability and Queueing Theory', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '6', 0, 'Mathematics', 'Yes', 'Mathematics', ''),
(238, '180238', 'Probability and Queueing Theory Question Bank', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '1', 150, 'Mathematics', 'Yes', 'Mathematics', ''),
(239, '180239', 'Probability and Queueing Theory Question Bank', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '1', 150, 'Mathematics', 'No', 'Mathematics', ''),
(240, '180240', 'Probability and Queueing Theory Question Bank', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '1', 150, 'Mathematics', 'No', 'Mathematics', ''),
(241, '180241', 'Engineering Mathematics  1', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '1', 425, 'Mathematics', 'Yes', 'Mathematics', ''),
(242, '180242', 'Engineering Mathematics  1', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '1', 425, 'Mathematics', 'No', 'Mathematics', ''),
(243, '180243', 'Engineering Mathematics  1', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '5', 425, 'Mathematics', 'Yes', 'Mathematics', ''),
(244, '180244', 'Engineering Mathematics  1', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '2', 497, 'Mathematics', 'Yes', 'Mathematics', ''),
(245, '180245', 'Engineering Mathematics  1', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '4', 497, 'Mathematics', 'Yes', 'Mathematics', ''),
(246, '180246', 'Engineering Mathematics  1 Question Bank', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '4', 150, 'Mathematics', 'Yes', 'Mathematics', ''),
(247, '180247', 'Engineering Mathematics  1 Question Bank', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '1', 150, 'Mathematics', 'Yes', 'Mathematics', ''),
(248, '180248', 'Engineering Mathematics  2', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '1', 452, 'Mathematics', 'Yes', 'Mathematics', ''),
(249, '180249', 'Numerical Methods', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '9', 336, 'Mathematics', 'Yes', 'Mathematics', ''),
(250, '180250', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '40', 360, 'Mathematics', 'Yes', 'Mathematics', ''),
(251, '180251', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '40', 360, 'Mathematics', 'No', 'Mathematics', ''),
(252, '180252', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '40', 360, 'Mathematics', 'No', 'Mathematics', ''),
(253, '180253', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '40', 360, 'Mathematics', 'No', 'Mathematics', ''),
(254, '180254', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '41', 0, 'Mathematics', 'Yes', 'Mathematics', ''),
(255, '180255', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '41', 0, 'Mathematics', 'No', 'Mathematics', ''),
(256, '180256', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '42', 475, 'Mathematics', 'Yes', 'Mathematics', ''),
(257, '180257', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '42', 475, 'Mathematics', 'No', 'Mathematics', ''),
(258, '180258', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '42', 475, 'Mathematics', 'No', 'Mathematics', ''),
(259, '180259', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '42', 475, 'Mathematics', 'No', 'Mathematics', ''),
(260, '180260', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '42', 475, 'Mathematics', 'No', 'Mathematics', ''),
(261, '180261', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '42', 475, 'Mathematics', 'No', 'Mathematics', ''),
(262, '180262', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '42', 475, 'Mathematics', 'No', 'Mathematics', ''),
(263, '180263', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '42', 475, 'Mathematics', 'No', 'Mathematics', ''),
(264, '180264', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '42', 475, 'Mathematics', 'No', 'Mathematics', ''),
(265, '180265', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '43', 625, 'Mathematics', 'Yes', 'Mathematics', ''),
(266, '180266', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '43', 625, 'Mathematics', 'No', 'Mathematics', ''),
(267, '180267', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '43', 725, 'Mathematics', 'Yes', 'Mathematics', ''),
(268, '180268', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '43', 725, 'Mathematics', 'No', 'Mathematics', ''),
(269, '180269', 'Numerical Methods', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '9', 305, 'Mathematics', 'Yes', 'Mathematics', ''),
(270, '180270', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '1', 230, 'Computer Science', 'Yes', 'Computer Science', ''),
(271, '180271', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '1', 230, 'Computer Science', 'No', 'Computer Science', ''),
(272, '180272', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '1', 230, 'Computer Science', 'No', 'Computer Science', ''),
(273, '180273', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '1', 230, 'Computer Science', 'No', 'Computer Science', ''),
(274, '180274', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '2', 315, 'Computer Science', 'Yes', 'Computer Science', ''),
(275, '180275', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '1', 315, 'Computer Science', 'No', 'Computer Science', ''),
(276, '180276', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '1', 230, 'Computer Science', 'No', 'Computer Science', ''),
(277, '180277', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '1', 230, 'Computer Science', 'No', 'Computer Science', ''),
(278, '180278', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '1', 230, 'Computer Science', 'No', 'Computer Science', ''),
(279, '180279', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '1', 230, 'Computer Science', 'No', 'Computer Science', ''),
(280, '180280', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '3', 315, 'Computer Science', 'Yes', 'Computer Science', ''),
(281, '180281', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '4', 500, 'Computer Science', 'Yes', 'Computer Science', ''),
(282, '180282', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '4', 500, 'Computer Science', 'No', 'Computer Science', ''),
(283, '180283', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '4', 500, 'Computer Science', 'No', 'Computer Science', ''),
(284, '180284', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '4', 500, 'Computer Science', 'No', 'Computer Science', ''),
(285, '180285', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '4', 500, 'Computer Science', 'No', 'Computer Science', ''),
(286, '180286', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '4', 500, 'Computer Science', 'No', 'Computer Science', ''),
(287, '180287', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '4', 500, 'Computer Science', 'No', 'Computer Science', ''),
(288, '180288', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '4', 500, 'Computer Science', 'No', 'Computer Science', ''),
(289, '180289', 'Computer Fundamentals and Programming in C', 'Anita Goel Ajay Mittal  ', 1, 1, 'Pearson', '1', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(290, '180290', 'Let Us C', 'Yashavant Kanetkar   ', 1, 1, 'BPB Publications', '4', 180, 'Computer Science', 'Yes', 'Computer Science', ''),
(291, '180291', 'Let Us C', 'Yashavant Kanetkar   ', 1, 1, 'BPB Publications', '12', 258, 'Computer Science', 'Yes', 'Computer Science', ''),
(292, '180292', 'Let Us C', 'Yashavant Kanetkar   ', 1, 1, 'BPB Publications', '12', 258, 'Computer Science', 'No', 'Computer Science', ''),
(293, '180293', 'Understanding Pointers in C', 'Yashavant Kanetkar   ', 1, 1, 'BPB Publications', '3', 195, 'Computer Science', 'Yes', 'Computer Science', ''),
(294, '180294', 'Understanding Pointers in C', 'Yashavant Kanetkar   ', 1, 1, 'BPB Publications', '4', 270, 'Computer Science', 'Yes', 'Computer Science', ''),
(295, '180295', 'Mastering Turbo C', 'Stan KellyBootle   ', 1, 1, 'BPB Publications', '1', 120, 'Computer Science', 'Yes', 'Computer Science', ''),
(296, '180296', 'Programming in ANSI C', 'E.Balagurusamy   ', 1, 1, 'Tata McGraw Hill Publishing Company', '4', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(297, '180297', 'The C Programming Language', 'Brian W.Kernighan Dennis M.Ritchie  ', 1, 1, 'PHI Learing', '2', 225, 'Computer Science', 'Yes', 'Computer Science', ''),
(298, '180298', 'C Language', 'CSC   ', 1, 1, 'CSC Computer Education', '1', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(299, '180299', 'Programming Languages', 'Ravi Sethi K.V.Viswanatha  ', 1, 1, 'Pearson', '2', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(300, '180300', 'An Introduction to Operating Systems', 'Pramod Chandra P.Bhatt   ', 1, 1, 'PHI Learing', '2', 295, 'Computer Science', 'Yes', 'Computer Science', ''),
(301, '180301', 'Operating Systems', 'Andrew S.Tanenbaum Albert S.Woodhull  ', 1, 1, 'PHI Learing', '2', 395, 'Computer Science', 'Yes', 'Computer Science', ''),
(302, '180302', 'Computer Practice Laboratory  1', 'V.Ramesh Babu R.Samyuktha M.Muni Rathnam ', 1, 1, 'VRB Publishers', '1', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(303, '180303', 'Digital Logic and Computer Organization', 'V.Rajaraman T.Radhakrishnan  ', 1, 1, 'PHI Learing', '1', 295, 'Computer Science', 'Yes', 'Computer Science', ''),
(304, '180304', 'Computer Organization and Design', 'David A.Patterson John L.Hennessy  ', 1, 1, 'MK Publishers', '4', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(305, '180305', 'Computer Organization and Design', 'David A.Patterson John L.Hennessy  ', 1, 1, 'MK Publishers', '4', 0, 'Computer Science', 'No', 'Computer Science', ''),
(306, '180306', 'Computer Organization', 'Carl Hamacher Zvonko Vranesic Safwat Zaky ', 1, 1, 'McGraw Hill Education', '5', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(307, '180307', 'Computer Organization', 'Carl Hamacher Zvonko Vranesic Safwat Zaky ', 1, 1, 'McGraw Hill Education', '5', 0, 'Computer Science', 'No', 'Computer Science', ''),
(308, '180308', 'Computer Organization', 'Carl Hamacher Zvonko Vranesic Safwat Zaky ', 1, 1, 'McGraw Hill Education', '5', 0, 'Computer Science', '', 'Computer Science', ''),
(309, '180309', 'Computer Fundamentals', 'Pradeep K.Sinha Priti Sinha  ', 1, 1, 'BPB Publications', '3', 165, 'Computer Science', 'Yes', 'Computer Science', ''),
(310, '180310', 'Computer Fundamentals', 'Pradeep K.Sinha Priti Sinha  ', 1, 1, 'BPB Publications', '3', 165, 'Computer Science', 'No', 'Computer Science', ''),
(311, '180311', 'Computer Fundamentals', 'Pradeep K.Sinha Priti Sinha  ', 1, 1, 'BPB Publications', '3', 165, 'Computer Science', 'No', 'Computer Science', ''),
(312, '180312', 'Compiler Construction', 'Kenneth C.Louden   ', 1, 1, 'Galgotia Publications', '1', 176, 'Computer Science', 'Yes', 'Computer Science', ''),
(313, '180313', 'Applying UML and Patterns', 'Craig Larman   ', 1, 1, 'Pearson', '3', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(314, '180314', 'Object Oriented Modeling and Design with UML', 'Michael R.Blaha James R.Rumbaugh  ', 1, 1, 'Pearson', '2', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(315, '180315', 'Object Oriented Modeling and Design with UML', 'Michael R.Blaha James R.Rumbaugh  ', 1, 1, 'Pearson', '2', 0, 'Computer Science', 'No', 'Computer Science', ''),
(316, '180316', 'XML', ' Web Services and the Data Revolution\",Frank P.Coyle   ', 1, 1, 'Pearson', '8', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(317, '180317', 'Introduction to Automata Theory', 'Languages and Computation\",John E.Hopcraft Rajeev Motwani Jeffrey D.Ullman ', 1, 1, 'Pearson', '3', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(318, '180318', 'Introduction to Automata Theory', 'Languages and Computation\",John E.Hopcraft Rajeev Motwani Jeffrey D.Ullman ', 1, 1, 'Pearson', '3', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(319, '180319', 'Computer Graphics Using OpenGL', 'Francis S.Hill Stephen M.Kelley  ', 1, 1, 'Pearson', '3', 550, 'Computer Science', 'Yes', 'Computer Science', ''),
(320, '180320', 'Computer Graphics Using OpenGL', 'Francis S.Hill Stephen M.Kelley  ', 1, 1, 'Pearson', '3', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(321, '180321', 'Computer Networking', 'James F.Kurose Keith W.Ross  ', 1, 1, 'Pearson', '3', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(322, '180322', 'Data Communication and Networking', 'Behrouz A.Forouzan   ', 1, 1, 'McGraw Hill Education', '4', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(323, '180323', 'Fundamentals of Computing and Programming', 'V.Ramesh Babu R.Samyuktha M.Muni Rathnam ', 1, 1, 'VRB Publishers', '17', 460, 'Computer Science', 'Yes', 'Computer Science', ''),
(324, '180324', 'Fundamentals of Computing and Programming', 'V.Ramesh Babu R.Samyuktha M.Muni Rathnam ', 1, 1, 'VRB Publishers', '15', 395, 'Computer Science', 'Yes', 'Computer Science', ''),
(325, '180325', 'Fundamentals of Computing and Programming', 'E.Balagurusamy   ', 1, 1, 'McGraw Hill Education', '1', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(326, '180326', 'Digital Principles and System Design', 'Atul P.Godse Deepali A.Godse  ', 1, 1, 'Technical Publications', '4', 395, 'Computer Science', 'Yes', 'Computer Science', ''),
(327, '180327', 'Digital Principles and Applications', 'Albert Paul Malvino Donald P.Leach  ', 1, 1, 'Tata McGraw Hill Publishing Company', '4', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(328, '180328', 'Digital Design', 'M.Morris Mano   ', 1, 1, 'PHI Learing', '3', 175, 'Computer Science', 'Yes', 'Computer Science', ''),
(329, '180329', 'Digital Design', 'M.Morris Mano Michael D.Ciletti  ', 1, 1, 'Pearson', '4', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(330, '180330', 'Digital Design', 'M.Morris Mano Michael D.Ciletti  ', 1, 1, 'Pearson', '4', 0, 'Computer Science', 'No', 'Computer Science', ''),
(331, '180331', 'Digital Design', 'M.Morris Mano Michael D.Ciletti  ', 1, 1, 'Pearson', '4', 0, 'Computer Science', 'No', 'Computer Science', ''),
(332, '180332', 'Digital Design', 'M.Morris Mano Michael D.Ciletti  ', 1, 1, 'Pearson', '4', 0, 'Computer Science', 'No', 'Computer Science', ''),
(333, '180333', 'Digital Signal Processing', 'John G.Proakis Dimitris G.Manolakis  ', 1, 1, 'Pearson', '3', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(334, '180334', 'Digital Signal Processing', 'P.Ramesh Babu   ', 1, 1, 'Scitech Publications', '4', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(335, '180335', 'System Software', 'Leland L.Beck D.Manjula  ', 1, 1, 'Pearson', '3', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(336, '180336', 'System Software', 'Leland L.Beck D.Manjula  ', 1, 1, 'Pearson', '3', 0, 'Computer Science', 'No', 'Computer Science', ''),
(337, '180337', 'Software Engineering', 'J.Daphney Joann   ', 1, 1, 'A.R Publications', '1', 145, 'Computer Science', 'Yes', 'Computer Science', ''),
(338, '180338', 'Software Engineering', 'V.R.Kavitha   ', 1, 1, 'Magnus Publications', '1', 200, 'Computer Science', 'Yes', 'Computer Science', ''),
(339, '180339', 'Software Engineering', 'Roger S.Pressman   ', 1, 1, 'McGraw Hill Education', '7', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(340, '180340', 'Software Engineering', 'N.K.Prema   ', 1, 1, 'Sai Publishers', '1', 150, 'Computer Science', 'Yes', 'Computer Science', ''),
(341, '180341', 'Fundamentals of Data Structures in C', 'Ellis Horowitz Sartaj Sahni Susan AndersonFreed ', 1, 1, 'University Press', '2', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(342, '180342', 'Fundamentals of Data Structures in C', 'Ellis Horowitz Sartaj Sahni Susan AndersonFreed ', 1, 1, 'University Press', '2', 0, 'Computer Science', 'No', 'Computer Science', ''),
(343, '180343', 'Fundamentals of Data Structures', 'Ellis Horowitz Sartaj Sahni  ', 1, 1, 'Galgotia Publications', '1', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(344, '180344', 'Programming and Data Structures  1', 'V.Ramesh Babu R.Samyuktha M.Muni Rathnam ', 1, 1, 'VRB Publishers', '1', 460, 'Computer Science', 'Yes', 'Computer Science', ''),
(345, '180345', 'Data Structures and Algorithm Analysis in C', 'Mark Allen Weiss   ', 1, 1, 'Pearson', '2', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(346, '180346', 'Data Structures and Algorithm Analysis in C++', 'Mark Allen Weiss   ', 1, 1, 'Pearson', '3', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(347, '180347', 'Data Structures and Algorithms and ObjectOriented Programming', 'Gregory L.Heileman   ', 1, 1, 'Tata McGraw Hill Publishing Company', '1', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(348, '180348', 'Database System Concepts', 'Abraham Silberchatz Henry F.Korth S.Sudarshan ', 1, 1, 'McGraw Hill Education', '5', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(349, '180349', 'Database System Concepts', 'Abraham Silberchatz Henry F.Korth S.Sudarshan ', 1, 1, 'McGraw Hill Education', '5', 0, 'Computer Science', 'No', 'Computer Science', ''),
(350, '180350', 'Database System Concepts', 'Abraham Silberchatz Henry F.Korth S.Sudarshan ', 1, 1, 'McGraw Hill Education', '6', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(351, '180351', 'Database System Concepts', 'Abraham Silberchatz Henry F.Korth S.Sudarshan ', 1, 1, 'McGraw Hill Education', '6', 0, 'Computer Science', 'No', 'Computer Science', ''),
(352, '180352', 'Database System Concepts', 'Abraham Silberchatz Henry F.Korth S.Sudarshan ', 1, 1, 'McGraw Hill Education', '6', 0, 'Computer Science', 'No', 'Computer Science', ''),
(353, '180353', 'Database System Concepts', 'Abraham Silberchatz Henry F.Korth S.Sudarshan ', 1, 1, 'McGraw Hill Education', '6', 0, 'Computer Science', 'No', 'Computer Science', ''),
(354, '180354', 'Database System Concepts', 'Abraham Silberchatz Henry F.Korth S.Sudarshan ', 1, 1, 'McGraw Hill Education', '6', 0, 'Computer Science', 'No', 'Computer Science', ''),
(355, '180355', 'Information Technology', 'Dennis P.Curtin Kim Foley Kunal Sen Cathleen Morin', 1, 1, 'Tata McGraw Hill Publishing Company', '13', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(356, '180356', 'Operations Research', 'R.Panneerselvam   ', 1, 1, 'PHI Learing', '2', 395, 'Computer Science', 'Yes', 'Computer Science', ''),
(357, '180357', 'Artificial Intelligence', 'Stuart Russell Peter Norvig  ', 1, 1, 'Pearson', '2', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(358, '180358', 'Introduction to Artificial Intelligence and Expert Systems', 'Dan W.Patterson   ', 1, 1, 'PHI Learing', '12', 150, 'Computer Science', 'Yes', 'Computer Science', ''),
(359, '180359', 'Computer Programming', 'E.Balagurusamy   ', 1, 1, 'McGraw Hill Education', '1', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(360, '180360', 'Computer Programming', 'Ashok N.Kamthane   ', 1, 1, 'Pearson', '2', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(361, '180361', 'Computer Programming', 'Ashok N.Kamthane   ', 1, 1, 'Pearson', '2', 0, 'Computer Science', 'No', 'Computer Science', ''),
(362, '180362', 'Distributed Systems', 'George Coulouris Jean Dollimore Tim Kindberg Gordon Blair', 1, 1, 'Pearson', '5', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(363, '180363', 'Image Processing', 'Analysis and Machine Vision\",Milan Sonka Vaclav Hlavac Roger Boyle ', 1, 1, 'Thomson Brooks/Cole', '2', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(364, '180364', 'C++ How to Program', 'Paul Deitel Harvey Deitel  ', 1, 1, 'PHI Learing', '8', 695, 'Computer Science', 'Yes', 'Computer Science', ''),
(365, '180365', 'C++ How to Program', 'Paul Deitel Harvey Deitel  ', 1, 1, 'PHI Learing', '8', 695, 'Computer Science', 'No', 'Computer Science', ''),
(366, '180366', 'C++ How to Program', 'H.M.Deitel P.J.Deitel  ', 1, 1, 'Pearson', '4', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(367, '180367', 'C++ How to Program', 'H.M.Deitel P.J.Deitel  ', 1, 1, 'Pearson', '4', 0, 'Computer Science', 'No', 'Computer Science', ''),
(368, '180368', 'C++ Programming', 'Mike McGrath   ', 1, 1, 'Tata McGraw Hill Publishing Company', '1', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(369, '180369', 'Computer Algorithms', 'Ellis Horowitz Sartaj Sahni Sanguthevar Rajasekaran ', 1, 1, 'University Press', '2', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(370, '180370', 'C++', 'CSC   ', 1, 1, 'CSC Computer Education', '1', 0, 'Computer Science', 'Yes', 'Computer Science', ''),
(371, '180371', 'C++', 'CSC   ', 1, 1, 'CSC Computer Education', '1', 0, 'Computer Science', 'No', 'Computer Science', ''),
(372, '180372', 'Personal Computers', 'Art Margolis   ', 1, 1, 'BPB Publications', '1', 150, 'Computer Science', 'Yes', 'Computer Science', ''),
(373, '180376', 'Design of Transmission Systems', 'V.Jayakumar   ', 1, 1, 'Lakshmi Publications', '3', 275, 'Mechanical', 'Yes', 'Mechanical', ''),
(374, '180377', 'Total Quality Management', 'Dale H.Besterfield Carol BesterfieldMichna Glen H.Besterfield Mary BesterfieldSacre', 1, 1, 'Pearson', '4', 0, 'Mechanical', 'Yes', 'Mechanical', ''),
(375, '180378', 'Total Quality Management', 'V.Jayakumar R.Raju  ', 1, 1, 'Lakshmi Publications', '7', 150, 'Mechanical', 'Yes', 'Mechanical', ''),
(376, '180379', 'Fundamentals of Engineering Heat and Mass Transfer', 'R.C.Sachdeva   ', 1, 1, 'New Age International Publishers', '4', 395, 'Mechanical', 'Yes', 'Mechanical', ''),
(377, '180380', 'Thermal Engineering', 'R.K.Rajput   ', 1, 1, 'Laxmi Publications', '8', 0, 'Mechanical', 'Yes', 'Mechanical', ''),
(378, '180381', 'Theory of Machines and Mechanisms', 'John J.Uicker Gordon R.Pennock Joseph E.Shigley ', 1, 1, 'Oxford University Press', '3', 0, 'Mechanical', 'Yes', 'Mechanical', ''),
(379, '180382', 'Theory of Machines', 'R.S.Khurmi J.K.Gupta  ', 1, 1, 'S.Chand Publishing', '41', 750, 'Mechanical', 'Yes', 'Mechanical', ''),
(380, '180383', 'Machine Design', 'R.S.Khurmi J.K.Gupta  ', 1, 1, 'Eurasia Publishing House', '1', 0, 'Mechanical', 'Yes', 'Mechanical', ''),
(381, '180384', 'Dynamic of Machinery', 'V.Jayakumar   ', 1, 1, 'Lakshmi Publications', '5', 330, 'Mechanical', 'Yes', 'Mechanical', ''),
(382, '180385', 'Engineering Thermodynamics', 'P.K.Nag   ', 1, 1, 'McGraw Hill Education', '5', 0, 'Mechanical', 'Yes', 'Mechanical', ''),
(383, '180386', 'Engineering Thermodynamics', 'E.Natarajan   ', 1, 1, 'Anuragam Publications', '2', 450, 'Mechanical', 'Yes', 'Mechanical', ''),
(384, '180387', 'Manufacturing technology', 'P.N.Rao   ', 1, 1, 'McGraw Hill Education', '3', 0, 'Mechanical', 'Yes', 'Mechanical', ''),
(385, '180388', 'Finite Element Analysis', 'S.Senthil R.Panneerdhass  ', 1, 1, 'Lakshmi Publications', '11', 510, 'Mechanical', 'Yes', 'Mechanical', ''),
(386, '180389', 'Finite Element Analysis', 'S.Senthil R.Panneerdhass  ', 1, 1, 'Lakshmi Publications', '8', 0, 'Mechanical', 'Yes', 'Mechanical', ''),
(387, '180390', 'Finite Element Analysis', 'S.Senthil R.Panneerdhass  ', 1, 1, 'Lakshmi Publications', '9', 430, 'Mechanical', 'Yes', 'Mechanical', ''),
(388, '180391', 'Engineering Mechanics', 'N.Kottiswaran   ', 1, 1, 'Sri Balaji Publications', '12', 496, 'Mechanical', 'Yes', 'Mechanical', ''),
(389, '180392', 'Engineering Mechanics', 'N.Kottiswaran   ', 1, 1, 'Sri Balaji Publications', '12', 469, 'Mechanical', 'Yes', 'Mechanical', ''),
(390, '180393', 'Engineering Mechanics', 'V.Ramesh Babu   ', 1, 1, 'VRB Publications', '19', 550, 'Mechanical', 'Yes', 'Mechanical', ''),
(391, '180394', 'Engineering Mechanics', 'Vela Murali   ', 1, 1, 'Oxford University Press', '9', 365, 'Mechanical', 'Yes', 'Mechanical', ''),
(392, '180395', 'Engineering Mechanics', 'Vela Murali   ', 1, 1, 'Oxford University Press', '2', 245, 'Mechanical', 'Yes', 'Mechanical', ''),
(393, '180396', 'Engineering Mechanics', 'Vela Murali   ', 1, 1, 'Oxford University Press', '7', 325, 'Mechanical', 'Yes', 'Mechanical', ''),
(394, '180397', 'Thermal Engineering  1', 'A.Shanmugam T.Muthiah  ', 1, 1, 'Yuktha Publications', '1', 200, 'Mechanical', 'Yes', 'Mechanical', ''),
(395, '180398', 'Engineering Mechanics', 'Vela Murali   ', 1, 1, 'Oxford University Press', '7', 295, 'Mechanical', 'Yes', 'Mechanical', ''),
(396, '180399', 'Mechatronics', 'William Bolton   ', 1, 1, 'Pearson', '4', 0, 'Mechanical', 'Yes', 'Mechanical', ''),
(397, '180400', 'Strength of Materials', 'R.K.Rajput   ', 1, 1, 'S.Chand Publishing', '1', 0, 'Mechanical', 'Yes', 'Mechanical', ''),
(398, '180401', 'Vector Mechanics for Engineers', 'Ferdinand P.Beer E.Russell Johnston  ', 1, 1, 'Tata McGraw Hill', '8', 0, 'Mechanical', 'Yes', 'Mechanical', ''),
(399, '180402', 'Vector Mechanics for Engineers', 'Ferdinand P.Beer E.Russell Johnston  ', 1, 1, 'Tata McGraw Hill', '7', 0, 'Mechanical', 'Yes', 'Mechanical', ''),
(400, '180403', 'Vector Mechanics for Engineers', 'Ferdinand P.Beer E.Russell Johnston  ', 1, 1, 'Tata McGraw Hill', '9', 0, 'Mechanical', 'Yes', 'Mechanical', ''),
(401, '180404', 'Design of Transmission Systems', 'V.Jayakumar   ', 1, 1, 'Lakshmi Publications', '3', 275, 'Mechanical', 'No', 'Mechanical', ''),
(402, '180405', 'Hydraulics and Fluid Mechanics', 'P.N.Modi S.M.Seth  ', 1, 1, 'Rajsons Publications', '20', 720, 'Mechanical', 'Yes', 'Mechanical', ''),
(403, '180406', 'Engineering Fluid Mechanics', 'K.L.Kumar   ', 1, 1, 'S.Chand Publishing', '20', 400, 'Mechanical', 'Yes', 'Mechanical', ''),
(404, '180407', 'Machine Drawing', 'K.R.Gopalakrishna   ', 1, 1, 'Subhas Stores', '22', 350, 'Mechanical', 'Yes', 'Mechanical', ''),
(405, '180408', 'Machine Drawing', 'K.R.Gopalakrishna   ', 1, 1, 'Subhas Stores', '18', 0, 'Mechanical', 'Yes', 'Mechanical', ''),
(406, '180409', 'Analog and Digital Communications', 'P.Chakrabarti   ', 1, 1, 'Dhanpat Rai Co', '2', 240, 'ECE', 'Yes', 'ECE', ''),
(407, '180410', 'Microprocessors and Micro Controllers', 'B.P.Singh   ', 1, 1, 'Galgotia Publications', '2', 195, 'ECE', 'Yes', 'ECE', ''),
(408, '180411', 'Microprocessors Comprehensive Studies', 'Naresh Grover   ', 1, 1, 'Dhanpat Rai Co', '5', 180, 'ECE', 'Yes', 'ECE', ''),
(409, '180412', 'The Intel Microprocessors', 'Barry B.Brey   ', 1, 1, 'PHI Learning', '6', 350, 'ECE', 'Yes', 'ECE', ''),
(410, '180413', 'The Intel Microprocessors', 'Barry B.Brey   ', 1, 1, 'PHI Learning', '6', 350, 'ECE', 'No', 'ECE', ''),
(411, '180414', 'Applications and Design with Analog Integrated Circuits', 'J.Michael Jacob   ', 1, 1, 'PHI Learning', '2', 250, 'ECE', 'Yes', 'ECE', ''),
(412, '180415', 'Question Bank in Electronics & Communication Engineering', 'B.R.Gupta V.Singhal  ', 1, 1, 'S.K.Kataria & Sons', '2', 250, 'ECE', 'Yes', 'ECE', ''),
(413, '180416', 'Mechatronics', 'G.K.Vijayaraghavan R.Rajappan S.Ramalatha ', 1, 1, 'A.R.S Publications', '2', 120, 'Mechanical', 'Yes', 'Mechanical', ''),
(414, '180417', 'The ABCs of the Internet', 'Christian Crumlish   ', 1, 1, 'BPB Publications', '2', 99, 'CSE', 'Yes', 'CSE', ''),
(415, '180418', 'Mastering C', 'K.R.Venugopal S.R.Prasad  ', 1, 1, 'Tata McGraw Hill', '2', 0, 'CSE', 'Yes', 'CSE', ''),
(416, '180419', 'Advanced Unix  A Programmer Guide', 'Stephen Prata   ', 1, 1, 'BPB Publications', '1', 150, 'CSE', 'Yes', 'CSE', ''),
(417, '180420', 'Basic Electrical', 'Electronics and Computer Engineering\",R.Muthusubramanian S.Salivahanan K.A.Muraleedharan ', 1, 1, 'Tata McGraw Hill', '2', 0, 'EEE', 'Yes', 'EEE', ''),
(418, '180421', 'Advanced Microprocessors and Peripherals', 'A.K.Ray K.M.Bhurchandi  ', 1, 1, 'Tata McGraw Hill', '2', 0, 'ECE', 'Yes', 'ECE', ''),
(419, '180422', 'Embedded Systems', 'Raj Kamal   ', 1, 1, 'Tata McGraw Hill', '11', 0, 'ECE', 'Yes', 'ECE', ''),
(420, '180423', 'Electric Drives', 'Vedam Subrahmanyam   ', 1, 1, 'Tata McGraw Hill', '19', 0, 'EEE', 'Yes', 'EEE', ''),
(421, '180424', 'Electronic Instrumentation and Measurements', 'David A.Bell   ', 1, 1, 'PHI Learning', '2', 250, 'ECE', 'Yes', 'ECE', ''),
(422, '180425', 'Traffic Engineering and Transport Planning', 'L.R.Kadiyali   ', 1, 1, 'Khanna Publishers', '3', 225, 'ECE', 'Yes', 'ECE', ''),
(423, '180426', 'Vehicle Electronic Systems & Fault Diagnosis', 'Allan W.M.Bonnick   ', 1, 1, 'STS Press', '1', 0, 'ECE', 'Yes', 'ECE', ''),
(424, '180427', 'Monochrome and Colour Television', 'R.R.Gulati   ', 1, 1, 'Wiley Eastern Limited', '2', 0, 'ECE', 'Yes', 'ECE', ''),
(425, '180428', 'Control of Electrical Machines', 'S.K.Bhattacharya Brijinder Singh  ', 1, 1, 'New Age International Publishers', '1', 0, 'ECE', 'Yes', 'ECE', ''),
(426, '180429', 'Microprocessor and Microcontroller', 'R.Theagarajan   ', 1, 1, 'Scitech Publications', '1', 233, 'ECE', 'Yes', 'ECE', ''),
(427, '180430', 'Solid State Electronic Devices', 'Ben G.Streetman Sanjay Kumar Banerjee  ', 1, 1, 'PHI Learning', '6', 295, 'ECE', 'Yes', 'ECE', ''),
(428, '180431', 'Highway Engineering', 'S.K.Khanna C.E.G.Justo  ', 1, 1, 'Nem Chand & Bros', '8', 200, 'Mechanical', 'Yes', 'Mechanical', ''),
(429, '180432', 'Electronics Engineering', 'C.Aravind Vaithilingam   ', 1, 1, 'Charulatha Publications', '1', 75, 'EEE', 'Yes', 'EEE', ''),
(430, '180433', 'Electrical Drives', 'S.K.Pillai   ', 1, 1, 'New Age International Publishers', '2', 0, 'EEE', 'Yes', 'EEE', ''),
(431, '180434', 'Electric Gadgets and their Repairs', 'S.R.Rao S.P.Luthra  ', 1, 1, 'Pitambar Book Depot', '3', 0, 'EEE', 'Yes', 'EEE', ''),
(432, '180435', 'Basic Electronics', 'J.B.Gupta   ', 1, 1, 'S.K.Kataria & Sons', '1', 175, 'EEE', 'Yes', 'EEE', ''),
(433, '180436', 'Fundamentals of Electrical and Electronics Engineering', 'Smarajit Ghosh   ', 1, 1, 'PHI Learning', '2', 450, 'EEE', 'Yes', 'EEE', ''),
(434, '180437', 'Electrical and Electronic Measurements and Instrumentation', 'A.K.Sawhney   ', 1, 1, 'Dhanpat Rai Co', '20', 260, 'EEE', 'Yes', 'EEE', ''),
(435, '180438', 'Image Processing', 'Analysis and Machine Vision\",Milan Sonka Vaclav Hlavac Roger Boyle ', 1, 1, 'PWS Publishing', '2', 0, 'CSE', 'Yes', 'CSE', ''),
(436, '180439', 'Electronic Communications Systems', 'Wayne Tomasi   ', 1, 1, 'Pearson', '4', 0, 'ECE', 'Yes', 'ECE', ''),
(437, '180440', 'Upgrading and Repairing PCs', 'Scott Mueller   ', 1, 1, 'Pearson', '13', 0, 'CSE', 'Yes', 'CSE', ''),
(438, '180441', 'Mechatronics', 'M.D.Singh J.G.Joshi  ', 1, 1, 'PHI Learning', '1', 325, 'Mechanical', 'Yes', 'Mechanical', ''),
(439, '180442', 'Electric Drives', 'Nisit K.De Prasanta K.Sen  ', 1, 1, 'PHI Learning', '1', 195, 'ECE', 'Yes', 'ECE', ''),
(440, '180443', 'MEMS', 'Nitaigour Premchand Mahalik   ', 1, 1, 'Tata McGraw Hill', '1', 0, 'ECE', 'Yes', 'ECE', ''),
(441, '180444', 'The 8051 Microcontroller and Embedded Systems', 'Muhammad Ali Mazidi Janice Gillispie Mazidi Rolin D.McKinley ', 1, 1, 'Pearson', '2', 0, 'ECE', 'Yes', 'ECE', ''),
(442, '180445', 'Experimental Methods for Engineers', 'J.P.Holman   ', 1, 1, 'McGraw Hill Education', '7', 0, 'Mechanical', 'Yes', 'Mechanical', ''),
(443, '180446', 'Digital Electronics', 'S.N.Ali   ', 1, 1, 'Galgotia Publications', '3', 0, 'ECE', 'Yes', 'ECE', ''),
(444, '180447', 'Digital Design', 'M.Morris Mano   ', 1, 1, 'PHI Learning', '3', 175, 'CSE', 'Yes', 'CSE', ''),
(445, '180448', 'Fundamentals of Computing', 'T.Jeyapoovan   ', 1, 1, 'Vikas Publishing House', '1', 145, 'CSE', 'Yes', 'CSE', ''),
(446, '180449', 'Local Area Networks', 'Gerd Keiser   ', 1, 1, 'Tata McGraw Hill', '2', 0, 'CSE', 'Yes', 'CSE', ''),
(447, '180450', 'Programming in C', 'T.Jeyapoovan   ', 1, 1, 'Vikas Publishing House', '1', 150, 'CSE', 'Yes', 'CSE', ''),
(448, '180451', 'Fundamentals of Computing', 'T.Jeyapoovan   ', 1, 1, 'Vikas Publishing House', '1', 195, 'CSE', 'Yes', 'CSE', ''),
(449, '180452', 'Material Science', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 400, 'Material Science', 'Yes', 'Material Science', ''),
(450, '180453', 'Material Science', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 400, 'Material Science', 'No', 'Material Science', ''),
(451, '180454', 'Material Science', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 400, 'Material Science', 'No', 'Material Science', ''),
(452, '180455', 'Material Science and Engineering', 'William F.Smith Javad Hashemi Ravi Prakash ', 1, 1, 'McGraw Hill Education', '4', 0, 'Material Science', 'Yes', 'Material Science', ''),
(453, '180456', 'Elaectric Drives', 'Nisit K.De Prasanta K sen  ', 1, 1, 'PHI Learning ', '15', 225, 'EEE', 'Yes', 'EEE', ''),
(454, '180457', 'Electronic Principles', 'Albert Paul Malvino   ', 1, 1, 'Tata Mcgraw Hill ', '6', 0, 'EEE', 'Yes', 'EEE', ''),
(455, '180458', 'Electronic circuits 1', 'K.Balaji   ', 1, 1, 'ARS', '1', 215, 'EEE', 'Yes', 'EEE', ''),
(456, '180459', 'Digital Electronics', 'A.P.Godse D.A.Godse  ', 1, 1, 'Technical publications', '4', 400, 'EEE', 'Yes', 'EEE', ''),
(457, '180460', 'Engineering circuits analysis', 'W.H.Hayt J.E.Kemmerly S.M.Durbin ', 1, 1, 'Tata Mcgraw Hill ', '7', 0, 'EEE', 'Yes', 'EEE', ''),
(458, '180461', 'Basic electrical engineering', 'J.J.Cathey S.A.Nasar  ', 1, 1, 'Tata Mcgraw Hill ', '2', 0, 'EEE', 'Yes', 'EEE', ''),
(459, '180462', 'Electronic circuits 1', 'A.P.Godse U.A.Bakshi  ', 1, 1, 'Technical publications', '2', 230, 'EEE', 'Yes', 'EEE', ''),
(460, '180463', 'Theory and Design of Adaptive Filters', 'Jhon r.Treichler C.Richard Johnson Michael G.Larimore ', 1, 1, 'PHI Learning ', '1', 195, 'EEE', 'Yes', 'EEE', ''),
(461, '180464', 'Signals and Systems', 'P.Ramesh Babu Ananda Natrajan  ', 1, 1, 'SciTech publication', '3', 325, 'EEE', 'Yes', 'EEE', ''),
(462, '180465', 'Basic Electrical and Electronic Engineering', 'R.Muthu Subramanian S.Salivahanan  ', 1, 1, 'Tata Mcgraw Hill ', '2', 0, 'EEE', 'Yes', 'EEE', ''),
(463, '180466', 'Basic electrical engineering', 'Nageswararao   ', 1, 1, 'Meenakshi agency', '1', 0, 'EEE', 'Yes', 'EEE', ''),
(464, '180467', 'Electromagnetic Fields', 'U.A.Bakshi Late.A.V.Bakshi  ', 1, 1, 'Technical publications', '3', 380, 'EEE', 'Yes', 'EEE', ''),
(465, '180468', 'Electric Circuit Analysis', 'Nageswararao   ', 1, 1, 'A.R.Publications', '9', 275, 'EEE', 'Yes', 'EEE', ''),
(466, '180469', 'Signals and Systems', 'G.Meenakshi M.Suchetha S.Sumathi ', 1, 1, 'Sruthi Publications', '2', 0, 'EEE', 'Yes', 'EEE', ''),
(467, '180470', 'Basic Electrical and Electronic Engineering', 'R.Muthusubramanian S.Salivahanan  ', 1, 1, 'Tata Mcgraw Hill ', '2', 0, 'EEE', 'No', 'EEE', ''),
(468, '180471', 'Basic Electrical and Electronic Engineering', 'R.Muthusubramanian S.Salivahanan  ', 1, 1, 'Tata Mcgraw Hill ', '2', 0, 'EEE', 'No', 'EEE', ''),
(469, '180472', 'Basic electrical engineering', 'V.N.Mittle Arvind Mittal  ', 1, 1, 'Tata Mcgraw Hill ', '2', 0, 'EEE', 'Yes', 'EEE', ''),
(470, '180473', 'Electronic Devices and Circuits', 'S.Salivahanan N.Suresh Kumar  ', 1, 1, 'Tata Mcgraw Hill ', '3', 0, 'EEE', 'Yes', 'EEE', ''),
(471, '180474', 'Electrical Engineering Fundamentals', 'Vincent Del Toro   ', 1, 1, 'PHI Learning ', '2', 0, 'EEE', 'Yes', 'EEE', ''),
(472, '180475', 'Signals and Systems', 'J.S.Chitode   ', 1, 1, 'Technical publications', '1', 320, 'EEE', 'Yes', 'EEE', ''),
(473, '180476', 'Electronic Circuits', 'Donald.L.Schilling Charles Bellove  ', 1, 1, 'Tata Mcgraw Hill ', '3', 0, 'EEE', 'Yes', 'EEE', ''),
(474, '180477', 'Information System Control and Audit', 'Rom Weber   ', 1, 1, 'Pearson Publication', '12', 0, 'EEE', 'Yes', 'EEE', ''),
(475, '180478', 'Communication Electronics', 'Frenzel   ', 1, 1, 'Tata Mcgraw Hill ', '3', 0, 'EEE', 'Yes', 'EEE', ''),
(476, '180479', 'Electronic Devices and Circuits', 'David.A.Bell   ', 1, 1, 'Oxford Publication', '5', 395, 'EEE', 'Yes', 'EEE', ''),
(477, '180480', 'Electronic Devices and Circuits', 'David.A.Bell   ', 1, 1, 'Oxford Publication', '5', 395, 'EEE', 'No', 'EEE', ''),
(478, '180481', 'Measurement System', 'Ernest.O.Doebelin Dhanesh.N.Manik  ', 1, 1, 'Tata Mcgraw Hill ', '5', 0, 'EEE', 'Yes', 'ECE', ''),
(479, '180482', 'Total Quality Management', 'Dale.H.Besterfield Carol BesterfieldMichna Glen.H.Besterfield Mary BesterfieldScare', 1, 1, 'Pearson Publication', '2', 0, 'ECE', 'Yes', 'ECE', ''),
(480, '180483', 'Electronics  systems approach', 'Neil Storey   ', 1, 1, 'Pearson Publication', '2', 0, 'ECE', 'Yes', 'ECE', ''),
(481, '180484', 'Digital Logic and Computer Design', 'Morris Mano   ', 1, 1, 'PHI Learning ', '29', 195, 'ECE', 'Yes', 'ECE', ''),
(482, '180485', 'Principles of Power System', 'V.K.Mehta Rohit Mehta  ', 1, 1, 'S.Chand and company', '1', 185, 'ECE', 'Yes', 'ECE', ''),
(483, '180486', 'Principles of Geographical Information System for Land Resources Assesments', 'P.A.Burrough   ', 1, 1, 'Oxford Publication', '1', 0, 'ECE', 'Yes', 'ECE', ''),
(484, '180487', 'Integrated Technologies for Intelligent Machines', 'A.Smaili F.Mrad  ', 1, 1, 'Oxford Publication', '1', 0, 'ECE', 'Yes', 'ECE', ''),
(485, '180488', 'Basic principles  measurments (Instrumentation) and Control Systems', 'S.Bhaskar   ', 1, 1, 'Anuradha Publication', '1', 340, 'ECE', 'Yes', 'ECE', ''),
(486, '180489', 'Basics of Electronic Communications', 'NIIT   ', 1, 1, 'PHI Learning ', '1', 275, 'ECE', 'Yes', 'ECE', ''),
(487, '180490', 'Solid State Electronic Devices', 'Ben.G.Streetman Sanjay Banerjee  ', 1, 1, 'PHI Learning ', '5', 250, 'ECE', 'Yes', 'ECE', ''),
(488, '180491', 'PCBased Instrumentation', 'N.Mathivanan   ', 1, 1, 'PHI Learning ', '1', 350, 'ECE', 'Yes', 'ECE', ''),
(489, '180492', 'Micro Computers Servicing Practical Systems and Troubleshooting', 'Stuart Asser .P.E Vincent Stiglino.P.E Richard Bahrenburg ', 1, 1, 'Merrill Publication', '1', 90, 'ECE', 'Yes', 'ECE', ''),
(490, '180493', 'Basics of wireless communications', 'NIIT   ', 1, 1, 'PHI Learning ', '1', 225, 'ECE', 'Yes', 'ECE', ''),
(491, '180494', 'Wavelets Applications to image processing', '   ', 1, 1, '', '1', 0, 'ECE', 'Yes', 'ECE', ''),
(492, '180495', 'Radio Engineering applied Electronics', 'G.K.Mithal R.Mittal  ', 1, 1, 'Khanna Publication', '12', 35, 'ECE', 'Yes', 'ECE', ''),
(493, '180496', 'OPAMPs and Liner Integrated Circuits', 'Pamakant.A.Gayakwad   ', 1, 1, 'PHI Learning ', '4', 195, 'ECE', 'Yes', 'ECE', ''),
(494, '180497', 'Introduction to Mechatronics', 'Appu Kuttan.K.K   ', 1, 1, 'Oxford Publication', '1', 225, 'ECE', 'Yes', 'ECE', ''),
(495, '180498', 'Mechatronics Principles', 'Concepts and Applications\",Nitaigour Premchand Mahalik   ', 1, 1, 'Tata Mcgraw Hill ', '1', 0, 'ECE', 'Yes', 'ECE', ''),
(496, '180499', 'The 8051 Micro Controller', 'Ayala   ', 1, 1, 'Thomson Delmar Learning', '3', 0, 'ECE', 'Yes', 'ECE', ''),
(497, '180500', 'Electronic Communications', 'Dennis Roddy John Coolen  ', 1, 1, 'PHI Learning ', '4', 395, 'ECE', 'Yes', 'ECE', ''),
(498, '180501', 'Communication Theory', 'Dr.J.S.Chitode   ', 1, 1, 'Technical Publications', '2', 275, 'ECE', 'YES', 'ECE', ''),
(499, '180502', 'Mobile Communications', ' Jochen Schiller    ', 1, 1, 'Pearson', '2', 0, 'ECE', 'YES', 'ECE', ''),
(500, '180503', 'Microprocessor ArchitectureProgramming  and Applications with 8085', 'Ramesh Gaonkar   ', 1, 1, 'Penram International Publishing', '5', 0, 'ECE', 'YES', 'ECE', ''),
(501, '180504', 'Microprocessor Architecture Programming and Applications with 8086', 'Ramesh Gaonkar   ', 1, 1, 'Penram International Publishing', '5', 0, 'ECE', 'NO', 'ECE', ''),
(502, '180505', 'Microprocessor Architecture Programming and Applications with 8087', 'Ramesh Gaonkar   ', 1, 1, 'Penram International Publishing', '5', 0, 'ECE', 'NO', 'ECE', ''),
(503, '180506', 'Microprocessor Architecture Programming and Applications with 8088', 'Ramesh Gaonkar   ', 1, 1, 'Penram International Publishing', '5', 0, 'ECE', 'NO', 'ECE', ''),
(504, '180507', 'Microprocessors Interfacing and Applications', 'RenuSingh B.P.Singh  ', 1, 1, 'New Age International Publications', '1', 200, 'ECE', 'YES', 'ECE', ''),
(505, '180508', 'Electronics and Microprocessors', 'K.S.Srinivasan M.Janaki Rani G.Sathiyabhama ', 1, 1, 'Anuradha Agencies', '1', 160, 'ECE', 'YES', 'ECE', ''),
(506, '180509', 'Remote Sensing and Image Interpretation', 'Thomas M.Lillesand Ralph W.Kiefer  ', 1, 1, 'John Wiley & Sons Inc', '1', 0, 'ECE', 'YES', 'ECE', ''),
(507, '180510', 'Laser Technology and Applications', 'M.Mukunda Rao R.S.Sirohi  ', 1, 1, 'COSTED', '1', 0, 'ECE', 'YES', 'ECE', ''),
(508, '180511', 'Solar Cells Operating Principles', 'Technology and System Applications\",Martin A.Green   ', 1, 1, 'The University Of New South wales', '1', 0, 'ECE', 'YES', 'ECE', ''),
(509, '180512', 'Electrical Machines and Drives', 'P.Britto Corthis R.Dharma Prakash C.Aravindh Vaithilingam ', 1, 1, 'Charulatha Publications', '1', 90, 'ECE', 'YES', 'ECE', ''),
(510, '180513', 'Fundamentals of Electrical and Electronics Engineering', 'T.Thyagarajan   ', 1, 1, 'Scitech Publications', '4', 165, 'EEE', 'YES', 'EEE', ''),
(511, '180514', 'Instrumentation', 'Measurement and Analysis\",B C Nakra K K Chaudry  ', 1, 1, 'Tata McGrawHill Publishing', '2', 0, 'ECE', 'YES', 'ECE', ''),
(512, '180515', 'Electronic Measurements and Instrumentation', 'Dr.Rajendra Prasad   ', 1, 1, 'Khanna Publishers', '3', 150, 'ECE', 'YES', 'ECE', ''),
(513, '180516', 'Elements of Electrical Gadgets', 'K.B.Bhatia   ', 1, 1, 'Arya Book Depot', '4', 10, 'ECE', 'YES', 'ECE', ''),
(514, '180517', 'Audio Amplifier Systems', 'M.D.Hull   ', 1, 1, 'Electronic Components and Materials Division', '3', 0, 'ECE', 'YES', 'ECE', ''),
(515, '180518', 'Basic Electronics and Linear Circuits', '   ', 1, 1, '', '1', 0, 'ECE', 'YES', 'ECE', ''),
(516, '180519', 'Basic Electrical Engineering', 'Fitzgerald  Higginbotham  ', 1, 1, 'McGRAWHILL Book company', '2', 82, 'ECE', 'YES', 'ECE', ''),
(517, '180520', 'Management Information System', 'G V Satya sekhar   ', 1, 1, 'Excel books', '1', 225, 'ECE', 'YES', 'ECE', ''),
(518, '180521', 'Marketing Management', 'M Govindarajan   ', 1, 1, 'Prentice Hall of India', '2', 250, 'ECE', 'YES', 'ECE', ''),
(519, '180522', 'Journal of the Indian Society of Remote sensing', '   ', 1, 1, 'Rolta India limited', '1', 0, 'ECE', 'YES', 'ECE', ''),
(520, '180523', 'Principles and Practice of Highway Engineering', 'L R Kadiyali   ', 1, 1, 'Khanna Tech Publicatioins', '2', 50, 'ECE', 'YES', 'ECE', ''),
(521, '180524', 'Receiving Tube Manual', '   ', 1, 1, 'Radio corporation of America', '1', 32, 'ECE', 'YES', 'ECE', ''),
(522, '180525', 'Introduction to Solid State Electronics', 'G I Yepifanov Yu A Moma  ', 1, 1, 'Mir Publishers', '1', 20, 'ECE', 'YES', 'ECE', ''),
(523, '180526', 'Electronics Telecommunicaton and Physics', 'Anil Maini P Prabhakar  ', 1, 1, 'Khanna Publishers', '1', 22, 'ECE', 'YES', 'ECE', ''),
(524, '180527', 'The Performance and Design of Direct Current Machines', 'A E Clayton N N Hancock  ', 1, 1, 'Pitman', '3', 15, 'ECE', 'YES', 'ECE', ''),
(525, '180528', 'Elements of Photogrammetry', 'Paul R Wolf   ', 1, 1, 'McGRAWHILL International Book company', '2', 0, 'ECE ', 'YES', 'ECE', ''),
(526, '180529', 'Elements of Photogrammetry', 'Paul R Wolf   ', 1, 1, 'McGRAWHILL International Book company', '2', 0, 'ECE', 'YES', 'ECE', ''),
(527, '180530', 'Industrial Engineering and Management', ' Er K Balasundaram   ', 1, 1, 'Shri Ramalinga Sowdeswari Publications', '2', 29, 'IE', 'YES', 'IE', ''),
(528, '180531', 'Utilisation of Electric Power', 'N V Suryanarayana   ', 1, 1, 'New Age International Publications', '1', 150, 'ECE', 'YES', 'ECE', ''),
(529, '180532', 'The 8051 Microcontroller', 'Kenneth Ayala   ', 1, 1, 'Thomsan Del Mar Learning', '3', 0, 'ECE', 'YES', 'ECE', ''),
(530, '180533', 'Microcontroller and PLCs', 'Sanjay Attri   ', 1, 1, 'Dhanpat Rai & CO', '1', 110, 'ECE', 'YES', 'ECE', ''),
(531, '180534', 'Advanced Microprocessors', 'Y Rajasree   ', 1, 1, 'New Age International Publications', '2', 120, 'ECE', 'YES', 'ECE', ''),
(532, '180535', 'Microcontrollers', 'Ajay V Deshmukh   ', 1, 1, 'Tata McGrawHill Publishing Company', '7', 0, 'ECE', 'YES', 'ECE', ''),
(533, '180536', 'Dbase 3 Plus', 'Ravi Kant Taxali   ', 1, 1, 'Tata McGrawHill Publishing Company', '1', 0, 'CSE', 'YES', 'CSE', ''),
(534, '180537', 'Computer Practice 2', 'Bama Ilam G Umarani Sreekanth N Suresh Raja S Poonkuzhali', 1, 1, 'D D Publications', '1', 160, 'CSE', 'YES', 'CSE', ''),
(535, '180538', 'Microprocessors and Microcontrollers  A Complete Text ', 'B P Singh   ', 1, 1, 'Gallota Publications', '1', 0, 'ECE ', 'YES', 'ECE', ''),
(536, '180539', 'Understanding Data Communications and Networks', 'William A Shay   ', 1, 1, 'Thomsan Brooks/Cole', '3', 0, 'CSE', 'YES', 'CSE', ''),
(537, '180540', 'Introduction to Microprocessors and Microcontrollers', 'John Crisp   ', 1, 1, 'Elsevier', '2', 0, 'ECE', 'YES', 'ECE', ''),
(538, '180541', 'Basic Electronic Solid State', 'B.L.Theraja   ', 1, 1, 'S.Chand and company', '1', 175, 'ECE', 'Yes', 'ECE', ''),
(539, '180542', 'Advances in Materials Processing and Characterization', 'L.Karunamoorthy D.Viswanathan K.A.Padmanabhan ', 1, 1, 'I.K.International Publications', '1', 0, 'ECE', 'Yes', 'ECE', ''),
(540, '180543', 'Advances in Materials Processing and Characterization', 'L.Karunamoorthy D.Viswanathan K.A.Padmanabhan ', 1, 1, 'I.K.International Publications', '2', 0, 'ECE', 'No', 'ECE', ''),
(541, '180544', 'Microprocessors', 'PC Hardware and Interfacing\",N.Mathivanan   ', 1, 1, 'PHI Learning ', '4', 295, 'ECE', 'Yes', 'ECE', ''),
(542, '180545', 'Elements of Cartography', 'Arthur.H.Robinson Joel.L.Morrison Philip.C.Muehrcke A.Jon Kimerling', 1, 1, 'John Wiley and Sons', '6', 0, 'IRS', 'Yes', 'IRS', ''),
(543, '180546', '0000 to 8085 Introduction to microprocessor for Engineers and Scientists', 'P.K.Ghosh P.R.Sridhar  ', 1, 1, 'PHI Learning ', '2', 225, 'ECE', 'Yes', 'ECE', ''),
(544, '180547', 'Programming with C', 'Byron.S.Gottfried   ', 1, 1, 'Tata Mcgraw Hill ', '2', 0, 'CSE', 'Yes', 'CSE', ''),
(545, '180548', 'Multimedi Production Planning and Delivery', 'John VillamilCasanova Louis Molina  ', 1, 1, 'PHI Learning ', '1', 250, 'Media science', 'Yes', 'Media Science', ''),
(546, '180549', 'Antenna and Wave Propagation', 'N.Gunasekaran   ', 1, 1, '', '', 0, 'ECE', 'Yes', 'ECE', ''),
(547, '180550', 'Rador Remote Sensing for Land Resources  A Review', 'S.Mohan N.S.Mehta Paruel Patel ', 1, 1, 'ISRO', '1', 0, 'IRS', 'Yes', 'IRS', ''),
(548, '180551', 'Space and Developing Countries', '   ', 1, 1, 'World Space Congress', '1', 0, 'IRS', 'Yes', 'IRS', ''),
(549, '180552', 'Mechatroincs', 'Sabri centinkunt   ', 1, 1, 'John Wiley and Sons', '1', 0, 'ECE', 'Yes', 'ECE', ''),
(550, '180553', 'Applied Electronics ', 'R.S.Sedha   ', 1, 1, 'S.Chand and company', '1', 180, 'ECE', 'Yes', 'ECE', ''),
(551, '180554', 'Visual Basic 5', 'Nathan Gurewich Ori Gurewich  ', 1, 1, 'Techmedia publication', '4', 0, 'CSE', 'Yes', 'CSE', ''),
(552, '180555', 'Experiments Methods for Engineers', 'J.P.Holman   ', 1, 1, 'Tata Mcgraw Hill ', '7', 0, 'ECE', 'Yes', 'ECE', ''),
(553, '180556', 'Introduction to Geographical Information Systems', 'Ian Heywood Sarah Cornelius Steve Carwell ', 1, 1, 'Pearson Publication', '1', 0, 'IRS', 'Yes', 'IRS', ''),
(554, '180557', 'Introduction to Programmable Logic Controllers', 'Gary Denning   ', 1, 1, 'Thomson Delmar Learning', '2', 0, 'ECE', 'Yes', 'ECE', ''),
(555, '180558', '8086 Microprocessor Programming and Interfacing the PC', 'Kenneth.J.Ayala   ', 1, 1, 'Thomson Delmar Learning', '2', 0, 'ECE', 'Yes', 'ECE', ''),
(556, '180559', 'Microprocessor and Micro Controllers', 'R.Radhakrishnan G.Selvi S.Kumar ', 1, 1, 'Sonaversity', '1', 0, 'ECE', 'Yes', 'ECE', ''),
(557, '180560', 'Semi Conductors Physics And Devices', 'Donal.A.Neaman   ', 1, 1, 'Tata Mcgraw Hill ', '3', 0, 'ECE', 'Yes', 'ECE', ''),
(558, '180561', 'Digital Logic and Computer Organisation', 'V Rajaraman T Radhakrishnan  ', 1, 1, 'Prentice Hall of India', '1', 295, 'CSE', 'YES', 'CSE', ''),
(559, '180562', 'Fundamentals of Information Technology', 'Alexix Leon Mathews Leon  ', 1, 1, 'Leon Techworld', '1', 150, 'IT', 'YES', 'IT', ''),
(560, '180563', 'Introduction to Mechtronics and Measurement Systems', 'David G Alciatore Michael B Histard  ', 1, 1, 'Tata McGrawHill Publishing', '1', 0, 'MECH', 'YES', 'MECH', ''),
(561, '180564', 'The 8051 Microcontroller and Embedded Systems', 'Muhammad Ali Mazidi Janice Gillispie Mazidi  ', 1, 1, 'Prentice Hall of India', '1', 325, 'ECE', 'YES', 'ECE', ''),
(562, '180565', 'Electronics and Microprocessors', 'A P Godse D A Godse  ', 1, 1, 'Technical Publications', '1', 260, 'ECE', 'YES', 'ECE', ''),
(563, '180566', 'Mechatronics', 'M D Singh J G Joshi  ', 1, 1, 'Prentice Hall of India', '1', 325, 'MECH', 'YES', 'MECH', ''),
(564, '180567', 'Introduction to Programmable Logic Controllers', 'Gray Dunning   ', 1, 1, 'Thomsan Del Mar Learning', '2', 0, 'ECE', 'YES', 'ECE', ''),
(565, '180568', 'Introduction to Digital Image Processing a Remote Sensing Perspective', 'John R Jensen   ', 1, 1, 'Prentice Hall ', '1', 0, 'ECE', 'YES', 'ECE', ''),
(566, '180569', 'Mechatronics Principles and Applications', 'Godfrey C Onwubolu   ', 1, 1, 'ButterworthHeinemann', '1', 495, 'MECH', 'YES', 'MECH', ''),
(567, '180570', 'Fundamentals of Digital Image Processing', 'Anil K Jain   ', 1, 1, 'Prentice Hall of India', '1', 225, 'ECE', 'YES', 'ECE', ''),
(568, '180571', 'Electronic Devices and Circuits', 'Allen Mottershead   ', 1, 1, 'PHI Learning ', '1', 250, 'ECE', 'Yes', 'ECE', ''),
(569, '180572', 'BioMedical Electronics and Instrumentation', 'S.K.Venkataram   ', 1, 1, 'Galgotia Publications', 'Revised', 160, 'Biomedical', 'Yes', 'Biomedical', ''),
(570, '180573', 'Introduction to Microprocessor Software', 'Hardware Programming\",Lance.A.Leventhal   ', 1, 1, 'PHI Learning ', '4', 0, 'ECE', 'Yes', 'ECE', ''),
(571, '180574', 'Introduction to Microprocessor Software', 'Hardware Programming\",Aditya.p.Mathur   ', 1, 1, 'Tata Mcgraw Hill ', '2', 0, 'ECE', 'Yes', 'ECE', ''),
(572, '180575', 'Electrical and Electronic Technology', 'John Hiley Keith Brown Ian Mckenzie Smith ', 1, 1, 'Pearson Publication', '9', 0, 'ECE', 'Yes', 'ECE', ''),
(573, '180576', 'Mechatronics ', 'N.Shanmugam   ', 1, 1, 'Anuradha Publication', '2', 200, 'ECE', 'Yes', 'ECE', ''),
(574, '180577', 'Mechatronics Electronic Control Systems in Mechanical and Electrical Engineering', 'W.Bolton   ', 1, 1, 'Pearson Publication', '3', 0, 'ECE', 'Yes', 'ECE', ''),
(575, '180578', 'The C Programming Language', 'Brian.W.Kernighan Dennis.M.Ritchie  ', 1, 1, 'PHI Learning ', '2', 89, 'CSE', 'Yes', 'CSE', ''),
(576, '180579', 'Computer Graphics for Engineers', 'G.S.Asthana N.K.Sinha  ', 1, 1, 'Wiley Eastern Publications', '1', 0, 'CSE', 'Yes', 'CSE', ''),
(577, '180580', 'Total Quality Management', 'R.S.Naagarazan A.A.Arivalagar  ', 1, 1, 'New age international Publication', '2', 145, 'Management', 'Yes', 'Management', ''),
(578, '180581', 'Electrical Machines', 'J.Gnanavadivel N.Rathinaprabha C.SenthilKumar P.Kannan', 1, 1, 'Anuradha Publication', '1', 140, 'EEE', 'Yes', 'EEE', ''),
(579, '180582', 'Autocad', '   ', 1, 1, 'Autodesk', 'Inc public', 0, 'Mech', 'Yes', 'Mech', ''),
(580, '180583', 'Principles of management', 'R.Sivarethinamohan P.Aranganathan  ', 1, 1, 'CBA publications', '1', 0, 'Management', 'Yes', 'Management', ''),
(581, '180584', 'Management', 'Stephen.P.Robbins Mary Coulter  ', 1, 1, 'PHI Learning ', '5', 325, 'Management', 'Yes', 'Management', ''),
(582, '180585', 'Management Information Systems', 'W.S.Jawadekar   ', 1, 1, 'Tata Mcgraw Hill ', '2', 0, 'Management', 'Yes', 'Management', '');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--
-- Creation: Feb 22, 2019 at 04:43 PM
--

CREATE TABLE `config` (
  `key1` varchar(100) NOT NULL,
  `value1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`key1`, `value1`) VALUES
('borrow', '5'),
('returndays', '45'),
('fine', '3');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--
-- Creation: Feb 19, 2019 at 04:19 PM
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `issuedate` date NOT NULL,
  `returndate` date NOT NULL,
  `fine` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `userid`, `bookid`, `issuedate`, `returndate`, `fine`) VALUES
(5, 2, 1, '2019-02-27', '2019-04-13', 0);

--
-- Triggers `history`
--
DELIMITER $$
CREATE TRIGGER `dec-remaining` BEFORE INSERT ON `history` FOR EACH ROW UPDATE book SET `remaining` = `remaining` + 1 WHERE ID = NEW.BOOKID
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `issued`
--
-- Creation: Feb 27, 2019 at 05:47 AM
--

CREATE TABLE `issued` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `issuedate` date DEFAULT NULL,
  `returndate` date DEFAULT NULL,
  `fine` int(100) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `issued`
--

INSERT INTO `issued` (`id`, `userid`, `bookid`, `issuedate`, `returndate`, `fine`) VALUES
(6, 2, 1, '2019-02-27', '2019-04-13', 0);

--
-- Triggers `issued`
--
DELIMITER $$
CREATE TRIGGER `history` AFTER DELETE ON `issued` FOR EACH ROW -- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
INSERT into history VALUES (old.id,old.userid,old.bookid,old.issuedate,old.returndate,old.fine);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `inc-remaining` BEFORE INSERT ON `issued` FOR EACH ROW UPDATE book SET `remaining` = `remaining` - 1 WHERE ID = NEW.BOOKID
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--
-- Creation: Feb 20, 2019 at 04:21 AM
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL COMMENT 'id for db access',
  `reg` varchar(16) NOT NULL COMMENT 'roll number given for each student in the college',
  `name` varchar(36) NOT NULL COMMENT 'name of the student',
  `password` varchar(36) NOT NULL COMMENT 'password assigned to the student',
  `course` varchar(100) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `year` varchar(8) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `reg`, `name`, `password`, `course`, `dept`, `year`, `mail`, `phone`) VALUES
(1, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test'),
(2, '2', 'ben', 'test', 'cse', 'cse', '2018', 'sbenstewart@gmail.com', '9489408090');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `bookid` (`bookid`);

--
-- Indexes for table `issued`
--
ALTER TABLE `issued`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_borrow` (`userid`,`bookid`),
  ADD KEY `bookid` (`bookid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=583;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `issued`
--
ALTER TABLE `issued`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id for db access', AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `issued`
--
ALTER TABLE `issued`
  ADD CONSTRAINT `issued_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `issued_ibfk_2` FOREIGN KEY (`bookid`) REFERENCES `book` (`id`);

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `fines` ON SCHEDULE EVERY 1 DAY STARTS '2019-02-19 22:23:06' ON COMPLETION NOT PRESERVE ENABLE DO update issued set fine=datediff(issued.issuedate,curdate())*(SELECT value from config where `key`='fine') where datediff(issued.issuedate,curdate())>(SELECT value from config where `key`='fine')$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
