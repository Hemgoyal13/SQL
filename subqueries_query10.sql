# subqueries in my sql 

select *
from employee_demographics
where employee_id IN 
	(select employee_id 
		from employee_salary
        where dept_id=1)
;

select first_name,salary,
(select avg(salary)
from employee_salary)
from employee_salary;


select avg(max_age)
from
(select gender,
avg(age) as avg_age,
max(age) as max_age,
min(age) as min_age,
count(age)
from employee_demographics)
group by gender 
;

#the correct way 
SELECT AVG(max_age)
FROM (
    SELECT gender,
           AVG(age) AS avg_age,
           MAX(age) AS max_age,
           MIN(age) AS min_age,
           COUNT(age) AS total_count
    FROM employee_demographics
    GROUP BY gender
) AS sub
GROUP BY gender;
