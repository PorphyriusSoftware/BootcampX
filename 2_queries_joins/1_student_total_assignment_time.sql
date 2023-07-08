SELECT SUM(sub.duration) AS duration
FROM assignment_submissions sub
    JOIN students s
    ON sub.student_id = s.id
WHERE s.name = 'Ibrahim Schimmel';