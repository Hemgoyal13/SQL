#--window functions

select gender,avg(salary)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id
group by gender
;

#we do the above query with the help of window function 

select gender, avg(salary) over(partition by gender)
from employee_demographics dem 
join employee_salary sal
on dem.employee_id=sal.employee_id;


select dem.first_name,dem.last_name, avg(salary) over(partition by gender)
from employee_demographics dem 
join employee_salary sal
on dem.employee_id=sal.employee_id;


#rolling total
select dem.first_name,dem.last_name, avg(salary) over(partition by gender order by dem.employee_id) as 'rolling total'
from employee_demographics dem 
join employee_salary sal
on dem.employee_id=sal.employee_id;


select dem.first_name,dem.employee_id,dem.last_name, salary,gender,row_number() over() 
from employee_demographics dem 
join employee_salary sal
on dem.employee_id=sal.employee_id;

#rank 
select dem.first_name,dem.employee_id,dem.last_name, salary,gender,row_number() over( partition by gender order by salary desc) as row_num,
rank() over( partition by gender order by salary desc) as rank_num,
dense_rank() over( partition by gender order by salary desc) as dense_rank_num
from employee_demographics dem 
join employee_salary sal
on dem.employee_id=sal.employee_id;