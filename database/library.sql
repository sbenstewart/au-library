-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 18, 2019 at 05:36 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
-- Table structure for table `book`
--
-- Creation: Feb 12, 2019 at 11:53 AM
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `author` varchar(250) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '1' COMMENT 'Number of books',
  `remaining` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--
-- Creation: Feb 18, 2019 at 05:27 PM
-- Last update: Feb 18, 2019 at 05:31 PM
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `key` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`key`, `value`) VALUES
('fine', '3'),
('borrow', '5'),
('fine', '3'),
('borrow', '5');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--
-- Creation: Feb 18, 2019 at 05:35 PM
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `issuedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `returndate` date NOT NULL,
  `fine` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `issued`
--
-- Creation: Feb 18, 2019 at 05:34 PM
--

DROP TABLE IF EXISTS `issued`;
CREATE TABLE `issued` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `issuedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `returndate` date NOT NULL,
  `fine` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--
-- Creation: Feb 12, 2019 at 11:50 AM
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL COMMENT 'id for db access',
  `reg-num` varchar(16) NOT NULL COMMENT 'roll number given for each student in the college',
  `name` varchar(36) NOT NULL COMMENT 'name of the student',
  `password` varchar(36) NOT NULL COMMENT 'password assigned to the student',
  `course` varchar(100) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `year` varchar(8) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

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
  ADD KEY `userid` (`userid`),
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
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issued`
--
ALTER TABLE `issued`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id for db access';

--
-- Constraints for dumped tables
--

--
-- Constraints for table `issued`
--
ALTER TABLE `issued`
  ADD CONSTRAINT `issued_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `issued_ibfk_2` FOREIGN KEY (`bookid`) REFERENCES `book` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
