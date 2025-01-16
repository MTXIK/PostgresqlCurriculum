SELECT department_id, 
       SUM(e.salary * (EXTRACT(year FROM age(now(), hire_date)) * 12 + 
                       EXTRACT(month FROM age(now(), hire_date))) * (coalesce(e.commission_pct, 0.2) + 1) ) AS total_salary
FROM employees e
GROUP BY department_id 
ORDER BY department_id;
