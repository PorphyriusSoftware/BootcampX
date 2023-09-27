-- Not clear from what tables is the relationship

-- SELECT a.day, count(sub.*) as number_of_assignments, sum(sub.duration) as duration
-- FROM assignments a
--     JOIN assignment_submissions sub
--     ON a.id = sub.assignment_id
-- GROUP BY a.day
-- ORDER BY day

-- From compass

SELECT day, count(*) as number_of_assignments, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;