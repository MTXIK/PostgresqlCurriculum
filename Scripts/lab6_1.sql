create table emp as
select 
	e.employee_id,
	e.first_name,
	e.last_name,
	e.hire_date,
	e.rating_e,
	extract(year from age(now(), e.hire_date)) as working,
	case 
        when e.rating_e = 5 then 'A'
        when e.rating_e in (3, 4) then 'B'
        else 'C'
    end as layer
from 
	employees e
where e.department_id = 80;

select * from emp;