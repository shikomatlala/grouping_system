SELECT * FROM lecture;


SELECT *
FROM lecturer a, lecture b, lecture_group
WHERE a.staff_number = b.lecture_id;


SELECT a.vanue, a.module_code, a.start_time, a.end_time, a.day
FROM lecture a, lecture_lecturer b, lecturer c
WHERE b.staff_number = c.staff_number
AND b.lecture_id = a.lecture_id
AND c.staff_number = 10023;



SELECT *
FROM lecture;



SELECT *
FROM lecture a, lecture_lecturer b
WHERE a.lecture_id = b.lecture_id;



SELECT *
FROM lecture a, lecture_lecturer b, lecturer c
WHERE a.lecture_id = b.lecture_id
AND c.staff_number = b.staff_number;


SELECT a.module_code, vanue, day, start_time, end_time, CONCAT(first_name ," " ,last_name) AS Lecturer
FROM lecture a, lecture_lecturer b, lecturer c
WHERE a.lecture_id = b.lecture_id
AND c.staff_number = b.staff_number;



SELECT a.vanue, a.module_code, a.start_time, a.end_time, a.day
FROM lecture a, lecture_lecturer b, lecturer c
WHERE b.staff_number = c.staff_number
AND b.lecture_id = a.lecture_id
AND c.staff_number = 10023;


SELECT b.vanue, a.module_code, b.start_time, b.end_time, b.day
FROM lecture a, lecture_lecturer b, lecturer c
WHERE b.lecture_id = a.lecture_id
AND b.staff_number = c.staff_number
AND c.staff_number = 10023;


-- Show the Lecturer the modules that he teachers
SELECT a.module_code , a.semester, a.year
FROM lecture a, lecture_group b, lecturer c
WHERE a.lecture_id = b.lecture_id
AND c.staff_number = b.staff_number
AND c.staff_number = 10023
ORDER BY a.module_code;


-- COUNT Students
SELECT COUNT(stud_number)
FROM lecture_group a, lecture b, lecture_student c
WHERE a.lecture_id = b.lecture_id
AND c.lecture_id = b.lecture_id;

SELECT COUNT(stud_number)
FROM lecture_group a, lecture b, lecture_student c
WHERE a.lecture_id = b.lecture_id
AND c.lecture_id = b.lecture_id
AND staff_number = 10023;

SELECT COUNT(stud_number)
FROM lecture_group a, lecture b, lecture_student c
WHERE a.lecture_id = b.lecture_id
AND c.lecture_id = b.lecture_id
AND staff_number = 10023
AND module_code = "DSO34BT";


SELECT COUNT(stud_number) AS stud_count
FROM lecture_group a, lecture b, lecture_student c
WHERE a.lecture_id = b.lecture_id
AND c.lecture_id = b.lecture_id
AND a.staff_number = 10023
AND b.module_code = "DSO34BT";

-- This needs a femail query as well as a male query
SELECT c.stud_number, d.first_name, d.last_name, d.phone, d.email
FROM lecture_group a, lecture b, lecture_student c, student d
WHERE a.lecture_id = b.lecture_id
AND c.lecture_id = b.lecture_id
AND d.stud_number = c.stud_number
AND a.staff_number = 10023
AND b.module_code = "DSO34BT";


8604265257084
SELECT *
FROM student
WHERE 'id_nr' = "8604265257084"



-- INSERT Student
$sql = "INSERT INTO student  (`stud_number`, `first_name`, `last_name`, `id_nr`, `gender`, `phone`, `email`, `address`) VALUES\n"

    . "(218995412, \'Shiko\', \'Matlala\', \'9511275418082\', \'M\', \'0765870538\', \'218995412@tut4life.ac.za\', \"6328 Block S, Mabopane, 0190\")";



SELECT c.module_code, c.module_name, c.credit
FROM course a, course_module b, module c
WHERE a.course_id = b.course_id
AND b.module_code = c.module_code
AND a.course_id = 1;


SELECT SUM(credit)
FROM course a, course_module b, module c
WHERE a.course_id = b.course_id
AND b.module_code = c.module_code;


$sql = "SELECT c.module_code, c.module_name, c.credit\n"
    . "FROM course a, course_module b, module c\n"
    . "WHERE a.course_id = b.course_id\n"
    . "AND b.module_code = c.module_code\n"
    . "AND a.course_id = 1";


SELECT *
FROM student a, lecture_student b, lecture c, module d, course_module e, course f
WHERE f.course_id = e.course_id
AND d.module_code = c.lecture_id
AND c.lecture_id = b.lecture_id
AND a.stud_number = b.stud_number
AND f.course_id = 1;

SELECT *
FROM lecture a, module_code b, course_module c
WHERE a.module_code = b.module_code
AND c.moulde_code = a.module_code;

SELECT *
FROM module, course_module
WHERE module.module_code = course_module.module_code
AND course_module.course_id = 1;



SELECT * 
FROM lecture_student, lecture
WHERE lecture.lecture_id = lecture_student.lecture_id;


-- Student course registration
INSERT INTO 



-- Insert into lecture_student
INSERT INTO lecture_student (reg_date, lecture_id, stud_number) VALUES (\"$reg_date\", $lecture_id, $stud_number)


-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2021 at 03:12 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `module_code` varchar(10) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `credit` decimal(5,4) DEFAULT NULL,
  `module_level` int(3) DEFAULT NULL,
  `module_group` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_code`, `module_name`, `credit`, `module_level`, `module_group`) VALUES
  -- 1ST YEAR FIRST SEMESTER
('CFS10AT', 'Computing Fundamentals IA', '0.1250', 1, 4),
('CGS10AT', 'Computing Systems IA', '0.1250', 1, 3),
('DSO17AT', 'Development Software IA', '0.1250', 1, 1),
('CMK10AT', 'Computing Skills IA', '0.1250', 1, 2),
  -- 1ST YEAR
  -- SECOND SEMESTER
('DSO17BT', 'Development Software IB', '0.1250', 2, 1),
('CMK10BT', 'Computing Skills IB', '0.1250', 2, 2),
('CGS10BT', 'Computing Systems IB', '0.1250', 2, 3),
('CFS10BT', 'Computing Fundamentals IB', '0.1250', 2, 4),
  -- 2ND YEAR FIRST SEMESTER
('DSO23AT', 'Development Software IIA', '0.1250', 3, 4),
('TPG111T', 'Technical Programming I', '0.2500', 3, 1),
('SSF24AT', 'System Software IIA', '0.1250', 3, 3),
('ISY23AT', 'Information Systems IIA', '0.1250', 3, 4),
  -- 2ND YEAR
  -- SECOND SEMESTER
('SSF24BT', 'System Software IIB', '0.1250', 4, 3),
('ISY23BT', 'Information Systems IIB', '0.1250', 4, 4),
('TPG201T', 'Technical Programming II', '0.2500', 4, 1),
('DSO23BT', 'Development Software IIB', '0.1250', 4, 4),
 -- 3RD YEAR FIRST SEMESTER
('IDC30AT', 'Industrial Exposure IIIA', '0.1250', 5, 2),
('ISY34AT', 'Information System IIIA', '0.1250', 5, 4),
('ISY34BT', 'Information System IIIB', '0.1250', 5, 4),
('DSO34BT', 'Developement Software IIIA', '0.1250', 5, 4),
('DSO34AT', 'Developement Software IIIB', '0.1250', 5, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`module_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




SELECT *
FROM module, lecture_student, lecture
WHERE module.module_code = lecture.module_code
AND lecture_student.lecture_stud_id = lecture.lecture_id
AND module.module_group = $module_group
AND lecture_student.stud_number  = 210181333;
-- Find out the module that if the student has done the lower module for this module -- 



===Database grouping_system

== Dumping data for table student

|218995412|Tsholofelo|Itumeleng|F|9910220897087|0641449040|218995412@tut4life.ac.za|South Africa
|218995411|Tsholofelo|Itumeleng|M|8707105536082|0683920770|210157269tut@4life.ac.za|Mabopane
|218306041|Janice|Dalessandro|F|9003193694082|0770070013|218306041tut4life.ac.za|775 W 17th St,San Antonio,Bexar,TX,78204
|218295896|Alfredia|Kincer|F|9310011392082|0726610349|218295896tut4life.ac.za|47154 Whipple Ave Nw,Gardena,Los Angeles,CA,90247
|218290819|Sima|Mays|F|9006160979082|0748150563|218290819tut4life.ac.za|59 N Groesbeck Hwy,Austin,Travis,TX,78731
|218287423|Melisa|Shutter|F|8109230928084|0735690814|218287423tut4life.ac.za|6794 Lake Dr E,Newark,Essex,NJ,7104
|218279860|Britta|Grizzell|F|8805222515082|0681720019|218279860tut4life.ac.za|69 Marquette Ave,Hayward,Alameda,CA,94545
|218279369|Zella|Tabares|F|9004104034083|0731820795|218279369tut4life.ac.za|1088 Pinehurst St,Chapel Hill,Orange,NC,27514
|218252279|Denita|Oliveri|F|9107071415084|0741060307|218252279tut4life.ac.za|53075 Sw 152nd Ter #615,Monroe Township,Middlesex,NJ,8831
|218244322|Alysa|Goulet|F|9407241580082|0767340663|218244322tut4life.ac.za|14288 Foster Ave #4121,Jenkintown,Montgomery,PA,19046
|218232864|Lashay|Kriger|F|8208101823082|0732400995|218232864tut4life.ac.za|2853 S Central Expy,Glen Burnie,Anne Arundel,MD,21061
|218218848|Keena|Steller|F|9302152715082|0660020378|218218848tut4life.ac.za|128 Bransten Rd,New York,New York,NY,10011
|218216436|Veronika|Costilla|F|9402123044083|0737940565|218216436tut4life.ac.za|76 Brooks St #9,Flemington,Hunterdon,NJ,8822
|218213988|Shannan|Range|F|8303114716084|0718730510|218213988tut4life.ac.za|366 South Dr,Las Cruces,Dona Ana,NM,88011
|218209788|Pearly|Lan|F|8404031773082|0711570598|218209788tut4life.ac.za|71 San Mateo Ave,Wayne,Delaware,PA,19087
|218202082|Carlena|Prochaska|F|9504082428083|0684830616|218202082tut4life.ac.za|840 15th Ave,Waco,McLennan,TX,76708
|218198571|Ashton|Vollmer|F|9805103968082|0667940637|218198571tut4life.ac.za|74989 Brandon St,Wellsville,Allegany,NY,14895
|218187175|Amelia|Zakrzewski|F|8702061076082|0652230985|218187175tut4life.ac.za|524 Louisiana Ave Nw,San Leandro,Alameda,CA,94577
|218178800|Wilhemina|Cava|F|8407124049084|0722270127|218178800tut4life.ac.za|14302 Pennsylvania Ave,Huntingdon Valley,Montgomery,PA,19006
|218174348|Lizzie|Roman|F|9102223580082|0714550879|218174348tut4life.ac.za|3 Fort Worth Ave,Philadelphia,Philadelphia,PA,19106
|218171024|Lavonda|Okeeffe|F|8311031622082|0716170467|218171024tut4life.ac.za|2742 Distribution Way,New York,New York,NY,10025
|218167502|Blondell|Ayars|F|8411132932082|0766800240|218167502tut4life.ac.za|30 W 80th St #1995,San Carlos,San Mateo,CA,94070
|218160767|Renata|Leitch|F|8610164233082|0721560405|218160767tut4life.ac.za|5 Tomahawk Dr,Los Angeles,Los Angeles,CA,90006
|218154463|Rosenda|Boltz|F|9305021693083|0663080155|218154463tut4life.ac.za|59 Shady Ln #53,Milwaukee,Milwaukee,WI,53214
|218145541|Livia|Suire|F|9608160149084|0627320193|218145541tut4life.ac.za|45 E Liberty St,Ridgefield Park,Bergen,NJ,7660
