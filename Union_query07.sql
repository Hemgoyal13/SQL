#unions in mysql 

SELECT *
FROM employee_demographics
UNION
SELECT *
FROM employee_salary
;

#using union all we can also show the duplicate values
SELECT *
FROM employee_demographics
UNION all
SELECT *
FROM employee_salary
;

#use to retrive alal the values in the data 
SELECT first_name,last_name
FROM employee_demographics
UNION all
SELECT first_name,last_name
FROM employee_salary
;

# use case of union 

SELECT first_name,last_name, 'Old' as label
FROM employee_demographics
WHERE age>40 AND gender ='Male'

UNION

SELECT first_name,last_name,'Old lady' as label
FROM employee_demographics
WHERE age > 40 AND gender ='Female'

UNION

SELECT first_name,last_name,'Highly paid employee' as label
FROM employee_salary
WHERE salary > 70000

ORDER BY first_name,last_name
;
