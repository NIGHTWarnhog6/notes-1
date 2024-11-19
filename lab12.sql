SELECT course_name || ' - ' || semester AS course_semester
FROM courses;

SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_day = 'Friday';

SELECT *
FROM assignments
WHERE due_date > DATE('now');

SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;

SELECT course_name
FROM courses
ORDER BY LENGTH(course_name) DESC
LIMIT 1;

SELECT UPPER(course_name) AS uppercase_course_name
FROM courses;

SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%';

SELECT *
FROM assignments
WHERE due_date IS NULL;

SELECT courses.course_id, COUNT(assignments.id) AS total_assignments
FROM courses
LEFT JOIN assignments ON courses.course_id = assignments.course_id
GROUP BY courses.course_id;

SELECT courses.course_id, courses.course_name
FROM courses
LEFT JOIN assignments ON courses.course_id = assignments.course_id
WHERE assignments.id IS NULL;

