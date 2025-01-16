SELECT 
    e.department_id, 
    e.employee_id, 
    (e.salary * (COALESCE(e.commission_pct, 0.2) + 1)) AS emp_salary
FROM employees e
WHERE 
    e.department_id != 30
    AND EXISTS (
        SELECT 1
        FROM employees e30
        WHERE 
            e30.department_id = 30
            AND e30.salary = e.salary
            AND (
                (e30.commission_pct = e.commission_pct)
                OR (e30.commission_pct IS NULL AND e.commission_pct IS NULL)
            )
    )
ORDER BY e.department_id;
