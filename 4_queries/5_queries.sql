SELECT cohorts.name, avg(assistance_requests.started_at - assistance_requests.completed_at)
as average_assistance_time
FROM assistance_requests
JOIN students on students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC;