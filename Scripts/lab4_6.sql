select m.employee_id as manager_id, 
       concat(m.first_name, ' ', m.last_name) as manager_full_name, 
       e.employee_id as employee_id, 
       concat(e.first_name, ' ', e.last_name) as employee_full_name
from employees e
join employees m on e.manager_id = m.employee_id
order by m.employee_id, e.employee_id;
