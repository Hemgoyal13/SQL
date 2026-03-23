#Limit and aliasing

# This will gives only 3 outputs
SELECT *
FROM  employee_demographics
LIMIT 3
;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2,1
;

#ALIASING

#without using aliasing
SELECT gender,avg(age)
FROM employee_demographics
GROUP BY gender
HAVING avg(age)>40
;

#with using aliasing
SELECT gender,avg(age) as avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;

#we can use it is as without as
SELECT gender,avg(age) avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;
