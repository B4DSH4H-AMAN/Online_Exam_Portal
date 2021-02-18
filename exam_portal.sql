-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2021 at 12:54 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(5) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `Name`, `Email`, `Password`) VALUES
(1, 'Aman Upadhyay', 'amank0342@gmail.com', '$2y$10$bl7/EsDhyBx60mE.INFq2uL8W0UM4n6W0aI3.bQ92fACIZkYoAEWK'),
(3, 'Faraz Alam', 'Test@gmail.com', '$2y$10$7PkEvY2A5XbCn7Mu2wNt3uMDUaRZS84SIGrTc5vQGs.HuTS3tid/m');

-- --------------------------------------------------------

--
-- Table structure for table `exam answer`
--

CREATE TABLE `exam answer` (
  `subject` varchar(255) NOT NULL,
  `1` varchar(255) NOT NULL,
  `2` varchar(255) NOT NULL,
  `3` varchar(255) NOT NULL,
  `4` varchar(255) NOT NULL,
  `5` varchar(255) NOT NULL,
  `6` varchar(255) NOT NULL,
  `7` varchar(255) NOT NULL,
  `8` varchar(255) NOT NULL,
  `9` varchar(255) NOT NULL,
  `10` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exam paper`
--

CREATE TABLE `exam paper` (
  `subject` varchar(255) NOT NULL,
  `1` varchar(255) NOT NULL,
  `2` varchar(255) NOT NULL,
  `3` varchar(255) NOT NULL,
  `4` varchar(255) NOT NULL,
  `5` varchar(255) NOT NULL,
  `6` varchar(255) NOT NULL,
  `7` varchar(255) NOT NULL,
  `8` varchar(255) NOT NULL,
  `9` varchar(255) NOT NULL,
  `10` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam paper`
--

INSERT INTO `exam paper` (`subject`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`) VALUES
('Science', 'Why should a magnesium ribbon be cleaned before burning in air ?', 'Write the balanced equation for the following chemical reactions.', 'Write a balanced chemical equation with state symbols for the following reactions', 'Why is the amount of gas collected in one of the test tubes in text book Activity 1.7 (i.e., electrolysis of water) double of the amount collected in the other? Name this gas.', 'Why does the colour of copper sulphate solution change when an iron nail is dipped in it ?', 'Give an example of a double displacement reaction other than the one given in Activity 1.10', 'Which of the statements about the reaction below are incorrect ?', 'What happens when dilute hydrochloric acid is added to iron filings ?', 'What is a balanced chemical equation ? Why should chemical equations be balanced ?', 'What does one mean by exothermic and endothermic reactions? Give examples.');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Subject` varchar(255) NOT NULL,
  `Class` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `ID` int(5) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Subject` varchar(255) NOT NULL,
  `Qualification` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `exam paper`
--
ALTER TABLE `exam paper`
  ADD PRIMARY KEY (`subject`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
