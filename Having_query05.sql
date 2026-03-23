# Having and Aliasing in mysql

#here it is the invalid use of group function to solve this we are going to use the having 
SELECT gender ,avg(age)
FROM  employee_demographics
WHERE avg(age)>40
GROUP BY gender
;

#we use having in this 
SELECT gender ,avg(age)
FROM  employee_demographics
GROUP BY gender
HAVING avg(age)>40
;

#Example in which we are using both where and having
SELECT occupation,avg(salary)
FROM  employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING avg(salary)>75000
;

