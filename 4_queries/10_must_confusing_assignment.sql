SELECT a.id, name, day, chapter, count(r.*) as total_requests
FROM assignments a
    JOIN assistance_requests r
    ON a.id = r.assignment_id
GROUP BY a.id
ORDER BY total_requests DESC