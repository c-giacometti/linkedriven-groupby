/*QUESTÃO 1*/
SELECT COUNT ("endDate") AS currentExperiences 
FROM experiences;

/*QUESTÃO 2*/
SELECT educations."userId" AS id, 
COUNT("userId") AS educations 
FROM educations 
GROUP BY educations."userId";

/*QUESTÃO 3*/
SELECT users.name AS writer ,
COUNT(testimonials.id) AS testimonialsCount
FROM testimonials
JOIN users ON users.id = testimonials."writerId"
WHERE testimonials."writerId" = 435
GROUP BY users.name;

/*QEUSTÃO 4*/
SELECT MAX(jobs.salary) AS "maximumSalary",
roles.name AS role
FROM jobs
JOIN roles ON roles.id = jobs."roleId"
WHERE jobs.active = 'true'
GROUP BY roles.name
ORDER BY "maximumSalary" ASC;