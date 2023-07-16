SELECT day, count(1) as total_assignments
FROM assignments
GROUP BY day
ORDER BY day;