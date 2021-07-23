  CREATE DATABASE grouping_system;

  USE grouping_system;




  CREATE TABLE `student`
  (
    `stud_number` INT(11) PRIMARY KEY AUTO_INCREMENT,
    `first_name`	VARCHAR(20) NOT NULL,
	  `last_name` VARCHAR(20) NOT NULL,
    `gender` CHAR(1) NOT NULL,
    `id_nr` CHAR(13) NOT NULL,
    `phone` CHAR(10) NOT NULL UNIQUE,
    `email` VARCHAR(70) NOT NULL UNIQUE,
    `address` VARCHAR(300)
  );




  INSERT INTO `student` (`stud_number`, `first_name`, `last_name`, `gender`, `id_nr`, `email`, `address`, `phone`) VALUES
  (216955960, 'Shiko', 'Matlala', 'M', '8604265257084', '210104455tut@4life.ac.za', '5 Tomahawk Dr,Los Angeles,Los Angeles,CA,90006', '0780041094'),
  (217695472, 'Wisani', 'Zupan', 'M', '9201025352082', '210143832tut@4life.ac.za', '639 Main St,Anchorage,Anchorage,AK,99501','0720084010'),
  (218995411, 'Harry', 'Olesen', 'M', '8707105536082', '210157269tut@4life.ac.za', '74 S Westgate St,Albany,Albany,NY,12204','0683920770'),
  (210181333, 'Tony', 'Knuckles', 'M', '8302095960084', '210181333tut@4life.ac.za', '90991 Thorburn Ave,New York,New York,NY,10011', '0786750344'),
  (210185984, 'Ola', 'Rosso', 'M', '8311065472082', '210185984tut@4life.ac.za', '53075 Sw 152nd Ter #615,Monroe Township,Middlesex,NJ,8831', '0652060344'),
  (210188725, 'Pfano', 'Auston', 'F', '8001010605083', '210188725tut@4life.ac.za', '74 W College St,Boise,Ada,ID,83707','0643490548'),
  (210223026, 'Elizabeth', 'Mantilla', 'F', '8504130086082', '210223026tut@4life.ac.za', '128 Bransten Rd,New York,New York,NY,10011', '0713270461'),
  (210225822, 'Nqobile', 'Markum', 'F', '8402005094082', '210225822tut@4life.ac.za', '71 San Mateo Ave,Wayne,Delaware,PA,19087','0781820203');



  CREATE TABLE  `student_portal`
  (
    `userid` INT(11) PRIMARY KEY AUTO_INCREMENT,
    `password` VARCHAR(12) NOT NULL,
    `create_date` DATE NOT NULL,
    `stud_number` INT(11) UNIQUE,
    FOREIGN KEY (`stud_number`)  REFERENCES `student` (`stud_number`)
  );





  CREATE TABLE `course`
  (
    `course_id`	INT(3) PRIMARY KEY AUTO_INCREMENT,
    `course_name` VARCHAR(50) NOT NULL
  );

  INSERT INTO  `course` (`course_name`) VALUES
  ("Development Software"),
  ("Industrial Information System"),
  ("Business Applications"),
  ("Networking");


  CREATE TABLE `student_course_registation`
  (
    `course_reg_id` INT(10) PRIMARY KEY AUTO_INCREMENT,
    `reg_date` DATE NOT NULL,
    `stud_number` INT(11) NOT NULL,
    `course_id` INT(3) NOT NULL,
    FOREIGN KEY (`stud_number`) REFERENCES `student` (`stud_number`),
    FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`)
  );

  INSERT INTO `student_course_registation` (`reg_date`, `stud_number` , `course_id`) VALUES
  (NOW(), 216955960, 1),
  (NOW(), 217695472, 2),
  (NOW(), 218995411, 1);


  CREATE TABLE `module`
  (
    `module_code` VARCHAR(10) PRIMARY KEY,
    `module_name` VARCHAR(50) NOT NULL,
    `credit` DECIMAL(5,4)
  );

  -- FIRST SEMESTER
  INSERT INTO `module` 	VALUES
  ('DSO34AT', 'Developement Software IIIB', 0.125),
  ('DSO34BT', 'Developement Software IIIA', 0.125),
  ('ISY34BT', 'Information System IIIB', 0.125),
  ('ISY34AT', 'Information System IIIA', 0.125),
  ('IDC30AT', 'Industrial Exposure IIIA',0.125);

  -- 2ND YEAR
  -- SECOND SEMESTER
  INSERT INTO `module` 	VALUES
  ('DSO23BT', 'Development Software IIB', 0.125),
  ('ISY23BT', 'Information Systems IIB', 0.125),
  ('SSF24BT', 'System Software IIB', 0.125),
  ('TPG201T', 'Technical Programming II', 0.250);
  -- FIRST SEMESTER
  INSERT INTO `module` 	VALUES
  ('DSO23AT', 'Development Software IIA', 0.125),
  ('ISY23AT', 'Information Systems IIA', 0.125),
  ('SSF24AT', 'System Software IIA', 0.125),
  ('TPG111T', 'Technical Programming I', 0.250);

  -- 1ST YEAR
  -- SECOND SEMESTER
  INSERT INTO `module` 	VALUES
  ('CFS10BT', 'Computing Fundamentals IB', 0.125),
  ('CGS10BT', 'Computing Systems IB', 0.125),
  ('CMK10BT', 'Computing Skills IB',0.125),
  ('DSO17BT', 'Development Software IB',0.125);

  -- FIRST SEMESTER
  INSERT INTO `module` 	VALUES
  ('CFS10AT', 'Computing Fundamentals IA', 0.125),
  ('CGS10AT', 'Computing Systems IA', 0.125),
  ('CMK10AT', 'Computing Skills IA', 0.125),
  ('DSO17AT', 'Development Software IA', 0.125);


  CREATE TABLE `course_module`
  (
    `course_module_id` INT(5) PRIMARY KEY AUTO_INCREMENT,
    `date` DATE NOT NULL,
    `course_id`	INT(3) NOT NULL,
    `module_code` VARCHAR(10) NOT NULL
  );
  INSERT INTO `course_module` (`date`, `course_id`, `module_code`) VALUES
  ('2016-01-10', 1,	'DSO34BT'),
  ('2016-01-10', 1,	'DSO34AT'),
  ('2015-01-10', 1,	'ISY34AT'),
  ('2015-01-10', 1,	'ISY34BT'),
  ('2015-01-10', 1,	'IDC30AT'),
  ('2016-01-10', 1,	'ISY23BT'),
  ('2016-01-10', 1,	'TPG201AT'),
  ('2015-01-10', 2,	'TPG201AT'),
  ('2015-01-10', 1,	'DSO23BT'),
  ('2015-01-10', 1,	'SSF24BT'),
  ('2016-01-10', 1,	'ISY23AT'),
  ('2016-01-10', 1,	'DSO23AT'),
  ('2015-01-10', 1,	'TPG111T'),
  ('2015-01-10', 2,	'TPG111T'),
  ('2015-01-10', 1,	'SSF23AT'),
  ('2015-01-10', 1,	'DSO17BT'),
  ('2015-01-10', 1,	'CFS10BT'),
  ('2015-01-10', 1,	'CGS10BT'),
  ('2015-01-10', 1,	'CMK10BT'),
  ('2015-01-10', 1,	'DSO17AT'),
  ('2015-01-10', 1,	'CFS10AT'),
  ('2015-01-10', 1,	'CGS10AT'),
  ('2015-01-10', 1,	'CMK10AT');


CREATE TABLE `lecturer`
(
  `staff_number` INT(11) PRIMARY KEY AUTO_INCREMENT,
  `first_name` VARCHAR(15) NOT NULL,
  `last_name` VARCHAR(15) NOT NULL,
  `id_nr` CHAR(13) UNIQUE,
  `sex` CHAR(1) NOT NULL,
  `phone` CHAR(10) NOT NULL UNIQUE,
  `email` VARCHAR(40) NOT NULL UNIQUE
);

INSERT INTO `lecturer` (`staff_number`, `first_name`, `last_name`, `id_nr`, `sex`, `phone`, `email`) VALUES
(10023, 'Lerutle', 'Pholo', 6911275418082, 'M', 0765870538, 'lerutlepholo@gmail.com'),
(22010, 'Ephraim', 'Sanyane', 7011275418082, 'M', 0775870538, 'ephraimsanyane@gmail.com'),
(18203, 'Lerato', 'Makapane', 8901010025086, 'F', 0885210566, 'leratomakapane@gmail.com');

CREATE TABLE `lecturer_portal`
(
  `userid` INT(11) PRIMARY KEY AUTO_INCREMENT,
  `password` VARCHAR(12) NOT NULL,
  `create_date` DATE NOT NULL,
  `staff_number` INT(11) UNIQUE,
  FOREIGN KEY (`staff_number`)  REFERENCES `lecturer` (`staff_number`)
);

CREATE TABLE `lecture`
(
  `lecture_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
  `module_code` VARCHAR(10) NOT NULL,
  `semester` INT(1) NOT NULL,
  `year` INT(4) NOT NULL,
  `prerequisite_module` VARCHAR(10),
  FOREIGN KEY (`module_code`) REFERENCES `module` (`module_code`)
);

INSERT INTO `lecture` (`module_code`,`semester`, `year`, `prerequisite_module`) VALUES
('DSO34BT', 1,2021,'DSO23BT'),
('DSO34AT', 1,2021,'DSO23BT');


CREATE TABLE `lecture_student`
(
  `lecture_stud_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
  `reg_date` DATE NOT NULL,
  `lecture_id` INT(11) NOT NULL,
  `stud_number` INT(11) NOT NULL,
  FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`lecture_id`),
  FOREIGN KEY (`stud_number`) REFERENCES `student` (`stud_number`)
);

INSERT INTO `lecture_student` (`reg_date`, `lecture_id`, `stud_number`) VALUES
('2021-02-12', 1, 216955960),
('2021-02-12', 2, 216955960);


CREATE TABLE  `lecture_lecturer`
(
  `lecture_lecturer_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
  `staff_number` INT(11) NOT NULL,
  `lecture_id` INT(11) NOT NULL,
  `vanue` VARCHAR(100) NOT NULL,
  `start_time` TIME NOT NULL,
  `end_time`TIME NOT NULL,
  `day` VARCHAR(10) NOT NULL,
  FOREIGN KEY (`staff_number`) REFERENCES `lecturer` (`staff_number`),
  FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`lecture_id`)
);

INSERT INTO `lecture_lecturer` (`staff_number`, `lecture_id`, `vanue`, `start_time`,`end_time`, `day`) VALUES
(10023, 1, '10-138',	'10:00', '11:00', 'Monday'),
(10023, 1, '10-138',	'08:00', '09:00', 'Wednesday'),
(10023, 1, '10-138',	'12:00', '01:00', 'Wednesday'),
(10023, 1, '10-138',	'13:00', '14:00', 'Thursday'),
(10023, 1, '10-138',	'14:00', '15:00', 'Thursday'),
(10023, 1, '10-138',	'11:00', '12:00', 'Friday'),
(22010, 2, '10-L57',	'09:00', '10:00', 'Monday'),
(22010, 2, '10-L57',	'12:00', '01:00', 'Tuesday'),
(22010, 2, '10-L57',	'10:00', '11:00','Thursday'),
(22010, 2, '10-L57',	'02:00', '03:00', 'Friday'),
(22010, 2, '10-L57',	'15:00', '16:00', 'Friday');



CREATE TABLE  `lecture_group`
(
  `lecture_group_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
  `group_name` VARCHAR(10) NOT NULL,
  `lecture_id` INT(11) NOT NULL,
  `staff_number` INT(11) NOT NULL,
  FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`lecture_id`),
  FOREIGN KEY (`staff_number`) REFERENCES `lecturer` (`staff_number`)
);

INSERT INTO `lecture_group` (`group_name`, `lecture_id`, `staff_number`) VALUES
('DSO34BT_2021', 1, 10023),
('Mrs_Makapane_DSO34AT_2021',	2, 22010);


CREATE TABLE `group_type`
(
  `group_type_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
  `group_type_name` VARCHAR(40) NOT NULL,
  `total_credit` DECIMAL(4,3) NOT NULL,
  `lecture_group_id` INT(11) NOT NULL,
  FOREIGN KEY (`lecture_group_id`) REFERENCES `lecture_group` (`lecture_group_id`)
);
INSERT INTO `group_type` (`group_type_name`, `total_credit`, `lecture_group_id`) VALUES
('Level 1',	2.250,	1),
('Level 2',	2.375,	1),
('Level 3',	2.500,	1),
('Level 4',	2.625,	1),
('Level 5',	2.750,	1),
('Level 6',	2.000,	1),
('Level 7',	1.875,	1),
('Level 8',	1.750,	1),
('Level 9',	1.625,	1),
('Level 10', 1.500,	1);


CREATE TABLE `group`
(
  `group_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
  `group_name` VARCHAR(40) NOT NULL,
  `group_type_id` INT(11) NOT NULL,
  FOREIGN KEY (`group_type_id`) REFERENCES `group_type` (`group_type_id`)
);
INSERT INTO `group` (`group_name`, `group_type_id`) VALUES
('Group J', 1),
('Group K', 1),
('Group L', 1),
('Group M', 1),
('Group N', 1),
('Group O', 1);


CREATE TABLE group_member
(
 `group_member_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
 `member_mark` DECIMAL(5,2) NOT NULL,
 `stud_number` INT(11) NOT NULL,
 `group_id` INT(11),
 `lecture_group_id` INT(11) NOT NULL,
 FOREIGN KEY(`group_id`) REFERENCES `group`(`group_id`),
 FOREIGN KEY(`stud_number`) REFERENCES `student`(`stud_number`),
 FOREIGN KEY(`lecture_group_id`) REFERENCES `lecture_group`(`lecture_group_id`)
);

INSERT INTO `group_member` (`member_mark`, `stud_number`, `group_id`) VALUES
(0,216955960, 1);
