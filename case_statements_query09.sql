#use of case statements 

select first_name,last_name,age,
case
	when age <=30 then 'Young'
end
from employee_demographics
;

select first_name,last_name,age,
case
	when age <=30 then 'Young'
    when age between 31 and 50 then 'Old'
end
from employee_demographics
;


#find out pay increase and bonus, <50000 = 5% ,>50000 = 7% ,finance=10% bonus 

select first_name, last_name,salary,
case 
	when salary < 50000 then (salary * 1.05)
    when salary > 50000 then (salary * 1.07)
end as new_salary
from employee_salary
;



select first_name, last_name,salary,
case 
	when salary < 50000 then (salary * 1.05)
    when salary > 50000 then (salary * 1.07)
end as new_salary,
case 
	when dept_id=6 then (salary*0.10)
end as finance_increament
from employee_salary;