SELECT day, count(1) as total_assignments
FROM assignments
GROUP BY day
HAVING count(1) >= 10
ORDER BY day;