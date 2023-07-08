SELECT count(1)
FROM students
WHERE cohort_id IN (SELECT id
FROM cohorts LIMIT
3);