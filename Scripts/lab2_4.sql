SELECT department_name
FROM departments
WHERE (LENGTH(department_name)) > (LENGTH(REPLACE(department_name, ' ', '')))
