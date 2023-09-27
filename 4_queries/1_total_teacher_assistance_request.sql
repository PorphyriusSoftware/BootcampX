SELECT count(1) as total_assistances, t.name
FROM assistance_requests r
    JOIN teachers t
    ON t.id=r.teacher_id
GROUP BY t.name
HAVING t.name='Waylon Boehm'
