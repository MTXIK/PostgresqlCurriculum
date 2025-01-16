select e.employee_id, e.manager_id, (e.salary * (coalesce(e.commission_pct, 0.2) + 1) ) AS emp_salary
from employees e
where e.salary * (coalesce(e.commission_pct, 0.2) + 1) > 
	(select e2.salary * (coalesce(e2.commission_pct, 0.2) + 1) 
	from employees e2 
	where e2.employee_id = e.manager_id)