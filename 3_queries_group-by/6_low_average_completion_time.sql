SELECT s.name as student, avg(sub.duration) as average_assignment_duration, avg(a.duration)  as average_estimated_duration
FROM students s
    JOIN assignment_submissions sub
    ON sub.student_id=s.id
    JOIN assignments a
    ON sub.assignment_id=a.id
WHERE s.end_date IS  NULL
GROUP BY s.name
HAVING avg(sub.duration) < avg(a.duration)
ORDER BY average_assignment_duration