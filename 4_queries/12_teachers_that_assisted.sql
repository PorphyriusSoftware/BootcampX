SELECT t.name as teacher , c.name as cohort
FROM assistance_requests r
    JOIN students s
    ON s.id=r.student_id
    JOIN cohorts c
    ON s.cohort_id=c.id
    JOIN teachers t
    ON t.id=r.teacher_id
GROUP BY t.name, c.name
HAVING c.name='JUL02'
ORDER BY t.name

-- from compass

-- SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
-- FROM teachers
--     JOIN assistance_requests ON teacher_id = teachers.id
--     JOIN students ON student_id = students.id
--     JOIN cohorts ON cohort_id = cohorts.id
-- WHERE cohorts.name = 'JUL02'
-- ORDER BY teacher;