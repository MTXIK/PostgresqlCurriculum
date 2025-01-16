select 
    j.job_title as job_title,
    d.department_name as department_name,
    l.city as city,
    sum(e.salary) as total_salary
from 
    employees e
join 
    departments d on e.department_id = d.department_id
join 
    jobs j on e.job_id = j.job_id
join 
    locations l on d.location_id = l.location_id
where 
    l.country_id <> 'US'
group by 
    grouping sets (
        (j.job_title),           -- сумма по каждой должности
        (d.department_name),      -- сумма по каждому отделу
        (l.city),                 -- сумма по каждому городу
        ()                        -- общая сумма по всем сотрудникам
    )
order by 
    grouping(j.job_title), 
    grouping(d.department_name), 
    grouping(l.city);
