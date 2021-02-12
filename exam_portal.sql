-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2021 at 12:06 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

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
  `ID` int(10) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `Name`, `Email`, `Password`) VALUES
(1, 'faraz alam', 'faraz@gmail.com', '$2y$10$M9g4KK0sz.mPPOvwW2Mefu1vwMX/8WxIBpuVQ7kJf./7P.VWZc9dm');

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

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `Name`, `Subject`, `Class`, `Email`, `Password`) VALUES
(1, 'Aditya Vikram singh', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'aditya@gmail.com', '$2y$10$1x5.q9Ko2deUhmFHPIjVFu9KBHpJs7jw0AuqlDjm.7Uz1yvKvWjwS'),
(2, 'Abhinandan Agarwal', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'abhinandan@gmail.com', '$2y$10$m25UbyxiO28V9MVh/YqWw.SLjNfyoD9koqGj9ukfyXJJhM4W8Ghwu'),
(3, 'Ahmad fahad', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'ahmad@gmail.com', '$2y$10$SUunOuUfHa0qNkKY4oDokuazDCCBdoADx8cmPiitgUzDBtOkAR.Pm'),
(4, 'Akhand pratap singh', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'akhand@gmail.com', '$2y$10$rnO7lmJJKOTko1I3iSjvMuRBdnb3sBQub/e1Qs.d9HfIAsFEgNa1q'),
(5, 'Anurag yadav', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'anurag@gmail.com', '$2y$10$9zMzQthlRozjMa1sK9dPke0MjI0Whkk4MgIG9M2Gex.81Y8GlHcjm'),
(6, 'Aradhya Srivastava', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'aradhya@gmail.com', '$2y$10$rYzl/q.Oo1VYaqu.k85yUe98Uazf3XRiyHJl2qnJIfCjwbVK8n5tm'),
(7, 'Ariba Khan', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'ariba@gmail.com', '$2y$10$78ouyRs.tRDfdYsVntv87O5mTlkJvcBzKg6ulLf6YWm2P3smFkCpi'),
(8, 'Arushi singh', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'arushi@gmail.com', '$2y$10$jGIUblRYFZ8gbRbzcbz55eAFDkd1JONLg97YrumMWYAzuP1oK4dHG'),
(9, 'Ashfiya fatima', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'ashfiya@gmail.com', '$2y$10$s79DghsS8SQK7XkplmDWWulCb65.1EFE/oiwItVFyg/hknRHU/hhO'),
(10, 'Astitva kumar singh', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'astitva@gmail.com', '$2y$10$E43r4LidF93be6nuKb1l1OpdqwexYB/O6.nYnpFUxOAmpMa5nsjfe'),
(11, 'Atul kumar yadav', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'atul@gmail.com', '$2y$10$Ml8RjFqsri0mltrKx2yDBOEYhV5ilUfRcv1L2DA4qt8rtZhSxZrYO'),
(12, 'Ayan Agarwal', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'ayan@gmail.com', '$2y$10$h/s5OGnSn5PD7L2VMDDme.GNoT1AzSNABZMTItjyotpzOx4pBE31u'),
(13, 'Ayush rai', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'ayush@gmail.com', '$2y$10$fhbxL0mdUv.tG38e4O0we.z.Kf8.zsbsLCy5PX0X9N3WNxb.QIBiy'),
(14, 'Bushra Zahid', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'bushra@gmail.com', '$2y$10$jsFuz8zywNU9hDfZBZHjfu1l0EGq6OIB4MUYLXUQtkthF2n7pO4Au'),
(15, 'Devansh singh', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'devansh@gmail.com', '$2y$10$.EeTUj6JrCEIcYG3741rL.QfsB4xH.//eUfHqn3k5D5AyPSahUI2.'),
(16, 'Devesh pandey', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'devesh@gmail.com', '$2y$10$OVC9iMLY.6n5V82QdPXJ9OsRZWdRFKF11MqCA5iGJ6ue42qTj7pwu'),
(17, 'Gargi Agarwal', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'gargi@gmail.com', '$2y$10$1/fjsoaCiyf/i0gbYqlRp.oKSoSKhLCMtEkUKs4QH1RpPmGclhpkm'),
(18, 'Harshit yadav', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'harshit@gmail.com', '$2y$10$Ugj6sgxYXwD8PwN2Z3KM2.kxU4VUE7uKf2824nOgSTjG8z4PlgJRa'),
(19, 'Itish singh', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'itish@gmail.com', '$2y$10$eYNckL3S6WoyPw1rCz3DXOrcZ8XDGgAnqGjIbbTFAFkdYhOqlUfFW'),
(20, 'Kirti lata', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'kirti@gmail.com', '$2y$10$.2EHCc2G0RU1qgl/1k6tluoPpbVez35gwUnf2jYYzFfK/KlaqAHYq'),
(21, 'krishna gupta', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'krishna@gmail.com', '$2y$10$jbMXStrLXg1PuNYG3KpaseW.HUKUQk.NXtLA1xGyRcxMQG2sHkyn2'),
(22, 'Lakhya gupta', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'lakshya@gmail.com', '$2y$10$vzSeZCCsRoSjPCJoIYJUpO67urowI0VuOkrueiQqJixGdJriXIuUK'),
(23, 'Mannat jaiwar', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'mannat@gmail.com', '$2y$10$kGKAxjkjP2T9Gmfz3oq1aeoh5Rb3lETeuV4.ZGlz9St6HueFrktKy'),
(24, 'Mariya khatoon', 'English, Hindi, Science, Computer, Mathematic, EVS', 'V-B', 'mariya@gmail.com', '$2y$10$buEMMfy7Et8hzwm4C0LnIuz4vEKQ9PsIUWK65EDSTm/j8fiwj3Oxe');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `ID` int(10) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Subject` varchar(255) NOT NULL,
  `Qualification` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`ID`, `Name`, `Subject`, `Qualification`, `Email`, `Password`) VALUES
(1, 'Pramod Yadav', 'Science', 'Bsc, Msc', 'pramod@gmail.com', '$2y$10$4VVWC21OsekKuUCE00Tysubj9FB9pzBmniHICnSGZOG/XhbP3itjW'),
(2, 'Chandan singh', 'English', 'BA, MA, BEd', 'chandan@gmail.com', '$2y$10$fB/S8Sg3im/XFkn4x4Llg.VIm2emvE6cxN.d24vSRGpwcLCX5qd56'),
(3, 'Piyush singh', 'Computer', 'BCA, MCA', 'piyush@gmail.com', '$2y$10$fodoSIJP0QSKoo4HLwgQXe72jzTxharo50zfgznjVaiB283gMXvge'),
(4, 'Bhaskar rai', 'EVS', 'Bsc, Msc, BEd', 'bhaskar@gmail.com', '$2y$10$vcueDr2Vz09Y5qEXpqNvwenZEFpwlMgKHnq2T9Uam2xLYA5fWytUC'),
(5, 'Sujeet singh', 'Maths', 'Bsc, Msc', 'sujeet@gmail.com', '$2y$10$vzt6SlsUY06vZqg9a0ZTY.JysYD.eR67nUAR8Wxw3rpqmWIvrPsMS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

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
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
