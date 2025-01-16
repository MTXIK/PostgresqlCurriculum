select 
	e.department_id, 
	e.employee_id, 
	(extract(year from (e.hire_date)) - extract(year from (e2.min_date)))  * 12 + 
	(extract(month from (e.hire_date)) - extract(month from (e2.min_date))) as months
from 
	employees e 
join 
	(
		select 
			department_id, 
			min(hire_date) as min_date
		from 
			employees 
		group by 
			department_id
	) e2 
	on e.department_id = e2.department_id
order by
	e.department_id,
	e.employee_id 