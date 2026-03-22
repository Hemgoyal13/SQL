	# we use select query in this 
    SELECT *
    FROM employee_demographics;
    
    # if we are in another folder and we want to access the table so we shold use the databade name
     SELECT *
    FROM Parks_and_Recreation.employee_demographics;
    
    # we can select the specific name of the columns
    SELECT first_name,last_name,age
    FROM employee_demographics;
    
    SELECT first_name,last_name,age,age+10
    FROM employee_demographics;
    
	# in sql the calculations worrks on the PEMADS which means Parentheses, exponents,multiplication,addition,divide,subtraction
    SELECT first_name,last_name,age,(age+10)*10
    FROM employee_demographics;
    
    # to remove the duplicates from a specific columns
    SELECT distinct gender
    FROM employee_demographics;
    
    