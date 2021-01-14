-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2021 at 12:37 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coursesmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `coursereport`
--

CREATE TABLE `coursereport` (
  `Course_ID` int(50) NOT NULL,
  `startDate` varchar(50) NOT NULL,
  `endDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursereport`
--

INSERT INTO `coursereport` (`Course_ID`, `startDate`, `endDate`) VALUES
(2, 'March 12 , 2021', 'April 12 , 2021'),
(4, 'April 12 , 2021', 'May 12 , 2022'),
(5, 'December 12 , 2021', 'December 12 , 2022');

-- --------------------------------------------------------

--
-- Table structure for table `managecourses`
--

CREATE TABLE `managecourses` (
  `Course_ID` int(50) NOT NULL,
  `CourseName` varchar(50) NOT NULL,
  `Hours` int(50) NOT NULL,
  `Price` varchar(50) NOT NULL,
  `Room` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `managecourses`
--

INSERT INTO `managecourses` (`Course_ID`, `CourseName`, `Hours`, `Price`, `Room`) VALUES
(2, 'OOP', 4, 'EGP 1500', 'A405'),
(4, 'Physics', 12, 'EGP 2000', 'A410'),
(5, 'Calculus 3', 3, 'EGP 1000', 'A412'),
(6, 'Probability', 4, 'EGP 1200', 'A302');

-- --------------------------------------------------------

--
-- Table structure for table `manageinstructors`
--

CREATE TABLE `manageinstructors` (
  `ID` int(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Salary` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manageinstructors`
--

INSERT INTO `manageinstructors` (`ID`, `FirstName`, `LastName`, `Gender`, `Phone`, `Salary`) VALUES
(1, 'Dr.Mohamed', 'Said', 'Male', '01203215468', 'EGP 100000'),
(2, 'Eng.Ali', 'Zeeneldin', 'Male', '01280745476', 'EGP 50000'),
(4, 'Amr', 'Mohamed', 'Male', '01200014213', 'EGP 5213'),
(5, 'Mazen', 'Tarek', 'Male', '01225021085', 'EGP 51212'),
(8, 'Farah', 'Mohamed', 'Female', '01242190413', 'EGP 51350');

-- --------------------------------------------------------

--
-- Table structure for table `managestudents`
--

CREATE TABLE `managestudents` (
  `Student_ID` int(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `managestudents`
--

INSERT INTO `managestudents` (`Student_ID`, `FirstName`, `LastName`, `Gender`, `Phone`) VALUES
(1, 'Mazen', 'Tarek', 'Male', '01225021085'),
(2, 'Amr', 'Mohamed', 'Male', '01200014213'),
(6, 'Mustafa', 'Magdy', 'Male', '01252314213'),
(10, 'Farah', 'Mohamed', 'Female', '19105821');

-- --------------------------------------------------------

--
-- Table structure for table `student_grade`
--

CREATE TABLE `student_grade` (
  `Student_ID` int(50) NOT NULL,
  `Course_ID` int(50) NOT NULL,
  `Grade` varchar(50) NOT NULL,
  `Score` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_grade`
--

INSERT INTO `student_grade` (`Student_ID`, `Course_ID`, `Grade`, `Score`) VALUES
(1, 2, 'A+', '98'),
(1, 4, 'A', '93'),
(1, 6, 'A', '90'),
(2, 2, 'A+', '97'),
(2, 4, 'A', '93'),
(6, 2, 'A+', '98');

-- --------------------------------------------------------

--
-- Table structure for table `usertypelogin`
--

CREATE TABLE `usertypelogin` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `userType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertypelogin`
--

INSERT INTO `usertypelogin` (`Username`, `Password`, `userType`) VALUES
('admin', 'admin', 'admin'),
('instructor', 'instructor', 'instructor'),
('student', 'student', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coursereport`
--
ALTER TABLE `coursereport`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `managecourses`
--
ALTER TABLE `managecourses`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `manageinstructors`
--
ALTER TABLE `manageinstructors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `managestudents`
--
ALTER TABLE `managestudents`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `student_grade`
--
ALTER TABLE `student_grade`
  ADD PRIMARY KEY (`Student_ID`,`Course_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `managecourses`
--
ALTER TABLE `managecourses`
  MODIFY `Course_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `manageinstructors`
--
ALTER TABLE `manageinstructors`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `managestudents`
--
ALTER TABLE `managestudents`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coursereport`
--
ALTER TABLE `coursereport`
  ADD CONSTRAINT `coursereport_ibfk_1` FOREIGN KEY (`Course_ID`) REFERENCES `managecourses` (`Course_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_grade`
--
ALTER TABLE `student_grade`
  ADD CONSTRAINT `student_grade_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `managestudents` (`Student_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_grade_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `managecourses` (`Course_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
