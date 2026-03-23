SELECT * 
FROM Parks_and_Recreation.employee_demographics
;

# group by in mysql
SELECT gender
FROM  employee_demographics
GROUP BY gender
;

# use of group by to retrive the average age 
SELECT gender , avg(age)
FROM  employee_demographics
GROUP BY gender
;

#now we are going to group by occupation
SELECT occupation
FROM  employee_salary
GROUP BY occupation
;

# now we use group by on occupation and salary both
SELECT occupation,salary
FROM  employee_salary
GROUP BY occupation, salary
;


# max and avg
SELECT gender , avg(age),MAX(age)
FROM  employee_demographics
GROUP BY gender
;

# min,max and avg
SELECT gender , avg(age),MAX(age),MIN(age)
FROM  employee_demographics
GROUP BY gender
;

#count age
SELECT gender,avg(age),max(age),min(age),count(age)
FROM employee_demographics
GROUP BY gender
;
