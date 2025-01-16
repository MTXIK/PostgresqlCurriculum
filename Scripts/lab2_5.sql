select employee_id, first_name, last_name, hire_date 
from employees
where extract(day from hire_date) = 21 and extract(month from hire_date) = 4
