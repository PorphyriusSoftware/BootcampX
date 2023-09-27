SELECT c.name , avg(r.completed_at-r.started_at) as average_assistance_time
FROM assistance_requests r
    JOIN students s
    ON s.id=r.student_id
    JOIN cohorts c
    ON s.cohort_id=c.id
GROUP BY c.name
ORDER BY average_assistance_time DESC
LIMIT 1