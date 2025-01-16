with order_totals as (
    select
        o.salesman_id,
        sum(oi.quantity * oi.unit_price) as total_sales
    from orders o
    join order_items oi on o.order_id = oi.order_id
    group by o.salesman_id
),
employee_sales as (
    select
        e.department_id,
        coalesce(ot.total_sales, 0) as total_sales
    from employees e
    left join order_totals ot on e.employee_id = ot.salesman_id
),
department_sales as(
	select
        department_id,
        sum(total_sales) as total_sales
    from employee_sales
    group by department_id
),
department_salaries as (
    select
        e.department_id,
        sum(e.salary) as total_salary
    from employees e
    group by e.department_id
)
select
    ds_sales.department_id,
    round(ds_salaries.total_salary, 2) as dep_salary,
    ds_sales.total_sales,
    round(ds_sales.total_sales / ds_salaries.total_salary, 2) as sales_to_salary_ratio
from department_sales ds_sales
join department_salaries ds_salaries
    on ds_sales.department_id = ds_salaries.department_id
order by ds_sales.department_id;
