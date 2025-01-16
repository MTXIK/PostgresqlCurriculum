select d.manager_id, d.department_name, city
from departments d, locations l 
where d.location_id = l.location_id 
and manager_id = 108