--Part 1
SELECT * FROM techjobs.employer;
--Part 2
SELECT name FROM employer WHERE
location = "St. Louis City";
--Part 3
DROP TABLE job;
--Part 4
--I like mine better but the test didn't like it
--SELECT name FROM skill
--WHERE skill.id IN
--(SELECT skills_id FROM job_skills);
--This query passes the test. But why? Supposed to return the names of the skills, not the jobs?
SELECT * FROM skill
LEFT JOIN job_skills ON
skill.id = job_skills.skills_id
WHERE job_skills.jobs_id IS NOT NULL
ORDER BY name ASC;