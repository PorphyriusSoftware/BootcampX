SELECT c.name , count(1) as total_submissions
FROM cohorts c
    JOIN students s
    ON s.cohort_id = c.id
    JOIN assignment_submissions a
    ON a.student_id=s.id
GROUP BY c.name
ORDER BY count(1) DESC