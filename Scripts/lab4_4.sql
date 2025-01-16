select l.city, 
       count(e.employee_id) as employee_count, 
       coalesce(sum(e.salary), 0) as month_salary_sum
from locations l
	left join departments d on l.location_id = d.location_id
	left join employees e on d.department_id = e.department_id
group by l.city
order by l.city
