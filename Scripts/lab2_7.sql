select 
	employee_id, 
	first_name, 
	last_name, 
	department_id, 
	salary, 
	coalesce (commission_pct, 0), 
	((salary * (1 + coalesce (commission_pct, 0.2))) - salary) as bonus,
	salary * (1 + coalesce (commission_pct, 0.2)) as salary_with_bonus
from employees 
where department_id = 30
