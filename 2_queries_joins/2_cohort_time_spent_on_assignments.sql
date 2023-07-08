SELECT SUM(sub.duration) as duration
FROM assignment_submissions sub
    JOIN students s
    ON s.id=sub.student_id
    JOIN cohorts c
    ON c.id=s.cohort_id
WHERE c.name = 'FEB12';