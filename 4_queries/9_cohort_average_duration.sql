SELECT avg(total_duration)
FROM (
    SELECT sum(r.completed_at-r.started_at) as total_duration
    FROM assistance_requests r
        JOIN students s
        ON s.id=r.student_id
        JOIN cohorts c
        ON s.cohort_id=c.id
    GROUP BY c.name
) fake