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



  CREATE TABLE `module`
  (
    `module_code` VARCHAR(10) PRIMARY KEY,
    `module_name` VARCHAR(50) NOT NULL,
    `module_level` INT(2),
    `module_group` INT(2),
    `credit` DECIMAL(5,4)
  );
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
  `email` VARCHAR(40) NOT NULL UNIQUE,
  `address` VARCHAR(200) 
);

INSERT INTO `lecturer` (`staff_number`, `first_name`, `last_name`, `id_nr`, `sex`, `phone`, `email`) VALUES
(100000, 'Admin', 'Admin', 0000000000000, 'A', 0000000000,  'admin');

CREATE TABLE `lecturer_portal`
(
  `userid` INT(11) PRIMARY KEY AUTO_INCREMENT,
  `password` VARCHAR(12) NOT NULL,
  `create_date` DATE NOT NULL,
  `staff_number` INT(11) UNIQUE,
  FOREIGN KEY (`staff_number`)  REFERENCES `lecturer` (`staff_number`)
);
INSERT INTO `lecturer_portal` (`password`, `create_date`, `staff_number`) VALUES ('**********', '2010-01-01', 100000);

CREATE TABLE `lecture`
(
  `lecture_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
  `module_code` VARCHAR(10) NOT NULL,
  `semester` INT(1) NOT NULL,
  `year` INT(4) NOT NULL,
  FOREIGN KEY (`module_code`) REFERENCES `module` (`module_code`)
);



CREATE TABLE `lecture_student`
(
  `lecture_stud_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
  `reg_date` DATE NOT NULL,
  `lecture_id` INT(11) NOT NULL,
  `stud_number` INT(11) NOT NULL,
  FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`lecture_id`),
  FOREIGN KEY (`stud_number`) REFERENCES `student` (`stud_number`)
);



CREATE TABLE  `lecture_group`
(
  `lecture_group_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
  `group_name` VARCHAR(30) NOT NULL,
  `lecture_id` INT(11) NOT NULL,
  `staff_number` INT(11) NOT NULL,
  FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`lecture_id`),
  FOREIGN KEY (`staff_number`) REFERENCES `lecturer` (`staff_number`)
);


CREATE TABLE `group_type`
(
  `group_type_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
  `group_type_name` VARCHAR(40) NOT NULL,
  `total_credit` DECIMAL(4,3) NOT NULL,
  `lecture_group_id` INT(11) NOT NULL,
  FOREIGN KEY (`lecture_group_id`) REFERENCES `lecture_group` (`lecture_group_id`)
);



CREATE TABLE `group`
(
  `group_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
  `group_name` VARCHAR(40) NOT NULL,
  `group_type_id` INT(11) NOT NULL,
  FOREIGN KEY (`group_type_id`) REFERENCES `group_type` (`group_type_id`)
);

CREATE TABLE `group_member`
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
