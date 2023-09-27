SELECT t.name as teacher , c.name as cohort, count(r) as assistances
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