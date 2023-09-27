SELECT count(1) as total_assistances, s.name
FROM assistance_requests r
    JOIN students s
    ON s.id=r.student_id
GROUP BY s.name
HAVING s.name='Elliot Dickinson'