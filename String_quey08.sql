#--String function in mysql 

#USED TO GET THE LENGTH OF THE STRING 
SELECT LENGTH('HELLOWORLD');

SELECT first_name,LENGTH(first_name)
FROM employee_demographics
ORDER BY 2
;

#UPPER AND LOWER 

SELECT UPPER('helloworld');

SELECT LOWER('HELLOWRLD');

#TRIM it is used to remove the white spaces

SELECT TRIM('                 HELLO                       ')
;
#WE AND ALSO DO left and right trim 

SELECT LTRIM('                 HELLO                       ');
SELECT RTRIM('                 HELLO                       ');

SELECT first_name,LEFT(first_name,4)
FROM employee_demographics;

SELECT first_name,LEFT(first_name,4),RIGHT(first_name,4)
FROM employee_demographics;


SELECT first_name,substring(first_name,3,2)
FROM employee_demographics;

# to show only the month 
SELECT first_name,substring(birth_date,6,2) as birth_month
FROM employee_demographics;

#use of replace in mysql 

SELECT first_name,replace(first_name,'a','z')
from employee_demographics;

# use of locate in mysql 
#it will gives the position of the searched character 

SELECT locate('m','hemgoyal');

select first_name,locate('An',first_name)
from employee_demographics;

#concatination

select first_name,last_name,
concat(first_name," ",last_name)
from employee_demographics;