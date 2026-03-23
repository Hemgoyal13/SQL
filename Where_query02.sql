# to select the particular name 
SELECT *
FROM employee_salary
WHERE first_name="Leslie"
;

#use of conditions 
# gives only the salary of thoes which has greater than 50000
SELECT *
FROM employee_salary
WHERE salary >50000
;

# gives those whose salary is greater than or equal to 50000
SELECT *
FROM employee_salary
WHERE salary >= 50000
;

#only the females are shown
SELECT *
FROM employee_demographics 
WHERE gender = "Female"
;


#only the males are shown using not 
SELECT *
FROM employee_demographics 
WHERE gender != "Female"
;


#on the basis of date of birth
SELECT *
FROM employee_demographics 
WHERE birth_date > '1985-01-01'
;

#use of logical operators AND OR NOT
#AND both condition must be true 
SELECT *
FROM employee_demographics 
WHERE birth_date > "1985-01-01"
AND gender = 'male'
;

# OR any one can be true 
SELECT *
FROM employee_demographics 
WHERE birth_date > "1985-01-01"
OR gender = 'male'
;


# NOT  
SELECT *
FROM employee_demographics 
WHERE birth_date > "1985-01-01"
OR NOT gender = 'male'
;


#use of parentheses with or 
SELECT *
FROM employee_demographics 
WHERE (first_name="Leslie" AND age=44)
OR age > 55
;

#use of like
#gives those name which are stars with jer
SELECT *
FROM employee_demographics 
WHERE first_name LIKE 'Jer%'
;

#gives those name which has er in middle or after the first letter 
SELECT *
FROM employee_demographics 
WHERE first_name LIKE '%er%'
;
 
 #gives those name which are stars with a
SELECT *
FROM employee_demographics 
WHERE first_name LIKE 'a%'
;

#only two char afer a
SELECT *
FROM employee_demographics 
WHERE first_name LIKE 'a__'
;

# only three char after alter
SELECT *
FROM employee_demographics 
WHERE first_name LIKE 'a___'
;

#more than three char after a 
SELECT *
FROM employee_demographics 
WHERE first_name LIKE 'a___%'
;

#date with use of like 
SELECT *
FROM employee_demographics 
WHERE birth_date LIKE '1989%'
;