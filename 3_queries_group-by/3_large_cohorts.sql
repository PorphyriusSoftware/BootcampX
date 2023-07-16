SELECT c.name as cohort_name, count(1) as students_count
FROM cohorts c
    JOIN students s
    ON s.cohort_id = c.id
GROUP BY c.name
HAVING count(1) >=18
ORDER BY students_count ASC,c.name;