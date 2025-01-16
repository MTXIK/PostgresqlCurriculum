select 
	concat(first_name, ' ', last_name) as Full_name, 
	salary, 
	repeat('*', floor(salary/1000)::int) as stars
from employees
where salary > 10000
