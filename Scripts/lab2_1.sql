select first_name, last_name, salary, department_id, rating_e 
from employees
where (department_id = 60) and (mod(rating_e,2)=1)
