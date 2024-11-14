--- 14-11-2024 10:26:11
--- t177.db
SELECT * FROM courses;

--- 14-11-2024 10:26:30
--- t177.db
SELECT * FROM courses;
SELECT * FROM assignments;

--- 14-11-2024 10:26:40
--- t177.db

SELECT * FROM assignments;

--- 14-11-2024 10:26:56
--- t177.db

SELECT * FROM assignments
LIMIT 10;

--- 14-11-2024 10:26:59
--- t177.db

SELECT * FROM assignments
LIMIT 10;

--- 14-11-2024 10:27:08
--- t177.db

SELECT * FROM assignments;

--- 14-11-2024 10:27:32
--- t177.db
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: near "count": syntax error
 ----- 

SELECT * count(*) FROM courses;
*****/

--- 14-11-2024 10:28:02
--- t177.db
SELECT count(*) FROM courses;

--- 14-11-2024 10:28:17
--- t177.db
SELECT count(*) FROM courses;

--- 14-11-2024 10:28:50
--- t177.db
SELECT min(due_date) FROM assignments;

--- 14-11-2024 10:29:51
--- t177.db
SELECT *
FROM courses
WHERE course_name LIKE 'Intro%';

--- 14-11-2024 10:30:14
--- t177.db
SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

--- 14-11-2024 10:30:58
--- t177.db
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

--- 14-11-2024 10:34:18
--- t177.db
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: near "'COMP1234%'": syntax error
 ----- 
SELECT title, due_date
FROM assignments
LIKE 'COMP1234%';
*****/

--- 14-11-2024 10:35:01
--- t177.db
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMP%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

--- 14-11-2024 10:35:34
--- t177.db
SELECT course_id, title, status, due_date
FROM assignments
WHERE course_id LIKE 'COMP%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

--- 14-11-2024 10:35:36
--- t177.db
SELECT course_id, title, status, due_date
FROM assignments
WHERE course_id LIKE 'COMP%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

--- 14-11-2024 10:35:58
--- t177.db
SELECT course_id, title, status, due_date
FROM assignments
WHERE course_id LIKE 'COMP1234%';

--- 14-11-2024 10:36:18
--- t177.db
SELECT title, due_date
FROM assignments
WHERE course_id LIKE 'COMP1234%';

