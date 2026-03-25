#joins in sql 
#inner join in sql 

SELECT *
FROM employee_demographics
INNER JOIN employee_salary
	ON employee_demographics.employee_id = employee_salary.employee_id
;

#left join 
SELECT *
FROM employee_demographics
LEFT JOIN employee_salary
	ON employee_demographics.employee_id = employee_salary.employee_id
;

#right join 

SELECT *
FROM employee_demographics
RIGHT JOIN employee_salary
	ON employee_demographics.employee_id = employee_salary.employee_id
;

#self join 

SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id+1 = emp2.employee_id
;


#other example of self join 

SELECT emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id+1 = emp2.employee_id
;


