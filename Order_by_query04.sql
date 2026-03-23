# order by in my sql 

# in assending order
SELECT *
FROM  employee_demographics
ORDER BY first_name ASC
;

# in decending order
SELECT *
FROM  employee_demographics
ORDER BY first_name DESC;
;

#now we are order by gender
SELECT *
FROM  employee_demographics
ORDER BY gender
;

# Order by gender and age
SELECT *
FROM  employee_demographics
ORDER BY gender,age
;

#Order by age in desending order 
SELECT *
FROM  employee_demographics
ORDER BY age DESC
;

# we can also use column number to give the order we us  5 = gender and 4 = gender 
SELECT *
FROM  employee_demographics
ORDER BY 5,4
;

