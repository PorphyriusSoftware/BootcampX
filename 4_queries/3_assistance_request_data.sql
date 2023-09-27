SELECT t.name as teacher, s.name as student, a.name as assignment, r.completed_at-r.started_at as duration
FROM assistance_requests r
    JOIN teachers t
    ON t.id=r.teacher_id
    JOIN students s
    ON s.id=r.student_id
    JOIN assignments a
    ON a.id=r.assignment_id
ORDER BY duration