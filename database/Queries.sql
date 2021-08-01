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
