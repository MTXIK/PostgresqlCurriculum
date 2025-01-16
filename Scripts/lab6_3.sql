create table Employees_Copy as
select
	*
from 
	employees e;


ALTER TABLE Employees_Copy
ADD COLUMN emp_sales NUMERIC(15, 2) DEFAULT 0;


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
        e.employee_id,
        coalesce(ot.total_sales, 0) as total_sales
    from employees e
    left join order_totals ot on e.employee_id = ot.salesman_id
)
UPDATE Employees_Copy ec
SET emp_sales = es.total_sales
FROM employee_sales es
WHERE ec.employee_id = es.employee_id
returning ec.employee_id, ec.emp_sales;