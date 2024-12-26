-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2024 at 04:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `certificatedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `name` varchar(500) DEFAULT NULL COMMENT 'none_3',
  `email` varchar(500) DEFAULT NULL COMMENT 'none_3',
  `password` varchar(350) DEFAULT NULL COMMENT 'none_3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Dinuwan Jayasinghe', 'root@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `adobe`
--

CREATE TABLE `adobe` (
  `Certificate_ID` int(5) UNSIGNED DEFAULT NULL,
  `Adobe_TITLE` varchar(20) NOT NULL,
  `CERT_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `Certificate_ID` int(5) UNSIGNED NOT NULL,
  `Staff_ID` int(10) NOT NULL,
  `Certificate_Name` varchar(50) DEFAULT NULL,
  `Course_ID` int(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`Certificate_ID`, `Staff_ID`, `Certificate_Name`, `Course_ID`) VALUES
(237, 100, 'AZ-302', 32),
(32927, 336, 'AZ-300', 532),
(37271, 865, 'AZ-301', 245),
(38288, 400, 'AZ-220', 232);

-- --------------------------------------------------------

--
-- Table structure for table `certificate_issuer`
--

CREATE TABLE `certificate_issuer` (
  `Issuer_ID` varchar(20) DEFAULT NULL,
  `Certificate_ID` int(5) UNSIGNED DEFAULT NULL,
  `Issue_Date` date DEFAULT NULL,
  `Expiry_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cloud`
--

CREATE TABLE `cloud` (
  `Certificate_ID` int(5) UNSIGNED DEFAULT NULL,
  `Cloud_TITLE` varchar(20) NOT NULL,
  `CERT_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Course_ID` int(5) UNSIGNED NOT NULL,
  `Transaction_No` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Course_ID`, `Transaction_No`) VALUES
(532, 42434992),
(232, 84342996),
(32, 92828991),
(245, 323828234),
(1234, 343428992),
(321, 443828326);

-- --------------------------------------------------------

--
-- Table structure for table `ibm`
--

CREATE TABLE `ibm` (
  `Certificate_ID` int(5) UNSIGNED DEFAULT NULL,
  `IBM_TITLE` varchar(20) NOT NULL,
  `CERT_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `joboffer`
--

CREATE TABLE `joboffer` (
  `Job_ID` int(4) UNSIGNED NOT NULL,
  `Job_Title` varchar(50) DEFAULT NULL,
  `Salary` decimal(7,2) DEFAULT NULL,
  `Skills_set` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `joboffer`
--

INSERT INTO `joboffer` (`Job_ID`, `Job_Title`, `Salary`, `Skills_set`) VALUES
(201, 'Azure Machine Learning Associate', 10500.00, 'A1-900 DP-900'),
(203, 'AWS Amplify/Kinesis Engineer', 11500.00, 'CLF-C01, DAS-C01'),
(432, 'Adobe Product Manager Engineer', 12500.00, '9A0-303, 9A0-389'),
(2366, 'Google Professional Cloud Associate', 12400.00, 'GACE, GPCA'),
(9421, 'IBM Cloud Database Administrator', 12550.00, 'C1000-017');

-- --------------------------------------------------------

--
-- Table structure for table `license`
--

CREATE TABLE `license` (
  `License_Key` varchar(10) NOT NULL,
  `Certificate_ID` int(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Transaction_No` int(10) UNSIGNED NOT NULL,
  `Staff_ID` int(10) NOT NULL,
  `Total_Amount` decimal(6,2) DEFAULT NULL,
  `Payment_Status` enum('Successful','Failed','Pending') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Transaction_No`, `Staff_ID`, `Total_Amount`, `Payment_Status`) VALUES
(10412451, 252, 7000.00, 'Pending'),
(38329564, 156, 7000.00, 'Pending'),
(41162641, 0, 0.00, 'Pending'),
(42434992, 336, 4330.00, 'Successful'),
(61891665, 105, 7000.00, 'Successful'),
(83175313, 157, 123.00, 'Pending'),
(84342996, 400, 2500.00, 'Pending'),
(92828991, 100, 1500.00, 'Failed'),
(323828234, 865, 7420.00, 'Pending'),
(343428992, 234, 2350.00, 'Successful'),
(443828326, 9543, 6430.00, 'Failed');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `Skill_type` enum('Database','Cloud','Design','DevOps','Analytics') DEFAULT NULL,
  `Skill_No` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`Skill_type`, `Skill_No`) VALUES
('Design', 2),
('Analytics', 101),
('Cloud', 342),
('Database', 442),
('DevOps', 902);

-- --------------------------------------------------------

--
-- Table structure for table `skilledstaff`
--

CREATE TABLE `skilledstaff` (
  `Skills_Set` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skilledstaff`
--

INSERT INTO `skilledstaff` (`Skills_Set`) VALUES
('9A0-303, 9A0-389'),
('A1-900 DP-900'),
('C1000-017'),
('CLF-C01, DAS-C01'),
('GACE, GPCA');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Staff_ID` int(10) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `pswd` varchar(64) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Department` enum('Frontend','Cloud','DevOps','Backend') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_ID`, `fullName`, `pswd`, `email`, `Department`) VALUES
(100, 'Jesse Srodah', 'HJY(&T(&*T&*F^E*', 'jesse@gmail.com', 'Cloud'),
(111, 'Saman Fernando', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'saman@gmail.com', 'Backend'),
(156, 'Dinuwan Theekshana', '03979b14f2a60bf074ac91814fa3a5b05640da9bd2d397f4655933da64003300', 'dinuwan1211@gmail.com', 'Backend'),
(234, 'Imoma Bokula', 'HJY(&T(&*T&*F^E*', 'bokula@gmail.com', 'Frontend'),
(336, 'Baby Yaa', 'HJY(&T(&*T&*F^E*', 'yaa@gmail.com', 'Frontend'),
(400, 'Richard Srodah', 'HJY(&T(&*T&*F^E*', 'richard@gmail.com', 'DevOps'),
(865, 'Nath Mate', 'HJY(&T(&*T&*F^E*', 'nath@gmail.com', 'Cloud'),
(9543, 'Ozoroh Eze', 'HJY(&T(&*T&*F^E*', 'ozoroh@gmail.com', 'Backend');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adobe`
--
ALTER TABLE `adobe`
  ADD PRIMARY KEY (`Adobe_TITLE`),
  ADD KEY `Certificate_ID` (`Certificate_ID`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`Certificate_ID`),
  ADD UNIQUE KEY `Staff_ID` (`Staff_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Indexes for table `certificate_issuer`
--
ALTER TABLE `certificate_issuer`
  ADD KEY `Certificate_ID` (`Certificate_ID`);

--
-- Indexes for table `cloud`
--
ALTER TABLE `cloud`
  ADD PRIMARY KEY (`Cloud_TITLE`),
  ADD KEY `Certificate_ID` (`Certificate_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Course_ID`),
  ADD KEY `Transaction_No` (`Transaction_No`);

--
-- Indexes for table `ibm`
--
ALTER TABLE `ibm`
  ADD PRIMARY KEY (`IBM_TITLE`),
  ADD KEY `Certificate_ID` (`Certificate_ID`);

--
-- Indexes for table `joboffer`
--
ALTER TABLE `joboffer`
  ADD PRIMARY KEY (`Job_ID`),
  ADD KEY `Skills_set` (`Skills_set`);

--
-- Indexes for table `license`
--
ALTER TABLE `license`
  ADD PRIMARY KEY (`License_Key`),
  ADD KEY `Certificate_ID` (`Certificate_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Transaction_No`),
  ADD UNIQUE KEY `Staff_ID` (`Staff_ID`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD UNIQUE KEY `Skill_No` (`Skill_No`);

--
-- Indexes for table `skilledstaff`
--
ALTER TABLE `skilledstaff`
  ADD PRIMARY KEY (`Skills_Set`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Staff_ID`),
  ADD UNIQUE KEY `Staff_ID` (`Staff_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adobe`
--
ALTER TABLE `adobe`
  ADD CONSTRAINT `adobe_ibfk_1` FOREIGN KEY (`Certificate_ID`) REFERENCES `certificate` (`Certificate_ID`) ON DELETE CASCADE;

--
-- Constraints for table `certificate`
--
ALTER TABLE `certificate`
  ADD CONSTRAINT `certificate_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff` (`Staff_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificate_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`);

--
-- Constraints for table `certificate_issuer`
--
ALTER TABLE `certificate_issuer`
  ADD CONSTRAINT `certificate_issuer_ibfk_1` FOREIGN KEY (`Certificate_ID`) REFERENCES `certificate` (`Certificate_ID`) ON DELETE CASCADE;

--
-- Constraints for table `cloud`
--
ALTER TABLE `cloud`
  ADD CONSTRAINT `cloud_ibfk_1` FOREIGN KEY (`Certificate_ID`) REFERENCES `certificate` (`Certificate_ID`) ON DELETE CASCADE;

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`Transaction_No`) REFERENCES `payment` (`Transaction_No`) ON DELETE CASCADE;

--
-- Constraints for table `ibm`
--
ALTER TABLE `ibm`
  ADD CONSTRAINT `ibm_ibfk_1` FOREIGN KEY (`Certificate_ID`) REFERENCES `certificate` (`Certificate_ID`) ON DELETE CASCADE;

--
-- Constraints for table `joboffer`
--
ALTER TABLE `joboffer`
  ADD CONSTRAINT `joboffer_ibfk_1` FOREIGN KEY (`Skills_set`) REFERENCES `skilledstaff` (`Skills_Set`);

--
-- Constraints for table `license`
--
ALTER TABLE `license`
  ADD CONSTRAINT `license_ibfk_1` FOREIGN KEY (`Certificate_ID`) REFERENCES `certificate` (`Certificate_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
