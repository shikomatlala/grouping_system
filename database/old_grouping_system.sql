-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2021 at 03:39 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grouping_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(3) NOT NULL,
  `course_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`) VALUES
(1, 'Development Software'),
(2, 'Industrial Information System'),
(3, 'Business Applications'),
(4, 'Networking');

-- --------------------------------------------------------

--
-- Table structure for table `course_module`
--

CREATE TABLE `course_module` (
  `course_module_id` int(5) NOT NULL,
  `date` date NOT NULL,
  `course_id` int(3) NOT NULL,
  `module_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_module`
--

INSERT INTO `course_module` (`course_module_id`, `date`, `course_id`, `module_code`) VALUES
(1, '2016-01-10', 1, 'DSO34BT'),
(2, '2016-01-10', 1, 'DSO34AT'),
(3, '2015-01-10', 1, 'ISY34AT'),
(4, '2015-01-10', 1, 'ISY34BT'),
(5, '2015-01-10', 1, 'IDC30AT'),
(6, '2016-01-10', 1, 'ISY23BT'),
(7, '2016-01-10', 1, 'TPG201AT'),
(8, '2015-01-10', 2, 'TPG201AT'),
(9, '2015-01-10', 1, 'DSO23BT'),
(10, '2015-01-10', 1, 'SSF24BT'),
(11, '2016-01-10', 1, 'ISY23AT'),
(12, '2016-01-10', 1, 'DSO23AT'),
(13, '2015-01-10', 1, 'TPG111T'),
(14, '2015-01-10', 2, 'TPG111T'),
(15, '2015-01-10', 1, 'SSF23AT'),
(16, '2015-01-10', 1, 'DSO17BT'),
(17, '2015-01-10', 1, 'CFS10BT'),
(18, '2015-01-10', 1, 'CGS10BT'),
(19, '2015-01-10', 1, 'CMK10BT'),
(20, '2015-01-10', 1, 'DSO17AT'),
(21, '2015-01-10', 1, 'CFS10AT'),
(22, '2015-01-10', 1, 'CGS10AT'),
(23, '2015-01-10', 1, 'CMK10AT');

-- --------------------------------------------------------

--
-- Table structure for table `lecture`
--

CREATE TABLE `lecture` (
  `lecture_id` int(11) NOT NULL,
  `vanue` varchar(100) NOT NULL,
  `module_code` varchar(10) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `day` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecture`
--

INSERT INTO `lecture` (`lecture_id`, `vanue`, `module_code`, `start_time`, `end_time`, `day`) VALUES
(1, '10-138', 'DSO34BT', '10:00:00', '11:00:00', 'Monday'),
(2, '10-138', 'DSO34BT', '12:00:00', '01:00:00', 'Wednesday'),
(3, '10-138', 'DSO34BT', '13:00:00', '14:00:00', 'Thursday'),
(4, '10-138', 'DSO34BT', '14:00:00', '15:00:00', 'Thursday'),
(5, '10-138', 'DSO34BT', '11:00:00', '12:00:00', 'Friday'),
(6, '10-L57', 'DSO34AT', '09:00:00', '10:00:00', 'Monday'),
(7, '10-L57', 'DSO34AT', '12:00:00', '01:00:00', 'Tuesday'),
(8, '10-138', 'DSO34BT', '08:00:00', '09:00:00', 'Wednesday'),
(9, '10-L57', 'DSO34AT', '10:00:00', '11:00:00', 'Thursday'),
(10, '10-L57', 'DSO34AT', '02:00:00', '03:00:00', 'Friday'),
(11, '10-L57', 'DSO34AT', '03:00:00', '04:00:00', 'Friday');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `staff_number` int(11) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `id_nr` char(13) DEFAULT NULL,
  `sex` char(1) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`staff_number`, `first_name`, `last_name`, `id_nr`, `sex`, `phone`, `email`) VALUES
(10023, 'Lerutle', 'Pholo', '6911275418082', 'M', '765870538', 'lerutlepholo@gmail.com'),
(18203, 'Lerato', 'Makapane', '8901010025086', 'F', '885210566', 'leratomakapane@gmail.com'),
(22010, 'Ephraim', 'Sanyane', '7011275418082', 'M', '775870538', 'ephraimsanyane@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer_portal`
--

CREATE TABLE `lecturer_portal` (
  `userid` int(11) NOT NULL,
  `password` varchar(12) NOT NULL,
  `create_date` date NOT NULL,
  `staff_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturer_portal`
--

INSERT INTO `lecturer_portal` (`userid`, `password`, `create_date`, `staff_number`) VALUES
(1, '@Pholo', '2021-07-02', 10023),
(5, 'Dsl@$', '2021-07-02', 18203);

-- --------------------------------------------------------

--
-- Table structure for table `lecture_group`
--

CREATE TABLE `lecture_group` (
  `lecture_group_id` int(11) NOT NULL,
  `staff_number` int(11) NOT NULL,
  `module_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecture_group`
--

INSERT INTO `lecture_group` (`lecture_group_id`, `staff_number`, `module_code`) VALUES
(1, 10023, 'DSO34BT');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `module_code` varchar(10) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `credit` decimal(5,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_code`, `module_name`, `credit`) VALUES
('CFS10AT', 'Computing Fundamentals IA', '0.1250'),
('CFS10BT', 'Computing Fundamentals IB', '0.1250'),
('CGS10AT', 'Computing Systems IA', '0.1250'),
('CGS10BT', 'Computing Systems IB', '0.1250'),
('CMK10AT', 'Computing Skills IA', '0.1250'),
('CMK10BT', 'Computing Skills IB', '0.1250'),
('DSO17AT', 'Development Software IA', '0.1250'),
('DSO17BT', 'Development Software IB', '0.1250'),
('DSO23AT', 'Development Software IIA', '0.1250'),
('DSO23BT', 'Development Software IIB', '0.1250'),
('DSO34AT', 'Developement Software IIIB', '0.1250'),
('DSO34BT', 'Developement Software IIIA', '0.1250'),
('IDC30AT', 'Industrial Exposure IIIA', '0.1250'),
('ISY23AT', 'Information Systems IIA', '0.1250'),
('ISY23BT', 'Information Systems IIB', '0.1250'),
('ISY34AT', 'Information System IIIA', '0.1250'),
('ISY34BT', 'Information System IIIB', '0.1250'),
('SSF24AT', 'System Software IIA', '0.1250'),
('SSF24BT', 'System Software IIB', '0.1250'),
('TPG111T', 'Technical Programming I', '0.2500'),
('TPG201T', 'Technical Programming II', '0.2500');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stud_number` int(11) NOT NULL,
  `stud_name` varchar(20) NOT NULL,
  `stud_surname` varchar(20) NOT NULL,
  `gender` char(1) NOT NULL,
  `id_nr` char(13) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(70) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stud_number`, `stud_name`, `stud_surname`, `gender`, `id_nr`, `phone`, `email`, `address`) VALUES
(210181333, 'Tony', 'Knuckles', 'M', '8302095960084', '0786750344', '210181333tut@4life.ac.za', '90991 Thorburn Ave,New York,New York,NY,10011'),
(210185984, 'Ola', 'Rosso', 'M', '8311065472082', '0652060344', '210185984tut@4life.ac.za', '53075 Sw 152nd Ter #615,Monroe Township,Middlesex,NJ,8831'),
(210188725, 'Pfano', 'Auston', 'F', '8001010605083', '0643490548', '210188725tut@4life.ac.za', '74 W College St,Boise,Ada,ID,83707'),
(210223026, 'Elizabeth', 'Mantilla', 'F', '8504130086082', '0713270461', '210223026tut@4life.ac.za', '128 Bransten Rd,New York,New York,NY,10011'),
(210225822, 'Nqobile', 'Markum', 'F', '8402005094082', '0781820203', '210225822tut@4life.ac.za', '71 San Mateo Ave,Wayne,Delaware,PA,19087'),
(216955960, 'Shiko', 'Matlala', 'M', '8604265257084', '0780041094', '210104455tut@4life.ac.za', '5 Tomahawk Dr,Los Angeles,Los Angeles,CA,90006'),
(217695472, 'Wisani', 'Zupan', 'M', '9201025352082', '0720084010', '210143832tut@4life.ac.za', '639 Main St,Anchorage,Anchorage,AK,99501'),
(218995411, 'Harry', 'Olesen', 'M', '8707105536082', '0683920770', '210157269tut@4life.ac.za', '74 S Westgate St,Albany,Albany,NY,12204');

-- --------------------------------------------------------

--
-- Table structure for table `student_course_registation`
--

CREATE TABLE `student_course_registation` (
  `course_reg_id` int(10) NOT NULL,
  `reg_date` date NOT NULL,
  `stud_number` int(11) NOT NULL,
  `course_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_course_registation`
--

INSERT INTO `student_course_registation` (`course_reg_id`, `reg_date`, `stud_number`, `course_id`) VALUES
(1, '2021-07-02', 216955960, 1),
(2, '2021-07-02', 217695472, 2),
(3, '2021-07-02', 218995411, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_portal`
--

CREATE TABLE `student_portal` (
  `userid` int(11) NOT NULL,
  `password` varchar(12) NOT NULL,
  `create_date` date NOT NULL,
  `stud_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `course_module`
--
ALTER TABLE `course_module`
  ADD PRIMARY KEY (`course_module_id`);

--
-- Indexes for table `lecture`
--
ALTER TABLE `lecture`
  ADD PRIMARY KEY (`lecture_id`),
  ADD KEY `module_code` (`module_code`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`staff_number`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `id_nr` (`id_nr`);

--
-- Indexes for table `lecturer_portal`
--
ALTER TABLE `lecturer_portal`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `staff_number` (`staff_number`);

--
-- Indexes for table `lecture_group`
--
ALTER TABLE `lecture_group`
  ADD PRIMARY KEY (`lecture_group_id`),
  ADD KEY `module_code` (`module_code`),
  ADD KEY `staff_number` (`staff_number`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`module_code`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stud_number`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `student_course_registation`
--
ALTER TABLE `student_course_registation`
  ADD PRIMARY KEY (`course_reg_id`),
  ADD KEY `stud_number` (`stud_number`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `student_portal`
--
ALTER TABLE `student_portal`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `stud_number` (`stud_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course_module`
--
ALTER TABLE `course_module`
  MODIFY `course_module_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `lecture`
--
ALTER TABLE `lecture`
  MODIFY `lecture_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `staff_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22011;

--
-- AUTO_INCREMENT for table `lecturer_portal`
--
ALTER TABLE `lecturer_portal`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lecture_group`
--
ALTER TABLE `lecture_group`
  MODIFY `lecture_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stud_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218995412;

--
-- AUTO_INCREMENT for table `student_course_registation`
--
ALTER TABLE `student_course_registation`
  MODIFY `course_reg_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_portal`
--
ALTER TABLE `student_portal`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lecture`
--
ALTER TABLE `lecture`
  ADD CONSTRAINT `lecture_ibfk_1` FOREIGN KEY (`module_code`) REFERENCES `module` (`module_code`);

--
-- Constraints for table `lecturer_portal`
--
ALTER TABLE `lecturer_portal`
  ADD CONSTRAINT `lecturer_portal_ibfk_1` FOREIGN KEY (`staff_number`) REFERENCES `lecturer` (`staff_number`);

--
-- Constraints for table `lecture_group`
--
ALTER TABLE `lecture_group`
  ADD CONSTRAINT `lecture_group_ibfk_1` FOREIGN KEY (`module_code`) REFERENCES `module` (`module_code`),
  ADD CONSTRAINT `lecture_group_ibfk_2` FOREIGN KEY (`staff_number`) REFERENCES `lecturer` (`staff_number`);

--
-- Constraints for table `student_course_registation`
--
ALTER TABLE `student_course_registation`
  ADD CONSTRAINT `student_course_registation_ibfk_1` FOREIGN KEY (`stud_number`) REFERENCES `student` (`stud_number`),
  ADD CONSTRAINT `student_course_registation_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `student_portal`
--
ALTER TABLE `student_portal`
  ADD CONSTRAINT `student_portal_ibfk_1` FOREIGN KEY (`stud_number`) REFERENCES `student` (`stud_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
