SELECT year,
(placed_students * 100.0 / total_students) AS placement_percentage
FROM placement_record;

SELECT s.name, j.package_lpa
FROM student s
JOIN job_offer j ON s.student_id = j.student_id
ORDER BY j.package_lpa DESC
LIMIT 5;

SELECT year, salary_lpa,
salary_lpa - LAG(salary_lpa) OVER (ORDER BY year) AS growth
FROM salary_history
WHERE alumni_id = 101;
