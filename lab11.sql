SELECT * FROM courses;

SELECT * FROM assignments
LIMIT 10; 

SELECT count(*) FROM courses;

SELECT min(due_date) FROM assignments;

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

-- Use this query as a reference for the next step
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

-- Display title and due_date of assignments for COMP1234
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';

-- Find the earliest assignment due date
SELECT min(due_date) AS earliest_due_date
FROM assignments;

-- Find the latest assignment due date
SELECT max(due_date) AS latest_due_date
FROM assignments;

-- Find title and course_id of assignments due on 2024-10-08
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';

-- Find title and due_date of assignments due in October 2024
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

-- Find the most recent due_date of completed assignments
SELECT max(due_date) AS most_recent_completed
FROM assignments
WHERE status = 'Completed';

-- Count assignments with status "Not Started"
SELECT count(*) AS not_started_count
FROM assignments
WHERE status = 'Not Started';

-- Find courses with lab sessions on Tuesday
SELECT course_id, course_name
FROM courses
WHERE lab_day LIKE 'Tue%';

-- Join courses and assignments tables on course_id
SELECT courses.course_id, courses.course_name, assignments.title, assignments.due_date, assignments.status
FROM courses
JOIN assignments
ON courses.course_id = assignments.course_id;
