SELECT s.name as student , avg(a.duration) as average_assignment_duration 
FROM students s
    JOIN assignment_submissions a
    ON a.student_id=s.id
WHERE s.end_date IS NULL
GROUP BY s.name
ORDER BY avg(a.duration) DESC